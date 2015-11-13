cut -d' ' -f1 pos.test | cut -d$'\t' -f1 > temp.pos.input


echo "simple"
java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file pos.model.simple temp.pos.input > temp.pos.simple.pred
paste -d' ' temp.pos.input temp.pos.simple.pred > test.pos.simple

python format_checker.py temp.pos.input test.pos.simple pos
python Fscore_pos.py test.pos.simple pos.test

echo "order1"
java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.simple.SimpleTagger --include-input false --model-file pos.model.simple.order1 temp.pos.input > temp.pos.simple.order1.pred
paste -d' ' temp.pos.input temp.pos.simple.order1.pred > test.pos.simple.order1

python format_checker.py temp.pos.input test.pos.simple.order1 pos
python Fscore_pos.py test.pos.simple.order1 pos.test

echo "order2"
java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.simple.SimpleTagger --include-input false --model-file pos.model.simple.order2 temp.pos.input > temp.pos.simple.order2.pred
paste -d' ' temp.pos.input temp.pos.simple.order2.pred > test.pos.simple.order2

python format_checker.py temp.pos.input test.pos.simple.order2 pos
python Fscore_pos.py test.pos.simple.order2 pos.test

echo "HMM"
java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.HMMSimpleTagger --include-input false --model-file pos.model.hmm temp.pos.input > temp.pos.hmm.pred
paste -d' ' temp.pos.input temp.pos.hmm.pred > test.pos.hmm

python format_checker.py temp.pos.input test.pos.hmm pos
python Fscore_pos.py test.pos.hmm pos.test


echo "All Features"
python posRun.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file pos.model.feature temp.pos.input.feature > temp.pos.feature.pred
paste -d' ' temp.pos.input temp.pos.feature.pred > test.pos.feature

python format_checker.py temp.pos.input test.pos.feature pos
python Fscore_pos.py test.pos.feature pos.test


echo "All Features"
python posRun.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file pos.model.feature temp.pos.input.feature > temp.pos.feature.pred
paste -d' ' temp.pos.input temp.pos.feature.pred > test.pos.feature

python format_checker.py temp.pos.input test.pos.feature pos
python Fscore_pos.py test.pos.feature pos.test

echo "All Features .specialChar.numerical"
python posRunspecialnum.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file pos.model.feature.specialChar.numerical temp.pos.input.feature > temp.pos.feature.specialChar.numerical.pred
paste -d' ' temp.pos.input temp.pos.feature.specialChar.numerical.pred > test.pos.feature.specialChar.numerical

python format_checker.py temp.pos.input test.pos.feature.specialChar.numerical pos
python Fscore_pos.py test.pos.feature.specialChar.numerical pos.test

echo "All Features .specialChar.numerical.cap"
python posRunspecialnumcap.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file pos.model.feature.specialChar.numerical.cap temp.pos.input.feature > temp.pos.feature.specialChar.numerical.cap.pred
paste -d' ' temp.pos.input temp.pos.feature.specialChar.numerical.cap.pred > test.pos.feature.specialChar.numerical.cap

python format_checker.py temp.pos.input test.pos.feature.specialChar.numerical.cap pos
python Fscore_pos.py test.pos.feature.specialChar.numerical.cap pos.test

echo "All Features .specialChar.numerical.cap.mention.hashtag"
python posRunspecialnumcapmention.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file pos.model.feature.specialChar.numerical.cap.mention.hashtag temp.pos.input.feature > temp.pos.feature.specialChar.numerical.cap.mention.hashtag.pred
paste -d' ' temp.pos.input temp.pos.feature.specialChar.numerical.cap.mention.hashtag.pred > test.pos.feature.specialChar.numerical.cap.mention.hashtag

python format_checker.py temp.pos.input test.pos.feature.specialChar.numerical.cap.mention.hashtag pos
python Fscore_pos.py test.pos.feature.specialChar.numerical.cap.mention.hashtag pos.test
