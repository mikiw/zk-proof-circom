pragma circom 2.1.6;

include "circomlib/poseidon.circom";
include "circomlib/comparators.circom";

template InRangeProof(N) {
    assert(N <= 252);

    signal input number;
    signal input commitment;
    signal input lowerBound;
    signal input upperBound;
    
    signal output answer;
    
    component hash = Poseidon(1);
    hash.inputs[0] <== number;
    commitment === hash.out;
    
    component check1 = LessThan(N);
    check1.in[0] <== number;
    check1.in[1] <== upperBound;
    
    component check2 = GreaterThan(N);
    check2.in[0] <== number;
    check2.in[1] <== lowerBound;
    
    answer <== check1.out * check2.out;
}

component main = InRangeProof(252);

/* INPUT = {
    "number": "27",
    "lowerBound": "18",
    "upperBound": "65",
    "commitment": "3090449945362578885698525831403001132226322149412971827901701818601612083800"
} */
