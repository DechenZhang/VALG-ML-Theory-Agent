# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_014
- Unit attempt: 1

## Target Step Claim

- Intended claim: Verify one-bit precommitment/measurability and absorb all sample costs into \(C_kr_k\).
- Depends on: step_001, step_003, step_004, step_005, step_009, step_010, step_012, step_013.
- Assumptions used: all primitive assumptions and listed derived outputs.
- Technical challenge: \(\lambda=\sigma\), \(k=2\), \(\epsilon=c_k\sigma\), ceilings.
- Intended proof tool or cited result: Direct regime algebra and protocol audit.
- Output target: Final theorem-ready certificate.
- Rate objective: Exact public \(r_k\) bridge.
- Sketch-row review status: PENDING; the separate proof_sketch_review.md records ACCEPTED for sketch attempt 1.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:parameter-domain: \(k>1\) is fixed and known, \(\lambda\geq\sigma>0\), \(\delta\in(0,1/2)\), and \(0<\epsilon\leq c_k\sigma\). Accepted step_003 makes the explicit choice \(c_k=e^{-1}\).
  - assump:moment-class: \(D\) is arbitrary in the full unrestricted class \(\mathcal D(k,\lambda,\sigma)\). This step uses this condition only through accepted quantitative and PAC outputs and adds no support, symmetry, density, exact-moment, or subclass condition.
  - assump:iid-independent-randomness: all localization and refinement samples are independent with common law \(D\); the split, blocks, and every public seed are fixed before any response; and all public seeds are independent of the samples.
- Accepted dependency artifacts:

| Step | Proof SHA-256 | Accepted review SHA-256 | Accepted interface consumed here |
| --- | --- | --- | --- |
| step_001 | dc22a361441e6cdbc4c54537ca39e3cc38b3071069e3f089d9ad758bb17c379b | 67dada641fad3ab0cf52d7a5aed94d3f647fd2d014ab235fdcf06f03b2f305b7 | Borel precommitted localization queries, always-defined midpoint \(c\), \(\Pr(\mathcal E_{\rm loc})\geq1-\delta/4\), exact zero-query/nontrivial localization counts, and the explicit logarithmic count bound. |
| step_003 | 3004fae27e0cb92d391b296ae21afa8e38f50daaebda5c8b9988d59be1fa2ddf | b28d7b3b77efd48df96d29937b8b1029295c8f2accf2982898574ea4129690de | \(\gamma_k=1/8\), \(c_k=e^{-1}\), finite \(k\)-only \(b_k\), \(H_*\leq H<2H_*\), positive level law, theorem-regime \(m=2\), and empty-group-safe semantics. |
| step_004 | 5a3e58510ac0aae757c434ebc510adc63833b9e2f26fd8d1ad27f4bb23c81153 | e1cb7b1487f0fc30985da9c01fd7e6424a1805f54d210ba3bd400bf733093d25 | Unique Borel decoder selectors \(a_j(c)\), selected quantizers, exact cell margins, and all grid-boundary cases. |
| step_005 | a11175474544ac3d7c1045a381d9825baa441cdd6a7599bbc74d4659acba9239 | 11deb0dfc65ff1c5c6cc05af4dd9ad00cafbfd2e8db286b1938aa2c7b19cfeb6 | Borel precommitted refinement queries, joint seed/sample measurability, strict digit range, exact dither identities, and pathwise zero centered dither at \(x=c\). |
| step_009 | 50bda5320b626ee2c71b4c76c6c575947766acf46cad161b06b5b528ce7cf617 | e1d0ceeeebcb087820fbecc5421cf031228da4f346fc5e60f67d7030b9511fe7 | Fine raw-square contribution at most \(3072\sigma^2\), with exact zero for an absent fine group or zero activity. |
| step_010 | ee49814577413c1eeef0f3e2e8e6e04fa786f49673890edadb01bf3ece3fa84e | 48f794651dbcfea8be44ccc3841f94cc62316bd76700229e30e0306554717cf0 | Exact coarse raw-square contribution in all three regimes, exactly one \(\log(\sigma/\epsilon)\) at \(k=2\), and exact zero for an absent coarse group or zero activity. |
| step_012 | 708c2b8c20b8cd3dc61b27567e258cbd584fa94e790a31c88dbbcf6bb6e9249d | 08c5a86942807c2b00f08752e11a5016f2fb519d9ef7b9415666750487a62f76 | Deterministic \(V_k>0\), exact \(s,q,N_{\rm ref}\), fixed blocks, transcript-conditional refinement success, and exact zero-variance/zero-displacement reductions. |
| step_013, Unit attempt 2 | e1dca19c8cf7905483c6fda7dfa19460e76ca013b9a6e537100a9f2c6a2c4bf2 | 98e9c4a630e13d858ccc77ae29b094df546d8635f3ff9f2fc17435acdbebd4dc | Unchanged unconditional full-class PAC statement \(\sup_D\Pr\{|\widehat\mu-\mu(D)|>\epsilon\}\leq\delta/2\leq\delta\), in absolute value and over all samples and public randomness, plus the sharper \(\delta/4\) trivial-localization branch. |

- Derived invariants supplied by accepted dependencies:
  - The center, localization event, scale family, active groups, level probabilities, selected shifts, dither identities, variance certificates, block allocation, and unconditional PAC event in the preceding table are accepted derived outputs. None is promoted to a primitive condition.
  - Accepted step_003 proves that under theorem choices both sampled groups are nonempty and \(m=2\). Its auxiliary empty-group convention remains legal: an absent group contributes the empty sum zero and its normalizer is never used in a denominator.
  - Accepted step_012 defines
    \[
    V_k
    =3072\sigma^2\mathbf 1\{\mathcal J_{\rm f}\neq\varnothing\}
    +\mathbf 1\{\mathcal J_{\rm c}\neq\varnothing\}
    \begin{cases}
    C_{k,>}^{\rm c}\sigma^2,&k>2,\\
    C_2^{\rm c}\sigma^2\log(\sigma/\epsilon),&k=2,\\
    C_{k,<}^{\rm c}\sigma^kH^{2-k},&1<k<2,
    \end{cases}
    \tag{14.1}
    \]
    and the exact deterministic counts
    \[
    s=\left\lceil\frac{32V_k}{\epsilon^2}\right\rceil,
    \qquad
    q=2\left\lceil8\log\frac4\delta\right\rceil+1,
    \qquad
    N_{\rm ref}=qs.
    \tag{14.2}
    \]
