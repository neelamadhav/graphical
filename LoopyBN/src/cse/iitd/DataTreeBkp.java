package cse.iitd;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DataTreeBkp {
	private List<Character> chars1;
	private List<Character> chars2;
	private List<Integer> image1;
	private List<Integer> image2;
	
	private Map<String, HMMGraphNodeBkp> ocrGraph = new HashMap<String, HMMGraphNodeBkp>();
	private Map<String, HMMGraphNodeBkp> transGraph = new HashMap<String, HMMGraphNodeBkp>();
	private Map<String, HMMGraphNodeBkp> skipGraph = new HashMap<String, HMMGraphNodeBkp>();
	private Map<String, HMMGraphNodeBkp> pairSkipGraph = new HashMap<String, HMMGraphNodeBkp>();
	
	private static Map<String, Double> ocrMap = GraphicalModelUtilBkp.getFactorsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset-2\\potentials\\ocr.dat");
	private static Map<String, Double> transMap = GraphicalModelUtilBkp.getFactorsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset-2\\potentials\\trans.dat");
	
	public DataTreeBkp(List<Character> chars1, List<Character> chars2, List<Integer> image1, List<Integer> image2) {
		super();
		this.chars1 = chars1;
		this.chars2 = chars2;
		this.image1 = image1;
		this.image2 = image2;
		getHMMGraphs(chars1, chars2, image1, image2);
	}
	
	
	
	public String toString(){
		return chars1.toString()+" "+image1.toString()+" "+chars2.toString()+" "+image2.toString()+" "+ocrGraph.toString()+" "+transGraph.toString()+" "+skipGraph.toString()+" "+pairSkipGraph.toString();
	}
	
	private void getHMMGraphs(List<Character> chars1, List<Character> chars2, List<Integer> image1,
			List<Integer> image2) {
		getOCRandTransFactors(chars1, image1);
		getOCRandTransFactors(chars2, image2);
		getSkipFactors(chars1, chars2, image1, image2);
		getPairSkipFactors(chars1, chars2, image1, image2);
	}
	
	private void getSkipFactors(List<Character> chars1, List<Character> chars2, List<Integer> image1,
			List<Integer> image2) {
		Map<String, List<String>> skipFactor1 = GraphicalModelUtilBkp.getSkipFactor(image1, chars1);
		addEdges(skipFactor1, skipGraph, 0);
		addEdges(skipFactor1, pairSkipGraph, 0);
		
		Map<String, List<String>> skipFactor2 = GraphicalModelUtilBkp.getSkipFactor(image2, chars2);
		addEdges(skipFactor2, skipGraph, 2 * chars1.size());
		addEdges(skipFactor2, pairSkipGraph, 2 * chars1.size());
		
	}
	
	private void addEdges(Map<String, List<String>> skipFactor, Map<String, HMMGraphNodeBkp> graph, int index){
		
		for (String id: skipFactor.keySet()) {
			String key = String.valueOf(Integer.parseInt(id) + index);
			for (String i: skipFactor.get(id)) {
				List<String> neighbors = graph.get(key).getNeighbors();
				neighbors.add(String.valueOf(Integer.parseInt(i)+index));
				graph.get(key).setNeighbors(neighbors);
				
				List<Double> probs = graph.get(key).getProbs();
				probs.add(5.0);
				graph.get(key).setProbs(probs);				
				
			}
		}
	}
	
	private void getPairSkipFactors(List<Character> chars1, List<Character> chars2, List<Integer> image1,
			List<Integer> image2) {
		Map<String, List<String>> pairSkipFactor = GraphicalModelUtilBkp.getPairSkipFactor(image1, chars1, image2, chars2);
		addEdges(pairSkipFactor, pairSkipGraph, 0);
	}

	private void getOCRandTransFactors(List<Character> chars, List<Integer> image) {
		int index = ocrGraph.size();
		for (int i = 0; i< chars.size(); i++){
			HMMGraphNodeBkp charNode = new HMMGraphNodeBkp();
			HMMGraphNodeBkp imageNode = new HMMGraphNodeBkp();
			charNode.setId(String.valueOf(i + index));
			imageNode.setId(String.valueOf(chars.size()+i + index));
			
			charNode.setNode(String.valueOf(chars.get(i)));
			imageNode.setNode(String.valueOf(image.get(i)));
			
			charNode.setType("char");
			imageNode.setType("image");
			
			charNode.setNeighbors(getArray(chars.size()+i + index));
			imageNode.setNeighbors(getArray(i + index));
			
			Double prob = GraphicalModelUtil.getOCRFactor(image.get(i), chars.get(i), ocrMap);
			charNode.setProbs(getArray(prob));
			imageNode.setProbs(getArray(prob));
			
			ocrGraph.put(String.valueOf(i + index), charNode);
			ocrGraph.put(String.valueOf(chars.size()+i + index), imageNode);
			
			
			addTransFactors(charNode, imageNode, chars, image, index, i, transGraph);
			addTransFactors(charNode, imageNode, chars, image, index, i, skipGraph);
			addTransFactors(charNode, imageNode, chars, image, index, i, pairSkipGraph);
			
		} 
	}
	
	private void addTransFactors(HMMGraphNodeBkp charNode, HMMGraphNodeBkp imageNode, List<Character> chars, List<Integer> image, int index,
			int i, Map<String, HMMGraphNodeBkp> graph) {
		HMMGraphNodeBkp transCharNode = new HMMGraphNodeBkp(charNode);
		HMMGraphNodeBkp transimageNode = new HMMGraphNodeBkp(imageNode);
		
		if (i != 0 && i != chars.size() - 1) {
			transCharNode.setNeighbors(getArray(chars.size()+i + index, i+index-1, i+index+1));
			//transimageNode.setNeighbors(getArray(i + index, chars.size()+i + index-1));
			
			Double ocrProb = GraphicalModelUtil.getOCRFactor(image.get(i), chars.get(i), ocrMap);
			Double prevTransProb = GraphicalModelUtil.getTransFactor(chars.get(i-1), chars.get(i), transMap);
			Double nextTransProb = GraphicalModelUtil.getTransFactor(chars.get(i), chars.get(i+1), transMap);
			
			transCharNode.setProbs(getArray(ocrProb, prevTransProb, nextTransProb));
			//transimageNode.setProbs(getArray(ocrProb, transProb));
		} else if (i!=0) {
			transCharNode.setNeighbors(getArray(chars.size()+i + index, i+index-1));
			//transimageNode.setNeighbors(getArray(i + index, chars.size()+i + index-1));
			
			Double ocrProb = GraphicalModelUtil.getOCRFactor(image.get(i), chars.get(i), ocrMap);
			Double prevTransProb = GraphicalModelUtil.getTransFactor(chars.get(i-1), chars.get(i), transMap);
			
			transCharNode.setProbs(getArray(ocrProb, prevTransProb));
		} else if (i==0) {
			transCharNode.setNeighbors(getArray(chars.size()+i + index, i+index+1));
			Double ocrProb = GraphicalModelUtil.getOCRFactor(image.get(i), chars.get(i), ocrMap);
			Double nextTransProb = GraphicalModelUtil.getTransFactor(chars.get(i), chars.get(i+1), transMap);
			transCharNode.setProbs(getArray(ocrProb, nextTransProb));
		}
		graph.put(String.valueOf(i + index), transCharNode);
		graph.put(String.valueOf(chars.size()+i + index), transimageNode);
	}
	
	private List<String> getArray(int i) {
		List<String> list = new ArrayList<String> ();
		list.add(String.valueOf(i));
		return list;
	}

	private List<Double> getArray(Double prob) {
		List<Double> list = new ArrayList<Double> ();
		list.add(prob);
		return list;
	}

	private List<String> getArray(int i, int j) {
		List<String> list = new ArrayList<String> ();
		list.add(String.valueOf(i));
		list.add(String.valueOf(j));
		return list;
	}

	private List<Double> getArray(Double ocrProb, Double transProb) {
		List<Double> list = new ArrayList<Double> ();
		list.add(ocrProb);
		list.add(transProb);
		return list;
	}
	
	private List<String> getArray(int i, int j, int k) {
		List<String> list = new ArrayList<String> ();
		list.add(String.valueOf(i));
		list.add(String.valueOf(j));
		list.add(String.valueOf(k));
		return list;
	}

	private List<Double> getArray(Double ocrProb, Double transProb, Double nextProb) {
		List<Double> list = new ArrayList<Double> ();
		list.add(ocrProb);
		list.add(transProb);
		list.add(nextProb);
		return list;
	}

	public Map<String, HMMGraphNodeBkp> getOcrGraph() {
		return ocrGraph;
	}

	public void setOcrGraph(Map<String, HMMGraphNodeBkp> ocrGraph) {
		this.ocrGraph = ocrGraph;
	}

	public Map<String, HMMGraphNodeBkp> getTransGraph() {
		return transGraph;
	}

	public void setTransGraph(Map<String, HMMGraphNodeBkp> transGraph) {
		this.transGraph = transGraph;
	}

	public Map<String, HMMGraphNodeBkp> getSkipGraph() {
		return skipGraph;
	}

	public void setSkipGraph(Map<String, HMMGraphNodeBkp> skipGraph) {
		this.skipGraph = skipGraph;
	}

	public Map<String, HMMGraphNodeBkp> getPairSkipGraph() {
		return pairSkipGraph;
	}

	public void setPairSkipGraph(Map<String, HMMGraphNodeBkp> pairSkipGraph) {
		this.pairSkipGraph = pairSkipGraph;
	}

	public List<Character> getChars1() {
		return chars1;
	}
	public void setChars1(List<Character> chars1) {
		this.chars1 = chars1;
	}
	public List<Character> getChars2() {
		return chars2;
	}
	public void setChars2(List<Character> chars2) {
		this.chars2 = chars2;
	}
	public List<Integer> getImage1() {
		return image1;
	}
	public void setImage1(List<Integer> image1) {
		this.image1 = image1;
	}
	public List<Integer> getImage2() {
		return image2;
	}
	public void setImage2(List<Integer> image2) {
		this.image2 = image2;
	}
	
	
	
	
	
}
