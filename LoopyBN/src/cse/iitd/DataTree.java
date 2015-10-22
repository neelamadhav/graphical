package cse.iitd;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DataTree {
	
	private List<Integer> image1;
	private List<Integer> image2;
	private List<Character> chars1;
	private List<Character> chars2;
	
	private Map<String, HMMGraphNode> ocrGraph = new HashMap<String, HMMGraphNode>();
	private Map<String, HMMGraphNode> transGraph = new HashMap<String, HMMGraphNode>();
	private Map<String, HMMGraphNode> skipGraph = new HashMap<String, HMMGraphNode>();
	private Map<String, HMMGraphNode> pairSkipGraph = new HashMap<String, HMMGraphNode>();
	
	
	
	public DataTree(List<Character> chars1, List<Character> chars2, List<Integer> image1, List<Integer> image2) {
		super();
		this.chars1 = chars1;
		this.chars2 = chars2;
		this.image1 = image1;
		this.image2 = image2;
		getHMMGraphs(image1, image2);
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



	public DataTree(List<Integer> image1, List<Integer> image2) {
		super();
		
		this.image1 = image1;
		this.image2 = image2;
		getHMMGraphs(image1, image2);
	}
	
	public String toString(){
		return image1.toString()+" "+image2.toString()+" "+ocrGraph.toString()+" "+transGraph.toString()+" "+skipGraph.toString()+" "+pairSkipGraph.toString();
	}
	
	private void getHMMGraphs(List<Integer> image1, List<Integer> image2) {
		getOCRandTransFactors( image1);
		getOCRandTransFactors( image2);
		
		getSkipFactors(image1, image2);
		getPairSkipFactors(image1, image2);
	}
	
	private void getSkipFactors(List<Integer> image1, List<Integer> image2) {
		Map<String, List<String>> skipFactor1 = GraphicalModelUtil.getSkipFactor(image1);
		addEdges(skipFactor1, skipGraph, 0, "skip");
		addEdges(skipFactor1, pairSkipGraph, 0, "skip");
		
		Map<String, List<String>> skipFactor2 = GraphicalModelUtil.getSkipFactor(image2);
		addEdges(skipFactor2, skipGraph, 2 * image1.size(), "skip");
		addEdges(skipFactor2, pairSkipGraph, 2 * image1.size(), "skip");
		
	}
	
	private void addEdges(Map<String, List<String>> skipFactor, Map<String, HMMGraphNode> graph, int index, String type){
		
		for (String id: skipFactor.keySet()) {
			String key = String.valueOf(Integer.parseInt(id) + index);
			for (String i: skipFactor.get(id)) {
				
				Map<String, String> neighbors = graph.get(key).getNeighbors();
				neighbors.put(String.valueOf(Integer.parseInt(i)+index), type);
				graph.get(key).setNeighbors(neighbors);
			}
		}
	}
	
	private void getPairSkipFactors(List<Integer> image1, List<Integer> image2) {
		Map<String, List<String>> pairSkipFactor = GraphicalModelUtil.getPairSkipFactor(image1, image2);
		addEdges(pairSkipFactor, pairSkipGraph, 0, "pair");
	}

	private void getOCRandTransFactors(List<Integer> image) {
		int index = ocrGraph.size();
		String word = "1";
		if (index != 0) 
			word = "2";
		
		for (int i = 0; i< image.size(); i++){
			String charId = String.valueOf(i + index);
			String imageId = String.valueOf(image.size()+i + index);
			
			HMMGraphNode charNode = new HMMGraphNode();
			HMMGraphNode imageNode = new HMMGraphNode();
			
			charNode.setId(charId);
			imageNode.setId(imageId);
			
			charNode.setName("Y"+word+charId);
			imageNode.setName("X"+word+imageId);
			
			charNode.setValue(String.valueOf(image.get(i)));
			imageNode.setValue(String.valueOf(image.get(i)));
			
			charNode.setType("char");
			imageNode.setType("image");
			
			Map<String, String> map = new HashMap<>();
			map.put(imageId, "ocr");
			charNode.setNeighbors(map);
			map = new HashMap<>();
			map.put(charId, "ocr");
			imageNode.setNeighbors(map);
			
			
			
			ocrGraph.put(charId, charNode);
			ocrGraph.put(imageId, imageNode);
			
			
			addTransFactors(charNode, imageNode, image, index, i, transGraph);
			addTransFactors(charNode, imageNode, image, index, i, pairSkipGraph);
			addTransFactors(charNode, imageNode, image, index, i, skipGraph);
		} 
	}
	
	private void addTransFactors(HMMGraphNode charNode, HMMGraphNode imageNode, List<Integer> image, int index, int i, Map<String, HMMGraphNode> graph) {
		
		HMMGraphNode transCharNode = new HMMGraphNode(charNode);
		HMMGraphNode transimageNode = new HMMGraphNode(imageNode);
		
		if (i != 0 && i != image.size() - 1) {
			Map<String, String> map = new HashMap<>();
			map.put(String.valueOf(image.size()+i + index), "ocr");
			map.put(String.valueOf(i+index-1), "trans");
			map.put(String.valueOf(i+index+1), "trans");
			
			transCharNode.setNeighbors(map);
		} else if (i!=0) {
			Map<String, String> map = new HashMap<>();
			map.put(String.valueOf(image.size()+i + index), "ocr");
			map.put(String.valueOf(i+index-1), "trans");
			
			transCharNode.setNeighbors(map);
			
		} else if (i==0) {
			Map<String, String> map = new HashMap<>();
			map.put(String.valueOf(image.size()+i + index), "ocr");
			map.put(String.valueOf(i+index+1), "trans");
			
			transCharNode.setNeighbors(map);
		}
		graph.put(String.valueOf(i + index), transCharNode);
		graph.put(String.valueOf(image.size()+i + index), transimageNode);
	}
	

	public Map<String, HMMGraphNode> getOcrGraph() {
		return ocrGraph;
	}

	public void setOcrGraph(Map<String, HMMGraphNode> ocrGraph) {
		this.ocrGraph = ocrGraph;
	}

	public Map<String, HMMGraphNode> getTransGraph() {
		return transGraph;
	}

	public void setTransGraph(Map<String, HMMGraphNode> transGraph) {
		this.transGraph = transGraph;
	}

	public Map<String, HMMGraphNode> getSkipGraph() {
		return skipGraph;
	}

	public void setSkipGraph(Map<String, HMMGraphNode> skipGraph) {
		this.skipGraph = skipGraph;
	}

	public Map<String, HMMGraphNode> getPairSkipGraph() {
		return pairSkipGraph;
	}

	public void setPairSkipGraph(Map<String, HMMGraphNode> pairSkipGraph) {
		this.pairSkipGraph = pairSkipGraph;
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