- Local conditional hypotheses: None.

For rate calculations define the proof-local quantities

\[
t:=\frac{\sigma}{\epsilon},
\qquad
L:=\log\frac1\delta,
\qquad
a:=\log\frac{\lambda}{\sigma},
\tag{14.3}
\]

and the appendix-local regime multiplier

\[
g_k(t):=
\begin{cases}
t^2,&k>2,\\
t^2\log t,&k=2,\\
t^{k/(k-1)},&1<k<2.
\end{cases}
\tag{14.4}
\]

Then the setting-defined rate is exactly

\[
r_k(\lambda,\sigma,\epsilon,\delta)=a+g_k(t)L.
\tag{14.5}
\]

Using the accepted coarse constants and accepted \(b_k\), define

\[
B_k:=
\begin{cases}
3072+C_{k,>}^{\rm c},&k>2,\\
3072+C_2^{\rm c},&k=2,\\
3072+C_{k,<}^{\rm c}(2b_k)^{2-k},&1<k<2,
\end{cases}
\tag{14.6}
\]

\[
Q_0:=48+\frac3{\log2},
\qquad
S_k:=32B_k+1,
\qquad
R_k:=Q_0S_k,
\tag{14.7}
\]

\[
L_0:=30000+\frac1{\log2},
\qquad
C_k:=\max\{10000,L_0+R_k\}.
\tag{14.8}
\]

Every quantity in (14.6)--(14.8) is positive and finite and depends at most on fixed \(k\). The accepted open-regime denominators are positive in their respective regimes, \(b_k<\infty\), and \(Q_0,L_0\) are universal.

## Local Lemma Map

Atomic step = no. Query legality, communication accounting, regime specialization, ceiling absorption, public-rate/PAC composition, and baseline invariance are independent theorem-facing obligations.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| --- | --- | --- | --- |
| unit_001 | proposition | Under Assumptions~\(\ref{assump:parameter-domain}\) and \(\ref{assump:iid-independent-randomness}\), and accepted step_001, step_003, and step_005, every localization and refinement query is Borel, and the entire finite family is simultaneously fixed from known parameters and presampled public randomness before the first response bit. | Proves measurable full-protocol precommitment, including both localization branches and all refinement seeds. |
| unit_002 | proposition | Under all three primitive assumptions, Proposition~\(\ref{prop:step-014-simultaneous-precommitment}\), and accepted step_001, step_003, step_004, step_005, and step_012, the protocol uses exactly one transmitted bit from each of exactly \(n=N_{\rm loc}+N_{\rm ref}\) independent samples; \(c\), selectors, centered paths, the dither baseline, and reweighting are decoder-only; and the horizon is deterministic and non-stopping. | Proves exact communication, zero interaction, decoder-only center use, and fixed-horizon legality. |
| unit_003 | lemma | Under Assumption~\(\ref{assump:parameter-domain}\) and accepted step_003, step_009, step_010, and step_012, \(V_k/\epsilon^2\leq B_kg_k(t)\) in all three regimes, including empty/nonempty groups, \(k=2\), and \(\epsilon=c_k\sigma\). | Specializes every variance term to the public regime multiplier without a false logarithm. |
| unit_004 | lemma | Under Assumption~\(\ref{assump:parameter-domain}\), Lemma~\(\ref{lem:step-014-variance-specialization}\), and accepted step_012, every ceiling, every additive one, and \(\log(4/\delta)\) in (14.2) obey \(N_{\rm ref}\leq R_kg_k(t)L\), uniformly as \(\delta\uparrow1/2\). | Absorbs the exact refinement allocation into the confidence-bearing public term. |
| unit_005 | proposition | Under all three primitive assumptions, accepted step_001 and step_013, Proposition~\(\ref{prop:step-014-protocol-legality}\), and Lemma~\(\ref{lem:step-014-refinement-count}\), the exact total count satisfies \(n\leq C_kr_k\), while the accepted unconditional PAC statement, norm, fixed horizon, and full population scope remain unchanged. | Supplies the theorem-ready Rate Specialization Bridge and final public count. |
| unit_006 | proposition | Under all three primitive assumptions and accepted step_001, step_003, step_004, step_005, step_009, step_010, and step_012, the final certificate preserves exact zero-query localization, empty-group zeros, zero-displacement digit/telescope/residual/dither identities, and exact estimator behavior when \(D=\delta_\mu\) and the generated center equals \(\mu\). | Discharges every inherited baseline clause without an \(O(h_j)\) surrogate or fictitious message. |

## Cited Result Applications

No external paper result, unreviewed standard theorem, or global diagnostic is used in this step. The only nonlocal mathematical authorities are the eight current accepted dependency pairs listed above.

### Accepted localization and source-count interface (step_001)

- Restated conclusion: every nontrivial localization query is membership in a Borel finite union of clipped intervals fixed by a deterministic codebook before sampling; the trivial branch issues no query. The midpoint \(c\) is always defined and \(\Pr(\mathcal E_{\rm loc})\geq1-\delta/4\). The exact count is
  \[
  N_{\rm loc}=
  \begin{cases}
  0,&2\lambda\leq20\sigma,\\[0.3em]
  \left\lceil10000\left(
  \log\left\lceil\dfrac{2\lambda}{20\sigma}\right\rceil
  +\log\dfrac4\delta\right)\right\rceil,
  &2\lambda>20\sigma,
  \end{cases}
  \tag{14.9}
  \]
  and uniformly
  \[
  N_{\rm loc}
  \leq1+10000\log\frac\lambda\sigma
  +30000\log\frac1\delta.
  \tag{14.10}
  \]
- Object mapping: these are the exact \(I_{\rm loc},\mathcal B_i,Y_i,c,N_{\rm loc}\) objects in setting.md.
- Assumption discharge: the accepted proof/review pair discharges the cited source internally under the three primitive assumptions. This step consumes only its accepted Borel, count, event, and branch outputs.
- Used by: Propositions~\(\ref{prop:step-014-simultaneous-precommitment}\), \(\ref{prop:step-014-protocol-legality}\), \(\ref{prop:step-014-rate-bridge}\), and \(\ref{prop:step-014-baseline}\).

### Accepted scale and level-law interface (step_003)

