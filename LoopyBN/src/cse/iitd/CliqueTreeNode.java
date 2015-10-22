package cse.iitd;

import java.util.List;
import java.util.Map;

public class CliqueTreeNode {
	
	private String id;
	private String name;
	private String varEliminated;
	private Map<String, String> hmmNodes;
	private Map<String, String> neighbors;
	private Map<List<String>, Double> prob;
	private Map<List<String>, Double> message;
	private List<String> probFactor;
	
	public String toString(){
		return id+" "+name+" "+varEliminated+" "+hmmNodes.toString()+" "+neighbors.toString()+" "+prob+" "+probFactor+"  "+message+"\n";
	}
	
	public Map<List<String>, Double> getMessage() {
		return message;
	}
	public void setMessage(Map<List<String>, Double> message) {
		this.message = message;
	}
	
	
	private boolean ready;
	public boolean isReady() {
		return ready;
	}
	public void setReady(boolean ready) {
		this.ready = ready;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVarEliminated() {
		return varEliminated;
	}
	public void setVarEliminated(String varEliminated) {
		this.varEliminated = varEliminated;
	}
	public Map<String, String> getHmmNodes() {
		return hmmNodes;
	}
	public void setHmmNodes(Map<String, String> hmmNodes) {
		this.hmmNodes = hmmNodes;
	}
	public Map<String, String> getNeighbors() {
		return neighbors;
	}
	public void setNeighbors(Map<String, String> neighbors) {
		this.neighbors = neighbors;
	}
	public Map<List<String>, Double> getProb() {
		return prob;
	}
	public void setProb(Map<List<String>, Double> prob) {
		this.prob = prob;
	}
	public List<String> getProbFactor() {
		return probFactor;
	}
	public void setProbFactor(List<String> probFactor) {
		this.probFactor = probFactor;
	}
	
	
}
