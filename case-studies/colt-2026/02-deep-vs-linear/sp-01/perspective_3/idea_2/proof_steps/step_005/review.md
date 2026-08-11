# Proof Step Review

## Step Review Identity

- Sketch attempt: 1
- Step ID: step_005
- Unit attempt: 1
- Reviewed proof artifact: perspective_3/idea_2/proof_steps/step_005/proof.md

## Step-Review Status

ACCEPTED

## Smallest Retry Target

None

## Blocking Issues

None

## Per-Lemma Audit

### unit_001: Finite closest-point certificate

- Statement fidelity: The proposition proves the exact first certificate interface in the sketch row. For fixed $h\in\mathcal H$, the accepted representative result makes $Q_h$, hence $Z_h$, finite and nonempty, and the declared local hypothesis is precisely that no $w\in\mathbb R^n$ has positive inner product with every signed vector. The conclusion is a nonnegative unit-sum representation of zero and introduces no extra margin, closure, or trajectory assumption.
- Proof validity: Minimization is performed on the nonempty compact simplex. For each vertex $z_j$, the segment $p_t=(1-t)p+t z_j$ remains in the convex hull. Expanding the squared norm, dividing by $t>0$, and taking $t\downarrow0$ correctly gives $\langle p,z_j\rangle\ge\|p\|_2^2$. If $p\ne0$, the admissible choice $w=p$ is strictly positive on every $z_j$, contradicting exactly the local infeasibility hypothesis. Thus $p=0$, and the minimizing simplex coefficients provide the claimed certificate.
- Cited-result and assumption audit: Lemma~\ref{lem:step-004-representatives} is available from the independently accepted step_004 proof/review and supplies the finite nonempty representative set. Assumption~\ref{assump:antipodal-oddness} and the fixed tie convention are not strengthened. The compact-simplex minimization fact is restated with its instantiated continuous map; no paper theorem or global diagnostic is used as authority.
- Rigor checklist: The argument preserves the order "fix $h$, assume infeasibility, construct one certificate." It does not choose $p$ or the coefficients as a function of a later test vector $w$. The $p=0$ and $p\ne0$ branches are exhaustive, all sums are finite, and the limit is applied to an explicit scalar inequality. Nonzeroness of the cube vectors and $n\ge1$ are established before use.
- Local adversarial test: If the closest point were nonzero, its squared norm supplies a genuinely strict positive lower bound on every inner product, so a weak-separation loophole is impossible. For $n=1$, the local infeasibility antecedent is inconsistent with the single nonzero signed representative; the conditional implication remains valid and the closest-point argument detects the contradiction. A closest point already equal to zero directly gives the required convex certificate.
- Contribution to target step: It derives, rather than assumes, the Gordan-type nonnegative zero certificate that is passed to support pruning.
- Verdict: PASS
- Repair direction: None.

### unit_002: Positive support pruning with an $n+1$ bound

- Statement fidelity: The lemma accepts exactly a finite nonnegative unit-sum zero representation and exports distinct retained support, strictly positive coefficients, preserved unit sum, preserved zero vector sum, and support size $1\le k\le n+1$. Its application clause keeps the retained vectors tied to actual representatives $q_i\in Q_h$, as required by the sketch row.
- Proof validity: Zero coefficients are deleted only after observing that at least one positive coefficient remains. Duplicate vector values are merged by summing their positive coefficients, which preserves both affine identities. When the support exceeds $n+1$, linear dependence of the augmented vectors $(u_i,1)\in\mathbb R^{n+1}$ yields a nonzero direction $\gamma$ with both signs and with zero vector and scalar sums. The choice $\tau=\min_{\gamma_i>0}\beta_i/\gamma_i$ keeps every updated coefficient nonnegative, makes at least one coefficient exactly zero, strictly increases coefficients on negative coordinates, and preserves both required sums. Repetition terminates because the finite support strictly decreases.
- Cited-result and assumption audit: The only standard fact is the explicitly restated dimension statement for more than $n+1$ augmented vectors in $\mathbb R^{n+1}$. It is applied in exactly that space and needs no unverified Caratheodory or Gordan citation. The input certificate comes from Proposition~\ref{prop:step-005-closest-point}; no later step is consumed.
- Rigor checklist: Positivity is recovered after each deletion of zeros, while unit sum and zero vector sum are displayed algebraically at every pruning iteration. Grouping duplicates does not alter the represented vector, and retaining one original $q_j$ for each distinct signed vector introduces no new support point. Distinct retained vectors correspond to distinct retained representatives. The construction gives $k\ge1$ because coefficient mass remains one.
- Local adversarial test: A zero starting coefficient is removed without division; multiple identical entries are combined before affine pruning; zero coordinates of $\gamma$ leave their coefficients positive; and multiple coefficients attaining the minimum ratio may be removed simultaneously without affecting validity. The $k=n+1$ boundary stops without an unnecessary further reduction. The formal $k=1$ branch is algebraically covered; in the actual cube application it would force a signed vector to be zero, contradicting norm $\sqrt n$, so no hidden singleton exception exists.
- Contribution to target step: It supplies the positive support-$(n+1)$ certificate and all coefficient bookkeeping needed for the uniform witness distribution.
- Verdict: PASS
- Repair direction: None.