- Restated conclusion: \(\gamma_k=1/8\), \(c_k=e^{-1}\), and \(b_k<\infty\) depend only on fixed \(k\); \(H_*\leq H<2H_*\); \(J\geq1\); every active \(p_j\) is positive; under theorem parameters both groups occur and \(m=2\); and an absent auxiliary group contributes no index, no probability mass, and no evaluated denominator.
- Assumption discharge: accepted step_003 derives this deterministic certificate from assump:parameter-domain and its then-current accepted input. This step does not consume an unlisted eventwise moment claim.
- Used by: all six local results for scale positivity, public-rate specialization, fixed allocation, and empty-group handling.

### Accepted Borel selector interface (step_004)

- Restated conclusion: for every real \(c\) and every scale, \(a_j(c)\) is the unique Borel selector into \(\mathcal S\); the finite selector vector is Borel; and selected-cell and grid-boundary conventions are unambiguous.
- Assumption discharge: scale positivity follows from assump:parameter-domain; all selector facts are accepted deterministic conclusions.
- Used by: Propositions~\(\ref{prop:step-014-protocol-legality}\) and \(\ref{prop:step-014-baseline}\), solely on the decoder/analysis side.

### Accepted refinement-query and dither interface (step_005)

- Restated conclusion: for every realized seed \((j,a,b,u)\),
  \[
  \left\{x:F_{j,a,b}(x)/h_j\geq u\right\}
  \]
  is Borel, its membership indicator is jointly Borel in sample and seed, and it contains no \(c\). The seed is presampled. For selected offsets, the centered dither difference is exact; at \(x=c\) it is zero for every \(u\), not merely almost surely.
- Assumption discharge: accepted step_005 uses assump:iid-independent-randomness for seed timing and accepted Borel selectors only for decoder-side selection.
- Used by: Propositions~\(\ref{prop:step-014-simultaneous-precommitment}\), \(\ref{prop:step-014-protocol-legality}\), and \(\ref{prop:step-014-baseline}\).

### Accepted fine and coarse variance interfaces (step_009 and step_010)

- Restated fine conclusion: the exact fine nonnegative raw-square summand is zero if its group is absent and otherwise at most \(3072\sigma^2\).
- Restated coarse conclusion: the exact coarse nonnegative raw-square summand is zero if its group is absent and otherwise at most
  \[
  C_{k,>}^{\rm c}\sigma^2,\qquad
  C_2^{\rm c}\sigma^2\log(\sigma/\epsilon),\qquad\text{or}\qquad
  C_{k,<}^{\rm c}\sigma^kH^{2-k}
  \]
  in the respective regimes. At \(k=2\), this contains exactly the one scale-count logarithm.
- Assumption discharge: both accepted pairs discharge their group, activity, conditioning, and actual-center requirements. This step uses only the displayed deterministic upper bounds in accepted \(V_k\).
- Used by: Lemma~\(\ref{lem:step-014-variance-specialization}\) and Proposition~\(\ref{prop:step-014-baseline}\).

### Accepted fixed refinement allocation (step_012)

- Restated conclusion: (14.1)--(14.2) hold with \(0<V_k<\infty\), \(s,q\in\mathbb N\), \(q\) odd, a fixed partition into \(q\) blocks of size \(s\), and no dependence of \(V_k,s,q,N_{\rm ref}\) on realized data, bits, the localization transcript, or \(c\). The estimator is \(c\) plus the median of those fixed block means.
- Assumption discharge: the accepted pair derives its transcript-conditional event from primitive independence and accepted inputs. This step consumes only the deterministic allocation, exact estimator, and baseline statements.
- Used by: Propositions~\(\ref{prop:step-014-protocol-legality}\), \(\ref{prop:step-014-rate-bridge}\), \(\ref{prop:step-014-baseline}\), and Lemmas~\(\ref{lem:step-014-variance-specialization}\), \(\ref{lem:step-014-refinement-count}\).

### Accepted unconditional PAC interface (step_013, Unit attempt 2)

- Restated conclusion: for the exact setting estimator and deterministic horizon from step_012,
  \[
  \sup_{D\in\mathcal D(k,\lambda,\sigma)}
  \Pr_{D,\,\mathrm{protocol}}
  \{|\widehat\mu-\mu(D)|>\epsilon\}
  \leq\frac\delta2\leq\delta.
  \tag{14.11}
  \]
  Probability is unconditional over all localization/refinement samples and public randomness, the norm is absolute value on \(\mathbb R\), and the population scope is the full unrestricted class. If \(2\lambda\leq20\sigma\), the accepted sharper bound is \(\delta/4\).
- Assumption discharge: the accepted pair uses the three primitive assumptions and accepted localization/refinement events. This step performs no new probability conversion and does not spend the unused \(\delta/2\) slack.
- Used by: Proposition~\(\ref{prop:step-014-rate-bridge}\).

### Direct arithmetic facts

The only additional tools are \(\lceil x\rceil\leq x+1\), monotonicity of positive powers, and the explicit logarithm and exponent calculations below. No cited theorem is required.

### Local-result application register

| Result | Exact conclusion used later | Discharge path |
| --- | --- | --- |
| Proposition~\(\ref{prop:step-014-simultaneous-precommitment}\) | All encoder query sets are Borel and simultaneously precommitted. | Primitive seed timing plus accepted localization/refinement Borel interfaces; unit_001. |
| Proposition~\(\ref{prop:step-014-protocol-legality}\) | Exactly one bit per sample, decoder-only \(c\), public dither baseline, deterministic horizon. | The preceding proposition and accepted count/selector/allocation outputs; unit_002. |
| Lemma~\(\ref{lem:step-014-variance-specialization}\) | \(V_k/\epsilon^2\leq B_kg_k(t)\) in all regimes. | Accepted variance/scale interfaces and direct exponent algebra; unit_003. |
| Lemma~\(\ref{lem:step-014-refinement-count}\) | \(N_{\rm ref}\leq R_kg_k(t)L\). | Exact accepted \(s,q\), the variance lemma, and explicit ceiling/log inequalities; unit_004. |
| Proposition~\(\ref{prop:step-014-rate-bridge}\) | \(n\leq C_kr_k\) together with unchanged (14.11). | Exact localization count, refinement-count lemma, protocol-legality proposition, and accepted unconditional PAC; unit_005. |
| Proposition~\(\ref{prop:step-014-baseline}\) | All exact zero-query, empty-group, and zero-displacement clauses. | Setting identities and accepted baseline interfaces; unit_006. |

