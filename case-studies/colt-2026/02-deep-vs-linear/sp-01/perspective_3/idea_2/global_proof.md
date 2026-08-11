# Global Proof

## Reviewed Sketch Identity

- Branch: perspective_3/idea_2.
- Sketch attempt: 1.
- Reviewed sketch: perspective_3/idea_2/proof_sketch.md, with the fixed Step IDs step_001 through step_007.
- Sketch review: perspective_3/idea_2/proof_sketch_review.md.
- Sketch-review status: ACCEPTED (score 9; smallest retry target None).
- Goal mode: exact-goal mode.
- Diagnostic identity: global-proof attempt 1 under sketch attempt 1. No prior global-proof review repair bundle is present.

## Status

COMPLETE_DRAFT

The accepted seven-step roadmap closes at theorem-diagnostic granularity. Every theorem-critical mechanism has an existing primitive or earlier-derived source, every exported interface has a legal producer-consumer path, and no step claim, dependency, assumption, target, mode, metric, or quantitative dependence needs repair. Later step artifacts must still prove their assigned claims independently; that downstream work is not a global gap.

## Attempted Theorem Claim

This diagnostic attempts exactly the theorem in setting.md. Fix integers $n,m,T\ge 1$, a stepsize $\eta>0$, an accuracy $\varepsilon\ge0$, the cube $\mathcal X=\{-1,+1\}^n$, a class $\mathcal H\subseteq\{-1,+1\}^{\mathcal X}$, and the fixed source tie label $s_0\in\{-1,+1\}$. Use the exact bias-free depth-two network, Gaussian initialization, logistic one-sample all-layers SGD, source ReLU-kink gradient convention, and latter-half aggregate from setting.md, with $S=m(n+1)$.

Under the three and only three theorem-facing assumptions

- assump:antipodal-oddness: $h(-x)=-h(x)$ for all $h\in\mathcal H$ and $x\in\mathcal X$;
- assump:high-accuracy: $2\varepsilon<1/(n+1)$; and
- assump:universal-sgd-success: the fixed learner has expected source classification error at most $\varepsilon$ for every $\mathcal D\in\Delta(\mathcal X)$ and $h\in\mathcal H$,

prove

$$
\forall h\in\mathcal H\ \exists w_h\in\mathbb R^n\ \forall x\in\mathcal X,
\qquad
\operatorname{sign}_{s_0}(\langle w_h,x\rangle)=h(x).
$$

Consequently the deterministic identity feature map exactly represents the class, the point-mass law $\delta_{\varphi_{\mathrm{id}}}$ succeeds with probability one for every later $(\mathcal D,h)$, and

$$
\operatorname{dc}^{1/2}(\mathcal H)
\le \operatorname{dc}(\mathcal H)
\le n\le S\le TS.
$$

The claim is finite-horizon and deterministic at its conclusion. Its only numerical conversion is the exact factor $2$ followed by the strict threshold $2\varepsilon<1/(n+1)$; it has no hidden constants. It is the accepted material_partial depth-two, antipodally odd, high-accuracy specialization, not the unrestricted source conjecture.

## Whole-Proof Draft

### Block B0: quantifiers and the empty-class branch

If $\mathcal H=\varnothing$, the representation statement is vacuous. The identity map is still fixed independently of every distribution and target and witnesses the upper bounds. For the target-wise argument, fix an arbitrary $h\in\mathcal H$. No distribution is fixed permanently: Block B3 proves an approximate statement for every $\mathcal D$, then Block B6 instantiates it at a distribution generated from a hypothetical obstruction for this $h$.

### Block B1: exact depth-two antisymmetrization (step_001)

For any realized $(a,W)$ and any $x\in\mathcal X$, the coordinatewise identity

$$
\sigma(r)-\sigma(-r)=r,\qquad r\in\mathbb R,
$$

including $r=0$, gives

$$
\begin{aligned}
f_{a,W}(x)-f_{a,W}(-x)
&=a^\top\bigl(\sigma(Wx)-\sigma(-Wx)\bigr)\\
&=a^\top Wx
=\langle W^\top a,x\rangle.
\end{aligned}
$$

This is a function identity for every possible parameter value. It holds at initialization and after every source-convention SGD update, including an update at a ReLU kink; the gradient convention affects which parameters are generated but not this equality. Summing over exactly $t=\lceil T/2\rceil,\ldots,T$ yields

$$
\begin{aligned}
A_\omega(x)
&=G_\omega(x)-G_\omega(-x)\\
&=\sum_{t=\lceil T/2\rceil}^{T}
\langle (W^{(t)})^\top a^{(t)},x\rangle
=\langle v_\omega,x\rangle.
\end{aligned}
\tag{B1}
$$

