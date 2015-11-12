java -cp "/home/senthil/neela/graphical/ass3/mallet-2.0.7/class:/home/senthil/neela/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file ner.model.simple --training-proportion 1.0 --iterations 500  ner.traindev &> ner.out.simple;

java -cp "/home/senthil/neela/graphical/ass3/mallet-2.0.7/class:/home/senthil/neela/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file ner.model.simple.order1 --training-proportion 1.0 --iterations 500 --orders 1  ner.traindev &> ner.out.simple.order1;


java -cp "/home/senthil/neela/graphical/ass3/mallet-2.0.7/class:/home/senthil/neela/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file ner.model.feature --training-proportion 1.0 --iterations 500  ner.traindev.feature &> ner.out.feature;

java -cp "/home/senthil/neela/graphical/ass3/mallet-2.0.7/class:/home/senthil/neela/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.HMMSimpleTagger --train true --test lab --threads 4  --model-file ner.model.HMM --training-proportion 1.0 --iterations 500  ner.traindev &> ner.out.HMM

java -cp "/home/senthil/neela/graphical/ass3/mallet-2.0.7/class:/home/senthil/neela/graphical/ass3/mallet-2.0.7/lib/mallet-deps.jar" cc.mallet.fst.SimpleTagger --train true --test lab --threads 4  --model-file ner.model.simple.order2 --training-proportion 1.0 --iterations 500 --orders 2 ner.traindev &> ner.out.simple.order2;
