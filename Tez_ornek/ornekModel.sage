p.<x1> = MixedIntegerLinearProgram (maximization=True, solver = "GLPK")

p.set_binary (x1)



p.add_constraint(2*x1[0] + x1[1] <= 100)
p.add_constraint(x1[0] + 3*x1[1] <= 90)
p.add_constraint(x1[0] >= 1)
p.add_constraint(x1[1] >= 0)

p.set_objective(40*x1[0]+ 30*x1[1])

print(p.solve())