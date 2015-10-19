package com.iitd;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Random;

public class BayesianNetworkGraph {

	
	/**
	 * To generate a graph from give 
	 * n - number of nodes, k - Max number of nodes.
	 * @param n
	 * @param k
	 * @return
	 */
	private static HashMap<Integer, List<HashSet<Integer>>> generateBayesianGraph(Integer n, Integer k) {
		HashMap<Integer, List<HashSet<Integer>>> bgraph = new HashMap<>();
		Random rand = new Random();
		for (int i=1; i<=n; i++){
			bgraph.put(i, new ArrayList<HashSet<Integer>>());
			bgraph.get(i).add(new HashSet<Integer>());
			bgraph.get(i).add(new HashSet<Integer>());
		}
		for (int i =1; i <= n; i ++){
			//generate a random number u between 1, k
			int u = rand.nextInt(k) + 1;
			//System.out.println(u);
			
			//If more than u nodes are left 
			if (n-i > u) {
				for (int j=1; j<=u; j++){
					int childNode = selectChildNode(i, n, bgraph.get(i).get(0));
					bgraph.get(i).get(0).add(childNode);
					bgraph.get(childNode).get(1).add(i);
				}
			} 
			//If less than u nodes are left
			else {
				for (int j = i+1; j <= n; j ++) {
					bgraph.get(i).get(0).add(j);
					bgraph.get(j).get(1).add(i);
				}
			}
			
		}
		
		return bgraph;
	}

	/**
	 * Given the node i, and number of nodes n, selects randomly some 
	 * childrens which are not already selected.
	 * @param i
	 * @param n
	 * @param childrens
	 * @return
	 */
	private static int selectChildNode(int i, int n, HashSet<Integer> childrens) {
		Random rand = new Random();
		int childNode = rand.nextInt((n - i) + 1) + i;
		if (!childrens.contains(childNode) & childNode > i)
				return childNode;
		else
			return selectChildNode(i, n, childrens);
	}
	
	/**
	 * Write a given graph into a file
	 * @return
	 * @throws IOException
	 */
	private static HashMap<Integer, List<HashSet<Integer>>> createBayesianGraph() throws IOException{
		BufferedReader bufferRead = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter number of nodes: ");
	    String ns = bufferRead.readLine();
	    Integer n = Integer.parseInt(ns);
	      
	    System.out.println("Enter max number of nodes: ");
	    String ks = bufferRead.readLine();
	    Integer k = Integer.parseInt(ks);
	    
	    
	    HashMap<Integer, List<HashSet<Integer>>> bgraph = generateBayesianGraph(n, k);
	    
	    System.out.println(bgraph);
	    return bgraph;
	}

	/**
	 * Takes graph outfile as an argument and outputs desired graph
	 * @param args
	 * @throws IOException
	 */
	public static void main(String[] args) throws IOException {
		String outFilePath = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\bgraph.txt" ;
		if (args.length == 1)
			outFilePath = args[0];
		BayesianNetworkUtil.writeBayesianNetwork(createBayesianGraph(), outFilePath);
		/*HashMap<Integer, List<HashSet<Integer>>> bgraph = BayesianNetworkUtil.readNetwork("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\sample-bn.txt");
		List<List<HashSet<Integer>>> queryNodes = BayesianNetworkUtil.readQueryNodes("C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\sample-query.txt");
		for (List<HashSet<Integer>> queryNode : queryNodes)
			BayesBallAlgo.getIndependentNodes(bgraph, queryNode.get(0), queryNode.get(1), "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\sample-output1.txt");*/
	}
}
