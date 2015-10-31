package cse.iitd;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.SortedSet;
import java.util.TreeSet;

public class MessagePassingOverJT {
	private static List<Character> characters = Arrays.asList('e','t','a','o','i','n','s','h','r','d');
	private static Map<List<String>, Double> ocrMap = GraphicalModelUtil.getFactorsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\potentials\\ocr.dat");
	private static Map<List<String>, Double> transMap = GraphicalModelUtil.getFactorsFromFile("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\potentials\\trans.dat");
	
	public static class ModelPrediction {
		public List<Character> chars1;
		public List<Character> chars2;
		public Double modelScore;
		
		public ModelPrediction(List<Character> chars1, List<Character> chars2, Double modelScore){
			this.chars1 = chars1;
			this.chars2 = chars2;
			this.modelScore = modelScore;
		}
		
	}
	
	public static void main(String[] args) {
		List<Integer> image1 = new ArrayList<Integer>();
		image1.add(207);
		image1.add(10);
		image1.add(728);
		image1.add(10);
		image1.add(602);
		image1.add(551);
		
		List<Character> chars1 = new ArrayList<Character>();
		chars1.add('s');
		chars1.add('t');
		chars1.add('r');
		chars1.add('t');
		chars1.add('a');
		chars1.add('t');
		
		List<Integer> image2 = new ArrayList<Integer>();
		image2.add(728);
		image2.add(72);
		image2.add(401);
		image2.add(57);
		image2.add(510);
		image2.add(728);
		
		List<Character> chars2 = new ArrayList<Character>();
		chars2.add('r');
		chars2.add('a');
		chars2.add('t');
		chars2.add('h');
		chars2.add('e');
		chars2.add('r');
		
		//DataTree dt = new DataTree(chars1, chars2, image1, image2);
		
		/*List<Integer> image1 = new ArrayList<Integer>();
		image1.add(172);
		image1.add(525);
		image1.add(4);
		image1.add(66);
		
		List<Integer> image2 = new ArrayList<Integer>();
		image2.add(59);
		image2.add(4);
		image2.add(956);*/
		
		String dataFile = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\data-tree.dat";
		String truthFile = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\truth-tree.dat";
		System.out.print("data-tree\t");
		List<DataTree> dtList = GraphicalModelUtil.getDataTree(dataFile, truthFile);
		 runAlgo(dtList, "pair");		
		
		dataFile = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\data-loops.dat";
		 truthFile = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\truth-loops.dat";
		 System.out.print("data-loop\t");
		 dtList = GraphicalModelUtil.getDataTree(dataFile, truthFile);
		 runAlgo(dtList, "pair");
		
		dataFile = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\data-treeWS.dat";
		truthFile = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\truth-treeWS.dat";
		System.out.print("data-treeWs\t");
		dtList = GraphicalModelUtil.getDataTree(dataFile, truthFile);
		 runAlgo(dtList, "pair");
		
		dataFile = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\data-loopsWS.dat";
		truthFile = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\OCRdataset\\data\\truth-loopsWS.dat";
		System.out.print("data-loopWS\t");
		dtList = GraphicalModelUtil.getDataTree(dataFile, truthFile);
		 runAlgo(dtList, "pair");
		 System.out.print("data-loopWS\tskip\t");
		 runAlgo(dtList, "skip");
		 System.out.print("data-loopWS\ttrans\t");
		 runAlgo(dtList, "trans");
		 System.out.print("data-loopWS\tocr\t");
		 runAlgo(dtList, "ocr");
		
		//DataTree dt = new DataTree(chars1, chars2, image1, image2);
		
		
		
		
		
	}
	

