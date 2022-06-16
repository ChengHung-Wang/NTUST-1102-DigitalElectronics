************************************************************************
* auCdl Netlist:
* 
* Library Name:  mylib
* Top Cell Name: nand
* View Name:     schematic
* Netlisted on:  Jun  2 23:36:33 2022
************************************************************************

*.BIPOLAR
*.RESI = 2000 
*.RESVAL
*.CAPVAL
*.DIOPERI
*.DIOAREA
*.EQUATION
*.SCALE METER
*.MEGA
.PARAM
.lib 'hspice.lib' tt

.GLOBAL vdd!
+        vss!

*.PIN vdd!
*+    vss!

************************************************************************
* Library Name: mylib
* Cell Name:    nand
* View Name:    schematic
************************************************************************

.SUBCKT nand inputA inputB output
*.PININFO inputA:I inputB:I output:O
MM2 net13 inputB vss! vss! Nch W=220n L=180n
MM0 output inputA net13 vss! Nch W=220n L=180n
MM1 vdd! inputB output vdd! Pch W=420n L=180n
MM3 output inputA vdd! vdd! Pch W=420n L=180n
.ENDS

Xnand inputA inputB output nand

Vvdd vdd! 0 1.8v
Vvss vss! 0 0v

vin inputA 0 pulse (0v 1.8v 0ns 20ps 20ps 2ns 4ns)
vin2 inputB 0 pulse (0v 1.8v 0ns 20ps 20ps 1ns 2ns)

.measure r_time
+TRIG v(output) VAL = 0.18v RISE = 1
+TARG v(output) VAL = 1.62v RISE = 1

.measure f_time
+TRIG v(output) VAL = 1.62v FALL = 1
+TARG v(output) VAL = 0.18v FALL = 1

.measure rA_pro
+TRIG v(inputA) VAL = 0.9v FALL = 1
+TARG v(output) VAL = 0.9v RISE = 1

.measure fA_pro
+TRIG v(inputA) VAL = 0.9v RISE = 1
+TARG v(output) VAL = 0.9v FALL = 1

.measure rB_pro
+TRIG v(inputB) VAL = 0.9v FALL = 1
+TARG v(output) VAL = 0.9v RISE = 1

.measure fB_pro
+TRIG v(inputB) VAL = 0.9v RISE = 1
+TARG v(output) VAL = 0.9v FALL = 1

.option post
.trans 1p 20n
.END 