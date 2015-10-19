package cse.iitd;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DataTree {
	private List<Character> chars1;
	private List<Character> chars2;
	private List<Integer> image1;
	private List<Integer> image2;
	
	private Map<Integer, HMMGraphNode> ocrGraph = new HashMap<Integer, HMMGraphNode>();
	private Map<Integer, HMMGraphNode> transGraph = new HashMap<Integer, HMMGraphNode>();
	private Map<Integer, HMMGraphNode> skipGraph = new HashMap<Integer, HMMGraphNode>();
	private Map<Integer, HMMGraphNode> pairSkipGraph = new HashMap<Integer, HMMGraphNode>();
	
	private static Map<String, Double> ocrMap = GraphicalModelUtil.getFactorsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset-2\\potentials\\ocr.dat");
	private static Map<String, Double> transMap = GraphicalModelUtil.getFactorsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset-2\\potentials\\trans.dat");
	
	public DataTree(List<Character> chars1, List<Character> chars2, List<Integer> image1, List<Integer> image2) {
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
		Map<Integer, List<Integer>> skipFactor1 = GraphicalModelUtil.getSkipFactor(image1, chars1);
		addEdges(skipFactor1, skipGraph, 0);
		addEdges(skipFactor1, pairSkipGraph, 0);
		
		Map<Integer, List<Integer>> skipFactor2 = GraphicalModelUtil.getSkipFactor(image2, chars2);
		addEdges(skipFactor2, skipGraph, 2 * chars1.size());
		addEdges(skipFactor2, pairSkipGraph, 2 * chars1.size());
		
	}
	
	private void addEdges(Map<Integer, List<Integer>> skipFactor, Map<Integer, HMMGraphNode> graph, int index){
		
		for (Integer id: skipFactor.keySet()) {
			for (Integer i: skipFactor.get(id)) {
				List<Integer> neighbors = graph.get(id + index).getNeighbors();
				neighbors.add(i+index);
				graph.get(id + index).setNeighbors(neighbors);
				
				List<Double> probs = graph.get(id + index).getProbs();
				probs.add(5.0);
				graph.get(id + index).setProbs(probs);				
				
			}
		}
	}
	
	private void getPairSkipFactors(List<Character> chars1, List<Character> chars2, List<Integer> image1,
			List<Integer> image2) {
		Map<Integer, List<Integer>> pairSkipFactor = GraphicalModelUtil.getPairSkipFactor(image1, chars1, image2, chars2);
		addEdges(pairSkipFactor, pairSkipGraph, 0);
	}

	private void getOCRandTransFactors(List<Character> chars, List<Integer> image) {
		int index = ocrGraph.size();
		for (int i = 0; i< chars.size(); i++){
			HMMGraphNode charNode = new HMMGraphNode();
			HMMGraphNode imageNode = new HMMGraphNode();
			charNode.setId(i + index);
			imageNode.setId(chars.size()+i + index);
			
			charNode.setNode(String.valueOf(chars.get(i)));
			imageNode.setNode(String.valueOf(image.get(i)));
			
			charNode.setType("char");
			imageNode.setType("image");
			
			charNode.setNeighbors(getArray(chars.size()+i + index));
			imageNode.setNeighbors(getArray(i + index));
			
			Double prob = GraphicalModelUtil.getOCRFactor(image.get(i), chars.get(i), ocrMap);
			charNode.setProbs(getArray(prob));
			imageNode.setProbs(getArray(prob));
			
			ocrGraph.put(i + index, charNode);
			ocrGraph.put(chars.size()+i + index, imageNode);
			
			
			addTransFactors(charNode, imageNode, chars, image, index, i, transGraph);
			addTransFactors(charNode, imageNode, chars, image, index, i, skipGraph);
			addTransFactors(charNode, imageNode, chars, image, index, i, pairSkipGraph);
			
		} 
	}
	
	private void addTransFactors(HMMGraphNode charNode, HMMGraphNode imageNode, List<Character> chars, List<Integer> image, int index,
			int i, Map<Integer, HMMGraphNode> graph) {
		HMMGraphNode transCharNode = new HMMGraphNode(charNode);
		HMMGraphNode transimageNode = new HMMGraphNode(imageNode);
		
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
			transCharNode.setNeighbors(getArray(chars.size()+i + index));
			Double ocrProb = GraphicalModelUtil.getOCRFactor(image.get(i), chars.get(i), ocrMap);
			transCharNode.setProbs(getArray(ocrProb));
		}
		graph.put(i + index, transCharNode);
		graph.put(chars.size()+i + index, transimageNode);
	}
	
	private List<Integer> getArray(int i) {
		List<Integer> list = new ArrayList<Integer> ();
		list.add(i);
		return list;
	}

	private List<Double> getArray(Double prob) {
		List<Double> list = new ArrayList<Double> ();
		list.add(prob);
		return list;
	}

	private List<Integer> getArray(int i, int j) {
		List<Integer> list = new ArrayList<Integer> ();
		list.add(i);
		list.add(j);
		return list;
	}

	private List<Double> getArray(Double ocrProb, Double transProb) {
		List<Double> list = new ArrayList<Double> ();
		list.add(ocrProb);
		list.add(transProb);
		return list;
	}
	
	private List<Integer> getArray(int i, int j, int k) {
		List<Integer> list = new ArrayList<Integer> ();
		list.add(i);
		list.add(j);
		list.add(k);
		return list;
	}

	private List<Double> getArray(Double ocrProb, Double transProb, Double nextProb) {
		List<Double> list = new ArrayList<Double> ();
		list.add(ocrProb);
		list.add(transProb);
		list.add(nextProb);
		return list;
	}

	public Map<Integer, HMMGraphNode> getOcrGraph() {
		return ocrGraph;
	}

	public void setOcrGraph(Map<Integer, HMMGraphNode> ocrGraph) {
		this.ocrGraph = ocrGraph;
	}

	public Map<Integer, HMMGraphNode> getTransGraph() {
		return transGraph;
	}

	public void setTransGraph(Map<Integer, HMMGraphNode> transGraph) {
		this.transGraph = transGraph;
	}

	public Map<Integer, HMMGraphNode> getSkipGraph() {
		return skipGraph;
	}

	public void setSkipGraph(Map<Integer, HMMGraphNode> skipGraph) {
		this.skipGraph = skipGraph;
	}

	public Map<Integer, HMMGraphNode> getPairSkipGraph() {
		return pairSkipGraph;
	}

	public void setPairSkipGraph(Map<Integer, HMMGraphNode> pairSkipGraph) {
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