	private static void runAlgo(List<DataTree> dtList, String type) {
		double wordMatch = 0;
		double charCount = 0;
		double charMatch = 0;
		double logLikelyhood = 0;
		double totalTime = 0;
		for (DataTree dt: dtList){
			Map<String, HMMGraphNode> graph = new HashMap<String, HMMGraphNode>(dt.getPairSkipGraph());
			if(type == "pair")
				graph = new HashMap<String, HMMGraphNode>(dt.getPairSkipGraph());
			else if(type == "skip")
				graph = new HashMap<String, HMMGraphNode>(dt.getTransGraph());
			else if(type == "ocr")
				graph = new HashMap<String, HMMGraphNode>(dt.getOcrGraph());
			else if(type == "trans")
				graph = new HashMap<String, HMMGraphNode>(dt.getTransGraph());
			Map<String, CliqueTreeNode> ct = constructCliqueTree(graph);
			
			Random rand = new Random();
			String root = String.valueOf(rand.nextInt(ct.size()-1)+1);
			long startTime = System.currentTimeMillis();
			forwardMessagePassing(ct, graph, root);
			backwardMessagePassing(ct, graph, root);
			ModelPrediction pred = getPrediction(dt.getImage1(), dt.getImage2(), ct);
			long stopTime = System.currentTimeMillis();
			if(pred.chars1.equals(dt.getChars1()) && pred.chars2.equals(dt.getChars2()))
				wordMatch++;
			for (int j=0; j<pred.chars1.size(); j++){
				if (pred.chars1.get(j).equals(dt.getChars1().get(j)))
					charMatch++;
				charCount++;
			}
			for (int j=0; j<pred.chars2.size(); j++){
				if (pred.chars2.get(j).equals(dt.getChars2().get(j)))
					charMatch++;
				charCount++;
			}
			logLikelyhood = logLikelyhood+pred.modelScore;
			long elapsedTime = stopTime - startTime;
			totalTime = totalTime + elapsedTime;
			//System.out.println(pred.chars1+" "+pred.chars2+" "+dt.getChars1()+"  "+dt.getChars2() );
		}
		//System.out.println("Word Match: "+ wordMatch/(double)dtList.size());
		//System.out.println("Character Match: "+ charMatch/charCount);
		//System.out.println("LogLikelyhood: "+ logLikelyhood/(double)dtList.size());
		//System.out.println("TimeStamp: "+ totalTime/(double)dtList.size());
		System.out.println(wordMatch/(double)dtList.size()+"\t"+charMatch/charCount+"\t"+logLikelyhood/(double)dtList.size()+"\t"+totalTime/(double)dtList.size());
		
	}



	private static ModelPrediction getPrediction(List<Integer> image1, List<Integer> image2, Map<String, CliqueTreeNode> ct) {
		Map<Integer, String> first = new HashMap<>();
		Map<Integer, String> second = new HashMap<>();
		Double prob = 0.0;
		for(String node: ct.keySet()){
			Integer varEliminated = Integer.valueOf(ct.get(node).getVarEliminated());
			if(varEliminated < image1.size()){
				List<String> pred =getPrediction(ct.get(node));
				first.put(varEliminated, pred.get(0));
				prob = prob + Math.log(Double.valueOf(pred.get(1)));
			} else if(varEliminated >= 2*image1.size() && varEliminated <= 2*image1.size()+image2.size()){
				List<String> pred =getPrediction(ct.get(node));
				second.put(varEliminated, pred.get(0));
				prob = prob + Math.log(Double.valueOf(pred.get(1)));
				
			}
		}
		
		List<Character> pchars1 = new ArrayList<>();
		List<Character> pchars2 = new ArrayList<>();
		SortedSet<Integer> fkeys = new TreeSet<Integer>(first.keySet());
		SortedSet<Integer> skeys = new TreeSet<Integer>(second.keySet());
		int i = 0;
		for (Integer key : fkeys) { 
			pchars1.add(first.get(key).charAt(0));
		}
		
		for (Integer key : skeys) { 
			i++;
			if(i == image2.size()) break;
			pchars2.add(second.get(key).charAt(0));
		}
		
			
		ModelPrediction mp = new ModelPrediction(pchars1, pchars2, prob);
		return mp;
	}


