*L10:P10 RL Band-pass Filter

v1 v1VCC GND sin(0 10 1 0 0)
v2 v2VCC v1VCC sin(0 10 10 0 0)
v3 v3VCC v2VCC sin(0 10 100 0 0)

r1 v3VCC r1PointA 10
l1 r1PointA GND 10m
l2 r1PointA rloadPointA 10m
rload rloadPointA GND 10

.tran 1u 0.1 uic
*Please do not remove this line
.control
	run
.endc
.end