### unit_003: Signed cancellation forces a nonpositive witness

- Statement fidelity: Given the exact positive certificate from the preceding lemma, the lemma proves precisely that every $w\in\mathbb R^n$ has at least one support vector with nonpositive inner product. It does not strengthen nonpositivity to negativity or add a nonzero-$w$ condition.
- Proof validity: Taking the inner product with $w$ gives the exact finite weighted sum zero. If all inner products were strictly positive, positivity of every $\alpha_i$ would make every summand positive and hence the finite sum positive, a contradiction. Therefore at least one inner product is at most zero.
- Cited-result and assumption audit: The statement restates all needed local conditions. It uses only finite linearity and the certificate supplied by Lemma~\ref{lem:step-005-support-pruning}; no primitive assumption, cited theorem, or generated invariant is hidden.
- Rigor checklist: The quantifier is universal in $w$, after the certificate has been fixed. Equality is retained in the conclusion. Coefficient positivity, not merely nonnegativity, is explicitly available. No division by an inner product or coefficient occurs.
- Local adversarial test: At $w=0$, all inner products equal zero, so the conclusion holds. The same argument covers a mixture of positive, negative, and zero inner products and the formal $k=1$ case. It cannot be defeated by arbitrarily small positive coefficients because only their signs matter.
- Contribution to target step: It converts convex cancellation into the exact nonpositive signed-score event used for tie-aware error counting.
- Verdict: PASS
- Repair direction: None.

### unit_004: Uniform tie-aware obstruction

- Statement fidelity: Under the accepted representative convention and the positive support-$(n+1)$ certificate, the proposition defines one deterministic uniform law on the distinct $q_i$ and proves, for every $w\in\mathbb R^n$, the exact lower bound $1/k\ge1/(n+1)$ in the setting's tie-resolved zero-one loss. The distribution and certificate are selected before the universal $w$ quantifier.
- Proof validity: Lemma~\ref{lem:step-005-signed-cancellation} gives an index with $h(q_i)\langle w,q_i\rangle\le0$. If the product is negative, the nonzero score has the wrong ordinary sign. If it is zero, then the prediction is $s_0$, while membership in $Q_h$ gives $h(q_i)=-s_0$, so the tie is also an error. At least one of the $k$ distinct uniform atoms is therefore misclassified, yielding risk at least $1/k$; $k\le n+1$ gives the comparison in the correct direction.
- Cited-result and assumption audit: Lemma~\ref{lem:step-004-representatives} supplies the representative convention, and the definition of $Q_h$ supplies the label $-s_0$. The only local input is the certificate produced by the two preceding named results. No approximate-separation result, high-accuracy premise, SGD fact, or global-proof diagnostic is used.
- Rigor checklist: Distinctness makes the displayed mass function a probability distribution. The argument checks strict negative and equality branches separately, preserves the source's strict error event, and works for both $s_0=+1$ and $s_0=-1$. The error index may depend on $w$, while the uniform distribution does not, which is exactly the required universal lower-bound quantifier order.
- Local adversarial test: For $w=0$, every support atom is a tie and the actual risk is one. For $k=1$, the displayed lower bound is one; for $k=n+1$, it is exactly $1/(n+1)$. When $n=1$, the certificate antecedent is impossible in the actual branch, but the stated implication and $k\le2$ counting argument remain sound. Both possible tie labels turn a zero score into the opposite of the selected representative label.
- Contribution to target step: It exports the fixed finite witness distribution and universal homogeneous-halfspace lower bound consumed by step_006.
- Verdict: PASS
- Repair direction: None.