	private static List<String> getPrediction(CliqueTreeNode ctnode) {
		Map<List<String>, Double> prob = ctnode.getProb();
		List<String> probFactor = ctnode.getProbFactor();
		String varEliminated = ctnode.getVarEliminated();
		Random rand = new Random();
		int num = rand.nextInt(10);
		if(probFactor == null ||prob == null)
			return Arrays.asList(String.valueOf(characters.get(num)), "0.05");
		int index = probFactor.indexOf(varEliminated);
		if (index < 0)
			index = 0;
		Map<String, Double> newprob = new HashMap<>();
		for (List<String> key: prob.keySet()){
			String id = key.get(index);
			Double pr = prob.get(key);
			if (!newprob.containsKey(id))
				newprob.put(id, 0.0);
			Double sum = newprob.get(id) + pr;
			newprob.put(id, sum);
			
		}
		String key = findMaxIndex(newprob);
		if(key == null)
			return Arrays.asList(String.valueOf(characters.get(num)), "0.05");
		return  Arrays.asList(key, String.valueOf(newprob.get(key)));
	}


	


	private static void backwardMessagePassing(Map<String, CliqueTreeNode> ct, Map<String, HMMGraphNode> graph, String root) {
		List<String> neighbors = new ArrayList<>(ct.get(root).getNeighbors().keySet());
		Map<List<String>, Double> belief = ct.get(root).getProb();
		List<String> probFactor = ct.get(root).getProbFactor();
		for(String nei: neighbors){
			if(!ct.get(nei).isReady()) return;
			Map<List<String>, Double> message = getSum(probFactor, belief, new ArrayList<>(Arrays.asList(ct.get(root).getVarEliminated())));
			ct.get(nei).setMessage(message);
			ct.get(nei).setReady(false);
			backwardMessagePassing(ct, graph, nei);
		}
		
	}

	private static void forwardMessagePassing(Map<String, CliqueTreeNode> ct, Map<String, HMMGraphNode> graph, String root) {
		
		List<String> leafNodes = getLeafNodes(ct);
		for(String leaf: leafNodes){
			Map<List<String>, Double> factorProduct = createFactorProduct(leaf, graph, ct, new HashMap<>(), new ArrayList<>());
			List<String> probFactor= ct.get(leaf).getProbFactor();
			Map<List<String>, Double> message = ct.get(leaf).getMessage();
			//Map<List<String>, Double> message = getSum(probFactor, factorProduct, new ArrayList<>(Arrays.asList(ct.get(leaf).getVarEliminated())));
			ct.get(leaf).setMessage(message);
			ct.get(leaf).setReady(true);
			List<String> path= getPath(ct, "", leaf, root, new ArrayList<>());
			forwardMessage(path.get(0), root, graph, ct, path);
		}
		
	}
	

	private static List<String> getPath(Map<String, CliqueTreeNode> ct, String prevNode, String node, String root, List<String> path) {
		List<String> neighbors = new ArrayList<>(ct.get(node).getNeighbors().keySet());
		if (neighbors.contains(prevNode))
			neighbors.remove(neighbors.indexOf(prevNode));
		if(node.equals(root)){
			path.add(node);
			return path;
		}
		for(String nei: neighbors){
			if (!path.contains(nei) && !path.contains(root)){
				//System.out.println(path+"  "+node+"  "+nei);
				path.add(node);
				getPath(ct, node, nei, root, path);
			}
			
		}
		return path;
	}

	private static void forwardMessage(String node, String root, Map<String, HMMGraphNode> graph, Map<String, CliqueTreeNode> ct, List<String> path) {
		for(String val:path ){
			List<String> neighbors = new ArrayList<>(ct.get(val).getNeighbors().keySet());
			for (String nei: neighbors){
				if(!path.contains(nei))
					if (!ct.get(nei).isReady())
						return;
			} 
			for (String nei: neighbors){
				Map<List<String>, Double> factorProduct = createFactorProduct(val, graph, ct, ct.get(nei).getMessage(), ct.get(nei).getProbFactor());
				List<String> probFactor= ct.get(node).getProbFactor();
				Map<List<String>, Double> message = getSum(probFactor, factorProduct, new ArrayList<>(Arrays.asList(ct.get(node).getVarEliminated())));
				ct.get(node).setMessage(message);
				ct.get(node).setReady(true);
			}
		}
			
	}

