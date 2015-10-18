package com.iitd;

import java.util.List;

public class P24 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		/*for(int i=1; i<=3; i ++)
			runOnShortData(i);*/
		runOnLargeData(1);

	}

	public static void runOnLargeData(int model) {
		for (int k = 1; k <= 5; k++) {
			List<List<Integer>> images = GraphicalModelUtil
					.getImages("/home/madhav/Desktop/ass2/OCRdataset/data/large/allimages" + k + ".dat");
			List<List<Character>> chars = GraphicalModelUtil
					.getCharacters("/home/madhav/Desktop/ass2/OCRdataset/data/small/allwords.dat");

			double wordMatch = 0;
			double charCount = 0;
			double charMatch = 0;
			double logLikelyhood = 0;

			for (int i = 0; i < images.size(); i++) {
				List<Character> predict = GraphicalModel.getPrediction(
						images.get(i), model);
				if (predict.equals(chars.get(i)))
					wordMatch++;
				for (int j = 0; j < chars.get(i).size(); j++) {
					charCount++;
					if (chars.get(i).get(j).equals(predict.get(j)))
						charMatch++;
				}
				GraphicalModelUtil.writeToFile(images.get(i), chars.get(i), predict, "short", model);
				logLikelyhood = logLikelyhood
						+ Math.log(GraphicalModel.modelProbability(images.get(i),
								chars.get(i), model));
			}

			System.out.println("Word Match: " + wordMatch
					/ (double) images.size());
			System.out.println("Word Match: " + charMatch / (double) charCount);
			System.out.println("LogLikelyhood: " + logLikelyhood
					/ (double) images.size());
		}
	}

}