The produced and consumed scores are pointwise identical. Each summand has residual zero, so the finite aggregate has residual zero even for $T=1$, zero weights, zero output weights, or $v_\omega=0$.

### Block B2: tie-aware antipodal error transfer (step_002)

For a score $F$, write

$$
e_{F,h}(x):=
\mathbf 1\{\operatorname{sign}_{s_0}(F(x))h(x)<0\}.
$$

Set $y=h(x)$, so oddness gives $h(-x)=-y$. Suppose both source scores are correctly classified. The four source-convention cases are

| $s_0$ | $y$ | Correctness constraints | Consequence |
| --- | --- | --- | --- |
| $+1$ | $+1$ | $G(x)\ge0$ and $G(-x)<0$ | $y(G(x)-G(-x))>0$ |
| $+1$ | $-1$ | $G(x)<0$ and $G(-x)\ge0$ | $y(G(x)-G(-x))>0$ |
| $-1$ | $+1$ | $G(x)>0$ and $G(-x)\le0$ | $y(G(x)-G(-x))>0$ |
| $-1$ | $-1$ | $G(x)\le0$ and $G(-x)>0$ | $y(G(x)-G(-x))>0$ |

Thus simultaneous correctness forces a strictly correct sign for $A_\omega(x)=G_\omega(x)-G_\omega(-x)$. The contrapositive, including $A_\omega(x)=0$, is

$$
e_{A_\omega,h}(x)
\le e_{G_\omega,h}(x)+e_{G_\omega,h}(-x).
\tag{B2a}
$$

The second term evaluates $G_\omega(-x)$ against $h(-x)$. If $x\sim\mathcal D$, then $-x\sim\mathcal D^-$, so integration gives

$$
\begin{aligned}
\mathcal L_{\mathcal D,h}(A_\omega)
&\le \mathcal L_{\mathcal D,h}(G_\omega)
  +\mathcal L_{\mathcal D^-,h}(G_\omega)\\
&=2\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega).
\end{aligned}
\tag{B2b}
$$

There is no distributional approximation or uncounted tie term. The factor $2$ is exact and remains exposed.

### Block B3: expected universal success gives a distribution-wise homogeneous separator (step_003)

Let $\mathcal D\in\Delta(\mathcal X)$ be arbitrary. Its symmetrization is a legal input distribution, and the architecture, initialization, stepsize, horizon, update, aggregate, and target remain unchanged. Apply assump:universal-sgd-success to $(\mathcal D^{\mathrm{sym}},h)$, then use (B1) and (B2b):

$$
\begin{aligned}
\mathbb E_{\omega\sim\mathbb Q_{\mathcal D^{\mathrm{sym}},h}}
\mathcal L_{\mathcal D,h}(\langle v_\omega,\cdot\rangle)
&=\mathbb E_\omega\mathcal L_{\mathcal D,h}(A_\omega)\\
&\le2\mathbb E_\omega
\mathcal L_{\mathcal D^{\mathrm{sym}},h}(G_\omega)\\
&\le2\varepsilon.
\end{aligned}
\tag{B3a}
$$

The loss is nonnegative. If every realization had loss strictly larger than $2\varepsilon$, the expectation would also be larger; on the finite domain its possible values are in any case finite subset sums of the masses of $\mathcal D$. Hence some realization supplies $v=v(\mathcal D,h)\in\mathbb R^n$ such that

$$
\forall\mathcal D\ \forall h\in\mathcal H\ \exists v=v(\mathcal D,h),
\qquad
\mathcal L_{\mathcal D,h}(\langle v,\cdot\rangle)\le2\varepsilon.
\tag{B3b}
$$

This is a separate existential choice for each $(\mathcal D,h)$. There is no common trajectory event or union over distributions or targets. The vector may depend on $\mathcal D$ here, while its feature coordinates are already the fixed identity coordinates.

### Block B4: exact representation is a strict system (step_004)

For fixed $h$, define

$$
Q_h:=\{q\in\mathcal X:h(q)=-s_0\}.
$$

Because $h(-q)=-h(q)$ and no cube point equals its antipode, $Q_h$ contains exactly one member of each antipodal pair. For $q\in Q_h$, a zero score receives label $s_0=-h(q)$ and is an error. Therefore

$$
\operatorname{sign}_{s_0}(\langle w,q\rangle)=h(q)
\quad\Longleftrightarrow\quad
h(q)\langle w,q\rangle>0.
\tag{B4a}
$$

