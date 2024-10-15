import time

a= time.time()
p.<R0, R1, R1a, R1b, R1c, R2, R2a, R2b, R2c, R3, R3a, R3b, R3c,  R4,  d> = MixedIntegerLinearProgram (maximization=False, solver = "GLPK")
# Her bir çevrimdeki aktiflik
p.set_binary (R0)
p.set_binary (R1)
p.set_binary (R1a)
p.set_binary (R1b)
p.set_binary (R1c)
p.set_binary (R2)
p.set_binary (R2a)
p.set_binary (R2b)
p.set_binary (R2c)
p.set_binary (R3)
p.set_binary (R3a)
p.set_binary (R3b)
p.set_binary (R3c)
p.set_binary (R4)
p.set_binary (d)

#greedy ile azaltılmış denklemler
denklemler= [[2, 4, -4, 2, 1, -4, 5, 3, 4, -5, 4] ,
[1, 2, -2, 2, 1, -3, 3, 2, 3, -3, 2] ,
[-3, 1, -2, 2, 2, 1, 3, 3, 2, -3, 2] ,
[-4, 1, -4, 2, 4, 2, 5, 4, 3, -5, 4] ,
[0, 0, 1, 0, 0, 1, 0, 1, 0, -1, 0] ,
[-4, 4, 2, -4, 3, 2, 5, 1, 4, -5, 4] ,
[-2, 2, 1, -3, 2, 2, 3, 1, 3, -3, 2] ,
[2, 3, 1, 2, -3, 3, 2, -2, 1, -3, 2] ,
[-4, 2, 4, -4, 3, 4, 1, 5, 2, -5, 4] ,
[2, 5, 2, 4, -4, 4, 3, -4, 1, -5, 4] ,
[4, 2, -4, 4, 5, -4, 1, 3, 2, -5, 4] ,
[2, -2, 1, -3, 2, 2, 3, 3, 1, -3, 2] ,
[-1, 1, -1, 1, 1, 1, 1, 1, 1, -1, 0] ,
[-2, 3, 1, 2, -3, 1, 2, 2, 3, -3, 2] ,
[1, -1, 1, -1, 1, 1, 1, 1, 1, -1, 0] ,
[3, -3, 3, -2, 1, 2, 2, 1, 2, -3, 2] ,
[-2, 3, -3, 3, 1, 2, 1, 2, 2, -3, 2] ,
[2, 3, -3, 3, 1, 2, 1, 2, -2, -3, 2] ,
[2, 1, -3, 1, 3, 2, 3, 2, -2, -3, 2] ,
[1, 1, -1, 1, 1, 1, 1, 1, -1, -1, 0] ,
[1, -3, 1, -2, 3, 2, 2, 3, 2, -3, 2] ,
[3, 2, 1, 3, 2, 1, -3, 2, -2, -3, 2] ,
[1, 1, 1, 1, 1, 1, -1, 1, -1, -1, 0] ,
[1, 2, 3, 1, 2, 3, -3, 2, -2, -3, 2] ,
[3, 2, -2, 2, 3, -3, 1, 2, 1, -3, 2] ,
[0, 1, 0, 0, 0, 0, 1, 0, 1, -1, 0] ,
[2, 3, 1, 2, -3, 3, -2, 2, 1, -3, 2] ,
[-3, 1, 2, 2, -2, 3, 1, 3, 2, -3, 2] ,
[1, 2, 1, 3, -2, 3, -3, 2, 2, -3, 2] ,
[2, 3, -3, 1, 1, -2, 3, 2, 2, -3, 2] ,
[2, 2, 3, -3, -2, 2, 1, 3, 1, -3, 2] ,
[-2, 2, 2, 3, 1, 3, 2, 1, -3, -3, 2] ,
[3, 2, 5, -4, -4, 4, 2, 4, 1, -5, 4] ,
[1, -1, 1, 1, 1, -1, 1, 1, 1, -1, 0] ,
[-4, 4, 3, 4, 2, 5, 2, 1, -4, -5, 4] ,
[3, 1, -2, 3, 2, 2, 2, -3, 1, -3, 2] ,
[3, -3, 3, 2, 1, -2, 2, 1, 2, -3, 2] ,
[5, -4, 4, 3, 1, -4, 2, 2, 4, -5, 4] ,
[3, -2, 2, 2, 1, -3, 1, 2, 3, -3, 2] ,
[4, 1, -4, 5, 4, 3, 2, -4, 2, -5, 4] ,
[3, 1, 2, 3, 2, -2, 2, -3, 1, -3, 2] ,
[2, 2, 1, -3, 2, -2, 3, 3, 1, -3, 2] ,
[4, -4, 5, -4, 2, 3, 2, 1, 4, -5, 4] ,
[5, 2, 3, 4, 4, -4, 2, -4, 1, -5, 4] ,
[2, -4, 4, 2, 1, 4, 3, 5, -4, -5, 4] ,
[0, 1, 0, 0, 1, 0, 0, 1, -1, 0, 0] ,
[1, 0, 0, 0, 0, 1, 0, 1, -1, 0, 0] ,
[1, 4, 3, -4, -4, 2, 4, 2, -5, 5, 4] ,
[4, 3, 4, 2, -4, 2, 1, -4, -5, 5, 4] ,
[1, -4, 5, 4, 4, 2, -4, 2, -5, 3, 4] ,
[2, -4, 1, 5, 3, 4, 4, -4, -5, 2, 4] ,
[3, 1, -2, 2, 1, 1, 2, -1, -1, -2, 2] ,
[3, 5, -5, 4, 2, 2, 1, 4, -4, -4, 4] ,
[3, 1, -5, 2, 4, 4, 5, 2, -4, -4, 4] ,
[-2, 1, 3, 1, -1, 2, 2, 1, -1, -2, 2] ,
[1, 3, 5, 2, 4, 4, -5, 2, -4, -4, 4] ,
[3, -1, -1, 1, 2, 2, 1, 1, -2, -2, 2] ,
[-2, 2, 3, -1, 1, 1, 1, 2, -1, -2, 2] ,
[-1, -1, 1, 2, 1, 1, 3, 2, -2, -2, 2] ,
[2, 3, 1, 1, 2, -1, -2, 1, -2, -1, 2] ,
[-5, 5, 3, 2, 4, 4, 1, 2, -4, -4, 4] ,
[-1, -1, 3, 2, 1, 1, 1, 2, -2, -2, 2] ,
[0, 0, 0, 0, 1, 0, 1, -1, 0, 1, 0] ,
[1, 0, 0, 0, 0, 1, 0, -1, 1, 0, 0] ,
[2, -4, 4, 2, 3, 4, 1, -5, -4, 5, 4] ,
[2, 4, 5, 4, -4, 1, -4, -5, 2, 3, 4] ,
[-4, 5, 1, 3, 4, 2, -4, -5, 4, 2, 4] ,
[1, 1, 2, -1, 3, 1, -2, -2, 2, -1, 2] ,
[2, 2, 3, 4, 1, -5, 5, -4, 4, -4, 4] ,
[2, 2, 5, 4, -5, 1, 3, -4, 4, -4, 4] ,
[-1, 2, 3, 1, 1, -2, 2, -2, 1, -1, 2] ,
[2, -1, 3, 1, 1, -2, 2, -1, 1, -2, 2] ,
[4, 4, 5, 2, 3, 1, -5, -4, 2, -4, 4] ,
[2, 2, 1, 4, 3, 5, -5, -4, 4, -4, 4] ,
[-5, 1, 2, 4, 5, 3, 2, -4, -4, 4, 4] ,
[1, 3, 1, 2, -1, -1, 1, -2, -2, 2, 2] ,
[0, 1, 0, 0, 0, 0, -1, 0, 1, 1, 0] ,
[4, -4, 2, 5, 2, 1, -5, 4, 3, -4, 4] ,
[3, -4, -4, 1, 4, 2, -5, 5, 2, 4, 4] ,
[4, 5, 2, 2, -5, 4, -4, 3, 1, -4, 4] ,
[-1, 1, 1, 1, -2, 2, -1, 3, 2, -2, 2] ,
[2, -2, 1, 1, 1, -1, -1, 2, 3, -2, 2] ,
[1, 1, -1, -2, 1, 3, -1, 2, -2, 2, 2] ,
[-1, 1, 2, 1, -1, 1, -2, -2, 2, 3, 2] ,
[2, 1, -1, 1, -2, 1, -2, -1, 2, 3, 2] ,
[-4, 2, 4, 1, 4, -5, 5, -4, 3, 2, 4] ,
[1, 2, 4, -4, 2, -5, -4, 5, 3, 4, 4] ,
[1, 2, -2, 1, -1, -2, 1, 3, 2, -1, 2] ,
[1, -1, -1, 1, 2, -2, 1, 3, 2, -2, 2] ,
[1, 1, 1, -2, -1, -1, 3, 2, -2, 2, 2] ,
[1, -1, -2, 1, 1, -1, 2, -2, 2, 3, 2] ,
[4, 2, 3, 5, -5, -4, -4, 2, 1, 4, 4] ,
[4, 5, -5, 3, -4, 2, 4, 1, -4, 2, 4] ,
[2, -5, 2, 4, -4, 4, 1, -4, 3, 5, 4] ,
[2, 4, -4, -5, -4, 5, 1, 2, 3, 4, 4] ,
[4, 3, -4, -5, 4, 1, 2, -4, 2, 5, 4] ,
[5, -4, 2, -5, 1, -4, 4, 4, 2, 3, 4] ,
[-4, 2, 1, -5, 3, 4, 4, 2, 5, -4, 4] ,
[-4, -4, -5, 4, 5, 1, 3, 2, 4, 2, 4] ,
[-3, -3, 2, 3, -2, 2, 2, 3, 1, 1, 2]]



