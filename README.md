```
mkdir build/
cd 1-accumulator
../bin/compile.sh 10 accumulator_test 1 1
../bin/prove.sh accumulator_test input.json
../bin/verify.sh
```