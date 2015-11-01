package cse.iitd;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Map.Entry;

public class GibbsSampling {
	
	public static final String PATH = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\"; 
	public static final Integer BURN_OUT = 5000;
	public static final Integer TOTAL_SAMPLES = 55000;
	public static final Integer SKIM = 100;
	
	public static class SampleOutput {
		public List<Character> sample1;
		public List<Character> sample2;
		public double prob;
		
		public SampleOutput(List<Character> sample1, List<Character> sample2){
			this.sample1 = sample1;
			this.sample2 = sample2;
		}
		
		public String toString(){
			return sample1.toString()+"   "+sample2.toString();
		}
	}
	
	
	public static void sample(List<Integer> image, List<Character> sample, List<Integer> image2, List<Character> sample2){
		for (int i=0; i<image.size(); i++) {
			Character ch = inferVariable(i, image, sample, image2, sample2);
			sample.set(i, ch);
		}
		
	}
	
	private static Character inferVariable(int i, List<Integer> image, List<Character> sample, List<Integer> image2, List<Character> sample2) {
		Random rand = new Random();
		Double var = rand.nextDouble();
		List<Double> factors = getAllFactors(i, image, sample, image2, sample2);
		int minIndex = factors.indexOf(Collections.min(factors));
		Double minValue = factors.get(minIndex);
		Double denom = 0.0;
		for (Double d: factors){
			denom = denom + Math.pow(10, d-minValue);
		}
		
		
		int k = 0;
		for (Double d: factors) {
			Double nume = Math.pow(10,d-minValue);
			Double prob = nume / denom;
			if (var < prob)
				return Util.characters.get(k);
			var = var - prob;
			k++;
		}
		return Util.characters.get(k-1);
		
	}
	
	private static List<Double> getAllFactors(int index, List<Integer> image, List<Character> sample, List<Integer> image2, List<Character> sample2) {
		List<Double> factor = new ArrayList<>();
		for(Character ch : Util.characters) {
			List<Character> newSample = new ArrayList<Character>(sample); 
			newSample.set(index, ch);
			factor.add(getFactorProduct(index, image, newSample, image2, sample2));
		}
		return factor;
	}

	private static Double getFactorProduct(int index, List<Integer> image, List<Character> sample, List<Integer> image2, List<Character> sample2) {
		Double prob = 0.0;
		Double transFactore = 0.0;
		if (index!=0)
			transFactore = Util.getTransFactor(sample.get(index-1), sample.get(index));
		prob = Util.getOCRFactor(image.get(index), sample.get(index)) +  Util.getSkipFactor(index, image, sample) + Util.getPairSkipFactor(index, image, sample, image2, sample2) +transFactore;
		return  prob;
	}

	public static void gibbsSample(DataTree dt){
		sample(dt.getImage1(), dt.getSampleChars1(), dt.getImage2(), dt.getSampleChars2());
		sample(dt.getImage2(), dt.getSampleChars2(), dt.getImage1(), dt.getSampleChars1());
	}

	private static DataTree predictWords(List<SampleOutput> sampleList, DataTree dt) {
		Double prob = 0.0;
		for(int i=0; i<sampleList.get(0).sample1.size(); i++) {
			Map<Character, Integer> charCount = new HashMap<>();
			for(SampleOutput so: sampleList){
				if(!charCount.containsKey(so.sample1.get(i)))
					charCount.put(so.sample1.get(i), 0);
				int count = charCount.get(so.sample1.get(i));
				charCount.put(so.sample1.get(i),count + 1);
			}
			Character ch = findMaxIndex(charCount);
			dt.getSampleChars1().set(i, ch);
			prob = dt.getProb() + Math.log10((double)charCount.get(ch)/(double)findValueIndex(charCount));
			dt.setProb(prob);
		}
		for(int i=0; i<sampleList.get(0).sample2.size(); i++) {
			Map<Character, Integer> charCount = new HashMap<>();
			for(SampleOutput so: sampleList){
				if(!charCount.containsKey(so.sample2.get(i)))
					charCount.put(so.sample2.get(i), 0);
				int count = charCount.get(so.sample2.get(i));
				charCount.put(so.sample2.get(i),count + 1);
			}
			Character ch = findMaxIndex(charCount);
			dt.getSampleChars2().set(i, ch);
			prob = dt.getProb() + Math.log10((double)charCount.get(ch)/(double)findValueIndex(charCount));
			dt.setProb(prob);
		}
		
		return dt;
		
	}
	
