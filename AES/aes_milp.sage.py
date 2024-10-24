

# This file was *autogenerated* from the file aes_milp.sage
from sage.all_cmdline import *   # import sage library

_sage_const_0 = Integer(0); _sage_const_16 = Integer(16); _sage_const_1 = Integer(1); _sage_const_2 = Integer(2); _sage_const_3 = Integer(3); _sage_const_4 = Integer(4); _sage_const_8 = Integer(8); _sage_const_12 = Integer(12); _sage_const_5 = Integer(5); _sage_const_6 = Integer(6); _sage_const_7 = Integer(7); _sage_const_9 = Integer(9); _sage_const_13 = Integer(13); _sage_const_10 = Integer(10); _sage_const_11 = Integer(11); _sage_const_14 = Integer(14); _sage_const_15 = Integer(15)

# This file was *autogenerated* from the file aes_milp.sage
from sage.all_cmdline import *   # import sage library

_sage_const_0 = Integer(_sage_const_0 ); _sage_const_16 = Integer(_sage_const_16 ); _sage_const_1 = Integer(_sage_const_1 ); _sage_const_2 = Integer(_sage_const_2 ); _sage_const_3 = Integer(_sage_const_3 ); _sage_const_4 = Integer(_sage_const_4 ); _sage_const_8 = Integer(_sage_const_8 ); _sage_const_12 = Integer(_sage_const_12 ); _sage_const_5 = Integer(_sage_const_5 ); _sage_const_6 = Integer(_sage_const_6 ); _sage_const_7 = Integer(_sage_const_7 ); _sage_const_9 = Integer(_sage_const_9 ); _sage_const_13 = Integer(_sage_const_13 ); _sage_const_10 = Integer(_sage_const_10 ); _sage_const_11 = Integer(_sage_const_11 ); _sage_const_14 = Integer(_sage_const_14 ); _sage_const_15 = Integer(_sage_const_15 )
def linear_map (p, var1list, var2list, dummyvar, branch_number):
	s = p.sum (var1list+var2list)
	p.add_constraint (s-branch_number*dummyvar >= _sage_const_0 )
	for i in var1list:
    		p.add_constraint (dummyvar - i >=_sage_const_0 )
	for i in var2list:
    		p.add_constraint (dummyvar - i >= _sage_const_0 )

p = MixedIntegerLinearProgram (maximization=False, solver = "GLPK", names=('R1', 'R2', 'R3', 'R4', 'R5', 'd',)); (R1, R2, R3, R4, R5, d,) = p._first_ngens(_sage_const_6 )
p.set_binary(R1)
p.set_binary(R2)
p.set_binary (R3)
p.set_binary (R4)
p.set_binary (R5)
p.set_binary (d)