	private static Map<List<String>, Double> createFactorProduct(String id, Map<String, HMMGraphNode> graph, Map<String, CliqueTreeNode> ct, Map<List<String>, Double> message, List<String> probFactors) {
		Map<List<String>, Double> prob = message;
		CliqueTreeNode ctnode = ct.get(id);
		String node = ctnode.getVarEliminated();
		Map<String, String> hmmNodes = ctnode.getHmmNodes();
		List<String> probFactor = probFactors;
		if (probFactor == null)
			probFactor = new ArrayList<>();
		hmmNodes.remove(node);
		for (String nei: hmmNodes.keySet()){
			String type = hmmNodes.get(nei);
			if (type.equals("ocr")){
				String image = graph.get(node).getValue();
				if (prob == null  || prob.size() == 0) {
					prob = getOcrProb(image);
					probFactor = new ArrayList<>(Arrays.asList(nei));
				}else if(prob.size() != 0){
					prob = getOcrTransProd(image, nei, probFactor, prob, ocrMap);
				}
			} else if(type.equals("trans")){
				if (prob == null  ||prob.size() == 0){
					if (Integer.valueOf(node) < Integer.valueOf(nei))
						probFactor =  new ArrayList<>(Arrays.asList(node, nei));
					else  probFactor =  new ArrayList<>(Arrays.asList(nei, node));
					prob = transMap;
				} else {
					String key = node;
					String newKey = nei;
					if(probFactor != null && probFactor.contains(nei)){
						key =nei;
						newKey = node;
					}
					prob = getTransTransProd(key, probFactor, new ArrayList<>(Arrays.asList(node, nei)), prob, transMap);
					if (probFactor!=null &&probFactor.indexOf(key) != -1)
						probFactor.remove(probFactor.indexOf(key));
					probFactor.add(newKey);
				}
			} else if(type.equals("pair") || type.equals("skip")){
				
				if (prob == null  ||prob.size() == 0){
					probFactor =  new ArrayList<>(Arrays.asList(node, nei));
					prob = getSkipProb();
				} else {
					String key = node;
					String newKey = nei;
					if(probFactor.contains(nei)){
						key =nei;
						newKey = node;
					}
					prob = getTransTransProd(key, probFactor, new ArrayList<>(Arrays.asList(node, nei)), prob, getSkipProb());
					if(probFactor.indexOf(key) != -1)
						probFactor.remove(probFactor.indexOf(key));
					probFactor.add(newKey);
				}
			}
		}
		ctnode.setProb(prob);
		ctnode.setProbFactor(probFactor);
		return prob;
	}
	
	private static Map<List<String>, Double> getOcrTransProd(String image,
			String nei, List<String> transFactor, Map<List<String>, Double> transProb, Map<List<String>, Double> ocrProb) {
		Map<List<String>, Double> trans = new HashMap<>();
		int index = transFactor.indexOf(nei);
		for(List<String> tran: transProb.keySet()){
			Double newprob = Math.pow(10,  (Math.log10(transProb.get(tran))+Math.log10(ocrProb.get(Arrays.asList(image, tran.get(index))))));
			trans.put(tran, newprob);
		}
		return trans;
	}
	
	private static Map<List<String>, Double> getTransTransProd(String nei, List<String> transFactor1, 
			List<String> transFactor2, Map<List<String>, Double> transProb1, Map<List<String>, Double> transProb2) {
		Map<List<String>, Double> trans = new HashMap<>();
		if (transFactor1 == null || transFactor2 == null) return trans;
		int index1 = transFactor1.indexOf(nei);
		int index2 = transFactor2.indexOf(nei);
		if(index1 != -1 && index2 != -1)
		for(List<String> tran1: transProb1.keySet()){
			for(List<String> tran2: transProb2.keySet()){
				//System.out.println(tran1.toString()+"  "+tran2.toString() + index1+"  "+index2);
				//System.out.println(transProb1.get(tran1)+"  "+transProb2.get(tran2));
				if(index1<tran1.size() && index2 < tran2.size())
					if (tran1.get(index1).equals(tran2.get(index2))){
					Double prob = Math.pow(10, (Math.log10(transProb1.get(tran1))+ Math.log10(transProb2.get(tran2))));
					List<String> temp = new ArrayList<>(tran2);
					List<String> temp1 = new ArrayList<>(tran1);
					temp.remove(index2);
					temp1.addAll(temp);
					trans.put(temp1, prob);
				}
					
			}
		}
		return trans;
	}
	
