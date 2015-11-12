java -cp "/home/madhav/Desktop/graphical/ass3/mallet-2.0.7/class:/home/madhav/Desktop/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file ner.model.feature.specialChar.numerical --training-proportion 1.0 --iterations 500  ner.traindev.feature.specialChar.numerical &> ner.out.feature.specialChar.numerical;

java -cp "/home/madhav/Desktop/graphical/ass3/mallet-2.0.7/class:/home/madhav/Desktop/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file ner.model.feature.specialChar.numerical.cap --training-proportion 1.0 --iterations 500  ner.traindev.feature.specialChar.numerical.cap &> ner.out.feature.specialChar.numerical.cap;

java -cp "/home/madhav/Desktop/graphical/ass3/mallet-2.0.7/class:/home/madhav/Desktop/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file ner.model.feature.specialChar.numerical.cap.mention.hashtag --training-proportion 1.0 --iterations 500  ner.traindev.feature.specialChar.numerical.cap.mention.hashtag &> ner.out.feature.specialChar.numerical.cap.mention.hashtag;

java -cp "/home/madhav/Desktop/graphical/ass3/mallet-2.0.7/class:/home/madhav/Desktop/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file ner.model.feature.all.pos --training-proportion 1.0 --iterations 500  ner.traindev.feature.all.pos &> ner.out.feature.all.pos;

