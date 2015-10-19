package cse.iitd;

import java.util.List;

public class HMMGraphNode {
	private int id;
	private String node;
	private String type;
	private List<Integer> neighbors;
	private List<Double> probs;
	
	HMMGraphNode(){};
	
	public HMMGraphNode(HMMGraphNode obj){
		this.id = obj.id;
		this.node = obj.node;
		this.type = obj.type;
		this.neighbors = obj.neighbors;
		this.probs = obj.probs;
	}
	
	public String toString() {
		return id + " " + node  + " " +type + " " +neighbors.toString() + " " +probs.toString();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNode() {
		return node;
	}
	public void setNode(String node) {
		this.node = node;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public List<Integer> getNeighbors() {
		return neighbors;
	}
	public void setNeighbors(List<Integer> neighbors) {
		this.neighbors = neighbors;
	}
	public List<Double> getProbs() {
		return probs;
	}
	public void setProbs(List<Double> probs) {
		this.probs = probs;
	}

}