If these strict inequalities hold on $Q_h$, then homogeneity and oddness give the correct nonzero opposite score and label on every $-q$. Conversely, exact representation must be strict on $Q_h$. Hence

$$
\exists w\ \forall x\in\mathcal X,\
\operatorname{sign}_{s_0}(\langle w,x\rangle)=h(x)
\quad\Longleftrightarrow\quad
\exists w\ \forall q\in Q_h,\
h(q)\langle w,q\rangle>0.
\tag{B4b}
$$

This is exact for both choices of $s_0$ and introduces no margin-magnitude assumption.

### Block B5: infeasibility has an $n+1$-point obstruction (step_005)

Set

$$
Z_h:=\{h(q)q:q\in Q_h\}\subset\mathbb R^n.
$$

Assume conditionally that (B4b)'s strict system is infeasible. Then no $w$ has $\langle w,z\rangle>0$ for every $z\in Z_h$.

Since $Z_h$ is finite and nonempty, its convex hull is compact. Let $p$ minimize $\|u\|_2$ over $u\in\operatorname{conv}(Z_h)$. For every $z\in Z_h$, the segment $p+t(z-p)$ remains in the convex hull. The one-sided derivative at zero gives

$$
0\le
\left.\frac{d}{dt}\right|_{t=0^+}
\|p+t(z-p)\|_2^2
=2\langle p,z-p\rangle,
$$

so

$$
\langle p,z\rangle\ge\|p\|_2^2.
\tag{B5a}
$$

If $p\ne0$, then $w=p$ is strictly positive on every $z$, contrary to infeasibility. Thus $p=0$, so $0\in\operatorname{conv}(Z_h)$.

Choose a convex representation of zero with minimal support:

$$
0=\sum_{i=1}^k\alpha_i z_i,\qquad
\alpha_i>0,\qquad
\sum_{i=1}^k\alpha_i=1,
\tag{B5b}
$$

with distinct $z_i=h(q_i)q_i$. If $k>n+1$, affine dependence supplies coefficients $\beta_i$, not all zero, satisfying

$$
\sum_i\beta_i z_i=0,\qquad \sum_i\beta_i=0.
$$

Both signs occur among the $\beta_i$. Set

$$
t_*:=\min_{\beta_i>0}\frac{\alpha_i}{\beta_i}>0,
\qquad
\alpha_i':=\alpha_i-t_*\beta_i.
$$

The new coefficients are nonnegative, preserve both sums, and make at least one coefficient zero, contradicting minimal support after zero coefficients are removed. Therefore

$$
1\le k\le n+1.
\tag{B5c}
$$

Let $\mathcal D_h^\star$ be uniform on $q_1,\ldots,q_k$. For arbitrary $w\in\mathbb R^n$, (B5b) implies

$$
0=\sum_{i=1}^k\alpha_i
h(q_i)\langle w,q_i\rangle.
\tag{B5d}
$$

Since every $\alpha_i>0$, some signed inner product is nonpositive. A negative one is a sign error. Equality is also an error because $h(q_i)=-s_0$. Thus at least one uniform atom is wrong for every $w$, including $w=0$, and

$$
\forall w\in\mathbb R^n,\qquad
\mathcal L_{\mathcal D_h^\star,h}(\langle w,\cdot\rangle)
\ge\frac1k\ge\frac1{n+1}.
\tag{B5e}
$$

This is a direct current-notation Gordan/Caratheodory-style derivation, not an unverified external wrapper. The certificate, support reduction, distribution, and lower bound all use the branch's exact signed vectors and Euclidean inner product.

### Block B6: strict high-accuracy exactification (step_006)

Apply (B3b) to the particular distribution $\mathcal D_h^\star$. Some $v\in\mathbb R^n$ satisfies

$$
\mathcal L_{\mathcal D_h^\star,h}(\langle v,\cdot\rangle)
\le2\varepsilon.
\tag{B6a}
$$

But (B5e) applies to every vector with the same target, distribution, homogeneous score, tie rule, and loss. Under assump:high-accuracy,

$$
\inf_w\mathcal L_{\mathcal D_h^\star,h}(\langle w,\cdot\rangle)
\le2\varepsilon
<\frac1{n+1}
\le\inf_w\mathcal L_{\mathcal D_h^\star,h}(\langle w,\cdot\rangle),
\tag{B6b}
$$

a contradiction. The strict system is feasible, and (B4b) gives an exact separator $w_h$. This argument is logical for each $h$ but accumulates no error and needs no common random realization. At $\varepsilon=0$ it closes immediately; at equality $2\varepsilon=1/(n+1)$ it would not close, and that boundary is explicitly excluded.

