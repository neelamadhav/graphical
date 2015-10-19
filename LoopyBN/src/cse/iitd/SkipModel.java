package cse.iitd;


import java.util.List;

public class SkipModel implements GraphicalModel{

	@Override
	public Double getProduct(List<Integer> image, List<Character> chars) {
		Double ocrFactor = GraphicalModelUtil.getOCRFactor(image, chars, ocrMap);
		Double transFactor = GraphicalModelUtil.getTransFactor(chars, transMap);
		Double skipFactor = GraphicalModelUtil.getSkipFactor(image, chars);
		Double logProb = ocrFactor + transFactor + skipFactor;
		//System.out.println(image + " "+chars+" "+Math.pow(10, skipFactor));
		//Double prob = Math.pow(10, logProb);
		
		return logProb;
	}

}
