package cse.iitd;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CpGIsland {
	
	private List<String> hiddenNodes = new ArrayList<>();
	private List<Character> observedNodes = new ArrayList<>();
	private Map<String, Integer> trasitCounts = new HashMap<>();
	
	private Map<String, Integer> initialCount = new HashMap<>();
	private Integer totalNodes = 0;
	private Integer totalNonCpG = 0;
	


	public CpGIsland() {
		
	}
	
	public CpGIsland(List<String> hiddenNodes, List<Character> observedNodes,
			Map<String, Integer> trasitCounts, Map<String, Integer> initialCount, Integer totalNodes) {
		super();
		this.hiddenNodes = hiddenNodes;
		this.observedNodes = observedNodes;
		this.trasitCounts = trasitCounts;
		this.initialCount = initialCount;
		this.totalNodes = totalNodes;
	}

	public String toString() {
		return this.hiddenNodes.toString() + "  "+this.observedNodes.toString() +"  "+this.trasitCounts.toString()
				+"  "+this.initialCount.toString()+ "  "+this.totalNodes.toString()+"  "+this.totalNonCpG.toString();
	}
	
	public Integer getTotalNodes() {
		return totalNodes;
	}

	public void setTotalNodes(Integer totalNodes) {
		this.totalNodes = totalNodes;
	}

	public List<String> getHiddenNodes() {
		return hiddenNodes;
	}

	public void setHiddenNodes(List<String> hiddenNodes) {
		this.hiddenNodes = hiddenNodes;
	}

	public List<Character> getObservedNodes() {
		return observedNodes;
	}

	public void setObservedNodes(List<Character> observedNodes) {
		this.observedNodes = observedNodes;
	}

	public void setTrasitCounts(Map<String, Integer> trasitCounts) {
		this.trasitCounts = trasitCounts;
	}

	public void setInitialCounts(Map<String, Integer> initialCount) {
		this.initialCount = initialCount;
	}

	public Integer getTotalNonCpG() {
		return totalNonCpG;
	}

	public void setTotalNonCpG(Integer totalNonCpG) {
		this.totalNonCpG = totalNonCpG;
	}
	
	public Double getEmissionProbs(Character observed, Character hidden) {
		if (observed.equals(hidden))
			return 1.0;
		else return 0.0;
	}
	
	public Double getTransitionProbs(String prevState, String state) {
		String key = prevState +"$$$" + state;
		if (this.trasitCounts.containsKey(key)) {
			Integer count = this.trasitCounts.get(key);
			return ((double) count/(double) this.totalNodes);
		}
		return 0.0;
	}

	public Double getInitialProbs(String hidden) {
		String key = hidden;
		if (this.initialCount.containsKey(key)) {
			Integer count = this.initialCount.get(key);
			return  ((double) count/(double) this.totalNonCpG);
		}
		return 0.0;
			
	}

	

}
