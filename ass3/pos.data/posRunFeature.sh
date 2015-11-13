java -cp "/home/neelamadhav/graphical/ass3/mallet-2.0.7/class:/home/neelamadhav/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file pos.model.feature.specialChar.numerical --training-proportion 1.0 --iterations 500  pos.traindev.feature.specialChar.numerical &> pos.out.feature.specialChar.numerical;

java -cp "/home/neelamadhav/graphical/ass3/mallet-2.0.7/class:/home/neelamadhav/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file pos.model.feature.specialChar.numerical.cap --training-proportion 1.0 --iterations 500  pos.traindev.feature.specialChar.numerical.cap &> pos.out.feature.specialChar.numerical.cap;

java -cp "/home/neelamadhav/graphical/ass3/mallet-2.0.7/class:/home/neelamadhav/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file pos.model.feature.specialChar.numerical.cap.mention.hashtag --training-proportion 1.0 --iterations 500  pos.traindev.feature.specialChar.numerical.cap.mention.hashtag &> pos.out.feature.specialChar.numerical.cap.mention.hashtag;


