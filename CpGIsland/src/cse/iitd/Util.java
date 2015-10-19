package cse.iitd;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Util {
	public static CpGIsland readGeneSequence(String seqFile, String cpgIslandFile){
		CpGIsland cpg = new CpGIsland();
		try (BufferedReader br = new BufferedReader(new FileReader(seqFile))){
			String line = null;
			List<Character> observed = new ArrayList<>();
			while ((line = br.readLine()) != null) {
				line = line.trim();
				for (char ch : line.toCharArray()) {
					observed.add(ch);
				}
			}
			cpg.setObservedNodes(observed);
			cpg.setTotalNodes(observed.size());
			cpg = getHiddenNodes(cpgIslandFile, cpg);
		} catch (NumberFormatException | IOException e) {
			e.printStackTrace();
		}
		return cpg;
	}

	private static CpGIsland getHiddenNodes(String cpgIslandFile, CpGIsland cpg) {
		List<Character> observed = cpg.getObservedNodes();
		Map<String, List<Integer>> cpgIslands = getCpGILandPositioins(cpgIslandFile);
		Map<String, Integer> transCount = new HashMap<>();
		Map<String, Integer> initialCount = new HashMap<>();
		List<String> hidden = new ArrayList<>();
		int totalNonCpG = 0;
		int i = 0;
		boolean start = false;
		for (Character ch : observed) {
			i++;
			if(start && cpgIslands.get("end").contains(i)) {
				start = false;
				hidden.add(ch + "+");
			} else if (start) {
				hidden.add(ch + "+");
			}
			else if(!start && cpgIslands.get("start").contains(i)) {
				start = true;
				hidden.add(ch + "+");
			}  else {
				totalNonCpG++;
				String key = ch+"-";
				hidden.add(key);
				if (!initialCount.containsKey(key)) 
					initialCount.put(key, 0);
				initialCount.put(key, initialCount.get(key)+1);
			}
			if (i > 1) {
				String key = hidden.get(i-2)+"$$$"+hidden.get(i-1);
				if (!transCount.containsKey(key)) 
					transCount.put(key, 0);
				transCount.put(key, transCount.get(key)+1);
			}
		}
		
		
		cpg.setHiddenNodes(hidden); 
		cpg.setTrasitCounts(transCount);
		cpg.setInitialCounts(initialCount);
		cpg.setTotalNonCpG(totalNonCpG);
		return cpg;
	}

	private static Map<String, List<Integer>> getCpGILandPositioins(String cpgIslandFile) {
		Map<String, List<Integer>> cpgIslands = new HashMap<>();
		try (BufferedReader br = new BufferedReader(new FileReader(cpgIslandFile))){
			String line = null;
			List<Integer> start = new ArrayList<>();
			List<Integer> end = new ArrayList<>();
			while ((line = br.readLine()) != null) {
				line = line.trim();
				String[] startEnd = line.split(" ");
				start.add(Integer.parseInt(startEnd[0]));
				end.add(Integer.parseInt(startEnd[1]));
			}
			cpgIslands.put("start", start);
			cpgIslands.put("end", end);
		} catch (NumberFormatException | IOException e) {
			e.printStackTrace();
		}
		return cpgIslands;
	}

	public static List<Character> getObservedSequence(String testFile) {
		List<Character> observed = new ArrayList<>();
		try (BufferedReader br = new BufferedReader(new FileReader(testFile))){
			String line = null;
			while ((line = br.readLine()) != null) {
				line = line.trim();
				for (char ch : line.toCharArray()) {
					observed.add(ch);
				}
			}
		} catch (NumberFormatException | IOException e) {
			e.printStackTrace();
		}
		return observed;
	}
}
