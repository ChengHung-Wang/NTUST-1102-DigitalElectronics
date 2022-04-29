* DC analysis on a simple circuit network

v1 vcc15 0 dc 15
v2 vcc20 0 dc 20
v3 vcc0 0 dc 0
r1 a vcc15 100
r2 a vcc20 200
r3 a vcc0 50
.dc v1 15 15 1
* Print Resistance voltage
.print dc v(vcc15,a) v(vcc20,a) v(vcc0,a)
* Print Resistance current
.print dc i(v1) i(v2) i(v3)

.end



* DC analysis on a simple circuit network

v1 b 0 dc 15
v2 c 0 dc 20
v3 d 0 dc 0
r1 a b 100
r2 a c 200
r3 a d 50
.dc v1 15 15 1
.print dc v(b,a)
.print dc i(v1) i(v2) i(v3) 