## Local Derivation

### unit_001: proposition

**Proposition (Simultaneous Borel precommitment of the complete query bank).**
\(\label{prop:step-014-simultaneous-precommitment}\)

Under Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:iid-independent-randomness}\), and the accepted query and
scale interfaces from step_001, step_003, and step_005, every query used by
the exact two-block protocol is Borel. Moreover, the localization queries
and all refinement queries can be and are jointly fixed, as one finite
family, before the first response bit is observed.

**Proof / justification.** In the localization branch
\(2\lambda\leq20\sigma\), accepted step_001 sets
\(I_{\rm loc}=\varnothing\), so the localization Borel assertion is
vacuous. In the nontrivial branch, accepted step_001 constructs each
\(\mathcal B_r\) as a finite union of clipped half-open or closed intervals.
Thus every \(\mathcal B_r\) is Borel. The codebook, clipped cells,
enumeration, and least-index decoder convention depend only on known
\((\lambda,\sigma,\delta)\), not on a sample or response. The accepted
instantiation takes \(R_{\rm loc}\) degenerate, so the complete localization
query family is deterministic and precommitted.

For refinement index \(i\), condition only on its presampled seed
\((L_i,A_i,B_i,U_i)=(j,a,b,u)\). Accepted step_005 proves that

\[
\mathcal A_i
=\left\{x:\frac{F_{j,a,b}(x)}{h_j}\geq u\right\}
\tag{14.12}
\]

is Borel. More strongly, its membership indicator is jointly Borel in
\((x,j,a,b,u)\). The finite scale family and exact probabilities \(p_j\)
are deterministic functions of known \((k,\sigma,\epsilon)\) and accepted
\(k\)-only constants. Assumption~\(\ref{assump:iid-independent-randomness}\)
requires every tuple \((L_i,A_i,B_i,U_i)\), for every future refinement
index, to be drawn before any response. Hence every realized set (14.12) is
fixed at that same pre-message time.

There are exactly \(N_{\rm loc}+N_{\rm ref}<\infty\) indices. First fix the
deterministic localization bank and jointly draw the finite vector of all
refinement seeds, then reveal no response until this is complete. This fixes
the entire two-block query family simultaneously. No bank member contains
the eventual decoded \(c\), a previous bit, a block mean, or a stopping
event. Therefore the complete query bank is Borel and fully precommitted.
\(\square\)

### unit_002: proposition

**Proposition (Exact one-bit, decoder-only, fixed-horizon protocol legality).**
\(\label{prop:step-014-protocol-legality}\)

Under Assumptions~\(\ref{assump:parameter-domain}\),
\(\ref{assump:moment-class}\), and
\(\ref{assump:iid-independent-randomness}\),
Proposition~\(\ref{prop:step-014-simultaneous-precommitment}\), and accepted
step_001, step_003, step_004, step_005, and step_012, the exact setting
protocol has deterministic non-stopping horizon

\[
n=N_{\rm loc}+N_{\rm ref}=N_{\rm loc}+qs.
\tag{14.13}
\]

It consumes exactly \(n\) independent samples and transmits exactly one bit
from each sample. The localization output \(c\), every selected shift or
selected digit path, the centering threshold, and every importance weight are
decoder-only. The dither baseline is a locally computed public-randomness
quantity, not a second transmitted bit.

**Proof / justification.** The two index sets are disjoint and have the
deterministic sizes in (14.13). By
Assumption~\(\ref{assump:iid-independent-randomness}\), their samples are
independent and share the same fixed law \(D\).

For each \(r\in I_{\rm loc}\), the encoder observes only \(X_r\) and sends

\[
Y_r=\mathbf1\{X_r\in\mathcal B_r\}\in\{0,1\}.
\tag{14.14}
\]

There is one such message and no other message from \(X_r\). In the accepted
zero-query branch, \(I_{\rm loc}=\varnothing\), so no nonexistent sample or
bit is charged.

For each \(i\in I_{\rm ref}\), the encoder observes only \(X_i\) and the
already public seed for its precommitted set, and sends

\[
Y_i=\mathbf1\{X_i\in\mathcal A_i\}\in\{0,1\}.
\tag{14.15}
\]

Again there is exactly one response. The decoder later forms

\[
\beta_i(c):=
\mathbf1\left\{
\frac{F_{L_i,A_i,B_i}(c)}{h_{L_i}}\geq U_i
\right\}.
\tag{14.16}
\]

This is not another sample query. It is a deterministic Borel computation
from the decoded scalar \(c\), the known scales, and the same public seed
used to define \(\mathcal A_i\). Thus the exact pseudo-observation contains
\(Y_i-\beta_i(c)\), one transmitted bit minus one decoder-computed baseline.
Neither \(U_i\), the pair-match indicator, nor \(p_{L_i}^{-1}\) is a
response bit.

Accepted step_001 makes \(c\) a Borel function of the localization
transcript. Accepted step_004 makes every \(a_j(c)\) Borel. Consequently
the selected pair, \(Q_j^c,D_j^c,T_c,R_0^c,R_H^c\), pair-match test,
centering in (14.16), reweighting, block averages, and odd median are all
decoder or proof-analysis operations. The refinement query (14.12) uses
the presampled pair \((A_i,B_i)\), not the later selected pair
\((a_{L_i}(c),a_{L_i+1}(c))\). Changing \(c\) after the bits arrive can
change only which already observed bank entry is retained and how it is
centered; it cannot change an encoder query.

The branch in (14.9) is determined from known \((\lambda,\sigma)\).
Accepted step_003 determines \(J,H\), groups, and all \(p_j\) from known
parameters. Accepted step_012 determines \(V_k,s,q,N_{\rm ref}\) from known
parameters and fixed \(k\)-only constants; none depends on a realized
transcript or bit. The blocks are fixed before messages. The protocol
therefore always uses the predetermined number (14.13), does not stop on
localization success or a refinement event, and makes no fixed-to-random
horizon conversion. This proves exact one-bit-per-sample, decoder-only center
use, full nonadaptivity, and fixed-horizon legality. \(\square\)

### unit_003: lemma

**Lemma (Three-regime variance specialization).**
\(\label{lem:step-014-variance-specialization}\)

Under Assumption~\(\ref{assump:parameter-domain}\) and accepted step_003,
step_009, step_010, and step_012, the exact certificate \(V_k\) in (14.1)
satisfies

