package cse.iitd;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class GraphicalModels {
	
	
	public static Double modelScore(List<Integer> image, List<Character> chars, int model) {
		GraphicalModel gm = null;
		switch (model) {
		case 1:
			gm = new OCRModel();
			break;
		case 2:
			gm = new TransitionModel();
			break;
		case 3:
			gm = new SkipModel();
			break;
		}
		return gm.modelScore(image, chars);
	}
	
	public static List<Character> getPrediction(List<Integer> image, int model) {
		GraphicalModel gm = null;
		switch (model) {
		case 1:
			gm = new OCRModel();
			break;
		case 2:
			gm = new TransitionModel();
			break;
		case 3:
			gm = new SkipModel();
			break;
		}
		//System.out.println(gm.predictedChars(image));
		return gm.predictedChars(image);
	}
	
	private static void runModelOnTestData(List<List<Integer>> images, List<List<Character>> chars, int model, String fileName) {
		Double wordClassified = 0.0;
		Double charClassified = 0.0;
		Double logModelScore = 0.0;
		int totalChars = 0;
		
		for (int i = 0; i<images.size(); i ++){
			
			List<Character> wordPredict = getPrediction(images.get(i),  model);
			
			try {
				GraphicalModelUtil.writeToFile(images.get(i), chars.get(i), wordPredict, fileName, model);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//System.out.println(images.get(i)+"  "+chars.get(i)+"  "+ wordPredict);
			for (int j=0; j< wordPredict.size(); j ++){
				totalChars++;
				if(wordPredict.get(j).equals(chars.get(i).get(j)))
					charClassified ++;
			}
			if ( chars.get(i).equals(wordPredict)){
				wordClassified ++;
			}
			
			logModelScore = logModelScore + Math.log(modelScore(images.get(i), chars.get(i), model));
		}
		System.out.println(("Character-Wise Accuracy: "+(charClassified * 100)/(double)totalChars));
		System.out.println(("Word-Wise Accuracy: "+(wordClassified * 100)/(double)images.size()));
		System.out.println("Average log likelyhood: "+(logModelScore /(double)images.size()));
		
		
		
	}
	
private static void runOnLargeData() {
		
		for (int i=1; i<3; i++) {
			List<List<Integer>> images = GraphicalModelUtil.getImagesFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\large\\allimages"+i+".dat");
			List<List<Character>> chars = GraphicalModelUtil.getCharsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\large\\allwords.dat");
			
			runModelOnTestData(images, chars, 3, "allimages"+i+".dat");
		}
		
	}

	private static void runOnSmallData() {
		List<List<Integer>> images = GraphicalModelUtil.getImagesFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\small\\images.dat");
		List<List<Character>> chars = GraphicalModelUtil.getCharsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\small\\words.dat");
		for (int i=1; i<4; i++) {
			runModelOnTestData(images, chars, i, "images.dat");
		}
		
	}

	
	public static void main(String[] args) throws IOException {
		List<Integer> image = new ArrayList<Integer>();
		image.add(160);
		image.add(733);
		image.add(789);
		image.add(387);
		image.add(733);
		
		List<Character> chars = new ArrayList<Character>();
		chars.add('a');
		chars.add('s');
		chars.add('h');
		chars.add('e');
		chars.add('s');
		
		
		
		//System.out.println(modelScore(image, chars, 1));
		//modelScore(image, chars, 1);
		//modelScore(image, chars, 2);
		//modelScore(image, chars, 3);
		//runOnSmallData();
		runOnLargeData();

	}

	
	

}

