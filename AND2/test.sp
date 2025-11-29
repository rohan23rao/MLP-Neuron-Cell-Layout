* Global nodes
.GLOBAL VSS VDD

* Temperature
.TEMP 25.0

* Simulation options
.OPTION
+ 	ARIST=2
+ 	INGOLD=2
+ 	PARHIER=LOCAL
+ 	PSF=2
+ 	HIER_DELIM=0
.options accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1

* Include necessary model files
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"
.INCLUDE "INV.pex.netlist"
.INCLUDE "AND2.pex.netlist"
* Power supply
v1 VSS 0 0v
v2 VDD 0 0.9v

* Input stimulus for the AND2
v3 IN1 0 pwl 0ns 0v   1ns 0v     1.025ns 0.9v 2.025ns 0.9v   2.05ns 0v   3.05ns 0v 3.075ns 0.9V 4.075ns 0.9V
v4 IN2 0 pwl 0ns 0.9v   1ns 0.9v   1.025ns 0.9v 2.025ns 0.9v    2.05ns 0v   3.05ns 0v 3.075ns 0V 4.075ns 0V

* Instantiate the DUT (main inverter)
XAND2 VSS VDD IN1 IN2 OUT AND2 
* Fanout of 4 for the output Y
* First inverter load connected to Y
XLOAD1 VSS VDD OUT A INV 
* Second inverter load connected to Y 
XLOAD2 VSS VDD OUT B INV 
* Third inverter load connected to Y 
XLOAD3 VSS VDD OUT C INV  
* Fourth inverter load connected to Y
XLOAD4 VSS VDD OUT D INV  

* Output load (optional small capacitance for output node Y)
COUT OUT 0 4f

* Transient analysis
.OP
.TRAN STEP=1p STOP=35n

* End the testbench
.END
