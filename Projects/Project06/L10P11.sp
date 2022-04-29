*L10:P11 RL Band-pass Filter

v1 v1VCC GND sin(0 10 10 0 0)
v2 v2VCC v1VCC sin(0 10 100 0 0)
v3 v3VCC v2VCC sin(0 10 1k 0 0)

r1 v3VCC r1PointB 100
c1 r1PointB GND 1u
r2 r1PointB rloadPointA 100

c2 v3VCC c2PointB 1u
c3 c2PointB rloadPointA 1u

rload rloadPointA GND 10
r3 c2PointB GND 100

.tran 1u 0.1 uic
*Please do not remove this line
.control
	run 
 print v(v3VCC) v(rloadPointA) > /tmp/plot_allv_UnMhXIjQoAzVNkAAAE.txt 

.endc
.end