	private static void getPredition(DataTree dt) {
		List<SampleOutput> sampleList = new ArrayList<>();
		int k = 0;
		for(int i = 0; i <TOTAL_SAMPLES; i++){
			gibbsSample(dt);
			if(i>=BURN_OUT){
				if( k%SKIM == 0){
					//System.out.println(dt.getSampleChars1()+"  "+dt.getSampleChars2());
					SampleOutput so = new SampleOutput(new ArrayList<>(dt.getSampleChars1()), new ArrayList<>(dt.getSampleChars2()));
					sampleList.add(so);
				}
				
			}
		}
		predictWords(sampleList,dt);
		
	}
	
	public static Character findMaxIndex(Map<Character, Integer> map) {
		Entry<Character, Integer> max = null;
		if(map != null && map.size() != 0){
			for (Entry<Character, Integer> entry : map.entrySet()) {
			    if (max == null || max.getValue() < entry.getValue()) {
			        max = entry;
			    }
			}
			return max.getKey();
		}
		return null;
	}
	
	public static Integer findValueIndex(Map<Character, Integer> map) {
		Integer sum = 0;
		if(map != null && map.size() != 0){
			for (Entry<Character, Integer> entry : map.entrySet()) {
			    sum = sum + entry.getValue();
			}
			return sum;
		}
		return null;
	}
	
	private static void runSampleing(String dataFile, String truthFile) {
		
		double wordMatch = 0;
		double charCount = 0;
		double charMatch = 0;
		double logLikelyhood = 0;
		double totalTime = 0;
		dataFile = PATH + dataFile;
		truthFile = PATH + truthFile;
		List<DataTree> dtList = Util.getDataTree(dataFile, truthFile);
		for(DataTree dt: dtList){
			//System.out.println("before  "+dt.toString());
			long startTime = System.currentTimeMillis();
			getPredition(dt);
			long stopTime = System.currentTimeMillis();
			//System.out.println("after  "+dt.toString());
			
			if(dt.getSampleChars1().equals(dt.getChars1()) && dt.getSampleChars2().equals(dt.getChars2()))
				wordMatch++;
			for (int j=0; j<dt.getSampleChars1().size(); j++){
				if (dt.getSampleChars1().get(j).equals(dt.getChars1().get(j)))
					charMatch++;
				charCount++;
			}
			for (int j=0; j<dt.getSampleChars2().size(); j++){
				if (dt.getSampleChars2().get(j).equals(dt.getChars2().get(j)))
					charMatch++;
				charCount++;
			}
			logLikelyhood = logLikelyhood+Math.pow(10, dt.getProb());
			long elapsedTime = stopTime - startTime;
			totalTime = totalTime + elapsedTime;
			
		}
		System.out.println((double)wordMatch/(double)dtList.size()+"\t"+charMatch/charCount+"\t"+Math.log(logLikelyhood)+"\t"+totalTime/(double)dtList.size());
	}
	
	private static void runOnSample() {
		List<Integer> image1 = new ArrayList<Integer>();
		image1.add(207);
		image1.add(10);
		image1.add(728);
		image1.add(10);
		image1.add(602);
		image1.add(551);
		
		List<Character> chars1 = new ArrayList<Character>();
		chars1.add('s');
		chars1.add('t');
		chars1.add('r');
		chars1.add('t');
		chars1.add('a');
		chars1.add('t');
		
		List<Integer> image2 = new ArrayList<Integer>();
		image2.add(728);
		image2.add(72);
		image2.add(401);
		image2.add(57);
		image2.add(510);
		image2.add(728);
		
		List<Character> chars2 = new ArrayList<Character>();
		chars2.add('r');
		chars2.add('a');
		chars2.add('t');
		chars2.add('h');
		chars2.add('e');
		chars2.add('r');
		
		//DataTree dt = new DataTree(chars1, chars2, image1, image2);
		
		DataTree dt = new DataTree(chars1, chars2, image1, image2);
		getPredition(dt);
		
	}

	private static void runOnData() {
		/*String dataFile = "data-tree.dat";
		String truthFile = "truth-tree.dat";
		System.out.print("data\t");
		runSampleing(dataFile, truthFile);
		
		dataFile = "data-loops.dat";
		 truthFile = "truth-loops.dat";
		 System.out.print("data-loop\t");
		 runSampleing(dataFile, truthFile);
		
		dataFile = "data-treeWS.dat";
		truthFile = "truth-treeWS.dat";
		System.out.print("data-treeWs\t");
		runSampleing(dataFile, truthFile);*/
		
		String dataFile = "data-loopsWS.dat";
		String truthFile = "truth-loopsWS.dat";
		System.out.print("data-loopWS\t");
		runSampleing(dataFile, truthFile);
		
	}
	
	public static void main(String[] args) {
		runOnData();
		//runOnSample();
	}
}