\[
\boxed{\frac{V_k}{\epsilon^2}\leq B_kg_k(t)}
\tag{14.17}
\]

in all three regimes. The inequality remains valid if either auxiliary group
is empty, while under theorem design both groups are nonempty. At \(k=2\),
(14.17) contains exactly one \(\log(\sigma/\epsilon)\). It remains valid at
\(\epsilon=c_k\sigma=e^{-1}\sigma\).

**Proof / justification.** Accepted step_003 gives

\[
t=\frac{\sigma}{\epsilon}\geq e,
\qquad
H<2H_*=2b_k\sigma t^{1/(k-1)}.
\tag{14.18}
\]

The group indicators in (14.1) are at most one. If a group is absent, its
term is exactly zero, so replacing its indicator by one can only enlarge the
upper bound. Under theorem parameters both indicators equal one, so no actual
theorem contribution is lost.

If \(k>2\), division of (14.1) by \(\epsilon^2\) gives

\[
\frac{V_k}{\epsilon^2}
\leq(3072+C_{k,>}^{\rm c})\frac{\sigma^2}{\epsilon^2}
=B_kt^2
=B_kg_k(t).
\tag{14.19}
\]

If \(k=2\), then \(\log t\geq1\). The logarithm-free fine term is therefore
absorbed by one, and only one, copy of the accepted critical logarithm:

\[
\begin{aligned}
\frac{V_2}{\epsilon^2}
&\leq3072t^2+C_2^{\rm c}t^2\log t\\
&\leq(3072+C_2^{\rm c})t^2\log t
=B_2g_2(t).
\end{aligned}
\tag{14.20}
\]

No other step in this calculation counts coarse levels. Accepted step_010
already proved that its coarse term has exactly one logarithm, and (14.20)
only dominates the fine term by that same factor.

Finally let \(1<k<2\). The top-scale inequality (14.18) gives

\[
\begin{aligned}
\frac{\sigma^kH^{2-k}}{\epsilon^2}
&<(2b_k)^{2-k}
\frac{\sigma^k\sigma^{2-k}}{\epsilon^2}
t^{(2-k)/(k-1)}\\
&=(2b_k)^{2-k}
t^{2+(2-k)/(k-1)}\\
&=(2b_k)^{2-k}t^{k/(k-1)},
\end{aligned}
\tag{14.21}
\]

where

\[
2+\frac{2-k}{k-1}=\frac{k}{k-1}.
\tag{14.22}
\]

Moreover

\[
\frac{k}{k-1}-2=\frac{2-k}{k-1}>0,
\]

and \(t>1\), so \(t^2\leq t^{k/(k-1)}\). Hence

\[
\frac{V_k}{\epsilon^2}
\leq\left(3072+C_{k,<}^{\rm c}(2b_k)^{2-k}\right)
\,t^{k/(k-1)}
=B_kg_k(t).
\tag{14.23}
\]

All coefficients are positive and finite for fixed \(k\). Since \(J\geq1\),
at least one group is nonempty; its coefficient and scale factor are
positive, so \(V_k>0\). At the largest allowed error \(t=e\), every power
remains positive and the critical logarithm equals one. This proves every
regime and boundary clause. \(\square\)

### unit_004: lemma

**Lemma (Exact refinement ceilings and confidence absorption).**
\(\label{lem:step-014-refinement-count}\)

Under Assumption~\(\ref{assump:parameter-domain}\),
Lemma~\(\ref{lem:step-014-variance-specialization}\), and the exact
allocation accepted in step_012,

\[
\boxed{N_{\rm ref}=qs\leq R_kg_k(t)L.}
\tag{14.24}
\]

This explicitly absorbs both ceilings, every additive one in the upper
bounds for \(q\) and \(s\), and the replacement of
\(\log(4/\delta)\) by \(\log(1/\delta)\). The bound remains nondegenerate
as \(\delta\uparrow1/2\).

**Proof / justification.** Because \(0<\delta<1/2\),

\[
L=\log\frac1\delta>\log2>0.
\tag{14.25}
\]

Also

\[
\log\frac4\delta
=L+\log4
\leq L+2L
=3L,
\tag{14.26}
\]

because \(\log4=2\log2\leq2L\). Applying
\(\lceil x\rceil\leq x+1\) to the exact odd block count gives

\[
\begin{aligned}
q
&=2\left\lceil8\log\frac4\delta\right\rceil+1\\
&\leq16\log\frac4\delta+3\\
&\leq48L+3\\
&\leq\left(48+\frac3{\log2}\right)L
=Q_0L.
\end{aligned}
\tag{14.27}
\]

The last line is valid throughout the allowed confidence domain because
\(L\geq\log2\). Thus the \(+3\), including the outer \(+1\) making \(q\)
odd and the doubled ceiling error, is charged explicitly to the positive
target confidence logarithm.

For the exact block size, Lemma~\(\ref{lem:step-014-variance-specialization}\)
and the same ceiling inequality give

\[
\begin{aligned}
s
&=\left\lceil\frac{32V_k}{\epsilon^2}\right\rceil\\
&\leq\frac{32V_k}{\epsilon^2}+1\\
&\leq32B_kg_k(t)+1.
\end{aligned}
\tag{14.28}
\]

In all regimes \(t\geq e\) implies \(g_k(t)\geq1\): this is immediate for
\(t^2\), for \(t^2\log t\) because \(\log t\geq1\), and for the positive
power \(t^{k/(k-1)}\). Therefore

\[
s\leq(32B_k+1)g_k(t)=S_kg_k(t).
\tag{14.29}
\]

Multiplying (14.27) and (14.29), both nonnegative, proves (14.24).
At \(k=2\), \(g_2(t)=t^2\log t\), so (14.24) has exactly one accuracy
logarithm and one confidence logarithm, as in the public rate. As
\(\delta\uparrow1/2\), \(L\downarrow\log2\), so the target factor remains
positive and every ceiling remains absorbed by the displayed constants.
\(\square\)

### unit_005: proposition

**Proposition (Rate Specialization Bridge for the fixed nonadaptive protocol).**
\(\label{prop:step-014-rate-bridge}\)

Under Assumptions~\(\ref{assump:parameter-domain}\),
\(\ref{assump:moment-class}\), and
\(\ref{assump:iid-independent-randomness}\), accepted step_001 and
step_013, Proposition~\(\ref{prop:step-014-protocol-legality}\), and
Lemma~\(\ref{lem:step-014-refinement-count}\), the exact deterministic
horizon satisfies

