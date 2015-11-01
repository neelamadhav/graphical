package cse.iitd;


import java.util.ArrayList;
import java.util.List;

public class DataTree {
	
	private List<Integer> image1;
	private List<Integer> image2;
	private List<Character> chars1;
	private List<Character> chars2;
	private List<Character> sampleChars1;
	private List<Character> sampleChars2;
	
	public DataTree() {
		
	}
	
	public void setSampleChars1(List<Character> sampleChars1) {
		this.sampleChars1 = sampleChars1;
	}

	public void setSampleChars2(List<Character> sampleChars2) {
		this.sampleChars2 = sampleChars2;
	}

	public DataTree(DataTree dt) {
		this.chars1 = dt.chars1;
		this.chars2 = dt.chars2;
		this.image1 = dt.image1;
		this.image2 = dt.image2;
		this.sampleChars1 = dt.sampleChars1;
		this.sampleChars2 = dt.sampleChars2;
	}
	
	public DataTree(List<Character> chars1, List<Character> chars2, List<Integer> image1, List<Integer> image2) {
		super();
		this.chars1 = chars1;
		this.chars2 = chars2;
		this.image1 = image1;
		this.image2 = image2;
		this.sampleChars1 = getSampleChars(image1);
		this.sampleChars2 = getSampleChars(image2);
	}
	
	public String toString(){
		return image1.toString()+" "+image2.toString()+" "+chars1.toString()+"  "+chars2.toString()+" "+sampleChars1.toString()+"  "+sampleChars2.toString();
	}

	private List<Character> getSampleChars(List<Integer> image) {
		List<Character> sample = new ArrayList<>();
		for(Integer val: image){
			sample.add(Util.getMaxCharMatch(val));
		}
		return sample;
		
	}



	public List<Character> getSampleChars1() {
		return sampleChars1;
	}



	public List<Character> getSampleChars2() {
		return sampleChars2;
	}



	public List<Character> getChars1() {
		return chars1;
	}



	public void setChars1(List<Character> chars1) {
		this.chars1 = chars1;
	}



	public List<Character> getChars2() {
		return chars2;
	}



	public void setChars2(List<Character> chars2) {
		this.chars2 = chars2;
	}

	
	public List<Integer> getImage1() {
		return image1;
	}



	public void setImage1(List<Integer> image1) {
		this.image1 = image1;
	}



	public List<Integer> getImage2() {
		return image2;
	}



	public void setImage2(List<Integer> image2) {
		this.image2 = image2;
	}
	
		
		
	
	
	
}
