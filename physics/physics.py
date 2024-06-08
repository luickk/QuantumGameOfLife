from sympy import *
import sympy.physics.quantum as quantum


from quantum.constants import hbar

m = 0
N = 0

def propagator_simple_free_particle(x, t, x0):
	res = 0
	res = sqrt(m / (2 * pi * i * hbar * t) * exp((im)/(2*t*hbar)(x-x0)^2))