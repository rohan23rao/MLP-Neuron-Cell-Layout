** Library name: ECE_project
** Cell name: INV
** View name: schematic
.subckt INV in out vdd vss
mn0 out in vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mp1 out in vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
.ends INV
** End of subcircuit definition.

** Library name: ECE_project
** Cell name: OR
** View name: schematic
.subckt OR a b vdd vss y
mp4 y net2 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp1 net2 b net1 vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp0 net1 a vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mn5 y net2 vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn3 net2 b vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn2 net2 a vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
.ends OR
** End of subcircuit definition.

** Library name: ECE_project
** Cell name: AND2
** View name: schematic
.subckt AND2 in1 in2 out vdd vss
mp5 out net1 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp1 net1 in2 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp0 net1 in1 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mn4 out net1 vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn3 net2 in2 vss vss nmos_rvt w=108e-9 l=20e-9 nfin=4
mn2 net1 in1 net2 vss nmos_rvt w=108e-9 l=20e-9 nfin=4
.ends AND2
** End of subcircuit definition.

** Library name: ECE_project
** Cell name: MUX_new
** View name: schematic
xi21 a<2> net8 vdd vss INV
xi18 zero net6 vdd vss out<2> OR
xi19 zero net5 vdd vss out<1> OR
xi20 zero net3 vdd vss out<0> OR
xi17 net8 a<2> net6 vdd vss AND2
xi16 net8 a<1> net5 vdd vss AND2
xi15 net8 a<0> net3 vdd vss AND2
.END
