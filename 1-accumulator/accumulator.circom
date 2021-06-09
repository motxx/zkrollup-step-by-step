include "../circomlib/circuits/poseidon.circom";

template Accumulator(n) {
  signal private input data[n];
  signal input in_hash;
  signal output out_hash;

  component hash[n];
  var intermediate_hash = in_hash;

  for (var i = 0; i < n; i++) {
    hash[i] = Poseidon(2);
    hash[i].inputs[0] <== intermediate_hash;
    hash[i].inputs[1] <== data[i];
    intermediate_hash = hash[i].out;
  }

  out_hash <== intermediate_hash;
}
