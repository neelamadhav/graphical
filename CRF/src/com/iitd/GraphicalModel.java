package com.iitd;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class GraphicalModel {

	public static Double getProducts(List<Integer> images, List<Character> chars, int model) {
		Double products = 0.0;
		if (model == 1)
			products = GraphicalModelUtil.getOCRFactors(images, chars);
		else if (model == 2) {
			Double ocrFactor = GraphicalModelUtil.getOCRFactors(images, chars);
			Double transFactor = GraphicalModelUtil.getTransFactors(chars);
			
			products = ocrFactor + transFactor;
		}
		else if (model == 3) {
			Double ocrFactor = GraphicalModelUtil.getOCRFactors(images, chars);
			Double transFactor = GraphicalModelUtil.getTransFactors(chars);
			Double skipFactor = GraphicalModelUtil.getSkipFactor(images, chars);
			products = ocrFactor + transFactor + skipFactor;
		}
		
		return products;
		
	}
	
	
	
	public static List<Double> getNormalizationFactor(List<Integer> images, int model) {
		List<Double> zfact = new ArrayList<>();
		List<List<Character>> results = new ArrayList<>();
		List<Character> item = new ArrayList<Character>();
		GraphicalModelUtil.getCombinations(results, item, images.size(), 0);
		for (List<Character> chars: results){
			zfact.add(getProducts(images, chars, model));
		}
		return zfact;
	}
	 
	
	
	public static double modelProbability (List<Integer> images, List<Character> chars, int model) {
		Double numerator = getProducts(images, chars, model);
		Double denominator = 0.0;
		List<Double> zfact = getNormalizationFactor(images, model);
		Double min = Collections.min(zfact);
		for (Double d : zfact) {
			denominator = denominator + Math.pow(10, d-min);
		}
		
		return Math.pow(10, numerator-min)/denominator;
	}
	
	
	
	public static List<Character> getPrediction(List<Integer> images, int model) {
		Double max = Double.NEGATIVE_INFINITY;
		List<Character> predict = new ArrayList<>();
		List<List<Character>> results = new ArrayList<>();
		List<Character> item = new ArrayList<Character>();
		/*List<Double> zfact = getNormalizationFactor(images, model);
		Double denominator = 0.0;
		Double min = Collections.min(zfact);
		for (Double d : zfact) {
			denominator = denominator + Math.pow(10, d-min);
		}*/
		GraphicalModelUtil.getCombinations(results, item, images.size(), 0);
		for (List<Character> chars : results) {
			
			Double numerator = getProducts(images, chars, model);
			if (max < numerator) {
				max = numerator;
				predict = chars;
			}
		}
		return predict;
	}
	
	
	
}
