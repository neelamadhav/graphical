package cse.iitd;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MessagePassingOverJT {
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
		
		DataTree dt = new DataTree(chars1, chars2, image1, image2);
		//System.out.println(dt.toString());
		
		//Map<Integer, Integer> minFill = minFillHeuristic(dt.getOcrGraph());
		Map<Integer, Integer> minFill = minFillHeuristic(dt.getTransGraph());
		//Map<Integer, Integer> minFill = minFillHeuristic(dt.getSkipGraph());
		//Map<Integer, Integer> minFill = minFillHeuristic(dt.getOcrGraph());
		System.out.println(minFill.toString());
	}

	private static Map<Integer, Integer> minFillHeuristic(Map<Integer, HMMGraphNode> graph) {
		Map<Integer, Integer> minFill = new HashMap<Integer, Integer>();
		for (int id : graph.keySet()) {
			List<Integer> neighbors = graph.get(id).getNeighbors();
			minFill.put(id, 0);
			if(neighbors.size() > 1){
				for (int i=0; i<neighbors.size();i++){
					List<Integer> nei = graph.get(neighbors.get(i)).getNeighbors();
					for (int j=i+1; j<neighbors.size(); j++){
						if(!nei.contains(neighbors.get(j))){
							int count = minFill.get(id);
							minFill.put(id, count + 1);
						}
					}
				}
			}
		}
		return minFill;
	}
}
