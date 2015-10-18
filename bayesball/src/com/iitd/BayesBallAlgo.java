package com.iitd;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;


public class BayesBallAlgo {

	/* 
	 * nodes.get(0) - visited
	 * nodes.get(1) - top
	 * nodes.get(2) - bottom
	*/
	public static void getIndependentNodes(HashMap<Integer, List<HashSet<Integer>>> bgraph, HashSet<Integer> queryNodes, 
		HashSet<Integer> observedNodes, String filePath) throws IOException {
		Map<Integer, List<Boolean>> nodes = new HashMap<>();
		Queue<Map<Integer, Integer>> scheduleNodesQueue = new ArrayDeque<Map<Integer, Integer>>();
		
		//Step1: Initializeing visited, top, bottom as false,
		int graphSize = bgraph.size();
		for (int i = 1; i <= graphSize; i ++){
			List<Boolean> l = new ArrayList<>();
			l.add(false);
			l.add(false);
			l.add(false);
			nodes.put(i, l);
		}
		
		//Step2: initializing schedule nodes with query nodes
		scheduleNodesQueue = putAllNodes(scheduleNodesQueue, queryNodes, 1);
		
		//Step3: for each node in scheduleNodes
		nodes = visitNodes(scheduleNodesQueue, nodes, observedNodes, bgraph);
		System.out.println("Final Node: " + nodes);
		
		
		HashSet<Integer> indpendentNodes = new HashSet<>();
		HashSet<Integer> reqProbNodes = new HashSet<>();
		HashSet<Integer> reqObsNodes = new HashSet<>();
		
		for (Integer node : nodes.keySet()){
			//Step 4: to find d separated nodes
			if (!nodes.get(node).get(2))
				indpendentNodes.add(node);
			//Step 4: to find requisite probability nodes
			if (nodes.get(node).get(1))
				reqProbNodes.add(node);
			//Step 4: to find requisite observed nodes
			if (nodes.get(node).get(0) && observedNodes.contains(node))
				reqObsNodes.add(node);
		}
		
		BayesianNetworkUtil.writeQueryOutput(queryNodes, observedNodes, indpendentNodes, reqProbNodes, reqObsNodes, filePath);
		System.out.println("indpendentNodes"+indpendentNodes.toString());
		System.out.println("reqProbNodes"+reqProbNodes.toString());
		System.out.println("reqObsNodes"+reqObsNodes.toString());
		
	}

	
	private static Map<Integer, List<Boolean>> visitNodes(Queue<Map<Integer, Integer>> scheduleNodesQueue, Map<Integer, List<Boolean>> nodes, 
			HashSet<Integer> observedNodes, HashMap<Integer, List<HashSet<Integer>>> bgraph) {
		System.out.println(nodes.toString());
		//End of the loop
		if (scheduleNodesQueue.isEmpty())
			return nodes;
		
		//Until there is a node in the queue
		else {
			Map.Entry<Integer, Integer> entry= ((Map<Integer,Integer>) scheduleNodesQueue.iterator().next()).entrySet().iterator().next();
			Integer node = entry.getKey();
			Integer from = entry.getValue();
			//Step 3a: Marking the node as visited
			nodes.get(node).set(0, true);
			
			//Step 3b: removing the node from the queue
			scheduleNodesQueue.remove();
			System.out.println("Visit Node: "+node.toString() +" "+from.toString());
			
			//step 3c: If direction is from child and not in observed node
			if (from == 1 && !observedNodes.contains(node)) {
				//step 3c i: top of node is not marked
				if (!nodes.get(node).get(1)){
					nodes.get(node).set(1, true);
					scheduleNodesQueue = putAllNodes(scheduleNodesQueue, bgraph.get(node).get(1), 1);
				}
				
				//step 3c ii: bottom of node is not marked
				if (!nodes.get(node).get(2)){
					nodes.get(node).set(2, true);
					scheduleNodesQueue = putAllNodes(scheduleNodesQueue, bgraph.get(node).get(0), 2);
				}
				
			} //Step 3d: If direction is from child
			else if (from == 2) {
				//Step 3d i: node in observed nodes and top not marked
				if (observedNodes.contains(node) && !nodes.get(node).get(1)){
						nodes.get(node).set(1, true);
						scheduleNodesQueue = putAllNodes(scheduleNodesQueue, bgraph.get(node).get(1), 1);
				}//Step 3d ii: node not in observed nodes and bottom not marked 
				else if (!observedNodes.contains(node) && !nodes.get(node).get(2)){
						nodes.get(node).set(2, true);
						scheduleNodesQueue = putAllNodes(scheduleNodesQueue, bgraph.get(node).get(0), 2);
				}
			}
			
			return visitNodes(scheduleNodesQueue, nodes, observedNodes, bgraph);
		}
	}

	/**
	 * Add list of nodes to the scheduled queue
	 * @param scheduledNodes
	 * @param nodes
	 * @param type
	 * @return
	 */
	private static Queue<Map<Integer, Integer>> putAllNodes(Queue<Map<Integer, Integer>> scheduledNodes, HashSet<Integer> nodes, int type) {
		for (Integer node : nodes) {
			System.out.println("Add to Schedule: "+node +"  "+ type);
			Map<Integer, Integer> m = new HashMap<>();
			m.put(node, type);
			scheduledNodes.add(m);
		}
		return scheduledNodes;
	}

	/**
	 * Given path to graph, query file, produces desired output.
	 * @param args
	 * @throws IOException
	 */
	public static void main(String[] args) throws IOException {
		String graphPath = "C:\\Users\\IBM_ADMIN\\Desktop\\AssignmentEvoluation\\large-bn.txt";
		String queryFilePath = "C:\\Users\\IBM_ADMIN\\Desktop\\AssignmentEvoluation\\large-query.txt";
		String outFilePath = "C:\\Users\\IBM_ADMIN\\Desktop\\AssignmentEvoluation\\large-output1.txt";
		if (args.length == 3){
			graphPath = args[0];
			queryFilePath  = args[1];
			 outFilePath = args[2];
		}
			
		HashMap<Integer, List<HashSet<Integer>>> bgraph = BayesianNetworkUtil.readNetwork(graphPath);
		List<List<HashSet<Integer>>> queryNodes = BayesianNetworkUtil.readQueryNodes(queryFilePath);
		for (List<HashSet<Integer>> queryNode : queryNodes)
			getIndependentNodes(bgraph, queryNode.get(0), queryNode.get(1), outFilePath);

	}
	
	
}
