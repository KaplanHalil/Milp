p.<R0, R1, R1a, R1b, R1c, R2, R2a, R2b, R2c, R3, R3a, R3b, R3c,  R4,  d> = MixedIntegerLinearProgram (maximization=False, solver = "GLPK")
# Her bir çevrimdeki aktiflik
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

def t_xor(p,in1,in2,in3,out,dummy):
        p.add_constraint(in1+in2+in3+out-2*dummy >=0)
        p.add_constraint(dummy- in1 >= 0)
        p.add_constraint(dummy- in2 >= 0)
        p.add_constraint(dummy- in3 >= 0)
        p.add_constraint(dummy- out >= 0)


def linear_map (p, var1list, var2list, dummyvar, branch_number):
    s = p.sum (var1list+var2list)
    p.add_constraint (s-branch_number*dummyvar >= 0)
    for i in var1list:
        p.add_constraint (dummyvar - i >=0)
    for i in var2list:
        p.add_constraint (dummyvar - i >= 0)

def l_map(p,var1list, var2list, dummylist):
    t_xor(p, var1list[0], var1list[1], var1list[4],var2list[0],dummylist[0])
    t_xor(p, var1list[0], var1list[1],var1list[2],var2list[1],dummylist[1])
    t_xor(p, var1list[1], var1list[2],var1list[3],var2list[2],dummylist[2])
    t_xor(p, var1list[2], var1list[3],var1list[4],var2list[3],dummylist[3])
    t_xor(p, var1list[3], var1list[4],var1list[0],var2list[4],dummylist[4])
    p.add_constraint (p.sum (var1list)>= dummylist[5])
    p.add_constraint (p.sum (var2list)>= dummylist[5])
    p.add_constraint (p.sum (var1list)<= 5*dummylist[5])
    p.add_constraint (p.sum (var2list)<= 5*dummylist[5])
    
def xor(p,in1,in2,out,dummy):
    for i in range(len(in1)):
        p.add_constraint(in1[i]+in2[i]+out[i]-2*dummy[i] >=0)
        p.add_constraint(dummy[i]- in1[i] >= 0)
        p.add_constraint(dummy[i]- in2[i] >= 0)
        p.add_constraint(dummy[i]- out[i] >= 0)




# girdi non-zero sarti
p.add_constraint (p.sum (R1[i] for i in range (5)) + p.sum (R0[i] for i in range (5))  >= 1)

d_idx=0
# round 1 
l_map(p, [R1[i] for i in range(5)] , [R1a[i] for i in range(5)], [d[i] for i in range(d_idx,d_idx+6)])

l_map(p, [R1a[i] for i in range(5)] , [R1b[i] for i in range(5)], [d[i] for i in range(d_idx+6,d_idx+12)])

l_map(p, [R1b[i] for i in range(5)] , [R1c[i] for i in range(5)], [d[i] for i in range(d_idx+12,d_idx+18)])

xor(p, [R1c[i] for i in range(5)] , [R0[i] for i in range(5)], [R2[i] for i in range(5)], [d[i] for i in range(d_idx+18,d_idx+23)])

d_idx=d_idx+24

# round 2 
l_map(p, [R2[i] for i in range(5)] , [R2a[i] for i in range(5)], [d[i] for i in range(d_idx,d_idx+6)])

l_map(p, [R2a[i] for i in range(5)] , [R2b[i] for i in range(5)], [d[i] for i in range(d_idx+6,d_idx+12)])

l_map(p, [R2b[i] for i in range(5)] , [R2c[i] for i in range(5)], [d[i] for i in range(d_idx+12,d_idx+18)])

xor(p, [R2c[i] for i in range(5)] , [R1[i] for i in range(5)], [R3[i] for i in range(5)], [d[i] for i in range(d_idx+18,d_idx+23)])

d_idx=d_idx+19

# round 3 
l_map(p, [R3[i] for i in range(5)] , [R3a[i] for i in range(5)], [d[i] for i in range(d_idx,d_idx+6)])

l_map(p, [R3a[i] for i in range(5)] , [R3b[i] for i in range(5)], [d[i] for i in range(d_idx+6,d_idx+12)])

l_map(p, [R3b[i] for i in range(5)] , [R3c[i] for i in range(5)], [d[i] for i in range(d_idx+12,d_idx+18)])

xor(p, [R3c[i] for i in range(5)] , [R2[i] for i in range(5)], [R4[i] for i in range(5)], [d[i] for i in range(d_idx+18,d_idx+23)])

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


