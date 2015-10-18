package com.iitd;

import java.util.ArrayList;
import java.util.List;

public class P22 {

	
	public static void main(String[] args) {
		List<Character> chars = new ArrayList<>();
		chars.add('a');
		chars.add('d');
		List<Integer>  images = new ArrayList<>();
		images.add(1);
		images.add(222);
		//System.out.println(GraphicalModel.getPrediction(images, 1));
		
		
		System.out.println(GraphicalModel.modelProbability(images, chars, 1));
		System.out.println(GraphicalModel.modelProbability(images, chars, 2));
		System.out.println(GraphicalModel.modelProbability(images, chars, 3));
		

	}
	
	

}