### Block B7: common feature law and dimension closure (step_007)

Block B6 gives target-dependent weights, but every score uses the same deterministic map $\varphi_{\mathrm{id}}(x)=x$. Thus $\operatorname{dc}(\mathcal H)\le n$. More generally, any deterministic exact feature map witnessing $\operatorname{dc}(\mathcal H)$ yields a point-mass law succeeding for every $(\mathcal D,h)$, so $\operatorname{dc}^{1/2}(\mathcal H)\le\operatorname{dc}(\mathcal H)$. In particular, $\delta_{\varphi_{\mathrm{id}}}$ has exact-representation probability one and is fixed independently of $\mathcal D$, $h$, and every trajectory.

Finally, $m,T\ge1$ and $S=m(n+1)$ imply

$$
n\le m(n+1)=S\le TS.
\tag{B7}
$$

Blocks B0-B7 prove the attempted theorem. The trajectory-dependent $v_\omega$ is used only for (B3b); it is never the feature map, and no random object survives into the common-map conclusion.

## Theorem-Level Block Map

| Block | Role in attempted theorem | Source Step ID(s) or assembly role | Dependency inputs | Theorem-facing assumptions | Unresolved obligations |
| ----- | ------------------------- | ---------------------------------- | ----------------- | -------------------------- | ---------------------- |
| B0: empty class and quantifiers | Handles the vacuous branch and fixes one target without changing universal order | Assembly and step_007 boundary | Setting definitions | Primitive integer setup only | None |
| B1: antisymmetrization | Produces an identity-coordinate score from every aggregate | step_001 | Exact architecture and realized parameters | None additional | None at diagnostic level |
| B2: error transfer | Moves source pair loss to antisymmetric-score loss | step_002 | B1 and tie convention | assump:antipodal-oddness | None |
| B3: approximate separator | Produces a deterministic $2\varepsilon$ vector for each $(\mathcal D,h)$ | step_003 | B1-B2 and legal symmetrization | assump:universal-sgd-success | None |
| B4: strict system | Equates exact identity representation with strict feasibility | step_004 | Tie convention and homogeneity | assump:antipodal-oddness | None |
| B5: finite obstruction | Produces a support-$\le n+1$ certificate and uniform lower bound | step_005 | B4 conditional infeasibility | None additional | None; highest-risk local derivation |
| B6: exactification | Contradicts B5 using B3 and the strict gap | step_006 | B3-B5 | assump:high-accuracy | None |
| B7: common-map closure | Exports the fixed map, point-mass law, and dimension chain | step_007 and assembly | B6, definitions, parameter count | None additional | None |

## Sketch-Step Coverage

| Step ID | Covered block or assembly use | Dependency use | Local proof obligations | Notes |
| ------- | ----------------------------- | -------------- | ----------------------- | ----- |
| step_001 | B1 | Primitive architecture | Per-iterate ReLU difference and exact finite sum | Kinks and zero parameters covered |
| step_002 | B2 | B1 | Four tie-label cases, contrapositive, change of variables | Source ties and $A(x)=0$ covered |
| step_003 | B3 | B1-B2 | Legal invocation on $\mathcal D^{\mathrm{sym}}$ and existence extraction | No simultaneous realization claimed |
| step_004 | B4 | Independent primitive branch | One representative per pair and both directions of equivalence | Label $-s_0$ makes ties errors |
| step_005 | B5 | B4 | Closest-point alternative, support pruning, witness counting | No cited wrapper consumed |
| step_006 | B6 | B3-B5 | Compare the identical distribution, target, score class, and loss | Strict gap retained |
| step_007 | B0/B7 | B6 | Quantifier order, point-mass law, empty class, parameter chain | Common map is target-independent |

## Dependency And Assumption Audit

The graph is acyclic and unchanged. Steps 001 and 004 begin independent branches. Step 002 consumes 001; step 003 consumes 001-002; step 005 consumes 004; step 006 first combines the approximate and obstruction branches; step 007 consumes 006.

Only the three stable setting assumptions are primitive theorem conditions. Every other theorem-facing item is derived before use: B1 produces the linear score; B2 the error transfer; B3 the approximate vector; B4 the representative set and strict system; B5 the certificate, support, distribution, and lower bound; B6 the separator; and B7 the common map and dimension chain.

No trajectory boundedness, stability, gate pattern, good event, margin, local-validity condition, support invariant, or common realization is assumed. Conditional infeasibility appears only inside B5 and is discharged in B6. There is no missing assumption-provenance bridge.

## Citation And Tool Audit