# girdi non-zero sarti
p.add_constraint (p.sum (R1[i] for i in range (_sage_const_16 )) >= _sage_const_1 )
# AES icin lineer katmanlar
# cevrim 1
linear_map (p, [R1[_sage_const_0 ], R1[_sage_const_1 ], R1[_sage_const_2 ], R1[_sage_const_3 ]], [R2[_sage_const_0 ], R2[_sage_const_4 ], R2[_sage_const_8 ], R2[_sage_const_12 ]], d[_sage_const_0 ], _sage_const_5 )
linear_map (p, [R1[_sage_const_4 ], R1[_sage_const_5 ], R1[_sage_const_6 ], R1[_sage_const_7 ]], [R2[_sage_const_1 ], R2[_sage_const_5 ], R2[_sage_const_9 ], R2[_sage_const_13 ]], d[_sage_const_1 ], _sage_const_5 )
linear_map (p, [R1[_sage_const_8 ], R1[_sage_const_9 ], R1[_sage_const_10 ], R1[_sage_const_11 ]], [R2[_sage_const_2 ], R2[_sage_const_6 ], R2[_sage_const_10 ], R2[_sage_const_14 ]], d[_sage_const_2 ], _sage_const_5 )
linear_map (p, [R1[_sage_const_12 ], R1[_sage_const_13 ], R1[_sage_const_14 ], R1[_sage_const_15 ]], [R2[_sage_const_3 ], R2[_sage_const_7 ], R2[_sage_const_11 ], R2[_sage_const_15 ]], d[_sage_const_3 ], _sage_const_5 )
# cevrim 2
linear_map (p, [R2[_sage_const_0 ], R2[_sage_const_1 ], R2[_sage_const_2 ], R2[_sage_const_3 ]], [R3[_sage_const_0 ], R3[_sage_const_4 ], R3[_sage_const_8 ], R3[_sage_const_12 ]], d[_sage_const_4 ], _sage_const_5 )
linear_map (p, [R2[_sage_const_4 ], R2[_sage_const_5 ], R2[_sage_const_6 ], R2[_sage_const_7 ]], [R3[_sage_const_1 ], R3[_sage_const_5 ], R3[_sage_const_9 ], R3[_sage_const_13 ]], d[_sage_const_5 ], _sage_const_5 )
linear_map (p, [R2[_sage_const_8 ], R2[_sage_const_9 ], R2[_sage_const_10 ], R2[_sage_const_11 ]], [R3[_sage_const_2 ], R3[_sage_const_6 ], R3[_sage_const_10 ], R3[_sage_const_14 ]], d[_sage_const_6 ], _sage_const_5 )
linear_map (p, [R2[_sage_const_12 ], R2[_sage_const_13 ], R2[_sage_const_14 ], R2[_sage_const_15 ]], [R3[_sage_const_3 ], R3[_sage_const_7 ], R3[_sage_const_11 ], R3[_sage_const_15 ]], d[_sage_const_7 ], _sage_const_5 )
# cevrim 3
linear_map (p, [R3[_sage_const_0 ], R3[_sage_const_1 ], R3[_sage_const_2 ], R3[_sage_const_3 ]], [R4[_sage_const_0 ], R4[_sage_const_4 ], R4[_sage_const_8 ], R4[_sage_const_12 ]], d[_sage_const_8 ], _sage_const_5 )
linear_map (p, [R3[_sage_const_4 ], R3[_sage_const_5 ], R3[_sage_const_6 ], R3[_sage_const_7 ]], [R4[_sage_const_1 ], R4[_sage_const_5 ], R4[_sage_const_9 ], R4[_sage_const_13 ]], d[_sage_const_9 ], _sage_const_5 )
linear_map (p, [R3[_sage_const_8 ], R3[_sage_const_9 ], R3[_sage_const_10 ], R3[_sage_const_11 ]], [R4[_sage_const_2 ], R4[_sage_const_6 ], R4[_sage_const_10 ], R4[_sage_const_14 ]], d[_sage_const_10 ], _sage_const_5 )
linear_map (p, [R3[_sage_const_12 ], R3[_sage_const_13 ], R3[_sage_const_14 ], R3[_sage_const_15 ]], [R4[_sage_const_3 ], R2[_sage_const_7 ], R4[_sage_const_11 ], R4[_sage_const_15 ]], d[_sage_const_11 ], _sage_const_5 )
# cevrim 4
linear_map (p, [R4[_sage_const_0 ], R4[_sage_const_1 ], R4[_sage_const_2 ], R4[_sage_const_3 ]], [R5[_sage_const_0 ], R5[_sage_const_4 ], R5[_sage_const_8 ], R5[_sage_const_12 ]], d[_sage_const_12 ], _sage_const_5 )
linear_map (p, [R4[_sage_const_4 ], R4[_sage_const_5 ], R4[_sage_const_6 ], R4[_sage_const_7 ]], [R5[_sage_const_1 ], R5[_sage_const_5 ], R5[_sage_const_9 ], R5[_sage_const_13 ]], d[_sage_const_13 ], _sage_const_5 )
linear_map (p, [R4[_sage_const_8 ], R4[_sage_const_9 ], R4[_sage_const_10 ], R4[_sage_const_11 ]], [R5[_sage_const_2 ], R5[_sage_const_6 ], R5[_sage_const_10 ], R5[_sage_const_14 ]], d[_sage_const_14 ], _sage_const_5 )
linear_map (p, [R4[_sage_const_12 ], R4[_sage_const_13 ], R4[_sage_const_14 ], R4[_sage_const_15 ]], [R5[_sage_const_3 ], R5[_sage_const_7 ], R5[_sage_const_11 ], R5[_sage_const_15 ]], d[_sage_const_15 ], _sage_const_5 )

r1 = p.sum (R1[i] for i in range (_sage_const_16 ))
r2 = p.sum (R2[i] for i in range (_sage_const_16 ))
r3 = p.sum (R3[i] for i in range (_sage_const_16 ))
r4 = p.sum (R4[i] for i in range (_sage_const_16 ))

p.set_objective (p.sum ([r1, r2, r3, r4]))

p.show()

print (p.solve())

print (p.get_values (R1))
print (p.get_values (R2))
print (p.get_values (R3))
print (p.get_values (R4))


