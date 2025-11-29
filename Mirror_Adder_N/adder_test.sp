.GLOBAL VDD VSS
.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0
.options accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"

.INCLUDE "Mirror_Adder.sp"
v1 VDD 0 0.9v
v2 VSS 0 0v
v3 A 0 pwl 0ns 0v 50ns 0v 100ns 0v 150ns 0v 200ns 0.9v 250ns 0.9v 300ns 0.9v 350ns 0.9v 400ns 0.9v 450ns 0.9v 500ns 0v 550ns 0v 600ns 0v 650ns 0v
* v4 B 0 pwl 0ns 0v 50ns 0.9v 100ns 0.9v 150ns 0.9v 200ns 0.9v 250ns 0v 300ns 0v 350ns 0v 400ns 0.9v 450ns 0.9v 500ns 0.9v 550ns 0v 600ns 0v 650ns 0v
v4 B 0 pwl 0ns 0v 50ns 0v 100ns 0v 150ns 0v 200ns 0v 250ns 0v 300ns 0v 350ns 0v 400ns 0v 450ns 0v 500ns 0v 550ns 0v 600ns 0v 650ns 0v
v5 Cin 0 pwl 0ns 0v 50ns 0v 100ns 0v 150ns 0v 200ns 0v 250ns 0v 300ns 0v 350ns 0v 400ns 0v 450ns 0v 500ns 0v 550ns 0v 600ns 0v 650ns 0v

cout out gnd 100f
.OP
.TRAN STEP=25n STOP=1000n


