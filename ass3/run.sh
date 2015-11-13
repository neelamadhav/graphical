cut -k' ' -f1 $1 | cut -k'\t' -f1 > pos.input
python posRun.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input true --model-file pos.model.feature pos.input.feature > $2

cp $2 input.pos

python nerRun.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input true --model-file ner.model.feature ner.input.feature > $3
