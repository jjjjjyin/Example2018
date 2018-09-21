using Test
using Example2018

# Polynomials form a ring
# 1. addition is associatice
# 2. additive identity
# 3. additice inverse
# 4. addition commutes
# 5. multiplication is ...

@testset "Polynomial form a ring" begin

	z = Polynomial([0])

	for n in 1:100

	deg = rand(0:100)
		p = Polynomial(rand(-1000000:1000000, deg+1))

		@test p + z == p
		@test z + p == p
		@test p + (-p) == z
	end

end