package cse.iitd;

import java.util.Map;

public class HMMGraphNode {
	private String id;
	private String name;
	private String value;
	private String type;
	private Map<String, String> neighbors;
	private Map<String, Double> ocr;

	
	HMMGraphNode(){};
	
	public HMMGraphNode(HMMGraphNode obj){
		this.id = obj.id;
		this.name = obj.name;
		this.value = obj.value;
		this.type = obj.type;
		this.neighbors = obj.neighbors;
	}
	
	public String toString() {
		return id + " " + name  + " " +value + " " + type + " " +neighbors.toString();
	}
	public Map<String, Double> getOcr() {
		return ocr;
	}

	public void setOcr(Map<String, Double> ocr) {
		this.ocr = ocr;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Map<String, String> getNeighbors() {
		return neighbors;
	}
	public void setNeighbors(Map<String, String> neighbors) {
		this.neighbors = neighbors;
	}
	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	

}
