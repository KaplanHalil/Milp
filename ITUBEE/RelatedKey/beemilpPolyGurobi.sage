import time

a= time.time()
p.<KL, KR, R0, R1, R2, R3, R3a, R3b, R3c, R3d, R4, R4a, R4b, R4c, R4d, R5, R5a, R5b, R5c, R5d, R6, R6a, R6b, R6c, R6d,R7, R7a, R7b, R7c, R7d,R8,R8a, R8b, R8c, R8d,R9, R9a, R9b, R9c, R9d,R10, R10a, R10b, R10c, R10d, R11, d> = MixedIntegerLinearProgram (maximization=False, solver = "GLPK")
# Her bir çevrimdeki aktiflik
p.set_binary (KL)
p.set_binary (KR)
p.set_binary (R0)
p.set_binary (R1)
p.set_binary (R2)
p.set_binary (R3)
p.set_binary (R3a)
p.set_binary (R3b)
p.set_binary (R3c)
p.set_binary (R3d)

p.set_binary (R4)
p.set_binary (R4a)
p.set_binary (R4b)
p.set_binary (R4c)
p.set_binary (R4d)

p.set_binary (R5)
p.set_binary (R5a)
p.set_binary (R5b)
p.set_binary (R5c)
p.set_binary (R5d)

p.set_binary (R6)
p.set_binary (R6a)
p.set_binary (R6b)
p.set_binary (R6c)
p.set_binary (R6d)

p.set_binary (R7)
p.set_binary (R7a)
p.set_binary (R7b)
p.set_binary (R7c)
p.set_binary (R7d)

p.set_binary (R8)
p.set_binary (R8a)
p.set_binary (R8b)
p.set_binary (R8c)
p.set_binary (R8d)

p.set_binary (R9)
p.set_binary (R9a)
p.set_binary (R9b)
p.set_binary (R9c)
p.set_binary (R9d)


p.set_binary (R10)
p.set_binary (R10a)
p.set_binary (R10b)
p.set_binary (R10c)
p.set_binary (R10d)

p.set_binary (R11)

