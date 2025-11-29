** Library name: ECE555_2
** Cell name: NAND
** View name: schematic
.subckt NAND in1 in2 out
mp5 out net1 vdd! vdd! pmos_rvt w=81e-9 l=20e-9 nfin=3
mp1 net1 in2 vdd! vdd! pmos_rvt w=81e-9 l=20e-9 nfin=3
mp0 net1 in1 vdd! vdd! pmos_rvt w=81e-9 l=20e-9 nfin=3
mn4 out net1 vss! vss! nmos_rvt w=54e-9 l=20e-9 nfin=2
mn3 net2 in2 vss! vss! nmos_rvt w=108e-9 l=20e-9 nfin=4
mn2 net1 in1 net2 vss! nmos_rvt w=108e-9 l=20e-9 nfin=4
.ends NAND
** End of subcircuit definition.

** Library name: ECE555_2
** Cell name: INV
** View name: schematic
.subckt INV in out
mn0 out in vss! vss! nmos_rvt w=27e-9 l=20e-9 nfin=1
mp1 out in vdd! vdd! pmos_rvt w=54e-9 l=20e-9 nfin=2
.ends INV
** End of subcircuit definition.

** Library name: ECE555_2
** Cell name: NAND2
** View name: schematic
xi0 a b net1 NAND
xi4 net1 out<3> INV
xi3 net1 out<2> INV
xi2 net1 out<1> INV
xi1 net1 out<0> INV
.END

