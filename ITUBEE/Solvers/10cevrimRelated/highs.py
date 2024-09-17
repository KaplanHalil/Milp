import highspy
import numpy as np
h = highspy.Highs()


filename = 'problem.lp'
status = h.readModel(filename)
status = h.setOptionValue('parallel', 'on')
status = h.setOptionValue('threads', 25)
print('Reading model file ', filename, ' returns a status of ', status)

h.run()

solution = h.getSolution()
basis = h.getBasis()
info = h.getInfo()
model_status = h.getModelStatus()
print('Model status = ', h.modelStatusToString(model_status))
print()
print('Optimal objective = ', info.objective_function_value)
print('Iteration count = ', info.simplex_iteration_count)
print('Primal solution status = ', h.solutionStatusToString(info.primal_solution_status))
print('Dual solution status = ', h.solutionStatusToString(info.dual_solution_status))
print('Basis validity = ', h.basisValidityToString(info.basis_validity))