| Item | Source and current objects | Assumptions and convention check | Conclusion needed | Affected block | Status |
| ---- | -------------------------- | -------------------------------- | ----------------- | -------------- | ------ |
| ReLU antisymmetrization | Direct scalar identity on the exact depth-two network | Same ReLU, no bias, same parameters and indices; valid at zero; gradient convention irrelevant to function equality | Exact B1 equality | B1 / step_001 | Adequate direct derivation |
| Tie comparison | Direct four-case proof under the exact sign convention | Both ties, both labels, strict source loss, and odd labels checked | B2 indicator and factor $2$ | B2 / step_002 | Adequate direct derivation |
| Expectation-to-existence | Elementary nonnegative-variable argument | Same law $\mathbb Q_{\mathcal D^{\mathrm{sym}},h}$; no union or mode upgrade | One vector for fixed $(\mathcal D,h)$ | B3 / step_003 | Adequate |
| Convex alternative | Direct closest-point proof for $Z_h\subset\mathbb R^n$ | Same Euclidean pairing and strict system; finite nonempty set | $0\in\operatorname{conv}(Z_h)$ under infeasibility | B5 / step_005 | Adequate direct derivation |
| Support reduction | Direct affine-dependence pruning | Ambient dimension exactly $n$; vector and coefficient sums preserved | Positive support $k\le n+1$ | B5 / step_005 | Adequate direct derivation |
| Survey literature | Feldman-Kamath-Srebro and Rockafellar in technical_survey.md | Context/framework naming only | No theorem conclusion consumed | Context | No discharge obligation |

All theorem-critical tools are restated in current notation. There is no source-object mismatch, transformed target, population bridge, or missing citation wrapper.

## Quantitative Dependence Audit

- Exposed variables: $n,m,S,T,\eta,\varepsilon,\mathcal H$, with $S=m(n+1)$. Intermediate quantifiers expose $\mathcal D,h,\omega$, but no final constant depends on them.
- Hidden constants: none. The displayed constants are $1$, $2$, and $n+1$.
- Fixed quantities: architecture, $n,m,T,\eta$, initialization law, loss, and update protocol are fixed before $\mathcal D,h$.
- Probability mode: the premise is in expectation; B3 extracts deterministic existence separately for each pair; the final feature law is a point mass with probability-one success. There is no high-probability or simultaneous-event upgrade.
- Horizon mode: fixed finite $T$, with indices $\lceil T/2\rceil,\ldots,T$. No all-time, asymptotic, or stopping-time claim appears.
- Norm/metric mode: tie-resolved $0$-$1$ error through B6, then exact pointwise sign representation. Euclidean norm is used only for the convex alternative.
- Auxiliary tolerances: none. The sole numerical admissibility condition is $2\varepsilon<1/(n+1)$.
- Specialization bridge: B6 explicitly compares $2\varepsilon$ and $1/(n+1)$; no equality case or term is absorbed.
- Baseline invariance: at $\varepsilon=0$, B3 gives a zero-error vector and B6 gives the same exact conclusion. For empty $\mathcal H$, the target is vacuous. The source learner, tie rule, horizon, and identity target remain unchanged.
- Structural chain: $n\le S$ follows from $S=m(n+1)$ and $m\ge1$; $S\le TS$ follows from $T\ge1$. There is no $\eta$ dependence.

## Scope And Closure Certificate

