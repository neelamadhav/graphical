cut -d' ' -f1 pos.test | cut -d$'\t' -f1 > temp.pos.input


echo "All Features"
python posRun.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file ../pos.model.feature temp.pos.input.feature > temp.pos.feature.pred
paste -d' ' temp.pos.input temp.pos.feature.pred > test.pos.feature

python format_checker.py temp.pos.input test.pos.feature pos

