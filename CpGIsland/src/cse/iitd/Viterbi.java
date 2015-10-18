package cse.iitd;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Viterbi {
	private static List<String> possibleHidden = Arrays.asList("A+","A-","G+","G-","C+","C-","T+","T-");
	private static class ViterbiPath{
	    public double prob;
	    public List<String> path;
	    public double  maxprob;
	    public ViterbiPath(double prob, List<String> path, double maxprob){
	      this.prob = prob;
	      this.path = path;
	      this.maxprob = maxprob;
	    }
	    
	    public String toString() {
	    	return prob +" " +path.toString()+"  "+maxprob;
	    }
	  }
	
	public static void viterbi(String test, CpGIsland cpg) {
		List<Character> observed = Util.getObservedSequence(test);
		//System.out.println(observed.toString());
		ViterbiPath[] vp = new ViterbiPath[8];
		int i = 0;
		for (String initial : possibleHidden) {
			Double initialprob = cpg.getInitialProbs(initial);
			Double emission = cpg.getEmissionProbs(observed.get(0), initial.charAt(0));
			Double prob = initialprob * emission;
			vp[i] = new ViterbiPath(prob, Arrays.asList(initial), prob);
			//System.out.println(vp[i].toString());
			i++;
				
		}
			
			for (int o=1; o<observed.size(); o++){
				//System.out.println("Observation: "+observed.get(o));
				ViterbiPath[] tempvp = new ViterbiPath[8];
				int k =0;
				for (String nextState : possibleHidden) {
					//System.out.println("NextState: "+nextState);
					double argMax = 0.0;
					double total = 0.0;
					List<String> maxPath = new ArrayList<String>();
					int j = 0;
					for (String state : possibleHidden) {
						//System.out.println("state: "+state);
						//System.out.println("path: "+vp[j].toString());
						Double prob = vp[j].prob;
						List<String> prevPath = vp[j].path;
						Double maxprob = vp[j].maxprob;
						Double currentProb = cpg.getEmissionProbs(observed.get(o), state.charAt(0)) * cpg.getTransitionProbs(state, nextState);
						prob *= currentProb;
						maxprob *= currentProb;
						total += prob;
						if (maxprob > argMax){
							maxPath.addAll(prevPath);
							maxPath.add(nextState);
							argMax = maxprob;
						}
						j++;
					}
					tempvp[k] = new ViterbiPath(total, maxPath, argMax);
					k++;
				}
				vp = tempvp;
			}
			double argMax = 0.0;
			double total = 0.0;
			List<String> maxPath = new ArrayList<String>();
			for (int j = 0; j <possibleHidden.size(); j++) {
				Double prob = vp[j].prob;
				List<String> prevPath = vp[j].path;
				Double maxprob = vp[j].maxprob;
				total += prob;
				if (maxprob > argMax){
					maxPath = prevPath;
					argMax = maxprob;
				}
			}
			
			System.out.print(" Probability of the state:" + total + ".\n Viterbi path: ["); 
		    for(String path: maxPath){
		      System.out.print(path + ", ");  
		    }
		    System.out.println("].\n Probability of the whole system: " + argMax);
		
		
	}
	
	public static void main(String[] args) {
		String train = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\gene_data\\training.txt";
		String traincpg = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\gene_data\\cpg_island_training.txt";
		
		
		CpGIsland cpg = Util.readGeneSequence(train, traincpg);
		
		String test = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\gene_data\\testing.txt";
		//String testcpg = "C:\\Users\\IBM_ADMIN\\Desktop\\graphical\\assignment2\\gene_data\\cpg_island_training.txt";
		
		viterbi(test, cpg);
	}
	
	
	

}