	private static Map<List<String>, Double> getSum(List<String> transFactor, Map<List<String>, Double> transProb, List<String> variables){
		if(transProb == null) return transProb;
		for (String var : variables){
			if(transFactor != null && !transFactor.contains(var)) continue;
			Map<List<String>, Double> temp = new HashMap<>();
			if (transFactor == null) continue;
			int index = transFactor.indexOf(var);
			for(List<String> tran: transProb.keySet()){
				Double prob = transProb.get(tran);
				List<String>newFactors = new ArrayList<>( tran);
				if(newFactors.size()>index)
					newFactors.remove(index);
				if(!temp.containsKey(newFactors))
					temp.put(newFactors, 0.0);
				Double newprob = temp.get(newFactors) + prob;
				temp.put(newFactors, newprob);
			}
			transProb = temp;
		}
		return transProb;
	}
	
	

	private static Map<List<String>, Double> getOcrProb(String image) {
		Map<List<String>, Double> ocrProb = new HashMap<>();
		for (Character character: characters ){
			ocrProb.put(new ArrayList<>(Arrays.asList(String.valueOf(character))), ocrMap.get(Arrays.asList(image, String.valueOf(character))));
		}
		return ocrProb;
	}

	
	private static Map<String, Double> getPairProduct(Map<String, Double> nodeOcrProb, Map<String, Double> neiOcrProb){
		Map<String, Double> newOcr = new HashMap<>();
		for(String val :nodeOcrProb.keySet()) {
			newOcr.put(val, Math.pow(10, (Math.log10(nodeOcrProb.get(val))+Math.log10(neiOcrProb.get(val))+Math.log10(5.0))));
		}
		return newOcr;
	}


	private static Map<List<String>, Double> getSkipProb() {
		Map<List<String>, Double> skipProb = new HashMap<>();
		for(Character ch: characters){
			skipProb.put(Arrays.asList(String.valueOf(ch),String.valueOf(ch)), 5.0);
		}
		return skipProb;
	}

	private static List<String> getLeafNodes(Map<String, CliqueTreeNode> ct) {
		List<String> leafNodes = new ArrayList<>();
		for(String node: ct.keySet()){
			if (ct.get(node).getNeighbors().size() == 1)
				leafNodes.add(node);
		}
		return leafNodes;
	}

	private static Map<String, CliqueTreeNode> constructCliqueTree(Map<String, HMMGraphNode> gra) {
		Map<String, HMMGraphNode> graph = new HashMap<String, HMMGraphNode>(gra);
		Map<String, CliqueTreeNode> ctgraph = new HashMap<>();
		
		List<String> imageNodes = getImageNodes(graph);
		for (String node: imageNodes){
			ctgraph = eliminateVariable(ctgraph, graph, node);
			graph.remove(node);
		}
		while (graph != null && graph.size() !=0) {
			String node = minFillHeuristic(graph);
			ctgraph = eliminateVariable(ctgraph, graph, node);
			graph.remove(node);
		}
		return ctgraph;
		
	}

