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
v3 A 0 pwl 0ns 0v 25ps 0v 75ps 0.9v 100ps 0.9v 150ps 0.9v 200ps 0.9v 250ps 0.9v 300ps 0v 350ps 0v 400ps 0.9v 450ps 0.9v 500ps 0v 550ps 0v 600ps 0v 650ps 0v
v4 B 0 pwl 0ns 0v 25ps 0v 75ps 0v 100ps 0v 150ps 0v 200ps 0.9v 250ps 0.9v 300ps 0v 350ps 0v 400ps 0.9v 450ps 0.9v 500ps 0v 550ps 0v 600ps 0v 650ps 0v
v5 Cin 0 pwl 0ns 0v 25ps 0v 75ps 0v 100ps 0v 150ps 0v 200ps 0v 250ps 0v 300ps 0.9v 350ps 0.9v 400ps 0.9v 450ps 0.9v 500ps 0v 550ps 0v 600ps 0v 650ps 0v


cout out gnd 100f
.OP
.TRAN STEP=25p STOP=700p


