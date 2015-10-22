package cse.iitd;

import java.util.List;

public class HMMGraphNodeBkp {
	private String id;
	private String node;
	private String type;
	private List<String> neighbors;
	private List<Double> probs;
	
	HMMGraphNodeBkp(){};
	
	public HMMGraphNodeBkp(HMMGraphNodeBkp obj){
		this.id = obj.id;
		this.node = obj.node;
		this.type = obj.type;
		this.neighbors = obj.neighbors;
		this.probs = obj.probs;
	}
	
	public String toString() {
		return id + " " + node  + " " +type + " " +neighbors.toString() + " " +probs.toString();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
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
	public List<String> getNeighbors() {
		return neighbors;
	}
	public void setNeighbors(List<String> neighbors) {
		this.neighbors = neighbors;
	}
	public List<Double> getProbs() {
		return probs;
	}
	public void setProbs(List<Double> probs) {
		this.probs = probs;
	}

}
