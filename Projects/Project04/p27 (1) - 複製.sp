* DC analysis on a simple circuit network

ve b a dc 50
v1 c h dc 0
v2 i d dc 0
v3 j e dc 0
v4 k 0 dc 0
v5 g l dc 0

ra b c 70
rb c i 100
rc h g 20
rd d e 80
re g j 10
rf l 0 30
rg e f 60
rh a 0 40
ri k f 90
.dc v1 50 50 1
.print dc v(b,c) v(c,i) v(h,g) v(d,e) v(g,j) v(l) v(e,f) V(a) v(f,k)
.print dc i(ve)  i(v2)  i(v1)  i(v2)  i(v3)  i(v5) i(v4) i(ve) i(v4)
.end