\[
\boxed{
n=N_{\rm loc}+N_{\rm ref}
\leq C_kr_k(\lambda,\sigma,\epsilon,\delta).
}
\tag{14.30}
\]

The same exact estimator, without a probability, norm, horizon, or population
scope change, satisfies

\[
\boxed{
\sup_{D\in\mathcal D(k,\lambda,\sigma)}
\Pr_{D,\,\mathrm{protocol}}
\{|\widehat\mu-\mu(D)|>\epsilon\}
\leq\frac\delta2\leq\delta.
}
\tag{14.31}
\]

All hidden constants in (14.30) depend only on fixed \(k\).

**Proof / justification.** The auxiliary choices are exactly the accepted
ones: \(c_k=e^{-1}\), accepted \(b_k,H,V_k\), and exact \(s,q\) in
(14.2). Lemma~\(\ref{lem:step-014-variance-specialization}\) verifies every
scale condition needed to turn \(V_k/\epsilon^2\) into the public
multiplier, and Lemma~\(\ref{lem:step-014-refinement-count}\) proves the
complete refinement simplification (14.24).

It remains to absorb the exact localization cost. Accepted step_001 gives
(14.9)--(14.10). Since \(a=\log(\lambda/\sigma)\geq0\),
\(g_k(t)\geq1\), and \(L\geq\log2\),

\[
1\leq\frac1{\log2}g_k(t)L,
\qquad
L\leq g_k(t)L.
\tag{14.32}
\]

Consequently every term, including the localization ceiling \(+1\), obeys

\[
\begin{aligned}
N_{\rm loc}
&\leq1+10000a+30000L\\
&\leq10000a+
\left(30000+\frac1{\log2}\right)g_k(t)L\\
&=10000a+L_0g_k(t)L.
\end{aligned}
\tag{14.33}
\]

Combining (14.24) and (14.33) gives

\[
\begin{aligned}
n
&\leq10000a+(L_0+R_k)g_k(t)L\\
&\leq\max\{10000,L_0+R_k\}
\bigl(a+g_k(t)L\bigr)\\
&=C_kr_k(\lambda,\sigma,\epsilon,\delta),
\end{aligned}
\tag{14.34}
\]

because both public-rate summands are nonnegative. This proves (14.30) with
the explicit \(k\)-only constant in (14.8).

At \(\lambda=\sigma\), \(a=0\) and, more strongly,
\(2\lambda\leq20\sigma\), so accepted step_001 gives
\(N_{\rm loc}=0\) exactly. Thus (14.34) does not rely on a positive
localization logarithm: all remaining ceiling and confidence costs are
charged to the positive refinement term \(g_k(t)L\). Throughout the larger
zero-query branch \(2\lambda\leq20\sigma\), the equality
\(N_{\rm loc}=0\) is preserved. At \(\epsilon=c_k\sigma\), \(t=e\), so
\(g_k(t)\geq1\), and at \(k=2\), \(\log t=1\). Equation (14.25) handles
\(\delta\) arbitrarily close to \(1/2\).

Accepted step_013 already proves (14.31) for the exact estimator under the
exact joint law. This bridge only attaches the deterministic count (14.30);
it does not rerun a union bound, enlarge \(\delta/2\), change the norm,
condition on localization, replace the full class by a subclass, or turn the
horizon into a stopping time. In the zero-query localization branch it also
retains the accepted sharper failure bound \(\delta/4\). Therefore the
probability conversion and rate statement are simultaneously valid in the
required modes. \(\square\)

### unit_006: proposition

**Proposition (Exact baseline invariance of the final certificate).**
\(\label{prop:step-014-baseline}\)

Under Assumptions~\(\ref{assump:parameter-domain}\),
\(\ref{assump:moment-class}\), and
\(\ref{assump:iid-independent-randomness}\), and accepted step_001,
step_003, step_004, step_005, step_009, step_010, and step_012, the final
rate/protocol certificate preserves all of the following exact baseline
clauses:

1. If \(2\lambda\leq20\sigma\), localization uses exactly zero samples,
   returns \(c=0\), and introduces no query, bit, ceiling charge, or stopping
   decision.
2. An absent fine or coarse group contributes exactly zero to every sum and
   variance certificate; no absent normalizer or inverse probability is
   evaluated. Under theorem parameters both groups are nonempty and receive
   their accepted mass \(1/2\).
3. For every real \(c\), at \(x=c\), every centered selected digit,
   \(T_c(c)\), \(R_0^c(c)\), \(R_H^c(c)\), and the centered dither bracket is
   exactly zero. Hence if a refinement sample equals \(c\), then
   \(Z_i(c)=0\) pathwise for every level, offset, and dither realization.
4. If \(D=\delta_\mu\) and the generated center equals \(\mu\), every block
   mean and the odd median are zero, and \(\widehat\mu=\mu\) exactly. No
   positive error remainder is inserted by the rate absorption.

**Proof / justification.** Clause 1 is the accepted exact source branch from
step_001; (14.33) is only an upper bound and does not replace that equality
by one fictitious localization sample.

For Clause 2, accepted step_003 defines weights and probabilities only on
nonempty groups. Its empty-sum extension is zero, and accepted step_009,
step_010, and step_012 preserve that zero with explicit group indicators.
The proof of (14.17) replaces indicators by one only to obtain an upper
bound; it does not modify the implemented law or exact absent-group value.
Under theorem design, accepted endpoint witnesses put one sampled level in
each group, so \(m=2\) and each group receives mass \(1/2\).

For Clause 3, the setting definitions give, without an inequality,

\[
D_j^c(c)-D_j^c(c)=0,
\qquad
T_c(c)=\sum_{j=0}^{J-1}0=0,
\tag{14.35}
\]

\[
R_0^c(c)
=(c-Q_0^c(c))-(c-Q_0^c(c))=0,
\qquad
R_H^c(c)=Q_J^c(c)-Q_J^c(c)=0.
\tag{14.36}
\]

Accepted step_005 gives the stronger pointwise dither identity: when
\(x=c\), the encoder threshold indicator and decoder baseline indicator
coincide for every \(U\). Directly in the actual pseudo-observation, if
\(X_i=c\), then (14.15) equals (14.16), so

\[
Y_i-\beta_i(c)=0
\quad\text{and hence}\quad
Z_i(c)=0
\tag{14.37}
\]

