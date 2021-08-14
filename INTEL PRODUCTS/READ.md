This is a single processor microarchitecture circuit that implements a 3:8 DECODER circuit constructed out of NAND Gates. 
It is called 3:8 DECODER with respect to relationship between number of inputs[3] and number of outputs[8]. 
It is also called 1:8 DECODER with respect to number of outputs that are active at a time. 
Only 1 output will be active out of 8 outputs. 
A Decoder is also called GATING Array or GATING Circuit.


Expression for 3:8 or 1:8  Decoder/Driver :
E = E[3] & ~ E2 & ~E1 [This is called Pre-decoder or ENABLE GATE]. One decoder for enabling the remaining 8 decoders. 
Only if this signal is active , a decoder will be enabled. Otherwise it is disabled.
