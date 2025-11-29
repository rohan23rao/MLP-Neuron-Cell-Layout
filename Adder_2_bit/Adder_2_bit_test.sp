**2-Bit Adder Test
.GLOBAL vss! vdd!
.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0
.options accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"

.INCLUDE "Adder_2_bit.sp"
v1 VDD 0 0.9v
v2 VSS 0 0v
v3 A<1> 0 pwl 0ps 0.9v 25ps 0v 50ps 0v 75ps 0v 100ps 0.9v 125ps 0.9v 175ps 0v 200ps 0v 250ps 0.9v 275ps 0.9v 325ps 0.9v
v4 A<0> 0 pwl 0ps 0.9v 25ps 0v 50ps 0v 75ps 0v 100ps 0.9v 125ps 0.9v 175ps 0v 200ps 0v 250ps 0.9v 275ps 0.9v 325ps 0.9v
v5 B<1> 0 pwl 0ps 0.9v 25ps 0v 50ps 0v 75ps 0v 100ps 0.9v 125ps 0.9v 175ps 0v 200ps 0v 250ps 0.9v 275ps 0.9v 325ps 0.9v
v6 B<0> 0 pwl 0ps 0.9v 25ps 0v 50ps 0v 75ps 0v 100ps 0.9v 125ps 0.9v 175ps 0v 200ps 0v 250ps 0.9v 275ps 0.9v 325ps 0.9v
v7 CIN 0 pwl 0ps 0.9v 25ps 0v 50ps 0v 75ps 0v 100ps 0.9v 125ps 0.9v 175ps 0v 200ps 0v 250ps 0.9v 275ps 0.9v 325ps 0.9v


cout out gnd 100f
.OP
.TRAN STEP=1p STOP=250p
