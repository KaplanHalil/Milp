pp = Polyhedron(vertices=[

[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
,[0, 0, 0, 0, 1, 1, 0, 0, 1, 1]

], base_ring=QQ)

hed= pp.Hrepresentation()
for h in hed:
    print(h)

def poly_map(p,var1list,var2list):
    for h in hed:
    	u= list(h)
    	p.add_constraint(u[1]*var1list[0] +
    			 u[2]*var1list[1] +
			 u[3]*var1list[2] +
			 u[4]*var1list[3] +
    			 u[5]*var1list[4] +
			 u[6]*var2list[0] +
			 u[7]*var2list[1] +
			 u[8]*var2list[2] +
			 u[9]*var2list[3] +
    			 u[10]*var2list[4] +
			 u[0] >= 0 )	


