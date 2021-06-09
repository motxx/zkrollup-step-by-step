include "accumulator.circom";
/*
template Main() {
  var n = 2;
  component accum = Accumulator(n);
  for (var i = 0; i < n; i++) {
    accum.data[i] <== i;
  }
  accum.curr_hash <== 123456789;
}

component main = Main();
*/

component main = Accumulator(2);