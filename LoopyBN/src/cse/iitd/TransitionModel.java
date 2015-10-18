package cse.iitd;


import java.util.List;

public class TransitionModel implements GraphicalModel{

	@Override
	public Double getProduct(List<Integer> image, List<Character> chars) {
		Double ocrFactor = GraphicalModelUtil.getOCRFactor(image, chars, ocrMap);
		Double transFactor = GraphicalModelUtil.getTransFactor(chars, transMap);
		Double logProb = ocrFactor + transFactor;
		//Double prob = Math.pow(10, logProb);
		
		return logProb;
	}

}