## Hidden Subclaim Scan

No hidden independent subclaim remains outside the four-unit map. Finiteness and nonemptiness of $Q_h$, nonzeroness of its signed cube vectors, compact attainment, the closest-point inequality, zero-coefficient deletion, duplicate merging, affine-dependence pruning, coefficient-sign preservation, pruning termination, cancellation, distribution validity, tie conversion, and reciprocal monotonicity are each either proved in a named unit or explicitly restated and discharged as an elementary fact. The local infeasibility condition is visibly conditional and is not promoted to a primitive theorem assumption. All four local labels are unique, every internal reference resolves, and the accepted dependency labels from step_004 resolve to the current accepted proof. Bare step identifiers occur only as workflow or provenance descriptions; the mathematical assembly relies on the named propositions and lemmas. The references to global_proof.md and global_proof_review.md are an explicit non-use note: no claim, assumption, or derivation is imported from either diagnostic. A byte-level control-character and malformed-escape scan found no defect.

## Target Claim Audit

For every fixed $h\in\mathcal H$, conditional on infeasibility of the exact strict system exported by step_004, the proof constructs existentially quantified distinct $q_1,\ldots,q_k\in Q_h$ and positive coefficients with

$$
1\le k\le n+1,
\qquad
\sum_{i=1}^k\alpha_i=1,
\qquad
\sum_{i=1}^k\alpha_i h(q_i)q_i=0.
$$

It then fixes the resulting uniform distribution before proving the lower bound for every $w\in\mathbb R^n$. Thus the exact claim, conditional scope, object identities, quantifier order, constants, and tie-resolved metric match the accepted sketch row. No stronger margin claim or weaker approximate obstruction is substituted.

## Explicit Rate Audit

The rate-bearing output is exact and deterministic: $1\le k\le n+1$ and risk at least $1/k\ge1/(n+1)$. There are no hidden constants, auxiliary tolerances, asymptotics, trajectory horizons, or probability conversions. Fixed quantities are $h,n,s_0,Q_h$ under the local infeasibility hypothesis; the closest-point norm is Euclidean and the exported metric is the setting's tie-resolved zero-one risk. The sole simplification is the displayed implication $k\le n+1\Rightarrow1/k\ge1/(n+1)$. The certificate does not depend on $\varepsilon$, so the exact/noiseless specialization $\varepsilon=0$ preserves this obstruction unchanged and supplies the intended threshold input to step_006.

## Notation Surface Audit

$Q_h$, $Z_h$, the pruned $q_i,\alpha_i,k$, and $\mathcal D_h^\star$ are correctly classified as public-facing outputs or interfaces used by step_006. The initial enumeration, simplex, convex hull, closest point, augmented vectors, affine direction, and update size are proof-local and defined before use. No one-off alias hides a finiteness, positivity, boundedness, or quantifier obligation. The output surface contains only the certificate and witness law needed downstream; it exports no trajectory notation, helper dictionary, unproved event, or derived invariant.

## Target-Step Assembly Audit

Proposition~\ref{prop:step-005-closest-point} produces a nonnegative unit-sum zero representation under the declared infeasibility hypothesis. Lemma~\ref{lem:step-005-support-pruning} turns it into distinct representative support with positive coefficients, preserved unit sum, and $k\le n+1$. Lemma~\ref{lem:step-005-signed-cancellation} gives a nonpositive signed score for each $w$, and Proposition~\ref{prop:step-005-uniform-obstruction} converts that score into at least one error atom under the same target, coordinates, distribution, and tie convention. These named results jointly imply the exact conditional target and create the legal derived output path step_004 -> step_005 -> step_006 without circularly assuming exact representation or the later contradiction.

## Review Rationale

The closest-point argument supplies a source-adequate strict-system alternative in the exact branch coordinates, and the affine pruning derivation preserves every coefficient property needed for the $n+1$ support bound. Convex cancellation then yields the correct nonpositive, rather than merely negative, witness, and the representative label $-s_0$ makes equality an error for either tie label. All requested degeneracies, quantifiers, labels, dependency interfaces, and conditional-assumption provenance pass, with no malformed artifact text or global-proof evidence. The exact step claim is therefore proved under the unchanged sketch interface, so ACCEPTED and Smallest Retry Target = None are the smallest correct disposition.
