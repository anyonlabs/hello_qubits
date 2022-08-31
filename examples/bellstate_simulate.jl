@time using Snowflake

println("This example creates a circuit to generate a Bell state.")
c = QuantumCircuit(qubit_count = 2, bit_count = 0)
push_gate!(c, [hadamard(1)])
push_gate!(c, [control_x(1, 2)])

println("The circuit is: \n", c)

ψ = simulate(c)

println("The Bell state wave function is given by a ", ψ)

#Uncomment the line below to see a simulated histogram of measurement results. 
#Note: plotting makes your code run a bit slower. 
#plot_histogram(c, 1001)
