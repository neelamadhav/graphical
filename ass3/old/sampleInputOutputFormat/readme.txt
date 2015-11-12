Final Input Format
See sample ner_input.txt and pos_input.txt for input format of NER and PoS models respectively.

Final Output Format
See sample ner_output.txt and pos_output.txt for input format of NER and PoS models respectively.

What to submit?
Submit your best code (best if trained on all training data and not just on a subset). 
The code should not need to train again. You should submit only the testing code, after the models have been trained. That is, you should not need to access the training data anymore. 

Submit your code is in a .zip file named in the format <EntryNo>.zip. Make sure that when we run “unzip yourfile.zip” the following files are produced in the present working directory:
compile.sh
run.sh
Writeup.pdf (and not writeup.pdf, Writeup.doc, etc)

Your code will be run as 
./run.sh inputfile.txt outputfile.txt. 

The outputfile.txt should have the same number of lines as inputfile.txt. And it should have two additional characters per token line (space and labeling). 

Your code should run on GCL machines. 
