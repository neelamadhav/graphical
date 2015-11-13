cut -d' ' -f1 ner.test | cut -d$'\t' -f1 > temp.ner.input


echo "simple"
java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file ../ner.model.simple temp.ner.input > temp.ner.simple.pred
paste -d' ' temp.ner.input temp.ner.simple.pred > test.ner.simple

python format_checker.py temp.ner.input test.ner.simple ner
python Fscore_ner.py test.ner.simple ner.test

echo "order1"
java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file ../ner.model.simple.order1 temp.ner.input > temp.ner.simple.order1.pred
paste -d' ' temp.ner.input temp.ner.simple.order1.pred > test.ner.simple.order1

python format_checker.py temp.ner.input test.ner.simple.order1 ner
python Fscore_ner.py test.ner.simple.order1 ner.test


echo "order2"
java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file ../ner.model.simple.order2 temp.ner.input > temp.ner.simple.order2.pred
paste -d' ' temp.ner.input temp.ner.simple.order2.pred > test.ner.simple.order2

python format_checker.py temp.ner.input test.ner.simple.order2 ner
python Fscore_ner.py test.ner.simple.order2 ner.test

echo "HMM"
java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.HMMSimpleTagger --include-input false --model-file ../ner.model.HMM temp.ner.input > temp.ner.hmm.pred
paste -d' ' temp.ner.input temp.ner.hmm.pred > test.ner.hmm

python format_checker.py temp.ner.input test.ner.hmm ner
python Fscore_ner.py test.ner.hmm ner.test


echo "All Features"
python nerRun.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file ../ner.model.feature temp.ner.input.feature > temp.ner.feature.pred
paste -d' ' temp.ner.input temp.ner.feature.pred > test.ner.feature

python format_checker.py temp.ner.input test.ner.feature ner
python Fscore_ner.py test.ner.feature ner.test


echo "All Features .specialChar.numerical"
python nerRunspecialnum.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file ../ner.model.feature.specialChar.numerical temp.ner.input.feature > temp.ner.feature.specialChar.numerical.pred
paste -d' ' temp.ner.input temp.ner.feature.specialChar.numerical.pred > test.ner.feature.specialChar.numerical

python format_checker.py temp.ner.input test.ner.feature.specialChar.numerical ner
python Fscore_ner.py test.ner.feature.specialChar.numerical ner.test

echo "All Features .specialChar.numerical.cap"
python nerRunspecialnumcap.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file ../ner.model.feature.specialChar.numerical.cap temp.ner.input.feature > temp.ner.feature.specialChar.numerical.cap.pred
paste -d' ' temp.ner.input temp.ner.feature.specialChar.numerical.cap.pred > test.ner.feature.specialChar.numerical.cap

python format_checker.py temp.ner.input test.ner.feature.specialChar.numerical.cap ner
python Fscore_ner.py test.ner.feature.specialChar.numerical.cap ner.test

echo "All Features .specialChar.numerical.cap.mention.hashtag"
python nerRunspecialnumcapmention.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file ../ner.model.feature.specialChar.numerical.cap.mention.hashtag temp.ner.input.feature > temp.ner.feature.specialChar.numerical.cap.mention.hashtag.pred
paste -d' ' temp.ner.input temp.ner.feature.specialChar.numerical.cap.mention.hashtag.pred > test.ner.feature.specialChar.numerical.cap.mention.hashtag

python format_checker.py temp.ner.input test.ner.feature.specialChar.numerical.cap.mention.hashtag ner
python Fscore_ner.py test.ner.feature.specialChar.numerical.cap.mention.hashtag ner.test

echo "All Features with pos"
python nerRunpos.py

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --include-input false --model-file ../ner.model.feature.all.pos temp.ner.input.feature > temp.ner.feature.all.pos.pred
paste -d' ' temp.ner.input temp.ner.feature.all.pos.pred > test.ner.feature.all.pos

python format_checker.py temp.ner.input test.ner.feature.all.pos ner
python Fscore_ner.py test.ner.feature.all.pos ner.test
