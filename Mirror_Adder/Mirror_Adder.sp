** Library name: ECE555_2
** Cell name: Mirror_Adder
** View name: schematic
.subckt Mirror_Adder a b cin cout s vdd vss
mn24 s net13 vss vss nmos_rvt w=27e-9 l=20e-9 nfin=1
mn23 net11 b vss vss nmos_rvt w=81e-9 l=20e-9 nfin=3
mn22 net10 a net11 vss nmos_rvt w=81e-9 l=20e-9 nfin=3
mn21 net13 cin net10 vss nmos_rvt w=81e-9 l=20e-9 nfin=3
mn8 net13 cout net7 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn7 net7 cin vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn6 net7 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn5 net7 a vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn4 cout a net3 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn3 net3 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn2 cout cin net5 vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn1 net5 b vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2
mn0 net5 a vss vss nmos_rvt w=54e-9 l=20e-9 nfin=2

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

** Library name: ECE555_2
** Cell name: Adder
** View name: schematic
xi0 a b cin cout s vdd vss Mirror_Adder
.END
