import numpy as np
import sympy as sp
from sympy.physics.quantum.constants import hbar

def calculate_distance(point1, point2):
    point1 = np.array(point1)
    point2 = np.array(point2)
    distance = np.linalg.norm(point1 - point2)
    return distance


def propagator_simple_free_particle_2d(p1, p2, t, m):
	
	distance = calculate_distance(p1, p2)

	i = sp.Symbol('i', imaginary = True)
	expr = (m / (2 * sp.pi * i * hbar * t)) * sp.exp(((i * m) / (2 * t * hbar)) * distance)

	
	return sp.N(expr)