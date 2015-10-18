package cse.iitd;


import java.util.List;

public class OCRModel implements GraphicalModel{

	@Override
	public Double getProduct(List<Integer> image, List<Character> chars) {
		Double ocrFactor = GraphicalModelUtil.getOCRFactor(image, chars, ocrMap);
		Double logProb = ocrFactor;
		//Double prob = Math.pow(10, logProb);
		
		return logProb;
	}

}