| Target condition or control | Claim class / theorem role | Declared theorem scope | Local interface or recurrence | Key source | Defect/forcing terms | Accumulation / scope compatibility | Closure mechanism | Mechanism source / boundary exclusion | Source-to-claim adequacy | Residual-to-target adequacy | Locality | Noncircular status | Entry / first-update stress | Dominance relation | Primitive controls | Generated controls | Boundary stress | Failure mode |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $A_\omega=\langle v_\omega,\cdot\rangle$ | Structural equality for B2-B3 | Every realized iterate, fixed finite $T$ | Exact per-iterate identity then sum | ReLU difference and no bias | Residual $0$ | $\sum_t0=0$ on exact finite range | Algebraic coupling | Primitive depth-two architecture; deeper/biased cases excluded | Equality gives exact consumed score | Produced and consumed scores equal pointwise | step-local | Architecture precedes consumers | Holds at initialization, first update, kinks, zero parameters | Equality term by term | Architecture, aggregate | $A_\omega,v_\omega$ | $T=1$, $W=a=v=0$ pass | Linear interface may fail without source |
| Pair-error transfer | Signed comparison for B3 | Every $x,\omega,\mathcal D,h$ | $e_A\le e_G(x)+e_G(-x)$ then integrate | Oddness and tie cases | Score ties; factor $2$ retained | Pointwise inequality integrates exactly | Structural comparison | Primitive oddness and fixed tie; non-odd excluded | Simultaneous correctness gives strict sign | Same target/loss; exact change of variables | step-local | B1 and oddness precede B2 | All four $(s_0,y)$ cases traced | $L_D(A)\le2L_{D^{\mathrm{sym}}}(G)$ | Oddness, tie rule | B1 score, B2 bound | All zero branches pass | Transfer can fail without oddness |
| $2\varepsilon$ vector | Mode conversion for B6 | Separately for each $(D,h)$ | $\mathbb E L\le2\varepsilon\Rightarrow\exists v:L\le2\varepsilon$ | Universal success on $D^{\mathrm{sym}}$ and B1-B2 | Randomness and exposed factor $2$ | One-shot, no union or time accumulation | Structural comparison | Universal premise includes every symmetrization | Exact loss class needed downstream | Same vector and identity coordinates on original $D$ | step-local | Premise/B1/B2 precede B3 | $v=0$ counted normally; $\varepsilon=0$ gives zero loss | Minimum realization no larger than mean | Universal expected bound | $v(D,h)$ | Nonsymmetric/point-mass $D$, $T=1$ pass | Invocation may fail without universality |
| Strict system on $Q_h$ | Exact sign/support interface | Each fixed target, full cube | Exactness iff all signed products are positive | Oddness, homogeneity, label $-s_0$ | Tie ambiguity eliminated | Finite conjunction, no iterative defect | Algebraic coupling | Primitive target and tie convention | Label choice supplies strict sign content | Same score on antipodes; residual $0$ | step-local | $Q_h$ defined before infeasibility | Dynamics N/A; tie boundary is error | Representative strictness iff pair exactness | Target, tie, cube | $Q_h$ | Both ties and $n=1$ pass | Arbitrary representatives would mishandle ties |
| Support-$\le n+1$ certificate | Structural support source | Conditional on infeasibility | Closest-point inequality then affine pruning | Finite Euclidean geometry | Large support, zero coefficients | Positive coefficients have unit budget; pruning has zero residual | Structural comparison and algebraic coupling | Direct derivation from B4 infeasibility | Infeasibility gives zero in exact signed hull; dimension gives scale | Exact target coordinates; no surrogate | step-local | Infeasibility produces certificate before use | Dynamics N/A; $p=0$ desired | $p\ne0$ would be forbidden separator | Finite $Z_h\subset\mathbb R^n$ | $p,\alpha_i,q_i,k$ | $k=n+1$, $n=1$ pass | Lower threshold unavailable without support control |
| Witness lower bound | Structural signed lower bound | Every $w$ on generated $D_h^\star$ | Zero weighted sum forces one nonpositive product | Positive certificate and labels $-s_0$ | Equality and uniform counting cost | Finite unit budget; one of $k$ atoms errs | Signed cancellation and structural comparison | B5 certificate and B4 tie convention | Nonpositive product is exactly an error | Same target, score, loss; residual $0$ | step-local | Certificate precedes distribution export | $w=0$ errs on every atom | $L\ge1/k\ge1/(n+1)$ | Tie rule, labels | Certificate, $D_h^\star$ | Negative/equality, $k\le n+1$ pass | Lower bound can fail without signs/tie count |
| Exactification | Quantitative theorem closure | One contradiction per target | $\inf L\le2\varepsilon<1/(n+1)\le\inf L$ | Strict gap plus B3/B5 | Factor $2$ and $n+1$ exposed | One-shot, no accumulation | Structural comparison | assump:high-accuracy; equality excluded | Gap exactly dominates obstruction | Same $h,D_h^\star,w$, score and loss | step-local | B3/B5 independently precede B6 | $\varepsilon=0$ active; $v=0$ cannot evade lower bound | Strict numerical domination | High-accuracy condition | Upper/lower interfaces | Equality excluded; smaller $k$ strengthens bound | Route does not exactify at equality |
| Common map and dimension chain | Final feature/probability closure | All targets/distributions | Target weights plus one identity map | B6, definitions, $m,T\ge1$ | Potential map dependence absent; empty class vacuous | Point-mass event already exact | Algebraic coupling | B6 and primitive parameter count | One fixed map matches both definitions | Produced/consumed map identical; residual $0$ | step-local | B6 precedes B7 | No update needed; empty class vacuous | Exactness gives probability $1$ and chain | Identity map, definitions | $w_h$ | Empty class, $m=T=n=1$ pass | Map conclusion need not hold without B6 |
| Exact/noiseless baseline | Baseline invariance | $\varepsilon=0$ and empty-class branch | Zero-error B3 plus same B6/B7 closure | Primitive specialization and exact interfaces | No remainder | Finite exact argument, no limit | Structural comparison | $\varepsilon=0$ or vacuity | Original exact conclusion remains | No surrogate or residual | step-local | Baseline precedes consumers | Zero specialization closes; empty branch needs no update | $0<1/(n+1)$ | Source protocol | B1-B7 | Same tie rule at zero | Remainder-only result would violate target |

