package cse.iitd;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public interface GraphicalModel {
	
	public Map<String, Double> ocrMap = GraphicalModelUtil.getFactorsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\potentials\\ocr.dat");
	public Map<String, Double> transMap = GraphicalModelUtil.getFactorsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\potentials\\trans.dat");
	
	public Double getProduct(List<Integer> image, List<Character> chars);
	
	public default List<Double> getNormalizedFactor(List<Integer> image) {
		List<List<Character>> result = new ArrayList<>();
		List<Double> zfactors = new ArrayList<>();
		GraphicalModelUtil.getAllChars(result, new ArrayList<>(), 0, image.size());
		for (List<Character> chars : result){
			double logProb = getProduct(image, chars);
			zfactors.add(logProb);
		}
		
		return zfactors;
	}

	

	public default Double modelScore(List<Integer> image, List<Character> chars) {
		double numerator = getProduct(image, chars);
		List<Double> zfactors = getNormalizedFactor(image);
		int minIndex = zfactors.indexOf(Collections.min(zfactors));
		Double minValue = zfactors.get(minIndex);
		//System.out.println(numerator+"   "+denom+"   "+numerator/denom);
		Double denom = 0.0;
		for (Double d: zfactors){
			denom = denom + Math.pow(10, d-minValue);
		}
		return Math.pow(10, numerator - minValue)/denom;
	}

	public default List<Character> predictedChars(List<Integer> image) {
		Double max = 0.0;
		List<Character> pred = new ArrayList<>();
		List<List<Character>> result = new ArrayList<>();
		List<Double> zfactors = getNormalizedFactor(image);
		int minIndex = zfactors.indexOf(Collections.min(zfactors));
		Double minValue = zfactors.get(minIndex);
		//System.out.println(numerator+"   "+denom+"   "+numerator/denom);
		Double denom = 0.0;
		for (Double d: zfactors){
			denom = denom + Math.pow(10, d-minValue);
		}
		GraphicalModelUtil.getAllChars(result, new ArrayList<>(), 0, image.size());
		for (List<Character> chars : result){
			//System.out.println(chars.toString());
			double numerator = getProduct(image, chars);
			Double score = Math.pow(10, numerator - minValue)/denom;
			if (max < score ) {
				max = score;
				pred = chars;
			}
		}
		
		return pred;
	}

}