p.set_binary (d)
pp = Polyhedron(vertices=[

[ 0,0,0,0,0,0,0,0,0,0 ],
[ 0,0,0,0,1,1,0,0,1,1 ],
[ 0,0,0,1,0,0,0,1,1,1 ],
[ 0,0,0,1,1,1,0,1,0,0 ],
[ 0,0,0,1,1,1,0,1,1,1 ],
[ 0,0,1,0,0,0,1,1,1,0 ],
[ 0,0,1,0,1,1,1,1,0,1 ],
[ 0,0,1,0,1,1,1,1,1,1 ],
[ 0,0,1,1,0,0,1,0,0,1 ],
[ 0,0,1,1,1,1,1,0,1,0 ],
[ 0,0,1,1,1,1,1,0,1,1 ],
[ 0,0,1,1,0,0,1,1,1,1 ],
[ 0,0,1,1,1,1,1,1,1,1 ],
[ 0,0,1,1,1,1,1,1,1,0 ],
[ 0,0,1,1,1,1,1,1,0,1 ],
[ 0,1,0,0,0,1,1,1,0,0 ],
[ 0,1,0,0,1,0,1,1,1,1 ],
[ 0,1,0,0,1,1,1,1,1,1 ],
[ 0,1,0,1,0,1,1,0,1,1 ],
[ 0,1,0,1,1,0,1,0,0,0 ],
[ 0,1,0,1,1,1,1,0,1,1 ],
[ 0,1,0,1,0,1,1,1,1,1 ],
[ 0,1,0,1,1,0,1,1,1,1 ],
[ 0,1,0,1,1,1,1,1,0,0 ],
[ 0,1,0,1,1,1,1,1,1,1 ],
[ 0,1,1,0,0,1,0,0,1,0 ],
[ 0,1,1,0,1,0,0,0,0,1 ],
[ 0,1,1,0,1,1,0,0,1,1 ],
[ 0,1,1,1,0,1,0,1,0,1 ],
[ 0,1,1,1,1,0,0,1,1,0 ],
[ 0,1,1,1,1,1,0,1,1,1 ],
[ 0,1,1,1,0,1,0,1,1,1 ],
[ 0,1,1,1,1,0,0,1,1,1 ],
[ 0,1,1,1,1,1,0,1,1,0 ],
[ 0,1,1,1,1,1,0,1,0,1 ],
[ 0,1,1,0,0,1,1,1,1,0 ],
[ 0,1,1,0,1,0,1,1,1,1 ],
[ 0,1,1,0,1,1,1,1,0,1 ],
[ 0,1,1,0,1,1,1,1,1,1 ],
[ 0,1,1,1,0,1,1,1,1,1 ],
[ 0,1,1,1,1,0,1,1,1,0 ],
[ 0,1,1,1,1,1,1,1,1,1 ],
[ 0,1,1,1,1,1,1,1,0,1 ],
[ 0,1,1,1,0,1,1,1,0,1 ],
[ 0,1,1,1,1,0,1,1,1,1 ],
[ 0,1,1,1,1,1,1,1,1,0 ],
[ 0,1,1,1,0,1,1,0,1,1 ],
[ 0,1,1,1,1,0,1,0,0,1 ],
[ 0,1,1,1,1,1,1,0,1,1 ],
[ 0,1,1,1,1,1,1,0,1,0 ],
[ 1,0,0,0,0,1,1,0,0,1 ],
[ 1,0,0,0,1,0,1,0,1,0 ],
[ 1,0,0,0,1,1,1,0,1,1 ],
[ 1,0,0,1,0,1,1,1,1,0 ],
[ 1,0,0,1,1,0,1,1,0,1 ],
[ 1,0,0,1,1,1,1,1,1,1 ],
[ 1,0,0,1,0,1,1,1,1,1 ],
[ 1,0,0,1,1,0,1,1,1,1 ],
[ 1,0,0,1,1,1,1,1,0,1 ],
[ 1,0,0,1,1,1,1,1,1,0 ],
[ 1,0,1,0,0,1,0,1,1,1 ],
[ 1,0,1,0,1,0,0,1,0,0 ],
[ 1,0,1,0,1,1,0,1,1,1 ],
[ 1,0,1,1,0,1,0,0,0,0 ],
[ 1,0,1,1,1,0,0,0,1,1 ],
[ 1,0,1,1,1,1,0,0,1,1 ],
[ 1,0,1,1,0,1,0,1,1,1 ],
[ 1,0,1,1,1,0,0,1,1,1 ],
[ 1,0,1,1,1,1,0,1,1,1 ],
[ 1,0,1,1,1,1,0,1,0,0 ],
[ 1,0,1,0,0,1,1,1,1,1 ],
[ 1,0,1,0,1,0,1,1,1,0 ],
[ 1,0,1,0,1,1,1,1,0,1 ],
[ 1,0,1,0,1,1,1,1,1,1 ],
[ 1,0,1,1,0,1,1,1,1,0 ],
[ 1,0,1,1,1,0,1,1,1,1 ],
[ 1,0,1,1,1,1,1,1,1,1 ],
[ 1,0,1,1,1,1,1,1,0,1 ],
[ 1,0,1,1,0,1,1,0,0,1 ],
[ 1,0,1,1,1,0,1,0,1,1 ],
[ 1,0,1,1,1,1,1,0,1,1 ],
[ 1,0,1,1,1,1,1,0,1,0 ],
[ 1,0,1,1,0,1,1,1,1,1 ],
[ 1,0,1,1,1,0,1,1,0,1 ],
[ 1,0,1,1,1,1,1,1,1,0 ],
[ 1,1,0,0,0,0,0,1,0,1 ],
[ 1,1,0,0,1,1,0,1,1,0 ],
[ 1,1,0,0,1,1,0,1,1,1 ],
[ 1,1,0,1,0,0,0,0,1,0 ],
[ 1,1,0,1,1,1,0,0,0,1 ],
[ 1,1,0,1,1,1,0,0,1,1 ],
[ 1,1,0,1,0,0,0,1,1,1 ],
[ 1,1,0,1,1,1,0,1,1,1 ],
[ 1,1,0,1,1,1,0,1,0,1 ],
[ 1,1,0,1,1,1,0,1,1,0 ],
[ 1,1,1,0,0,0,1,0,1,1 ],
[ 1,1,1,0,1,1,1,0,0,0 ],
[ 1,1,1,0,1,1,1,0,1,1 ],
[ 1,1,1,1,0,0,1,1,0,0 ],
[ 1,1,1,1,1,1,1,1,1,1 ],
[ 1,1,1,1,0,0,1,1,1,1 ],
[ 1,1,1,1,1,1,1,1,0,0 ],
[ 1,1,1,0,0,0,1,1,1,1 ],
[ 1,1,1,0,1,1,1,1,1,0 ],
[ 1,1,1,0,1,1,1,1,0,1 ],
[ 1,1,1,0,1,1,1,1,1,1 ],
[ 1,1,1,1,0,0,1,1,1,0 ],
[ 1,1,1,1,1,1,1,1,0,1 ],
[ 1,1,1,1,0,0,1,1,0,1 ],
[ 1,1,1,1,1,1,1,1,1,0 ],
[ 1,1,1,1,0,0,1,0,1,1 ],
[ 1,1,1,1,1,1,1,0,0,1 ],
[ 1,1,1,1,1,1,1,0,1,0 ],
[ 1,1,1,1,1,1,1,0,1,1 ],
[ 1,1,0,0,0,1,1,1,0,1 ],
[ 1,1,0,0,1,1,1,1,1,0 ],
[ 1,1,0,0,1,1,1,1,1,1 ],
[ 1,1,0,0,1,0,1,1,1,1 ],
[ 1,1,0,1,0,1,1,1,1,0 ],
[ 1,1,0,1,1,1,1,1,0,1 ],
[ 1,1,0,1,1,1,1,1,1,1 ],
[ 1,1,0,1,1,0,1,1,1,1 ],
[ 1,1,0,1,0,1,1,0,1,1 ],
[ 1,1,0,1,1,1,1,0,1,1 ],
[ 1,1,0,1,1,1,1,0,0,1 ],
[ 1,1,0,1,1,0,1,0,1,0 ],
[ 1,1,0,1,0,1,1,1,1,1 ],
[ 1,1,0,1,1,1,1,1,1,0 ],
[ 1,1,0,1,1,0,1,1,0,1 ],
[ 1,1,1,0,0,1,1,1,1,1 ],
[ 1,1,1,0,1,1,1,1,0,0 ],
[ 1,1,1,0,1,0,1,1,1,1 ],
[ 1,1,1,1,0,1,1,1,0,0 ],
[ 1,1,1,1,1,0,1,1,1,1 ],
[ 1,1,1,1,0,1,1,1,1,1 ],
[ 1,1,1,1,1,0,1,1,0,0 ],
[ 1,1,1,1,0,1,1,0,1,1 ],
[ 1,1,1,1,1,1,1,0,0,0 ],
[ 1,1,1,1,1,0,1,0,1,1 ],
[ 1,1,1,0,0,1,1,0,1,1 ],
[ 1,1,1,0,1,1,1,0,1,0 ],
[ 1,1,1,0,1,1,1,0,0,1 ],
[ 1,1,1,0,1,0,1,0,1,1 ],
[ 1,1,1,1,0,1,1,1,1,0 ],
[ 1,1,1,1,1,0,1,1,0,1 ],
[ 1,1,1,1,0,1,1,1,0,1 ],
[ 1,1,1,1,1,0,1,1,1,0 ],
[ 1,1,1,0,0,1,0,1,1,1 ],
[ 1,1,1,0,1,1,0,1,1,0 ],
[ 1,1,1,0,1,1,0,1,1,1 ],
[ 1,1,1,0,1,0,0,1,0,1 ],
[ 1,1,1,1,0,1,0,0,1,0 ],
[ 1,1,1,1,1,1,0,0,1,1 ],
[ 1,1,1,1,1,1,0,0,0,1 ],
[ 1,1,1,1,1,0,0,0,1,1 ],
[ 1,1,1,1,0,1,0,1,1,1 ],
[ 1,1,1,1,1,1,0,1,0,1 ],
[ 1,1,1,1,1,1,0,1,1,1 ],
[ 1,1,1,1,1,0,0,1,1,0 ],
[ 1,1,1,1,0,1,0,1,0,1 ],
[ 1,1,1,1,1,1,0,1,1,0 ],
[ 1,1,1,1,1,0,0,1,1,1 ],

], base_ring=QQ)

