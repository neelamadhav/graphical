package com.iitd;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class BayesianNetworkUtil {


	
	public static HashMap<Integer, List<HashSet<Integer>>>  readNetwork(String filePath) throws IOException{
		HashMap<Integer, List<HashSet<Integer>>> bgraph = new HashMap<>();
		BufferedReader br = new BufferedReader(new FileReader(filePath));
		String sizestr = "0";
		if (br != null){
			sizestr = br.readLine();
		}
		Integer size = Integer.parseInt(sizestr);
		for (int i=1; i<=size; i++){
			bgraph.put(i, new ArrayList<HashSet<Integer>>());
			bgraph.get(i).add(new HashSet<Integer>());
			bgraph.get(i).add(new HashSet<Integer>());
		}
		String line = null;
		while ((line = br.readLine()) != null) {
			Integer node = Integer.parseInt(line.split(" ")[0]);
			String[] chilrens = line.substring(line.indexOf(" ")).replaceAll("\\[", "").replaceAll("\\]","").split(",");
			for (String child : chilrens){
				if (!"".equals(child.trim())){
					bgraph.get(node).get(0).add(Integer.parseInt(child.trim()));
					bgraph.get(Integer.parseInt(child.trim())).get(1).add(node);
				}
			}
				
		}
		br.close();
		System.out.println(bgraph.toString());
		return bgraph;
	}
	
	
	/**
	 * Read the query file and generate list of queryNodes and observedNodes
	 * @param filePath
	 * @return
	 * @throws IOException
	 */
	public static List<List<HashSet<Integer>>>  readQueryNodes(String filePath) throws IOException{
		List<List<HashSet<Integer>>> queryLists = new ArrayList<>();
		BufferedReader br = new BufferedReader(new FileReader(filePath));
		String sizestr = "0";
		if (br != null){
			sizestr = br.readLine();
		}
		//Integer size = Integer.parseInt(sizestr);
		
		String line = null;
		while ((line = br.readLine()) != null) {
			List<HashSet<Integer>> queryList = new ArrayList<>();
			queryList.add(new HashSet<Integer>());
			queryList.add(new HashSet<Integer>());
			System.out.println(line);
			String[] queryNodes = line.split(" ")[0].replaceAll("\\[", "").replaceAll("\\]","").split(",");
			String[] observedNodes = line.split(" ")[1].replaceAll("\\[", "").replaceAll("\\]","").split(",");
			
			for (String query : queryNodes)
				if (!"".equals(query.trim()))
					queryList.get(0).add(Integer.parseInt(query));
			
			for (String observed : observedNodes)
				if (!"".equals(observed.trim()))
					queryList.get(1).add(Integer.parseInt(observed));
			
			queryLists.add(queryList);
				
		}
		br.close();
		System.out.println(queryLists.toString());
		return queryLists;
	}
	
	
	/**
	 * Write Bayesian Graph to a file.
	 * @param bgraph
	 * @param filePath
	 * @throws IOException
	 */
	public static void writeBayesianNetwork(HashMap<Integer, List<HashSet<Integer>>> bgraph, String filePath) throws IOException{
		File file = new File(filePath);

		// if file doesnt exists, then create it
		if (!file.exists()) {
			file.createNewFile();
		}

		FileWriter fw = new FileWriter(file.getAbsoluteFile());
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write(bgraph.size()+"\n");
		for (int i = 1; i<= bgraph.size(); i ++)
			bw.write(i+" "+sortHashSet(bgraph.get(i).get(0)).toString().replace(" ", "")+"\n");
		bw.close();
	}

	/**
	 * Sort a given HashSet
	 * @param hs
	 * @return
	 */
	private static Set<Integer> sortHashSet(HashSet<Integer> hs){
		return new TreeSet<Integer> (hs) ;
	}

	/**
	 * Write output of the bayesBall algo
	 * @param queryNodes
	 * @param observedNodes
	 * @param independentNodes
	 * @param reqProbNodes
	 * @param reqObsNodes
	 * @param filePath
	 * @throws IOException
	 */
	public static void writeQueryOutput(HashSet<Integer> queryNodes, HashSet<Integer> observedNodes, HashSet<Integer> independentNodes, HashSet<Integer> reqProbNodes,
			HashSet<Integer> reqObsNodes, String filePath) throws IOException {
		
		File file = new File(filePath);

		// if file doesnt exists, then create it
		if (!file.exists()) {
			file.createNewFile();
		}

		FileWriter fw = new FileWriter(file.getAbsoluteFile(), true);
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write("query:"+sortHashSet(queryNodes).toString().replace(" ", "")+" obs:"+sortHashSet(observedNodes).toString().replace(" ", "")+" dsep:"
				+sortHashSet(independentNodes).toString().replace(" ", "") +" req-prob:"+sortHashSet(reqProbNodes).toString().replace(" ", "")+" req-obs:"+sortHashSet(reqObsNodes).toString().replace(" ", "")+"\n");
		bw.close();
		
		
	}
	
}
