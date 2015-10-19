package cse.iitd;


import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GraphicalModelUtil {
	//private static List<Character> characters = Arrays.asList('e','t','a','o','i','n','s','h','r','d');
	
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
						}
					
					} else {
						line = 0;
						dt.add(new DataTree(chars1, chars2, image1, image2));
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
	
	public static Double getOCRFactor(Integer image, Character character, Map<String, Double> ocrMap) {
		return ocrMap.get(String.valueOf(image)+"$$$"+String.valueOf(character));
	}
	
	public static Double getTransFactor(Character state, Character nextState, Map<String, Double> transMap) {
		return transMap.get(state+"$$$"+nextState);
	}
	
	public static Map<Integer, List<Integer>> getSkipFactor(List<Integer> image, List<Character> chars) {
		Map<Integer, List<Integer>> map = new HashMap<>();
		for (int i=0; i< image.size(); i++) {
			for (int j=i+1; j<image.size(); j++){
				if (image.get(i).equals(image.get(j))){
					if (chars.get(i).equals(chars.get(j))) {
						if(!map.containsKey(i))
							map.put(i, new ArrayList<>());
						map.get(i).add(j);
						if(!map.containsKey(j))
							map.put(j, new ArrayList<>());
						map.get(j).add(i);
						
					}  
				}
			}
		}
		return map;
	}
	
	public static Map<Integer, List<Integer>> getPairSkipFactor(List<Integer> image1, List<Character> chars1, List<Integer> image2, List<Character> chars2) {
		Map<Integer, List<Integer>> map = new HashMap<>();
		int index = 2*image1.size();
		for (int i=0; i< image1.size(); i++) {
			for (int j=0; j<image2.size(); j++){
				if (image1.get(i).equals(image2.get(j))){
					if (chars1.get(i).equals(chars2.get(j))) {
						
						if(!map.containsKey(i))
							map.put(i, new ArrayList<>());
						map.get(i).add(j+index);
						if(!map.containsKey(j+index))
							map.put(j+index, new ArrayList<>());
						map.get(j+index).add(i);
						
					}  
				}
			}
		}
		return map;
	}
	
	
	
	
}
