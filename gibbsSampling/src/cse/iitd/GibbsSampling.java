package cse.iitd;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Map.Entry;

public class GibbsSampling {
	
	
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
	
	/*private static Character inferVariable(int i, List<Integer> image, List<Character> sample, List<Integer> image2, List<Character> sample2) {
		Double max = 0.0;
		int maxIndex = 0;
		List<Double> probs = new ArrayList<>();
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
			probs.add(prob);
			if (max < prob) {
				max = prob;
				maxIndex = k;
			}
			k++;
		}
		System.out.println(maxIndex);
		System.out.println(Util.characters);
		System.out.println(probs);
		return Util.characters.get(maxIndex);
		
	}*/

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

	public static void main(String[] args) {
		/*String dataFile = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\data-tree.dat";
		String truthFile = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\truth-tree.dat";
		System.out.print("data-tree\t");
		List<DataTree> dtList = Util.getDataTree(dataFile, truthFile);
		for(DataTree dt: dtList){
			System.out.println("before  "+dt.toString());
			gibbsSample(dt);
			System.out.println("after  "+dt.toString());
		}*/
		
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
		List<List<Character>> sampleList = new ArrayList<>();
		for(int i = 0; i <1100; i++){
			gibbsSample(dt);
			if(i>=1000){
				System.out.println(dt.toString());
				List<Character> sampledt = new ArrayList<>(dt.getSampleChars1());
				sampleList.add(sampledt);
				sampledt = new ArrayList<>(dt.getSampleChars2());
				sampleList.add(sampledt);
			}
		}
		System.out.println("after  "+predictWords(sampleList));
	}

	

	private static DataTree predictWords(List<List<Character>> sampleList) {
		
		
	}
	
	

}