## Exported Interface Feasibility

| Exported interface | Producer | Raw controls | Defects | Residual-to-target adequacy | Transfer relation | Margin/slack source | Consumers | Status |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $A_\omega=\langle v_\omega,\cdot\rangle$ | B1 / step_001 | Realized parameters, depth two, no bias | Residuals all zero | Exact pointwise equality | Sum exact identities | Exact algebra | B2, B3 | valid |
| $L_D(A)\le2L_{D^{\mathrm{sym}}}(G)$ | B2 / step_002 | B1, oddness, tie rule | Tie branches controlled; factor $2$ retained | Same target/loss and exact change of variables | Indicator bound then integrate | Strict sign under simultaneous correctness | B3 | valid |
| $\forall D,h\ \exists v:L_D(v)\le2\varepsilon$ | B3 / step_003 | Universal premise on $D^{\mathrm{sym}}$, B1-B2 | Randomness removed existentially; no union | Same identity coordinates on original $D$ | Mean upper bound gives one realization | Primitive $\varepsilon$ bound | B6 | valid |
| Strict system on $Q_h$ | B4 / step_004 | Oddness, homogeneity, tie label | Tie ambiguity controlled by label $-s_0$ | Same exact score on antipodes | Strict representative correctness iff full exactness | Representative label | B5, B6 | valid |
| Certificate and lower bound | B5 / step_005 | Conditional infeasibility, finite $Z_h\subset\mathbb R^n$ | Large support pruned; nonpositive scores counted | Exact signed target-score product | Closest point, pruning, one uniform error | Unit convex budget and dimension | B6 | valid |
| Exact $w_h$ | B6 / step_006 | B3 upper, B5 lower, strict gap | All factors exposed | Identical target/distribution/score/loss | Strict contradiction | assump:high-accuracy | B7 | valid |
| Identity law and dimension chain | B7 / step_007 | Separators, fixed map, definitions, integers | No map/probability residual | Identical produced/consumed map | Exactness gives probability one; integer chain | B6 and $m,T\ge1$ | Final theorem | valid |

## Generated Output Flow

| Generated output or control | Producer | Consumer | Dependency path | Provenance class | Flow status |
| --- | --- | --- | --- | --- | --- |
| Linearized trajectory score | B1 / step_001 | B2 and B3 | Architecture -> B1 -> B2/B3 | derived | valid |
| Tie-aware loss transfer | B2 / step_002 | B3 | Oddness + B1 -> B2 -> B3 | derived | valid |
| Distribution-wise approximate vector | B3 / step_003 | B6 | Universal premise + B1-B2 -> B3 -> B6 | derived | valid |
| $Q_h$ and strict equivalence | B4 / step_004 | B5 and B6 | Target/tie/oddness -> B4 -> B5/B6 | derived | valid |
| Certificate, $D_h^\star$, and lower bound | B5 / step_005 | B6 | B4 infeasibility -> B5 -> B6 | derived | valid |
| Exact separator $w_h$ | B6 / step_006 | B7 and theorem | B3 + B4-B5 + high accuracy -> B6 -> B7 | derived | valid |
| Identity map and point-mass law | B7 / step_007 | Final theorem | B6 -> B7 -> assembly | derived | valid |

## Gate Evidence Table

The Gate Evidence Row Contract formally targets review artifacts, but this diagnostic exposes equivalent evidence for the later reviewer.

