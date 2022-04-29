*L10:P15 RLC Circuit Under Damped

r1 r1PointA GND 100

l1 l1PointA r1PointA 1

c1 GND l1PointA 1u ic=10

.tran 1u 0.1 uic
*Please do not remove this line
.control
	run
.endc
.end

v(l1PointA)