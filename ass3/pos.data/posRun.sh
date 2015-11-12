java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file pos.model.simple --training-proportion 1.0 --iterations 500  pos.traindev &> pos.out.simple;

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file pos.model.simple.order1 --training-proportion 1.0 --iterations 500 --orders 1  pos.traindev &> pos.out.simple.order1;

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file pos.model.simple.order2 --training-proportion 1.0 --iterations 500 --orders 2 pos.traindev &> pos.out.simple.order2;

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file pos.model.feature --training-proportion 1.0 --iterations 500  pos.traindev.feature &> pos.out.feature;

java -cp "/home/madhav/Desktop/ass3/mallet-2.0.7/class:/home/madhav/Desktop/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.HMMSimpleTagger --train true --test lab --threads 4  --model-file pos.model.HMM --training-proportion 1.0 --iterations 500  pos.traindev &> pos.out.HMM