def poly_map(p,var1list,var2list):
    for d in denklemler:
        p.add_constraint(
        d[0]*var1list[0] +
        d[1]*var1list[1] +
        d[2]*var1list[2] +
        d[3]*var1list[3] +
        d[4]*var1list[4] +
        d[5]*var2list[0] +
        d[6]*var2list[1] +
        d[7]*var2list[2] +
        d[8]*var2list[3] +
        d[9]*var2list[4] +
        d[10] >= 0 )
    
def xor(p,in1,in2,out,dummy):
    for i in range(len(in1)):
        p.add_constraint(in1[i]+in2[i]+out[i]-2*dummy[i] >=0)
        p.add_constraint(dummy[i]- in1[i] >= 0)
        p.add_constraint(dummy[i]- in2[i] >= 0)
        p.add_constraint(dummy[i]- out[i] >= 0)




# girdi non-zero sarti
p.add_constraint (p.sum (R1[i] for i in range (5)) + p.sum (R0[i] for i in range (5))  >= 1)

# round 1 
poly_map(p, [R1[i] for i in range(5)] , [R1a[i] for i in range(5)])

poly_map(p, [R1a[i] for i in range(5)] , [R1b[i] for i in range(5)])

poly_map(p, [R1b[i] for i in range(5)] , [R1c[i] for i in range(5)])