	private static Map<String, CliqueTreeNode> eliminateVariable(Map<String, CliqueTreeNode> ctgraph, Map<String, HMMGraphNode> graph, String node) {
		List<String> neighbors = new ArrayList<String>(graph.get(node).getNeighbors().keySet());
		
		for (int i=0; i<neighbors.size();i++){
			if(graph.get(neighbors.get(i)) != null && graph.get(neighbors.get(i)).getNeighbors() != null){
			graph.get(neighbors.get(i)).getNeighbors().remove(node);
			Map<String, String> nei = graph.get(neighbors.get(i)).getNeighbors();
			for (int j=i+1; j<neighbors.size(); j++){
				if(!nei.keySet().contains(neighbors.get(j))){
					graph.get(neighbors.get(i)).getNeighbors().put(neighbors.get(j), "fill");
					graph.get(neighbors.get(j)).getNeighbors().put(neighbors.get(i), "fill");
				}
			}
		}
		}
		ctgraph = insertCTNode(graph, node, ctgraph);
		return ctgraph;
	}

	
	private static Map<String, CliqueTreeNode> insertCTNode(Map<String, HMMGraphNode> graph, String node, Map<String, CliqueTreeNode> ctgraph) {
		Map<String, String> hmmNodes = graph.get(node).getNeighbors();
		Map<String, String> hmmneighbors = hmmNodes;
		String newnode = String.join("$$$", hmmNodes.keySet());
		newnode = node+"$$$"+newnode;
		if(hmmNodes == null || hmmNodes.size() == 0)
			return ctgraph;
		String id = String.valueOf(ctgraph.size() + 1);
		
		CliqueTreeNode ctnode = new CliqueTreeNode();
		ctnode.setId(id);
		ctnode.setName(newnode);
		
		
		hmmneighbors.put(node, "eleminated");
		ctnode.setHmmNodes(hmmneighbors);
		ctnode.setVarEliminated(node);
		Map<String, String> neighbors = getCliqueTreeNeighbors(ctgraph, new ArrayList<>(hmmNodes.keySet()));
		ctnode.setNeighbors(neighbors);
		for (String key: neighbors.keySet()){
			ctgraph.get(key).getNeighbors().put(id, neighbors.get(key));
		}
		
		ctgraph.put(id, ctnode);
		return ctgraph;
	}
	
	private static Map<String, String> getCliqueTreeNeighbors(Map<String, CliqueTreeNode> ctgraph, List<String> variables) {
		Map<String, String> neighbors = new HashMap<>();
		for(String var : variables){
			for(int ke = ctgraph.size(); ke > 0; ke--){
			  String key = String.valueOf(ke);
				if(ctgraph.get(key).getHmmNodes().keySet().contains(var)){
					neighbors.put(key, var);
					break;
				}
			}
		}
		
		return neighbors;
	}

	public static String findMinIndex(Map<String, Integer> map) {
		Entry<String, Integer> min = null;
		if(map != null){
			for (Entry<String, Integer> entry : map.entrySet()) {
			    if (min == null || min.getValue() > entry.getValue()) {
			        min = entry;
			    }
			}
		}
		return min.getKey();
	}
	
	public static String findMaxIndex(Map<String, Double> map) {
		Entry<String, Double> max = null;
		if(map != null && map.size() != 0){
			for (Entry<String, Double> entry : map.entrySet()) {
			    if (max == null || max.getValue() < entry.getValue()) {
			        max = entry;
			    }
			}
			return max.getKey();
		}
		return null;
	}
	
	
	private static List<String> getImageNodes(Map<String, HMMGraphNode> graph) {
		List<String> imageNodes = new ArrayList<>();
		for (String id : graph.keySet()){
			if (graph.get(id).getType().equals("image")){
				imageNodes.add(id);
			}
		}
		return imageNodes;
	}
	
	private static String minFillHeuristic(Map<String, HMMGraphNode> graph) {
		Map<String, Integer> minFill = new HashMap<String, Integer>();
		for (String id : graph.keySet()) {
			List<String> neighbors = new ArrayList<String>(graph.get(id).getNeighbors().keySet());
			minFill.put(id, 0);
			if(neighbors.size() > 1){
				for (int i=0; i<neighbors.size();i++){
					if(graph.get(neighbors.get(i)) != null && graph.get(neighbors.get(i)).getNeighbors() != null){
					Map<String, String> nei = graph.get(neighbors.get(i)).getNeighbors();
					for (int j=i+1; j<neighbors.size(); j++){
						if(!nei.keySet().contains(neighbors.get(j))){
							int count = minFill.get(id);
							minFill.put(id, count + 1);
						}
					}
				}
				}
			}
		}
		return findMinIndex(minFill);
	}
}