for every value of the match indicator and importance weight. This also
reconfirms that the baseline is a decoder computation rather than a second
message.

For Clause 4, fix the point-mass law \(D=\delta_\mu\) and suppose the
generated center equals \(\mu\). Then every refinement sample equals
\(c=\mu\), so (14.37) holds at every refinement index. Every fixed block
average and its odd median are zero, and the exact decoder returns
\(c+0=\mu\). Accepted step_012 preserves the same zero-variance conclusion.
None of (14.17), (14.24), or (14.34) changes the estimator, adds noise, or
substitutes an \(O(h_j)\) residual. Thus all four baseline clauses pass
unchanged through the final certificate. \(\square\)

## Target-Step Assembly

Proposition~\(\ref{prop:step-014-simultaneous-precommitment}\) combines the
accepted localization and refinement interfaces and proves that the entire
finite query bank is Borel and simultaneously fixed before any message.
Proposition~\(\ref{prop:step-014-protocol-legality}\) audits the communication
path: each independent sample produces exactly one membership bit; the
public dither baseline is locally computed rather than transmitted; \(c\),
every stable selector, centered digit path, reweighting, block average, and
median are decoder-only; and the exact horizon is deterministic and
non-stopping.

Lemma~\(\ref{lem:step-014-variance-specialization}\) uses the accepted fine
and coarse certificates and scale relation to prove
\(V_k/\epsilon^2\leq B_kg_k(t)\). It treats \(k=2\) directly and retains
exactly one \(\log(\sigma/\epsilon)\). Lemma~
\(\ref{lem:step-014-refinement-count}\) starts from the exact accepted
ceilings in \(s,q\) and proves \(N_{\rm ref}\leq R_kg_k(t)L\), including
every \(+1\), the odd-median outer \(+1\), the confidence substitution, and
the boundary \(\delta\uparrow1/2\).

Proposition~\(\ref{prop:step-014-rate-bridge}\), the named Rate
Specialization Bridge, adds the exact localization count. It charges the
localization ceiling and confidence term to the positive refinement budget
when \(\log(\lambda/\sigma)=0\), preserves the exact zero-query source
branch, and obtains

\[
n\leq C_k\left[
\log\frac\lambda\sigma+
\begin{cases}
\dfrac{\sigma^2}{\epsilon^2}\log\dfrac1\delta,&k>2,\\[0.5em]
\dfrac{\sigma^2}{\epsilon^2}
\log\dfrac\sigma\epsilon\log\dfrac1\delta,&k=2,\\[0.5em]
\left(\dfrac\sigma\epsilon\right)^{k/(k-1)}
\log\dfrac1\delta,&1<k<2
\end{cases}
\right]
=C_kr_k(\lambda,\sigma,\epsilon,\delta).
\tag{14.38}
\]

The same proposition consumes accepted step_013 without modification and
therefore carries the exact unconditional, absolute-value, fixed-horizon,
full-population statement (14.31). Proposition~
\(\ref{prop:step-014-baseline}\) confirms that the upper-bound algebra does
not weaken the exact zero-query, empty-group, zero-displacement, dither, or
fixed-point-mass-law specialization with generated center equal to its mean.

These six named results prove every component of the binding step_014 row:
Borel simultaneous precommitment, exactly one bit per independent sample,
decoder-only use of \(c\), deterministic fixed horizon, exact three-regime
sample complexity with only \(k\)-dependent constants, the unchanged
unconditional PAC event, and all inherited exact baselines. No new theorem-
facing assumption, encoder query, interaction, protocol mechanism, cited
result, probability conversion, or conclusion is introduced.

## Explicit Rate Audit

- Exposed variables: fixed \(k>1\); \(\lambda\geq\sigma>0\);
  \(0<\epsilon\leq e^{-1}\sigma\); \(\delta\in(0,1/2)\); the full law
  \(D\in\mathcal D(k,\lambda,\sigma)\); \(H,V_k,s,q,N_{\rm loc},
  N_{\rm ref},n\); and proof-local \(t,L,a\).
- Hidden constants may depend on: fixed \(k\) only. The final choice is the
  explicit \(C_k\) in (14.8). Its \(k\)-dependent inputs are only accepted
  \(b_k,C_{k,>}^{\rm c},C_2^{\rm c},C_{k,<}^{\rm c}\);
  \(3072,Q_0,L_0\) are universal.
- Hidden constants may not depend on:
  \(\lambda,\sigma,\epsilon,\delta,D,c\), a transcript, \(J,H,V_k,s,q\),
  either sample count, group cardinalities, or a sample/seed realization.
- Fixed quantities: \(k\) and accepted design constants are fixed before
  the known tuple \((\lambda,\sigma,\epsilon,\delta)\) is instantiated. The
  finite split, all seeds, and blocks are fixed before responses. No
  asymptotic limit is taken.
- Probability mode: accepted step_013 supplies unconditional high
  probability over all samples and public randomness, uniformly over the
  full class, with exact bound \(\delta/2\leq\delta\). This step changes no
  event, conditioning, or failure allocation.
- Horizon mode: deterministic fixed horizon \(n=N_{\rm loc}+qs\). The
  known-parameter zero-query branch is fixed before sampling. There is no
  stopping time, early success exit, horizon-uniform statement, or all-time
  upgrade.
- Norm mode: absolute value on \(\mathbb R\), unchanged from accepted
  step_013. Variance appears only in the accepted scalar block-size
  certificate.
- Admissibility conditions and auxiliary tolerances:
  \(t\geq e\), \(L\geq\log2\), \(a\geq0\), \(J\geq1\), active \(p_j>0\),
  \(0<V_k<\infty\), \(s,q\geq1\), \(q\) odd, and
  \(H<2b_k\sigma t^{1/(k-1)}\). All are primitive consequences or accepted
  derived outputs; there is no new tolerance or generated-event assumption.
- Term absorption or simplification inequalities:
  \[
  \frac{V_k}{\epsilon^2}\leq B_kg_k(t),
  \quad
  \log(4/\delta)\leq3L,
  \quad
  q\leq Q_0L,
  \quad
  s\leq S_kg_k(t),
  \]
  \[
  N_{\rm ref}\leq R_kg_k(t)L,
  \quad
  1\leq(\log2)^{-1}g_k(t)L,
  \quad
  N_{\rm loc}\leq10000a+L_0g_k(t)L,
  \]
  \[
  n\leq10000a+(L_0+R_k)g_k(t)L
  \leq C_k(a+g_k(t)L)=C_kr_k.
  \]
  Every ceiling and additive one appears in (14.27)--(14.33). For
  \(1<k<2\), the exponent identity is
  \(2+(2-k)/(k-1)=k/(k-1)\). For \(k=2\), the only accuracy logarithm is
  the single factor in \(g_2(t)=t^2\log t\).
