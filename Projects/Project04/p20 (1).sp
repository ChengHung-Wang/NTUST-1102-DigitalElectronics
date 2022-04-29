* DC analysis on a simple circuit network

v1 b 0 dc 5
v2 c 0 dc 0
i1 0 a dc 2
r1 a b 10
r2 a c 5

.dc v1 5 5 1
.print dc v(a,b) v(a,c)
.print dc i(v1) i(v2) 
.op
.end