xor(p, [R1c[i] for i in range(5)] , [R0[i] for i in range(5)], [R2[i] for i in range(5)], [d[i] for i in range(5)])


# round 2 
poly_map(p, [R2[i] for i in range(5)] , [R2a[i] for i in range(5)])

poly_map(p, [R2a[i] for i in range(5)] , [R2b[i] for i in range(5)])

poly_map(p, [R2b[i] for i in range(5)] , [R2c[i] for i in range(5)])

xor(p, [R2c[i] for i in range(5)] , [R1[i] for i in range(5)], [R3[i] for i in range(5)], [d[i+5] for i in range(5)])


# round 3 
poly_map(p, [R3[i] for i in range(5)] , [R3a[i] for i in range(5)])

poly_map(p, [R3a[i] for i in range(5)] , [R3b[i] for i in range(5)])

poly_map(p, [R3b[i] for i in range(5)] , [R3c[i] for i in range(5)])

xor(p, [R3c[i] for i in range(5)] , [R2[i] for i in range(5)], [R4[i] for i in range(5)], [d[i+10] for i in range(5)])

#Toplam aktif
r1 = p.sum (R1[i] for i in range (5)) 
r2 = p.sum (R1a[i] for i in range (5)) 
r3 = p.sum (R1b[i] for i in range (5))
r4 = p.sum (R1c[i] for i in range (5))
r5 = p.sum (R2[i] for i in range (5))
r6 = p.sum (R2a[i] for i in range (5))
r7 = p.sum (R2b[i] for i in range (5))
r8 = p.sum (R2c[i] for i in range (5))
r9 = p.sum (R3[i] for i in range (5))
r10 = p.sum (R3a[i] for i in range (5))
r11 = p.sum (R3b[i] for i in range (5))
r12 = p.sum (R3c[i] for i in range (5))
p.set_objective (p.sum ([r1, r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12]))

#p.show()



print ("Toplam aktif s-kutusu: ",p.solve())

print ("R1-R0      ",p.get_values (R1),p.get_values (R0))
print("")
print ("R1a-R1b-R1c",p.get_values (R1a),p.get_values (R1b),p.get_values (R1c))
print("")
print ("R2-R1      ",p.get_values (R2),p.get_values (R1))
print("")
print ("R2a-R2b-R2c",p.get_values (R2a),p.get_values (R2b),p.get_values (R2c))
print("")
print ("R3-R2      ",p.get_values (R3),p.get_values (R2))
print("")
print ("R3a-R3b-R3c",p.get_values (R3a),p.get_values (R3b),p.get_values (R3c))
print("")
print ("R4-R3      ",p.get_values (R4),p.get_values (R3))

b=time.time()

print("\n Süre: ",(b-a))
