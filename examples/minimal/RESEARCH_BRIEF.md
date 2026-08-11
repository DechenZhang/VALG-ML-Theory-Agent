# Research Direction

Study last-iterate convergence of clipped stochastic gradient descent for a
smooth objective satisfying a Polyak-Lojasiewicz condition when the stochastic
gradient noise has only a bounded second moment.

# Target Progress

Determine whether clipping can yield a nonasymptotic high-probability
last-iterate guarantee without assuming almost-surely bounded stochastic
gradients. The target should expose the dependence on smoothness, the
Polyak-Lojasiewicz constant, noise scale, confidence level, clipping threshold,
step size, and iteration count.

A full result should analyze the stated clipped update under the bounded
second-moment noise assumption. A theorem for a stronger noise condition, a
special objective class, a modified algorithm, or an additional stability
event is useful only if it is labeled as restricted or conditional and the
remaining gap is explicit.

# Constraints

- State the filtration, unbiasedness or bias assumption, and probability mode
  precisely.
- Do not hide an unproved trajectory-boundedness or clipping-inactive event in
  an admissibility assumption.
- Compare the target with standard SGD and relevant clipped-SGD results using
  primary sources where available.
- Treat a changed update rule, stronger tail assumption, or expectation-only
  conclusion as a material change to the target.

# Acceptance Criteria

An accepted candidate must provide a self-contained theorem statement, trace
every technical assumption to literature or an explicit verification, and
close the dependence between clipping bias, stochastic concentration, and
last-iterate contraction. If that target cannot be proved, prefer a rigorous
obstruction, lower bound, or sharply delimited conditional reduction over an
unsupported full-solution claim.
