#let assumption = text(fill: red)[ASSUMPTION]
#let todo = text(fill: red)[TODO]

= Math/ Physics Summary \ \

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