hed= pp.Hrepresentation()


def poly_map(p,var1list,var2list):
    for h in hed:
        u= list(h)
        p.add_constraint(
        u[1]*var1list[0] +
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
    
def xor(p,in1,in2,out,dummy):
    for i in range(len(in1)):
        p.add_constraint(in1[i]+in2[i]+out[i]-2*dummy[i] >=0)
        p.add_constraint(dummy[i]- in1[i] >= 0)
        p.add_constraint(dummy[i]- in2[i] >= 0)
        p.add_constraint(dummy[i]- out[i] >= 0)




# anahtar non-zero sarti
p.add_constraint (p.sum (KL[i] for i in range (5)) + p.sum (KR[i] for i in range (5))  >= 1)

def ilk_cevrim(p,d, KR, KL, R0, R1, R2, R3, R3a, R3b, R3c, R3d, R4):
    xor(p, [R0[i] for i in range(5)] , [KR[i] for i in range(5)], [R2[i] for i in range(5)], [d[i] for i in range(5)])

    xor(p, [R1[i] for i in range(5)] , [KL[i] for i in range(5)], [R3[i] for i in range(5)], [d[i+5] for i in range(5)])

    poly_map(p, [R3[i] for i in range(5)] , [R3a[i] for i in range(5)])

    xor(p, [R3a[i] for i in range(5)] , [KR[i] for i in range(5)], [R3b[i] for i in range(5)], [d[i+10] for i in range(5)])

    poly_map(p, [R3b[i] for i in range(5)] , [R3c[i] for i in range(5)])

    poly_map(p, [R3c[i] for i in range(5)] , [R3d[i] for i in range(5)])

    xor(p, [R3d[i] for i in range(5)] , [R2[i] for i in range(5)], [R4[i] for i in range(5)], [d[i+15] for i in range(5)])
    
def cevrim(p,d,K,R0,R1,R1a,R1b,R1c,R1d,R2):
    
    poly_map(p, [R1[i] for i in range(5)] , [R1a[i] for i in range(5)])

    xor(p, [R1a[i] for i in range(5)] , [K[i] for i in range(5)], [R1b[i] for i in range(5)], [d[i] for i in range(5)])

    poly_map(p, [R1b[i] for i in range(5)] , [R1c[i] for i in range(5)])

    poly_map(p, [R1c[i] for i in range(5)] , [R1d[i] for i in range(5)])

    xor(p, [R1d[i] for i in range(5)] , [R0[i] for i in range(5)], [R2[i] for i in range(5)], [d[i+5] for i in range(5)])
    
# Round 

ilk_cevrim(p,[d[i] for i in range(0,20)], KR, KL, R0, R1, R2, R3, R3a, R3b, R3c, R3d, R4)
cevrim(p,[d[i] for i in range(20,30)],KL,R3,R4,R4a,R4b,R4c,R4d,R5)
cevrim(p,[d[i] for i in range(30,40)],KR,R4,R5,R5a,R5b,R5c,R5d,R6)
cevrim(p,[d[i] for i in range(40,50)],KL,R5,R6,R6a,R6b,R6c,R6d,R7)
cevrim(p,[d[i] for i in range(50,60)],KR,R6,R7,R7a,R7b,R7c,R7d,R8)
cevrim(p,[d[i] for i in range(60,70)],KL,R7,R8,R8a,R8b,R8c,R8d,R9)
cevrim(p,[d[i] for i in range(70,80)],KR,R8,R9,R9a,R9b,R9c,R9d,R10)
cevrim(p,[d[i] for i in range(80,90)],KL,R9,R10,R10a,R10b,R10c,R10d,R11)

#Toplam aktif. b anahtar xor olduğu için yok.
ta=[]
ta.append(p.sum (R3[i] for i in range (5))) 
ta.append(p.sum (R3a[i] for i in range (5)))
ta.append(p.sum (R3c[i] for i in range (5)))
ta.append(p.sum (R3d[i] for i in range (5)))

ta.append(p.sum (R4[i] for i in range (5))) 
ta.append(p.sum (R4a[i] for i in range (5)))
ta.append(p.sum (R4c[i] for i in range (5)))
ta.append(p.sum (R4d[i] for i in range (5)))

ta.append(p.sum (R5[i] for i in range (5))) 
ta.append(p.sum (R5a[i] for i in range (5)))
ta.append(p.sum (R5c[i] for i in range (5)))
ta.append(p.sum (R5d[i] for i in range (5)))

ta.append(p.sum (R6[i] for i in range (5))) 
ta.append(p.sum (R6a[i] for i in range (5)))
ta.append(p.sum (R6c[i] for i in range (5)))
ta.append(p.sum (R6d[i] for i in range (5)))

ta.append(p.sum (R7[i] for i in range (5))) 
ta.append(p.sum (R7a[i] for i in range (5)))
ta.append(p.sum (R7c[i] for i in range (5)))
ta.append(p.sum (R7d[i] for i in range (5)))

ta.append(p.sum (R8[i] for i in range (5))) 
ta.append(p.sum (R8a[i] for i in range (5)))
ta.append(p.sum (R8c[i] for i in range (5)))
ta.append(p.sum (R8d[i] for i in range (5)))

ta.append(p.sum (R9[i] for i in range (5))) 
ta.append(p.sum (R9a[i] for i in range (5)))
ta.append(p.sum (R9c[i] for i in range (5)))
ta.append(p.sum (R9d[i] for i in range (5)))

ta.append(p.sum (R10[i] for i in range (5))) 
ta.append(p.sum (R10a[i] for i in range (5)))
ta.append(p.sum (R10c[i] for i in range (5)))
ta.append(p.sum (R10d[i] for i in range (5)))

p.set_objective (p.sum ([ta[i] for i in range(len(ta))]))

#p.show()

p.write_lp("gurobi.lp")

print ("Toplam aktif s-kutusu: ",p.solve())

print ("KL-KR              ",p.get_values (KL),p.get_values (KR))
print("")
print ("R1-R0              ",p.get_values (R1),p.get_values (R0))
print("")
print ("R3-R2              ",p.get_values (R3),p.get_values (R2))
print("")
print ("R3a-R3b-R3c-R3d    ",p.get_values (R3a),p.get_values (R3b),p.get_values (R3c),p.get_values (R3d))
print("")
print ("R4-R3              ",p.get_values (R4),p.get_values (R3))
print("")
print ("R4a-R4b-R4c-R4d    ",p.get_values (R4a),p.get_values (R4b),p.get_values (R4c),p.get_values (R4d))
print("")
print ("R5-R4              ",p.get_values (R5),p.get_values (R4))
print("")
print ("R5a-R5b-R5c-R5d    ",p.get_values (R5a),p.get_values (R5b),p.get_values (R5c),p.get_values (R5d))
print("")
print ("R6-R5              ",p.get_values (R6),p.get_values (R5))
print("")
print ("R6a-R6b-R6c-R6d    ",p.get_values (R6a),p.get_values (R6b),p.get_values (R6c),p.get_values (R6d))
print("")
print ("R7-R6              ",p.get_values (R7),p.get_values (R6))
print("")
print ("R7a-R7b-R7c-R7d    ",p.get_values (R7a),p.get_values (R7b),p.get_values (R7c),p.get_values (R7d))
print("")
print ("R8-R7              ",p.get_values (R8),p.get_values (R7))
print("")
print ("R8a-R8b-R8c-R8d    ",p.get_values (R8a),p.get_values (R8b),p.get_values (R8c),p.get_values (R8d))
print("")
print ("R9-R8              ",p.get_values (R9),p.get_values (R8))
print("")
print ("R9a-R9b-R9c-R9d    ",p.get_values (R9a),p.get_values (R9b),p.get_values (R9c),p.get_values (R9d))
print("")
print ("R10-R9             ",p.get_values (R10),p.get_values (R9))
print("")
print ("R10a-R10b-R10c-R10d",p.get_values (R10a),p.get_values (R10b),p.get_values (R10c),p.get_values (R10d))
print("")
print ("R11-R10            ",p.get_values (R11),p.get_values (R10))
b=time.time()

print("\n Süre: ",(b-a)/60)
