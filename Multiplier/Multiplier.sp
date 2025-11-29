** Library name: ECE555
** Cell name: AND2
** View name: schematic
.subckt AND2 in1 in2 out vdd vss
mp5 out net1 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp6 net1 in2 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mp0 net1 in1 vdd vdd pmos_rvt w=81e-9 l=20e-9 nfin=3
mn4 out net1 vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn3 net2 in2 vss vss nmos_rvt w=108e-9 l=20e-9 nfin=4
mn2 net1 in1 net2 vss nmos_rvt w=108e-9 l=20e-9 nfin=4
.ends AND2
** End of subcircuit definition.

** Library name: ECE555
** Cell name: OR
** View name: schematic
.subckt OR a b vdd vss y
mp4 y net2 vdd vdd pmos_lvt w=27e-9 l=20e-9 nfin=1
mp1 net2 b net1 net2 pmos_lvt w=27e-9 l=20e-9 nfin=1
mp0 net1 a vdd net2 pmos_lvt w=27e-9 l=20e-9 nfin=1
mn5 y net2 vss vss nmos_lvt w=27e-9 l=20e-9 nfin=1
mn3 net2 b vss vss nmos_lvt w=27e-9 l=20e-9 nfin=1
mn2 net2 a vss vss nmos_lvt w=27e-9 l=20e-9 nfin=1
.ends OR
** End of subcircuit definition.

** Library name: ECE555
** Cell name: INV
** View name: schematic
.subckt INV in out vdd vss
mn0 out in vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mp1 out in vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
.ends INV
** End of subcircuit definition.

** Library name: ECE555
** Cell name: Multiplier
** View name: schematic
xi5 x<0> w<0> y<0> vdd vss AND2
xi4 net9 x<0> net5 vdd vss AND2
xi3 w<1> net5 net7 vdd vss AND2
xi2 net4 x<1> net6 vdd vss AND2
xi0 net8 w<0> net4 vdd vss AND2
xi1 net6 net7 vdd vss y<1> OR
xi7 x<1> net9 vdd vss INV
xi6 w<1> net8 vdd vss INV
.END

