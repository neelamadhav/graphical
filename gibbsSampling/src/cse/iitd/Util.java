package cse.iitd;



import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Util {
	public static List<Character> characters = Arrays.asList('e','t','a','o','i','n','s','h','r','d');
	private static Map<List<String>, Double> ocrMap = getFactorsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\potentials\\ocr.dat");
	private static Map<List<String>, Double> transMap = getFactorsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\potentials\\trans.dat");
	
	//private static List<Character> characters = Arrays.asList('a','b','c');
	
	public static List<DataTree> getDataTree(String dataFile, String truthFile) {
		List<DataTree> dt = new ArrayList<>();
		try (BufferedReader dr = new BufferedReader(new FileReader(dataFile)) ){
			try (BufferedReader tr = new BufferedReader(new FileReader(truthFile)) ){
				String dataLine = null;
				String truthLine = null;
				int line = 0;
				List<Character> chars1 = new ArrayList<>();
				List<Character> chars2 = new ArrayList<>();
				List<Integer> image1 = new ArrayList<>();
				List<Integer> image2 = new ArrayList<>();
				while ((dataLine = dr.readLine()) != null && (truthLine = tr.readLine()) != null) {
					dataLine = dataLine.trim();
					truthLine = truthLine.trim();
					line ++;
					if(dataLine != "" && truthLine !="" ) {
						if(line ==1) {
							for (Character c: truthLine.toCharArray())
								chars1.add(c);
							for (String c: dataLine.split("\t"))
								image1.add(Integer.parseInt(c));
						} else if (line==2) {
							for (Character c: truthLine.toCharArray())
								chars2.add(c);
							for (String c: dataLine.split("\t"))
								image2.add(Integer.parseInt(c));
						} else {
							line = 0;
							dt.add(new DataTree(chars1, chars2, image1, image2));
							chars1 = new ArrayList<>();
							chars2 = new ArrayList<>();
							image1 = new ArrayList<>();
							image2 = new ArrayList<>();
							
						}
					}
				}
			} catch (NumberFormatException | IOException e) {
				e.printStackTrace();
			}
		} catch (NumberFormatException | IOException e) {
			e.printStackTrace();
		}
		
		return dt;
	}
	
	
	public static Map<List<String>, Double> getFactorsFromFile(String filePath){
		Map <List<String>, Double> map = new HashMap<List<String>, Double>();
		try (BufferedReader br = new BufferedReader(new FileReader(filePath))){
			String line = null;
			while ((line = br.readLine()) != null) {
				line = line.trim();
				String[] lineArr = line.split("\t");
				List<String> order = new ArrayList<>(Arrays.asList(lineArr[0], lineArr[1])); 
				map.put(order, Double.parseDouble((lineArr[2])));
			}
		} catch (NumberFormatException | IOException e) {
			e.printStackTrace();
		}
		
		return map;
	}
	
	public static Character getMaxCharMatch(Integer image) {
		Character pred = 'e';
		Double max = 0.0;
		for (Character ch : characters) {
			Double prob = Math.pow(10, getOCRFactor(image, ch));
			if (max < prob){
				max = prob;
				pred = ch;
			}
		}
		return pred;
	}
	
	public static Double getTransFactor(Character prevState, Character state) {
		return Math.log10(transMap.get(Arrays.asList(String.valueOf(prevState),String.valueOf(state))));
	}
	
	
	public static Double getOCRFactor(Integer image, Character character) {
		return Math.log10(ocrMap.get(Arrays.asList(String.valueOf(image), String.valueOf(character))));
	}
	
	public static Double getSkipFactor(int index, List<Integer> image, List<Character> chars) {
		Double prob = 0.0;
		for (int i=0; i< image.size(); i++) {
				if (image.get(i).equals(image.get(index))){
					if (chars.get(i).equals(chars.get(index))) {
						prob = prob + Math.log10(5.0);
					} else prob = prob +Math.log10(1.0);
				}
		}
		return prob;
	}
	
	public static Double getPairSkipFactor(int index, List<Integer> image1, List<Character> chars1, List<Integer> image2, List<Character> chars2) {
		Double prob = 0.0;
		for (int j=0; j<image2.size(); j++){
			if (image1.get(index).equals(image2.get(j))){
				if (chars2.get(j).equals(chars1.get(index))) {
					prob = prob + Math.log10(5.0);
				} else prob = prob +Math.log10(1.0);
			}
		}
		return prob;
	}
	
	
}
