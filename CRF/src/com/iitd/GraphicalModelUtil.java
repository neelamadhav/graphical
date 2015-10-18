package com.iitd;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GraphicalModelUtil {

	public static Map<String, Double> ocrMap = getFactorsFromFile("/home/madhav/Desktop/ass2/OCRdataset/potentials/ocr.dat");
	public static Map<String, Double> transMap = getFactorsFromFile("/home/madhav/Desktop/ass2/OCRdataset/potentials/trans.dat");
	public static List<Character> allChars = Arrays.asList('e','t','a','o','i','n','s','h','r','d');
	//public static List<Character> allChars = Arrays.asList('a','b','c');
	
	public static Map<String, Double>  getFactorsFromFile(String filePath) {
		Map<String, Double> map = new HashMap<>();
		try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
			String line = null;
			while ((line = br.readLine()) != null) {
				line = line.trim();
				String[] lineArr = line.split("\t");
				map.put(lineArr[0]+"$$$"+lineArr[1], Double.parseDouble(lineArr[2]));
				
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return map;
	}
	
	public static List<List<Integer>>  getImages(String filePath) {
		List<List<Integer>> images = new ArrayList<>();
		try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
			String line = null;
			while ((line = br.readLine()) != null) {
				line = line.trim();
				List<String> lineArr = Arrays.asList(line.split("\t"));
				images.add(toIntegerArray(lineArr));
				
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return images;
	}
	
	public static List<List<Character>>  getCharacters(String filePath) {
		List<List<Character>> characters = new ArrayList<>();
		try (BufferedReader br = new BufferedReader(new FileReader(filePath))) {
			String line = null;
			while ((line = br.readLine()) != null) {
				line = line.trim();
				List<Character> l = new ArrayList<>();
				for (Character c: line.toCharArray())
					l.add(c);
				characters.add(l);
				
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return characters;
	}

	private static List<Integer> toIntegerArray(List<String> lineArr) {
		List<Integer> list = new ArrayList<>();
		for (String line : lineArr){
			list.add(Integer.parseInt(line));
		}
		return list;
	}
	
	public static void getCombinations(List<List<Character>> results, List<Character> item, int size, int count){
        if (count < size){
            for (int i = 0; i < allChars.size(); i++) {
            	if(count<item.size())
            		item.remove(count);
                item.add(count, allChars.get(i));
                getCombinations(results, item, size, count+1);
            }
        }else{
        	List<Character> l = new ArrayList<>();
        	l.addAll(item);
            results.add(l); 
        }
    }
	
	public static Double getOCRFactors(List<Integer> images, List<Character> chars){
		Double ocr = 0.0;
		for (int i=0; i<images.size(); i++) {
			ocr = ocr + Math.log10(ocrMap.get(images.get(i)+"$$$"+chars.get(i)));
		}
			return ocr;
	}
	
	public static Double getTransFactors(List<Character> chars){
		Double trans = 0.0;
		for (int i=1; i<chars.size(); i++) {
			trans = trans + Math.log10(transMap.get(chars.get(i-1)+"$$$"+chars.get(i)));
		}
			return trans;
	}
	
	public static Double getSkipFactor(List<Integer> images, List<Character> chars){
		Double skip = 0.0;
		for (int i=0; i<images.size(); i++) {
			for (int j=i+1; j<images.size(); j++){
				if (images.get(i).equals(images.get(j))){
					if(chars.get(i).equals(chars.get(j))) {
						skip = skip + Math.log10(5.0);
					} else 
						skip = skip + Math.log10(1.0);
					
				}
			}
		}
			return skip;
	}
	
	
	
	public static void main(String[] args) {
		List<List<Character>> results = new ArrayList<>();
		List<Character> l = new ArrayList<Character>();
		getCombinations(results, l, 2, 0);
		System.out.println(results.toString());
		
	}

	public static void writeToFile(List<Integer> image, List<Character> chars,
			List<Character> predict, String type, int model) {
		try {
		File file = new File("/home/madhav/Desktop/ass2/OCRdataset/out_"+type+"_"+model+".txt" );

		// if file doesnt exists, then create it
		if (!file.exists()) {
			file.createNewFile();
		}

		FileWriter fw = new FileWriter(file.getAbsoluteFile(), true);
		BufferedWriter bw = new BufferedWriter(fw);
		
		
			bw.write(image.toString()+"\t"+chars.toString()+"\t"+predict.toString()+"\n");
		bw.close();
		}catch (Exception e){
			System.out.println(e.getMessage());
		}
	}

}
