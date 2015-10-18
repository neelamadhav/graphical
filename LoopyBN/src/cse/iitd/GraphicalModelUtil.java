package cse.iitd;


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
	private static List<Character> characters = Arrays.asList('e','t','a','o','i','n','s','h','r','d');
	
	//private static List<Character> characters = Arrays.asList('a','b','c');
	
	public static List<List<Integer>> getImagesFromFile(String filePath){
		List<List<Integer>> images = new ArrayList<>();
		try (BufferedReader br = new BufferedReader(new FileReader(filePath))){
			String line = null;
			while ((line = br.readLine()) != null) {
				line = line.trim();
				List<String> lineArr = Arrays.asList(line.split("\t"));
				images.add(getIntegerList(lineArr));
			}
		} catch (NumberFormatException | IOException e) {
			e.printStackTrace();
		}
		
		return images;
	}
	
	public static List<List<Character>> getCharsFromFile(String filePath){
		List<List<Character>> chars = new ArrayList<>();
		try (BufferedReader br = new BufferedReader(new FileReader(filePath))){
			String line = null;
			while ((line = br.readLine()) != null) {
				line = line.trim();
				List<Character> list = new ArrayList<Character>();
				for(char c : line.toCharArray()) {
				    list.add(c);
				}
				chars.add(list);
			}
		} catch (NumberFormatException | IOException e) {
			e.printStackTrace();
		}
		
		return chars;
	}
	
		
	private static List<Integer> getIntegerList (List<String> list) {
		List<Integer> lis = new ArrayList<>();
		for (String li : list) {
			lis.add(Integer.parseInt(li));
		}
		return lis;
	}
	
		
	public static Map<String, Double> getFactorsFromFile(String filePath){
		Map <String, Double> map = new HashMap<String, Double>();
		try (BufferedReader br = new BufferedReader(new FileReader(filePath))){
			String line = null;
			while ((line = br.readLine()) != null) {
				line = line.trim();
				String[] lineArr = line.split("\t");
				map.put(lineArr[0]+"$$$"+lineArr[1], Double.parseDouble((lineArr[2])));
			}
		} catch (NumberFormatException | IOException e) {
			e.printStackTrace();
		}
		
		return map;
	}
	
	public static Double getOCRFactor(List<Integer> image, List<Character> chars, Map<String, Double> ocrMap) {
		Double prob = 0.0;
		for (int i=0; i< image.size(); i++) {
			prob = prob + Math.log10(ocrMap.get(image.get(i)+"$$$"+chars.get(i)));
		}
		return prob;
	}
	
	public static Double getTransFactor(List<Character> chars, Map<String, Double> transMap) {
		Double prob = 0.0;
		for (int i=1; i< chars.size(); i++) {
				prob = prob + Math.log10(transMap.get(chars.get(i-1)+"$$$"+chars.get(i)));
		}
		return prob;
	}
	
	public static Double getSkipFactor(List<Integer> image, List<Character> chars) {
		Double prob = 0.0;
		for (int i=0; i< image.size(); i++) {
			for (int j=i+1; j<image.size(); j++){
				if (image.get(i).equals(image.get(j))){
					if (chars.get(i).equals(chars.get(j))) {
						prob = prob + Math.log10(5.0);
					} else prob = prob +Math.log10(1.0);
				}
			}
		}
		return prob;
	}
	
	public static void getAllChars(List<List<Character>> combs, List<Character> item, int count, int length){
        if (count < length){
            for (int i = 0; i < characters.size(); i++) {
            	if (item.size() > count)
            		item.remove(count);
                item.add(count, characters.get(i));
                getAllChars(combs, item, count+1, length);
            }
        }else{
        	List<Character> newItem = new ArrayList<>();
        	newItem.addAll(item);
            combs.add(newItem);
        }
    }

	public static void writeToFile(List<Integer> image, List<Character> chars, List<Character> wordPredict, String type, int model) throws IOException {
		File file = new File("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\predict_"+type+"_"+model+".txt");

		// if file doesnt exists, then create it
		if (!file.exists()) {
			file.createNewFile();
		}

		FileWriter fw = new FileWriter(file.getAbsoluteFile(), true);
		BufferedWriter bw = new BufferedWriter(fw);
		for (int i = 0; i< image.size(); i ++)
			bw.write(image.get(i)+"\t");
		for (int i = 0; i< image.size(); i ++)
			bw.write(chars.get(i));
		bw.write("\t");
		for (int i = 0; i< image.size(); i ++)
			bw.write(wordPredict.get(i));
		bw.write("\n");
		bw.close();
		
	}
	
}
