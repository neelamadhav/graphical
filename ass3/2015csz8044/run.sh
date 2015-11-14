cut -d' ' -f1 $1 | cut -d$'\t' -f1 > temp.pos.input
python posRun.py

java -cp $MALLET_INC cc.mallet.fst.SimpleTagger --include-input false --model-file pos.model.feature temp.pos.input.feature > temp.pos.pred
paste -d' ' temp.pos.input temp.pos.pred > $2

cp $2 temp.input.pos

python nerRun.py

java -cp $MALLET_INC cc.mallet.fst.SimpleTagger --include-input false --model-file ner.model.feature.all.pos temp.ner.input.feature > temp.ner.pred
paste -d' ' temp.pos.input temp.ner.pred > $3