| Obligation | Role | Mechanism source / provenance | Match and convention | Control relation | Raw interface / residual adequacy | Defect behavior | Noncircular path | Producer / consumers | Boundary stress | Locality | Retry |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| B1 equality | Structural linearization | Primitive architecture and direct ReLU identity | Exact network, indices, score; kink convention compatible | Per-iterate identity then sum | Exact consumed score; residual zero | Finite zero residuals | Architecture -> B1 before B2/B3 | B1 -> B2/B3 | Kinks, zero parameters, $T=1$ pass | step-local | None |
| B2 transfer | Signed loss bridge | Primitive oddness/tie and B1 | Four exact source cases | Indicator bound and factor $2$ | Same target/loss; exact distribution change | No omitted term | Oddness+B1 -> B2 before B3 | B2 -> B3 | Both ties and all zero cases pass | step-local | None |
| B3 vector | Mode conversion | Universal premise on legal symmetrization and B1-B2 | Same learner/law and identity loss | Expected loss $\le2\varepsilon$ gives a realization | Original $D$, same vector/coordinates | One-shot; no union | Premise+B1-B2 -> B3 before B6 | B3 -> B6 | $\varepsilon=0$, $v=0$, point mass pass | step-local | None |
| B4 system | Exact sign interface | Primitive oddness, homogeneity, label $-s_0$ | Same tie and identity score | Exactness iff strict signed system | Same target object; residual zero | Finite conjunction | Target/tie -> B4 before B5 | B4 -> B5/B6 | Either tie and score zero pass | step-local | None |
| B5 certificate | Support source | B4 infeasibility and direct convex derivation | Same signed vectors, inner product, dimension | Closest-point alternative and affine pruning | Exact zero certificate, $k\le n+1$ | Unit positive budget | B4 -> B5 before lower-bound use | B5 internal -> B6 | $p=0$, $k=n+1$, $n=1$ pass | step-local | None |
| B5 lower bound | Signed nondegeneracy | Positive certificate and labels $-s_0$ | Nonpositive product is exact error | Zero sum forces one error; $L\ge1/k$ | Same score, target, distribution, loss | Finite uniform counting | Certificate precedes export | B5 -> B6 | $w=0$, equality, negative values pass | step-local | None |
| B6 exactification | Quantitative closure | Primitive strict gap and B3/B5 | Identical objects and metric | $\inf L\le2\varepsilon<1/(n+1)\le\inf L$ | No residual; all scales exposed | One contradiction | B3/B5 precede B6 | B6 -> B7 | $\varepsilon=0$ passes; equality excluded | step-local | None |
| B7 closure/baseline | Feature/probability conclusion | B6, identity map, definitions, integers | Same map in both notions; baseline exact | Exactness -> probability one; $n\le S\le TS$ | Map/score residual zero | No accumulation | B6 -> B7 -> theorem | B7 -> final | Empty class, $m=T=n=1$, $\varepsilon=0$ pass | step-local | None |

## Early Obstruction And Repair Plausibility

- Contract contradiction: none. The attempted claim is the exact formalized material_partial target.
- Mechanism sources: every equality, signed claim, support claim, lower bound, mode conversion, threshold, and common-map conclusion has a primitive or earlier-derived source. No future proof step is treated as a first mechanism source.
- Residual/object check: all bridges use identical objects except the explicit factor $2$ in B2. No transformed, population, baseline, or trajectory feature object replaces the identity target.
- Accumulation check: no all-time recurrence exists. The trajectory sum accumulates zero residual, integration retains factor $2$, the convex certificate has unit positive budget, and the contradiction is one-shot.
- Boundary check: both tie labels, all score ties, $A(x)=0$, $w=0$, ReLU kinks, zero parameters, $T=1$, $n=1$, $k=n+1$, $\varepsilon=0$, and empty $\mathcal H$ are handled. Equality $2\varepsilon=1/(n+1)$ is genuinely insufficient and explicitly excluded.
- Quantifier check: the learner runs separately on each $(D^{\mathrm{sym}},h)$; B3 extracts a vector separately for each $(D,h)$; B6 yields $w_h$; B7 fixes one map before all later $D,h$. No simultaneous event is claimed.
- Repair plausibility: no repair is required. Removing depth two, bias-freeness, oddness, or the strict accuracy source would change the theorem contract; those regimes are outside this branch, not hidden defects.

## Global Gaps And Hard Steps

None.

Downstream proof workers must independently establish each accepted step. For diagnostic scheduling, step_005 is highest risk because it must include the closest-point alternative, coefficient-preserving support pruning, and tie-counted uniform lower bound. Natural local units are a closest-point alternative lemma, affine-support pruning lemma, witness lower-bound lemma, and target-step assembly proposition. These are implementation units under the unchanged interface, not unresolved global links.

## Diagnostic Boundary Note

This global_proof.md is diagnostic only. It cannot be consumed as proof evidence, a cited result, an assumption source, or authority to change accepted sketch-step claims, dependencies, assumptions, output targets, generated-output flows, theorem scope, mode, metric, quantitative dependence, success criterion, or conclusion. Every derivation must be independently proved and reviewed in downstream proof-step artifacts.

## Suggested Routing

None

Continue with all seven proof-step tasks under sketch attempt 1. For scheduling, prioritize step_005; steps 001 and 004 are independent roots and may proceed in parallel when capacity permits.
