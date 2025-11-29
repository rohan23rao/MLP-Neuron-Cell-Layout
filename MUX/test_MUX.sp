* Global nodes
.GLOBAL VSS VDD

* Temperature
.TEMP 25.0

* Simulation options
.OPTION
+     ARIST=2
+     INGOLD=2
+     PARHIER=LOCAL
+     PSF=2
+     HIER_DELIM=0
.options accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1

* Include necessary model files
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"
.INCLUDE "MUX.sp"
* Power supply
v1 VSS 0 0v
v2 VDD 0 0.9v

* Input stimulus for the MUX
vin0 A<0> 0 pwl 0ns 0v   1ns 0v   1.025ns 0.9v 2ns 0.9v 2.025ns 0.9v 3ns 0.9v 3.025ns 0v 4ns 0v 4.025ns 0v   5ns 0v   5.025ns 0.9v 6ns 0.9v 6.025ns 0.9v 7ns 0.9v 7.025ns 0v 8ns 0v
vin1 A<1> 0 pwl 0ns 0.9v 1ns 0.9v 1.025ns 0.9v 2ns 0.9v 2.025ns 0v 3ns 0v 3.025ns 0v 4ns 0v 4.025ns 0.9v 5ns 0.9v 5.025ns 0.9v 6ns 0.9v 6.025ns 0v 7ns 0v 7.025ns 0v 8ns 0v
vin2 A<2> 0 pwl 0ns 0v   4ns 0v   4.025ns 0.9v 8ns 0.9v
vin3 Zero 0 pwl 0ns 0v   8ns 0v 

* Output load (optional small capacitance for output node Y)
COUT out 0 4f

* Transient analysis
.OP
.TRAN STEP=10p STOP=8n

* End the testbench
.END
