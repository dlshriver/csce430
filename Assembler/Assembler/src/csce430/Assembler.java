package csce430;

import java.util.*;
import java.io.*;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Assembler {

	public static void main(String args[]) throws FileNotFoundException{
		HashMap <String, String> hexOp = new HashMap<String, String>();
		hexOp.put("add", "A");
		hexOp.put("sub", "A");
		hexOp.put("and", "A");
		hexOp.put("or", "A");
		hexOp.put("xor", "A");
		hexOp.put("sll", "B");
		hexOp.put("cmp", "E");
		hexOp.put("jr", "F");
		hexOp.put("lw", "8");
		hexOp.put("sw", "9");
		hexOp.put("addi", "C");
		hexOp.put("br", "0");
		hexOp.put("bal", "4");
		hexOp.put("j", "2");
		hexOp.put("jal", "6");
		hexOp.put("li", "3");
		
		HashMap <String, String> hexCond = new HashMap<String, String>();
		hexCond.put("eq", "0");
		hexCond.put("ne", "1");
		hexCond.put("cs", "2");
		hexCond.put("cc", "3");
		hexCond.put("mi", "4");
		hexCond.put("pl", "5");
		hexCond.put("vs", "6");
		hexCond.put("vc", "7");
		hexCond.put("hi", "8");
		hexCond.put("ls", "9");
		hexCond.put("ge", "A");
		hexCond.put("lt", "B");
		hexCond.put("gt", "C");
		hexCond.put("le", "D");
		hexCond.put("al", "E");
		hexCond.put("nv", "F");
		
		HashMap<String, String> hexOpx = new HashMap<String, String>();
		hexOpx.put("add", "4");
		hexOpx.put("sub", "0");
		hexOpx.put("and", "2");
		hexOpx.put("or", "3");
		hexOpx.put("xor", "1");
		hexOpx.put("sll", "0");
		hexOpx.put("cmp", "0");
		hexOpx.put("jr", "0");
		
		HashMap<String, String> branchLocations = new HashMap<String, String>();
		
		Scanner s1 = null;
		Scanner s2 = null;
		
		try{
			s1 = new Scanner(new File("data/assembly.txt"));
		}catch (FileNotFoundException e){
			e.printStackTrace();
		}
		
		String currLine = "";
		int numInstr = 0;
		String tokens[];
		
		while(s1.hasNextLine()){
			currLine = s1.nextLine();
			if(currLine.contains(":")){
				String branchLoc = Integer.toString(numInstr);
				branchLocations.put(currLine.replace(":", ""), branchLoc);
			}else{
				tokens = currLine.split(" ");
				if(tokens[0].equals("add")||tokens[0].equals("sub")||tokens[0].equals("and")||tokens[0].equals("or")||tokens[0].equals("xor")||tokens[0].equals("sll")||tokens[0].equals("cmp")||tokens[0].equals("jr")){
					numInstr++;
				}else if(tokens[0].equals("lw")||tokens[0].equals("sw")||tokens[0].equals("addi")){
					numInstr++;
				}else if(tokens[0].equals("br")||tokens[0].equals("bal")){
					numInstr++;
				}else{
					continue;
				}
			}
		}
		
		s1.close();
		
		try{
			s2 = new Scanner(new File("data/assembly.txt"));
		}catch (FileNotFoundException e){
			e.printStackTrace();
		}
		
		File output = new File("data/project.mif");
		FileOutputStream fis = new FileOutputStream(output);
		PrintStream out = new PrintStream(fis);
		System.setOut(out);
		
		int width = 24;
		int depth = 1024;
		
		System.out.printf("WIDTH = %d;\nDEPTH = %d;\nADDRESS_RADIX = HEX;\nDATA_RADIX = HEX;\nCONTENT BEGIN\n", width, depth);
		
		String assemblyInstruct = "";
		
		String[] tokensMain;
		
		String op = "";
		String cond = "";
		String rs = "";
		String rt = "";
		String rd = "";
		String opx = "";
		String imm = "";
		String label = "";
		
		numInstr = 0;
		
		while(s2.hasNextLine()){
			assemblyInstruct = s2.nextLine();
			tokensMain = assemblyInstruct.split(" ");
			String hexInstruct = "";
			
			//R-Type
			if(tokensMain[0].equals("add")||tokensMain[0].equals("sub")||tokensMain[0].equals("and")||tokensMain[0].equals("or")||tokensMain[0].equals("xor")||tokensMain[0].equals("sll")||tokensMain[0].equals("cmp")||tokensMain[0].equals("jr")){
				op = hexOp.get(tokensMain[0]);
				if(tokensMain[0].equals("cmp")){
					if(!tokensMain[1].contains("r")){
						cond = hexCond.get(tokensMain[1]);
						rs = Integer.toHexString(Integer.parseInt(tokensMain[2].replace("r", "")));
						rt = Integer.toHexString(Integer.parseInt(tokensMain[3].replace("r", "")));
						rd= "0";
						int opxNum = Integer.parseInt(hexOpx.get(tokensMain[0]));
						opxNum = opxNum*2;
						if(tokensMain.length == 5){
							opxNum = opxNum+1;
							opx = Integer.toString(opxNum);
						}else{
							opx = Integer.toString(opxNum);
						}
					}else{
						cond = hexCond.get("al");
						rs = Integer.toHexString(Integer.parseInt(tokensMain[1].replace("r", "")));
						rt = Integer.toHexString(Integer.parseInt(tokensMain[2].replace("r", "")));
						rd = "0";
						int opxNum = Integer.parseInt(hexOpx.get(tokensMain[0]));
						opxNum = opxNum*2;
						if(tokensMain.length == 4){
							opxNum = opxNum+1;
							opx = Integer.toString(opxNum);
						}else{
							opx = Integer.toString(opxNum);
						}
					}
				}else if(tokensMain[0].equals("jr")){
					if(!tokensMain[1].contains("r")){
						cond = hexCond.get(tokensMain[1]);
						rs = Integer.toHexString(Integer.parseInt(tokensMain[2].replace("r", "")));
						rt = "0";
						rd = "0";
						int opxNum = Integer.parseInt(hexOpx.get(tokensMain[0]));
						opxNum = opxNum*2;
						if(tokensMain.length == 4){
							opxNum = opxNum+1;
							opx = Integer.toString(opxNum);
						}else{
							opx = Integer.toString(opxNum);
						}
					}else{
						cond = hexCond.get("al");
						rs = Integer.toHexString(Integer.parseInt(tokensMain[1].replace("r", "")));
						rt = "0";
						rd = "0";
						int opxNum = Integer.parseInt(hexOpx.get(tokensMain[0]));
						opxNum = opxNum*2;
						if(tokensMain.length == 3){
							opxNum = opxNum+1;
							opx = Integer.toString(opxNum);
						}else{
							opx = Integer.toString(opxNum);
						}
					}
				}else{
					if(!tokensMain[1].contains("r")){
						cond = hexCond.get(tokensMain[1]);
						rd = Integer.toHexString(Integer.parseInt(tokensMain[2].replace("r", "")));
						rs = Integer.toHexString(Integer.parseInt(tokensMain[3].replace("r", "")));
						rt = Integer.toHexString(Integer.parseInt(tokensMain[4].replace("r", "")));
						int opxNum = Integer.parseInt(hexOpx.get(tokensMain[0]));
						opxNum = opxNum*2;
						if(tokensMain.length == 6){
							opxNum = opxNum+1;
							opx = Integer.toString(opxNum);
						}else{
							opx = Integer.toString(opxNum);
						}
					}else{
						cond = hexCond.get("al");
						rd = Integer.toHexString(Integer.parseInt(tokensMain[1].replace("r", "")));
						rs = Integer.toHexString(Integer.parseInt(tokensMain[2].replace("r", "")));
						rt = Integer.toHexString(Integer.parseInt(tokensMain[3].replace("r", "")));
						int opxNum = Integer.parseInt(hexOpx.get(tokensMain[0]));
						opxNum = opxNum*2;
						if(tokensMain.length == 5){
							opxNum = opxNum+1;
							opx = Integer.toString(opxNum);
						}else{
							opx = Integer.toString(opxNum);
						}
					}
				}
					imm = "";
					label = "";
					
					hexInstruct = op+cond+rs+rt+rd+opx;
					
			//D-Type
			}else if(tokensMain[0].equals("lw")||tokensMain[0].equals("sw")||tokensMain[0].equals("addi")){
				op = hexOp.get(tokensMain[0]);
				if(!tokensMain[1].contains("r")){
					cond = hexCond.get(tokensMain[1]);
					rt = Integer.toHexString(Integer.parseInt(tokensMain[2].replace("r", "")));
					rs = Integer.toHexString(Integer.parseInt(tokensMain[3].replace("r", "")));
					int immNum = Integer.parseInt(tokensMain[4]);
					immNum = immNum*2;
					if(tokensMain.length == 6){
						immNum = immNum+1;
						imm = Integer.toHexString(immNum);
						if(imm.length()<2){
							imm = "0"+imm;
						}else if(imm.length()>2){
							imm = imm.substring(imm.length()-2, imm.length());
						}
					}else{
						imm = Integer.toHexString(immNum);
						if(imm.length()<2){
							imm = "0"+imm;
						}else if(imm.length()>2){
							imm = imm.substring(imm.length()-2, imm.length());
						}
					}
				}else{
					cond = hexCond.get("al");
					rt = Integer.toHexString(Integer.parseInt(tokensMain[1].replace("r", "")));
					rs = Integer.toHexString(Integer.parseInt(tokensMain[2].replace("r", "")));
					int immNum = Integer.parseInt(tokensMain[3]);
					immNum = immNum*2;
					if(tokensMain.length == 5){
						immNum = immNum+1;
						imm = Integer.toHexString(immNum);
						if(imm.length()<2){
							imm = "0"+imm;
						}
					}else{
						imm = Integer.toHexString(immNum);
						if(imm.length()<2){
							imm = "0"+imm;
						}
					}
				}
				rd = "";
				opx = "";
				label = "";
				
				hexInstruct = op+cond+rs+rt+imm;
			
			//B-Type
			}else if(tokensMain[0].equals("br")||tokensMain[0].equals("bal")){
				op = hexOp.get(tokensMain[0]);
				if(!tokensMain[1].contains("r")){
					cond = hexCond.get(tokensMain[1]);
					int offset = Integer.parseInt(branchLocations.get(tokensMain[2])) - numInstr;
					label = Integer.toHexString(65536+offset);
					label = label.substring(label.length()-4, label.length());
				}else{
					cond = hexCond.get("al");
					int offset = Integer.parseInt(branchLocations.get(tokensMain[1])) - numInstr;
					label = Integer.toHexString(65536+offset);
					label = label.substring(label.length()-4, label.length());
				}
				rs = "";
				rt = "";
				rd = "";
				opx = "";
				imm = "";
				
				hexInstruct = op+cond+label;
			}else{
				continue;
			}
			
			System.out.printf("%s : %s;\n", Integer.toHexString(numInstr).toUpperCase(), hexInstruct.toUpperCase());

			numInstr++;
		}
		System.out.println("END;");
	}
}