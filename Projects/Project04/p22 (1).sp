* DC analysis on a simple circuit network

v1 a 0 dc 50
v2 d 0 dc 100
v3 bt 0 dc 0
v4 ct 0 dc 0
v5 e c dc 0
r1 a b 10
r2 b bt 15
r3 b e 20
r4 c ct 25
r5 c d 30

.dc v1 50 50 1
.print dc v(a,b) v(b,bt) v(b,e) v(c,ct) v(c,d) v(d) 
.print dc i(v1) i(v3)  i(v5) i(v4) i(v2)

.op
.end






