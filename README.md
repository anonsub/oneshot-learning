# strips-learning

### Modify the following line in src/config.py to set the project path

PROJECT_PATH = "~/PhD/anon_repos/oneshot-learning/"

### Example of runs

./FAMA.py -i ../benchmarks/ijcai19/blocks/ 0 20 80 -t ten-observation -l 0 1

 The learned action model is output to: learned_domain.pddl

### Evaluate the model

./model_evaluator.py -r ../benchmarks/ijcai19/blocks/ref_domain learned_domain.pddl

#### *The results shown in the ijcai19 submission were obtained using the scripts in experiments/ijcai19/