- Probability conversion: none is newly performed. Accepted step_013's
  tower and two-event conversion is consumed exactly, retaining
  \(\delta/2\leq\delta\) and the sharper \(\delta/4\) zero-query branch.
- Contribution to any Rate Specialization Bridge: Proposition~
  \(\ref{prop:step-014-rate-bridge}\) is the theorem-ready bridge. It states
  auxiliary choices, checks positivity and scale conditions, specializes all
  variance regimes, absorbs exact counts and confidence terms, retains the
  accepted probability conversion, and states the final rate and hidden-
  constant dependence.
- Baseline-reduction check: at \(\lambda=\sigma\), the localization
  logarithm and exact localization count are zero, while \(g_k(t)L>0\)
  absorbs refinement ceilings. At \(\epsilon=e^{-1}\sigma\), \(t=e\) and
  the critical accuracy logarithm is one. As \(\delta\uparrow1/2\),
  \(L\downarrow\log2>0\). Empty groups contribute exact zero, and zero
  displacement gives exact centered objects and estimator behavior as
  stated in Proposition~\(\ref{prop:step-014-baseline}\).

## Blockers

None

## Notation And Assumption Notes

- Setting-defined public-facing objects:
  \(k,\lambda,\sigma,\epsilon,\delta,D,\mu,c,h_j,H,J,
  \mathcal J_{\rm f},\mathcal J_{\rm c},p_j,Z_i(c),s,q,N_{\rm loc},
  N_{\rm ref},n,\widehat\mu,r_k\) retain exactly their meanings from
  setting.md and accepted dependencies.
- Accepted dependency objects:
  \(b_k,C_{k,>}^{\rm c},C_2^{\rm c},C_{k,<}^{\rm c},V_k\) are inherited
  accepted objects with unchanged definitions. The localization event,
  selector geometry, group presence, raw-square bounds, conditional block
  event, and unconditional PAC event remain derived outputs rather than
  primitive assumptions.
- Public-facing new object: final \(C_k\) in (14.8) is the only new public
  constant. It is an explicit positive finite function of fixed \(k\) and
  may be used verbatim in the final theorem.
- Appendix-local objects: \(g_k(t),B_k,Q_0,S_k,R_k,L_0\) package repeated
  public-rate and ceiling calculations. Each is defined explicitly in
  (14.4) and (14.6)--(14.8); none changes the protocol or needs to appear in
  a reader-first main theorem.
- Proof-local objects: \(t=\sigma/\epsilon\),
  \(L=\log(1/\delta)\), \(a=\log(\lambda/\sigma)\), and decoder baseline
  \(\beta_i(c)\) are direct setting expressions used only to expose the
  derivation and one-bit audit.
- Constant provenance: \(10000,30000\) come from accepted step_001;
  \(3072\) comes from step_009; the coarse constants and \(b_k\) come from
  step_010 and step_003; \(32,8\) are exact step_012 block constants;
  \(Q_0=48+3/\log2\) is derived in (14.27);
  \(L_0=30000+1/\log2\) is derived in (14.33); and \(C_k\) is their
  explicit maximum. No free bounded quantity or unspecified finite constant
  is introduced.
- Assumption provenance: seed timing, sample independence, common law, fixed
  split, and fixed blocks are primitive under
  assump:iid-independent-randomness. The moment class and parameter domain
  are the other primitive conditions. Every localization, selector, group,
  variance, conditional-success, PAC, and baseline fact used is an accepted
  dependency output or is proved in one of the six local units. There is no
  local conditional hypothesis.
- Encoder/decoder boundary: encoder query sets are exactly
  \(\mathcal B_r\) and \(\mathcal A_i\). The objects
  \(c,a_j(c),Q_j^c,D_j^c,T_c,R_0^c,R_H^c,\beta_i(c)\), pair-match tests,
  inverse weights, block means, and median are decoder-side or proof-analysis
  objects. None feeds back into an encoder query.
- One-bit audit: the only transmitted random variable from a sample is its
  \(Y_i\in\{0,1\}\). Public seeds are generated locally, and (14.16) is
  recomputed locally. Hence there is exactly one transmitted bit, not one bit
  plus a dither bit, from each of the \(n\) independent samples.
- Group and positivity audit: under theorem parameters both groups are
  nonempty and every used \(p_j\) is positive. In an auxiliary empty-group
  case, the group is removed before any denominator. At least one group is
  present because \(J\geq1\), so \(V_k>0\); \(\epsilon>0\) makes \(s\)
  legal. The confidence domain gives \(L\geq\log2>0\) and \(q\) a positive
  odd integer.
- Boundary audit:
  \(\lambda=\sigma\) lies in the exact zero-query branch;
  \(\epsilon=c_k\sigma\) gives \(t=e\) and \(\log t=1\);
  \(k=2\) is treated directly with exactly one accuracy logarithm;
  \(\delta\uparrow1/2\) leaves \(L\downarrow\log2>0\);
  and empty/nonempty fine/coarse groups are handled before inverse
  probabilities. No inequality requires strict separation from these allowed
  endpoints.
- Baseline clauses carried through: exact source zero-query localization;
  exact zero contribution of an absent group; exact centered digit,
  telescope, bottom residual, top residual, and dither zeros at \(x=c\);
  exact pathwise \(Z_i(c)=0\) when \(X_i=c\); and exact estimator equality
  when \(D=\delta_\mu\) and the generated center equals \(\mu\). These are not
  replaced by rate-sized remainders.
- Probability and population audit: accepted step_013 is consumed with the
  same estimator, joint probability over all samples and seeds,
  absolute-value norm, deterministic horizon, and supremum over the complete
  \(\mathcal D(k,\lambda,\sigma)\). The bridge does not condition \(D\),
  alter the failure event, or spend accepted slack.
- Diagnostic boundary: global_proof.md and global_proof_review.md were not
  read or used. No diagnostic statement is evidence, a citation, an
  assumption source, or authority to alter the binding target.
