* SPICE NETLIST
***************************************

.SUBCKT rppolyhri_rf PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT moscap_rf33 PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT pmos_rf33_nw D G S B
.ENDS
***************************************
.SUBCKT rpod_m PLUS MINUS B
.ENDS
***************************************
.SUBCKT spiral_s2_sym PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT spiral_s3_sym PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT xjvar_w40 PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT rppoly_rf PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT rppolywo_rf PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT mimcap_shield PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT mimcap_wos PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT rnodrpo_m PLUS MINUS B
.ENDS
***************************************
.SUBCKT nmoscap PLUS MINUS
.ENDS
***************************************
.SUBCKT rpodrpo_m PLUS MINUS B
.ENDS
***************************************
.SUBCKT xjvar_nr36 PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT nmos_rf D G S B
.ENDS
***************************************
.SUBCKT spiral_s2_std PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT spiral_s3_std PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT rnwod_m PLUS MINUS B
.ENDS
***************************************
.SUBCKT rnodw_m PLUS MINUS B
.ENDS
***************************************
.SUBCKT nmoscap_33 PLUS MINUS
.ENDS
***************************************
.SUBCKT pmos_rf D G S B
.ENDS
***************************************
.SUBCKT rpodw_m PLUS MINUS B
.ENDS
***************************************
.SUBCKT spiral_s2_sym_ct PLUS MINUS BULK CTAP
.ENDS
***************************************
.SUBCKT spiral_s3_sym_ct PLUS MINUS BULK CTAP
.ENDS
***************************************
.SUBCKT moscap_rf PLUS MINUS BULK
.ENDS
***************************************
.SUBCKT nmos_rf33 D G S B
.ENDS
***************************************
.SUBCKT pmos_rf_nw D G S B
.ENDS
***************************************
.SUBCKT pmos_rf33 D G S B
.ENDS
***************************************
.SUBCKT rnod_m PLUS MINUS B
.ENDS
***************************************
.SUBCKT nor vss! vdd! output inputA inputB
** N=9 EP=5 IP=0 FDC=4
M0 output inputA vss! vss! N L=1.8e-07 W=2.2e-07 $X=1575 $Y=-35 $D=5
M1 vss! inputB output vss! N L=1.8e-07 W=2.2e-07 $X=2385 $Y=-35 $D=5
M2 3 inputA vdd! vdd! P L=1.8e-07 W=4.2e-07 $X=1575 $Y=2435 $D=8
M3 output inputB 3 vdd! P L=1.8e-07 W=4.2e-07 $X=2005 $Y=2435 $D=8
.ENDS
***************************************
