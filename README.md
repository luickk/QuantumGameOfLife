# QuantumGameOfLife

## Resources
- [My Physics Notes](physics_notes.pdf)
- [Path integral formulation](https://en.wikipedia.org/wiki/Path_integral_formulation)

### Important papers
- [Path Integrals in Quantum Mechanics](paper-path-integral.pdf) [1]
- [Path Integration and seperation of variables in spaces of constant curvature in 2 and three dimensions](paper-path-integral-in-2d.pdf) [2]

A Game Of Life version with (approximate or "quantum like") Quantum rules "inspried"(defined?) by the Path Integral Formulation(predecessor of [RQM](https://en.wikipedia.org/wiki/Relativistic_quantum_mechanics). And yes, I do realize that it's technically just a quantized simulation.)


## Foundation

The calculated path integral as propagator is fairly easy to find, for the Game Of Life a 2d Propagator is required. 

The Paper "Path Integration and seperation[..]"[2], refers to that topic and as it seems in non curved spaces, it's sufficient to just use another n dimensional distance norm, if I understood the paper correctly. 

## Concept

Since I'm not at all a physicist, I approached this project quite naively. Since I wanted to be somewhat close to more modern quantum physics and not be building on classical Quantum Mechanics, I decided to go with the Path Integral, which is the foundation of modern field based Quantum Theories.

The really interesting part is finding a "translation" from the probability based equations of the Path Integral to the rules based Game Of Life Logic.

My initial idea would be that instead of counting neighbors, the probability for all possible paths is evaluated, and the highest probability path is taken, if there is no path above a certain probability, the cell dies.