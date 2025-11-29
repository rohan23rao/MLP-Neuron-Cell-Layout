** Library name: ECE555
** Cell name: INV
** View name: schematic
.subckt INV in out vdd vss
mn0 out in vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mp1 out in vdd vdd pmos_rvt w=54e-9 l=20e-9 nfin=2
.ends INV
** End of subcircuit definition.

** Library name: ECE555
** Cell name: Mirror_Adder
** View name: schematic
.subckt Mirror_Adder a b cin cout s vdd vss
mn24 s net13 vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn23 net11 b vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn22 net10 a net11 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn21 net13 cin net10 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn8 net13 cout net7 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn7 net7 cin vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn6 net7 b vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn5 net7 a vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn4 cout a net3 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn3 net3 b vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn2 cout cin net5 vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn1 net5 b vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn0 net5 a vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mp25 s net13 vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp20 net8 b vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp19 net9 a net8 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp18 net13 cin net9 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp17 net6 cin vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp16 net6 a vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp15 net6 b vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp14 net13 cout net6 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp13 net2 b vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp12 cout a net2 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp11 net1 b vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp10 net1 a vdd vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
mp9 cout cin net1 vdd pmos_rvt w=27e-9 l=20e-9 nfin=1
.ends Mirror_Adder
** End of subcircuit definition.

** Library name: ECE555
** Cell name: Adder_2_bit
** View name: schematic
xi7 b<1> net2 vss vdd INV
xi6 a<1> net3 vss vdd INV
xi5 net3 net2 net4 cout s<1> vdd vss Mirror_Adder
xi4 a<0> b<0> cin net4 s<0> vdd vss Mirror_Adder
.END

