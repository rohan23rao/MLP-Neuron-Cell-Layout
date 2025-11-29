**Multiplier Test
.GLOBAL VSS VDD
.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0
.options accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"

.INCLUDE "Multiplier.sp"
v1 VDD 0 0.9v
v2 VSS 0 0v
v3 W<1> 0 pwl 0ps 0.9v 25ps 0.9v 50ps 0.9v 75ps 0.9v 100ps 0.9v 125ps 0.9v 150ps 0.9v 175ps 0.9v 200ps 0.9v 225ps 0.9v 250ps 0.9v 275ps 0.9v 300ps 0.9v 325ps 0.9v 350ps 0v 375ps 0v 400ps 0v 425ps 0v 450ps 0.9v 475ps 0.9v 500ps 0.9v 525ps 0v 550ps 0v 575ps 0v 600ps 0v 625ps 0.9v 650ps 0.9v 675ps 0.9v 700ps 0v 725ps 0v 750ps 0v
v4 W<0> 0 pwl 0ps 0v 25ps 0v 50ps 0v 75ps 0v 100ps 0v 125ps 0v 150ps 0v 175ps 0v 200ps 0v 225ps 0v 250ps 0v 275ps 0v 300ps 0v 325ps 0v 350ps 0v 375ps 0.9v 400ps 0.9v 425ps 0.9v 450ps 0.9v 475ps 0.9v 500ps 0.9v 525ps 0.9v 550ps 0.9v 575ps 0.9v 600ps 0v 625ps 0v 650ps 0v 675ps 0.9v 700ps 0.9v 725ps 0.9v 750ps 0v
v5 X<1> 0 pwl 0ps 0v 25ps 0v 50ps 0v 75ps 0v 100ps 0v 125ps 0v 150ps 0v 175ps 0.9v 200ps 0.9v 225ps 0.9v 250ps 0.9v 275ps 0v 300ps 0v 325ps 0v 350ps 0v 375ps 0.9v 400ps 0.9v 425ps 0.9v 450ps 0.9v 475ps 0.9v 500ps 0.9v 525ps 0.9v 550ps 0.9v 575ps 0.9v 600ps 0v 625ps 0v 650ps 0v 675ps 0.9v 700ps 0.9v 725ps 0.9v 750ps 0v
v6 X<0> 0 pwl 0ps 0v 25ps 0v 50ps 0v 75ps 0v 100ps 0v 125ps 0v 150ps 0.9v 175ps 0.9v 200ps 0v 225ps 0v 250ps 0v 275ps 0.9v 300ps 0.9v 325ps 0.9v 350ps 0v 375ps 0v 400ps 0v 425ps 0.9v 450ps 0.9v 475ps 0.9v 500ps 0.9v 525ps 0.9v 550ps 0.9v 575ps 0.9v 600ps 0.9v 625ps 0.9v 650ps 0v 675ps 0v 700ps 0v 725ps 0.9v 750ps 0.9v


cout mult_out gnd 100f
.OP
.TRAN STEP=1p STOP=900p
