

# This file was *autogenerated* from the file polyhedron.sage
from sage.all_cmdline import *   # import sage library

_sage_const_0 = Integer(0); _sage_const_1 = Integer(1); _sage_const_2 = Integer(2); _sage_const_3 = Integer(3); _sage_const_4 = Integer(4); _sage_const_5 = Integer(5); _sage_const_6 = Integer(6); _sage_const_7 = Integer(7); _sage_const_8 = Integer(8); _sage_const_9 = Integer(9); _sage_const_10 = Integer(10)
pp = Polyhedron(vertices=[

[_sage_const_0 , _sage_const_0 , _sage_const_0 , _sage_const_0 , _sage_const_0 , _sage_const_0 , _sage_const_0 , _sage_const_0 , _sage_const_0 , _sage_const_0 ]
,[_sage_const_0 , _sage_const_0 , _sage_const_0 , _sage_const_0 , _sage_const_1 , _sage_const_1 , _sage_const_0 , _sage_const_0 , _sage_const_1 , _sage_const_1 ]

], base_ring=QQ)

hed= pp.Hrepresentation()
for h in hed:
    print(h)

def poly_map(p,var1list,var2list):
    for h in hed:
    	u= list(h)
    	p.add_constraint(u[_sage_const_1 ]*var1list[_sage_const_0 ] +
    			 u[_sage_const_2 ]*var1list[_sage_const_1 ] +
			 u[_sage_const_3 ]*var1list[_sage_const_2 ] +
			 u[_sage_const_4 ]*var1list[_sage_const_3 ] +
    			 u[_sage_const_5 ]*var1list[_sage_const_4 ] +
			 u[_sage_const_6 ]*var2list[_sage_const_0 ] +
			 u[_sage_const_7 ]*var2list[_sage_const_1 ] +
			 u[_sage_const_8 ]*var2list[_sage_const_2 ] +
			 u[_sage_const_9 ]*var2list[_sage_const_3 ] +
    			 u[_sage_const_10 ]*var2list[_sage_const_4 ] +
			 u[_sage_const_0 ] >= _sage_const_0  )	


