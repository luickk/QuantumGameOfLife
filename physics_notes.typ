#let assumption = text(fill: red)[ASSUMPTION]
#let hbar = math.planck.reduce
#let todo = text(fill: red)[TODO]

= Math/ Physics Summary \ \

Src: MIT-Path-Integral-paper.pdf \

- General Prequests
  - Lagragian 
    - Represents the difference between the kinetic and potential energy of a system at given n-dim point in spaced
    - The stationary *action principle* requires that the *action* functional of the system derived from L must remain at a stationary point (a maximum, minimum, or saddle) throughout the time evolution of the system. 
    - $L = K - V$
    - In Euclidian (flat) Space
      - The Lagrangian is constructed using standard expressions for kinetic and potential energy.
      - $L = 1/2 ​m x^2 − 1/2 k x^2$
      - When you need to describe motion of a system you need the Euler Lagragian to analyze the dynamics of physical systems using the principle of least action
        - $d/(d t) ((partial L )/(partial dot(q)^i)) - (partial L) / (partial q^i) = 0$
    - In more complex Riemann Space
      - The Lagrange formalism can be extended using the concept of a Riemannian manifold. In these cases, the kinetic energy term must account for the curvature of the space
      - For Particle of mass m moving in D-dimensional Manifold with metric tensor $g_(a b)$ is: 
        - $L = 1/2 m g_(a b) (q) dot(q)^a dot(q)^b - V(q)$
        - The metric tensor defines the curvature of the space
- Vector Represenataion
  - Dirac Bra-ket Notation 
    - 1 dim complex Hilbert space 
      - is a collection of vectors with n dim basis vectors
      - Probability curve of positional dim of 2 dim vector in hilbert space: 
        - $ phi.alt(x) = angle.l x|Psi angle.r$
    - Ket Vecotr state
      - $phi.alt angle.r$
      - e.g. basis vectors of a 2dim Hilbert space
        - $phi.alt_1 angle.r$, $phi.alt_2 angle.r$
    - $phi.alt$ scaled by $c_1$ 
      - $c_1 | phi.alt angle.r$
      - akin to: $phi.alt$ has an associated probability amplitude or coefficient of $c_1$
    - Braket - Complex Dot product
      - In this notation, a Bra Ket vector represents the dot product between the two which is equal to the probability curve from one to the other state
      - $angle.l phi.alt_1 |phi.alt_2 angle.r = phi.alt_1 dot phi.alt_2$
      - Complex dot product: 
        - $A dot B = sum_i^n a_i overline(b_i)$
    - Outer product, creates new Operator
      - $hat(A)_n = phi.alt_1 angle.r angle.l phi.alt_2$
    - Combining States
      - $|phi.alt_1 angle.r |phi.alt_2 angle.r = |phi.alt_1 angle.r times.circle |phi.alt_2 angle.r$
      - The resulting combined state contains all possible combinations of the states $|phi.alt_1 angle.r$ and $|phi.alt_2 angle.r$, where the state of each individual system remains unchanged.
      - Also called Identity Operator $hat(I) = sum_(i=1)^n |phi.alt_i angle.r angle.l phi.alt_i$
    - Operator: $hat(A)$
      - $hat(A) | psi angle.r = | phi.alt angle.r $ where $psi$ and $phi.alt$ are in Hilberspace
      - Some Eigenmatrix that transforms that's applied on the state vector($psi$) that returns an eigenvalue "the measurement"
        - $"measurement" = angle.l psi | hat(A)|psi angle.r$
    - Probability Amplitude of a vector $phi.alt$
      - $||phi.alt||^2$
    - Linear Operations
      - $hat(A)[c_1 | phi.alt_1 angle.r + c_2 | phi.alt_2 angle.r] = c_1hat(A)|phi.alt_1 angle.r + c_2hat(A)|phi.alt_2 angle.r$
    - Examples of 2 Dim Hilbertspace
      - State with momentum: $p |p angle.r$
      - State with definite position: $x |x angle.r$
      - Probability amplitude for state $phi.alt_1 "to" phi.alt_2$:
        - $angle.l phi.alt_1 | phi.alt_2 angle.r = integral_(-infinity)^(+infinity) phi.alt_1 dot phi.alt_2 d x$ 
      - Probability amplitude for a particle to be at position x
        - #assumption: in the original version the $Psi$ below also is $phi.alt$ but withou an index
        - $phi.alt(x) = angle.l x | Psi angle.r$
      - #link("https://quantummechanics.ucsd.edu/ph130a/130_notes/node108.html")[src]


      \ \
- Path Integral Formula
  - Formula: $|psi(x, t') angle.r = integral_(-infinity)^infinity angle.l psi(x',t')|psi(x_0,t_0)angle.r d x'|psi(x',t')$
  - This formulation has proven crucial to the subsequent development of theoretical physics, because manifest Lorentz covariance (time and space components of quantities enter equations in the same way) is easier to achieve than in the operator formalism of canonical quantization. Unlike previous methods, the path integral allows one to easily change coordinates between very different canonical descriptions of the same quantum system. Another advantage is that it is in practice easier to guess the correct form of the Lagrangian of a theory, which naturally enters the path integrals (for interactions of a certain type, these are coordinate space or Feynman path integrals), than the Hamiltonian). _#link("https://en.wikipedia.org/wiki/Path_integral_formulation")[Source]_
  - Propagator: $U(x', t'; x_0, t_0) = angle.l psi(x', t') | psi(x_0, t_0) angle.r$
    - The Propagator represents the probability amplitude for a particle to travel from one point in space and time to another
    - with elapsed time written as: $U(x', t; x_0)$
    - Propagator and an initial state Ket can fully describe the evolution of a system over time
    - Action: $S[x(t)]$
      - An infinite continuum of trajectories $x(t)$(time indipendent) are possible, each with a classical action
    - $->$ Every possible path contributes with equal amplitude to the Propagator, but with a phase related to the classical action (action $->$ complex phase). Summing over all possible trajectories $->$ Propagator
    - 
      \ $U(x', t; x_0) = A(t) sum_("all\ntrajectories") exp[i/hbar overbrace(S[x(t)], "action over\ntrajectory") ]$

      - This is the heart of the path integral formulation. How the complete formulation is found is subject to the rest of my notes about the path integral.
    - Since all actions for every path contribute to the Propagator one would suspect that it would diverge quite fast. This is not the case since every action for every path will cancel the greate the difference in the action $Delta S approx pi hbar$.
    Contributions of trajectories far away from the "classical path", in aggregate, cancel.
  - Assume the classical trajectory $x_("cl") (t)$ as the trajectory with the minimum value of the action $S[x_("cl")]$, which is stationary to fist order with regard to deciations.
    - trajectory can be observed with high probability(same as little uncerainty? #todo)
    - trajectories close contribute with coherent phase to the intefral
    - trajectories with action $pi hbar$ more than the classical action ar out of phase and intefere destructively with each other. Integrating over more of such destructive trajectories cause their contribution to average out to zero
    - $->$ the calssical trajectory is qualitatively imoprtant
      - $pi hbar$ is frightinly small making the principal contributions trajectories those in a narrow band around the classical one. On quantum scale though $pi hbar$ is big enough to cause significant deviations from the classical trajectory
  - Propagator for a free particle
    - For a particle moving in free spcae along one dimension
    - Formular 12 in the paper 
    - $U(x, t; x_0) = sqrt(m/(2pi i hbar t)) exp[(i m)/(2t hbar) (x-x_0)^2]$