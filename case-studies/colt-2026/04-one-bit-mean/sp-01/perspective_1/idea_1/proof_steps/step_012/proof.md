# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_012
- Unit attempt: 1

## Target Step Claim

- Intended claim: Choose \(s,q\); prove conditional median deviation
  \(\leq\epsilon/2\) with failure \(\leq\delta/4\), then combine bias.
- Depends on: step_008, step_009, step_010, step_011.
- Assumptions used: assump:iid-independent-randomness; derived variance/bias.
- Technical challenge: Uniformity over the random localized center.
- Intended proof tool or cited result: Chebyshev plus Hoeffding
  median-of-means.
- Output target: Conditional refinement PAC and \(N_{\rm ref}\).
- Rate objective: Confidence-explicit fixed horizon.
- Sketch-row review status: PENDING; the separate accepted
  proof_sketch_review.md is the acceptance gate for sketch attempt 1.

The controller-binding instantiation is exact. This proof defines the full
deterministic variance certificate \(V_k\) from the accepted fine and coarse
raw-square bounds and chooses

\[
s=\left\lceil\frac{32V_k}{\epsilon^2}\right\rceil,
\qquad
q=2\left\lceil8\log\frac4\delta\right\rceil+1.
\]

Conditional on the complete localization transcript, uniformly on the
accepted localization event, it proves a one-block failure probability at
most \(1/8\), a fixed odd-median failure probability at most \(\delta/4\),
and then uses the accepted step_011 bias certificate exactly once to obtain
conditional total error at most \(3\epsilon/4<\epsilon\). The output remains
conditional and indicator-valued; no unconditional localization/refinement
conversion or public sample-rate absorption is performed here.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - Assumption~\(\ref{assump:parameter-domain}\): only
    \(\epsilon>0\), \(\delta\in(0,1/2)\), fixed \(k>1\), and the
    accepted deterministic design domains are used to make the displayed
    block sizes positive and finite. This adds no restriction to the
    accepted sketch row.
  - Assumption~\(\ref{assump:iid-independent-randomness}\): the localization
    block is independent of every refinement sample and seed; all refinement
    tuples are mutually independent and identically distributed; the
    refinement blocks are fixed and disjoint; and all seeds, the sample
    split, and the blocks are selected before any response is observed.
- Accepted dependency artifacts:
  - step_008 proof, SHA-256
    13363eff6ae9349ab6ce6e8d8ad4a7ff0b7e380671405b20f1944f45214a66d5,
    and its ACCEPTED review, SHA-256
    7a52062f02688f0eb30319a5fd1c944642705d58df96914c99f94b727c28a8c1.
  - step_009 proof, SHA-256
    50bda5320b626ee2c71b4c76c6c575947766acf46cad161b06b5b528ce7cf617,
    and its ACCEPTED review, SHA-256
    e1d0ceeeebcb087820fbecc5421cf031228da4f346fc5e60f67d7030b9511fe7.
  - step_010 proof, SHA-256
    ee49814577413c1eeef0f3e2e8e6e04fa786f49673890edadb01bf3ece3fa84e,
    and its ACCEPTED review, SHA-256
    48f794651dbcfea8be44ccc3841f94cc62316bd76700229e30e0306554717cf0.
  - step_011 proof, SHA-256
    77fac490aa0b200fd40fde9473cbf53f6d0cf244a8fa28ac940b80b3d0e45096,
    and its ACCEPTED review, SHA-256
    b57a12b63b69c642288bb23dfb682212378f9b8344fc0f421147e62dd54ca57c.
- Derived invariants supplied by accepted dependencies:
  - Accepted Lemma~\(\ref{lem:step-008-refinement-kernel}\) and
    Proposition~\(\ref{prop:step-008-conditional-mean}\) give the independent
    refinement product kernel and
    \[
    \mathbb E[Z_i(c)\mid c]
    =\theta(c)
    =\mathbb E_D T_c(X).
    \]
    Their stronger localization-sigma-field formulation permits conditioning
    on the complete localization realization before passing to the observable
    transcript.
  - Accepted Proposition~\(\ref{prop:step-009-variance-interface}\) gives
    the universal fine raw-square certificate \(3072\sigma^2\), with exact
    zero when the fine group is empty, and leaves the exact coarse nonnegative
    summand untouched.
  - Accepted Proposition~\(\ref{prop:step-010-three-regime}\) bounds that
    exact coarse raw-square summand, uniformly for every localization
    transcript in
    \(\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}\), by the applicable one
    of
    \[
    C_{k,>}^{\rm c}\sigma^2,\qquad
    C_2^{\rm c}\sigma^2\log\frac{\sigma}{\epsilon},\qquad
    C_{k,<}^{\rm c}\sigma^kH^{2-k},
    \]
    and gives exact zero when the coarse group is empty.
  - Accepted Proposition~\(\ref{prop:step-011-bias-certificate}\) gives,
    uniformly for every localization transcript in
    \(\mathcal E_{\rm loc}\),
    \[
    |(\mu-c)-\theta(c)|\leq\frac{\epsilon}{4}.
    \]
- Local conditional hypotheses: None. Fixing a localization transcript in
  \(\mathcal E_{\rm loc}\) is a pointwise evaluation of an accepted generated
  event, not a theorem-facing assumption.

The accepted coarse constants are

\[
C_k^{\rm rec}=2^{k-1}(1+50^k),\qquad
C_k^{\rm act}=\frac{3(8/3)^k}{1-2^{-k}},\qquad
A_k=96C_k^{\rm rec}C_k^{\rm act},
\]

\[
C_{k,>}^{\rm c}=\frac{A_k}{1-2^{2-k}}\quad(k>2),
\]

\[
C_2^{\rm c}
=A_2\left(\log_2(2b_2)+\frac1{\log2}\right)\quad(k=2),
\]

\[
C_{k,<}^{\rm c}
=\frac{A_k}{2^{2-k}(1-2^{-(2-k)})}\quad(1<k<2).
\]

Define the public-facing full conditional variance certificate

\[
\boxed{
V_k
:=
3072\sigma^2\mathbf 1\{\mathcal J_{\rm f}\neq\varnothing\}
+
\mathbf 1\{\mathcal J_{\rm c}\neq\varnothing\}
\begin{cases}
C_{k,>}^{\rm c}\sigma^2, & k>2,\\[0.3em]
C_2^{\rm c}\sigma^2\log(\sigma/\epsilon), & k=2,\\[0.3em]
C_{k,<}^{\rm c}\sigma^kH^{2-k}, & 1<k<2.
\end{cases}
}
\tag{12.1}
\]

At least one of the two groups is nonempty because \(J\geq1\), and every
applicable coefficient is positive and finite. Thus \(0<V_k<\infty\), so
the exact displayed choice of \(s\) is a legal integer with \(s\geq1\).
The indicators ensure that an absent group contributes zero and never causes
an undefined normalizer to be evaluated.

## Local Lemma Map

Atomic step = no. Conditional iid preservation, the full variance
certificate, one-block concentration, odd-median amplification, and
same-target bias transfer are independently auditable.

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumptions~\(\ref{assump:parameter-domain}\), \(\ref{assump:iid-independent-randomness}\), and the accepted step_008--step_010 interfaces, conditional on the complete localization transcript the variables \(Z_i(c)\) are iid over all refinement samples and seeds, have mean \(\theta(c)\), and, on \(\mathcal E_{\rm loc}\), have conditional variance at most the exact certificate \(V_k\) in (12.1), uniformly over the transcript; empty groups and zero actual variance are retained. | Supplies the legal conditional iid and full three-regime variance interface used by all fixed blocks. |
| unit_002 | proposition | Under Lemma~\(\ref{lem:step-012-transcript-kernel}\), with exactly \(s=\lceil32V_k/\epsilon^2\rceil\), every fixed block mean has conditional bad probability at most \(1/8\) on \(\mathcal E_{\rm loc}\); if its conditional variance is zero, the bad probability is exactly zero. | Proves the binding one-block Chebyshev bound with the exact ceiling. |
| unit_003 | proposition | Under Lemma~\(\ref{lem:step-012-transcript-kernel}\) and Proposition~\(\ref{prop:step-012-one-block}\), with exactly \(q=2\lceil8\log(4/\delta)\rceil+1\) and median defined as the \((q+1)/2\)-th order statistic, the conditional probability that the median differs from \(\theta(c)\) by more than \(\epsilon/2\) is at most \(\delta/4\) on \(\mathcal E_{\rm loc}\). | Amplifies fixed-block confidence, preserves conditional independence, and resolves the median-tie convention. |
| unit_004 | proposition | Under Proposition~\(\ref{prop:step-012-odd-median}\) and accepted Proposition~\(\ref{prop:step-011-bias-certificate}\), on \(\mathcal E_{\rm loc}\) the final estimator has error at most \(3\epsilon/4<\epsilon\) except with conditional probability at most \(\delta/4\), expressed as an indicator-valued transcript-conditional inequality. | Uses the accepted bias exactly once and exports the conditional interface consumed by step_013. |

## Cited Result Applications

No external paper result is invoked. The accepted dependency results and the
two elementary probability inequalities used below are restated in current
notation.

1. **Accepted conditional mean and refinement kernel (step_008).**
   Accepted Lemma~\(\ref{lem:step-008-refinement-kernel}\) states that,
   conditional on
   \[
   \mathscr F_{\rm loc}
   :=\sigma\!\left(R_{\rm loc},(X_r)_{r\in I_{\rm loc}}\right),
   \]
   the tuples
   \[
   (X_i,L_i,A_i,B_i,U_i),\qquad i\in I_{\rm ref},
   \]
   retain their original one-index product law, and \(c\) is
   \(\mathscr F_{\rm loc}\)-measurable. Combined with the primitive mutual
   independence across refinement indices and their independence from
   \(\mathscr F_{\rm loc}\), this gives the required joint conditional
   product law. Accepted
   Proposition~\(\ref{prop:step-008-conditional-mean}\) gives, for the
   resulting pointwise kernel,
   \[
   \mathbb E[Z_i(c)\mid\mathscr F_{\rm loc}]
   =\theta(c)=\mathbb E_DT_c(X).
   \]
   These conclusions are used to derive iid block means after conditioning
   on the observable full localization transcript.
2. **Accepted fine raw-square certificate (step_009).** The exact fine
   nonnegative summand in the conditional raw second moment is zero for an
   empty fine group and otherwise is at most
   \[
   3072\sigma^2.
   \]
   Accepted Proposition~\(\ref{prop:step-009-variance-interface}\) combines
   this with the untouched exact coarse summand to give a valid upper bound
   on the full conditional variance. It does not assert an additive
   decomposition of variances, and neither does this proof.
3. **Accepted coarse raw-square certificate (step_010).** On every
   localization transcript in \(\mathcal E_{\rm loc}\), the exact
   nonnegative coarse raw-square summand is zero if
   \(\mathcal J_{\rm c}\) is empty and otherwise is bounded by
   \[
   \begin{cases}
   C_{k,>}^{\rm c}\sigma^2, & k>2,\\
   C_2^{\rm c}\sigma^2\log(\sigma/\epsilon), & k=2,\\
   C_{k,<}^{\rm c}\sigma^kH^{2-k}, & 1<k<2.
   \end{cases}
   \]
   Its assumptions are already discharged by the accepted dependency pair.
   This is the exact coarse summand left by step_009, so the fine and coarse
   bounds compose directly at the raw-second-moment level.
4. **Accepted bias certificate (step_011).** Accepted
   Proposition~\(\ref{prop:step-011-bias-certificate}\) states, for every
   localization transcript in \(\mathcal E_{\rm loc}\),
   \[
   |(\mu-c)-\theta(c)|\leq\epsilon/4.
   \]
   It already retains and bounds both telescope residuals. This proof invokes
   only this final accepted inequality and invokes it once.
5. **Chebyshev inequality in the needed conditional form.** For a
   square-integrable real \(W\), a sigma-field \(\mathscr G\), and \(a>0\),
   \[
   \Pr\{|W-\mathbb E[W\mid\mathscr G]|>a\mid\mathscr G\}
   \leq\frac{\operatorname{Var}(W\mid\mathscr G)}{a^2}
   \quad\text{almost surely}.
   \]
   For each fixed conditional kernel this follows directly from
   \(\mathbf1\{|u|>a\}\leq u^2/a^2\). Square integrability is supplied by
   accepted step_008, and the variance bound is supplied by
   Lemma~\(\ref{lem:step-012-transcript-kernel}\).
6. **Hoeffding inequality in the needed Bernoulli form.** If
   \(B_1,\ldots,B_q\) are iid Bernoulli with mean \(p\), then for \(a>0\),
   \[
   \Pr\left\{\frac1q\sum_{g=1}^qB_g-p\geq a\right\}
   \leq e^{-2qa^2}.
   \tag{12.2}
   \]
   This version is proved inside
   Proposition~\(\ref{prop:step-012-odd-median}\): for
   \(\psi_p(t)=\log(1-p+pe^t)-pt\), one has
   \(\psi_p(0)=\psi_p'(0)=0\) and
   \(\psi_p''(t)\leq1/4\), hence
   \(\psi_p(t)\leq t^2/8\); exponential Markov with \(t=4a\) gives
   (12.2). Conditional independence and the bound \(p\leq1/8\) are
   supplied by the first two local results.
7. **Local-result application register.**
   Lemma~\(\ref{lem:step-012-transcript-kernel}\) is used by
   Propositions~\(\ref{prop:step-012-one-block}\) and
   \(\ref{prop:step-012-odd-median}\).
   Proposition~\(\ref{prop:step-012-one-block}\) is used by
   Proposition~\(\ref{prop:step-012-odd-median}\).
   Proposition~\(\ref{prop:step-012-odd-median}\) and the accepted bias
   certificate are used by
   Proposition~\(\ref{prop:step-012-conditional-target}\).

## Local Derivation

### unit_001: lemma

**Lemma (Transcript-conditional iid full variance certificate).**
\(\label{lem:step-012-transcript-kernel}\)

Under Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:iid-independent-randomness}\), the accepted conditional
kernel and mean from step_008, the accepted fine certificate from step_009,
and the accepted coarse certificate from step_010, let

\[
\mathscr T_{\rm loc}
:=\sigma\!\left(R_{\rm loc},(Y_r)_{r\in I_{\rm loc}}\right)
\]

be the complete observable localization transcript. Then \(c\) and
\(\mathcal E_{\rm loc}=\{|c-\mu|\leq50\sigma\}\) are
\(\mathscr T_{\rm loc}\)-measurable. Conditional on
\(\mathscr T_{\rm loc}\), the family
\((Z_i(c))_{i\in I_{\rm ref}}\) is iid over all refinement samples, levels,
offsets, and dithers, and

\[
\mathbb E[Z_i(c)\mid\mathscr T_{\rm loc}]=\theta(c).
\tag{12.3}
\]

Uniformly for every transcript in \(\mathcal E_{\rm loc}\),

\[
\boxed{
\operatorname{Var}(Z_i(c)\mid\mathscr T_{\rm loc})\leq V_k
}
\tag{12.4}
\]

with \(V_k\) exactly as in (12.1). If a fine or coarse group is empty, its
contribution in (12.1) and in the underlying exact raw square is zero. If the
actual conditional variance is zero, then
\(Z_i(c)=\theta(c)\) conditionally almost surely.

**Proof / justification.** By precommitment, each localization response
\(Y_r\) is a measurable function of \(R_{\rm loc}\) and \(X_r\). Hence

\[
\mathscr T_{\rm loc}\subseteq\mathscr F_{\rm loc},
\]

where \(\mathscr F_{\rm loc}\) is the accepted step_008 localization
sigma-field. The decoder definition makes \(c\) measurable with respect to
\(\mathscr T_{\rm loc}\), and therefore the event
\(\{|c-\mu|\leq50\sigma\}\) is also
\(\mathscr T_{\rm loc}\)-measurable.

For \(i\in I_{\rm ref}\), put

\[
\Xi_i=(X_i,L_i,A_i,B_i,U_i).
\]

Accepted Lemma~\(\ref{lem:step-008-refinement-kernel}\), together with the
primitive mutual independence across refinement indices, gives for every
finite collection of bounded Borel functions \(f_i\),

\[
\mathbb E\left[\prod_i f_i(\Xi_i)\,\middle|\,\mathscr F_{\rm loc}\right]
=\prod_i\mathbb E[f_i(\Xi_i)]
\quad\text{almost surely}.
\]

Taking conditional expectation onto
\(\mathscr T_{\rm loc}\subseteq\mathscr F_{\rm loc}\) preserves this
identity. Thus the complete refinement tuples are iid conditional on the
observable transcript. Once the transcript is fixed, \(c\) is fixed, and
\(Z_i(c)\) is the same Borel function of \(\Xi_i\) for each index. Therefore
the \(Z_i(c)\) are conditionally iid. The accepted exact pointwise mean
calculation from Proposition~\(\ref{prop:step-008-conditional-mean}\) then
gives (12.3).

For a fixed transcript in \(\mathcal E_{\rm loc}\), the accepted raw-square
decomposition gives

\[
\begin{aligned}
\operatorname{Var}(Z_i(c)\mid\mathscr T_{\rm loc})
&\leq
\mathbb E[Z_i(c)^2\mid\mathscr T_{\rm loc}]\\
&=
48\sum_{j\in\mathcal J_{\rm f}}\frac{h_j}{p_j}
\mathbb E_D|D_j^c(X)-D_j^c(c)|\\
&\quad+
48\sum_{j\in\mathcal J_{\rm c}}\frac{h_j}{p_j}
\mathbb E_D|D_j^c(X)-D_j^c(c)|.
\end{aligned}
\tag{12.5}
\]

This is an exact split of one nonnegative raw second moment, not a claim that
the two component variances add. Accepted step_009 bounds the first sum by
\(3072\sigma^2\) when the fine group is nonempty and identifies it as zero
when that group is empty. Accepted step_010 bounds the second sum by the
applicable coarse term in (12.1) on the localized transcript and identifies
it as zero when the coarse group is empty. Substitution into (12.5) proves
(12.4) in all three mutually exclusive \(k\)-regimes, with exactly the group
indicators in (12.1).

If the actual conditional variance is zero, then its definition together
with (12.3) gives

\[
\mathbb E[(Z_i(c)-\theta(c))^2\mid\mathscr T_{\rm loc}]=0.
\]

A nonnegative random variable with zero conditional expectation is zero
conditionally almost surely. This establishes the exact
zero-variance conclusion without dividing by the variance. \(\square\)

### unit_002: proposition

**Proposition (Exact block size and one-block success).**
\(\label{prop:step-012-one-block}\)

Under Lemma~\(\ref{lem:step-012-transcript-kernel}\), choose exactly

\[
s=\left\lceil\frac{32V_k}{\epsilon^2}\right\rceil
\]

and use the fixed disjoint blocks \(G_1,\ldots,G_q\) of size \(s\) from the
setting. Then, for every \(g\), uniformly on
\(\mathcal E_{\rm loc}\),

\[
\boxed{
\mathbf1_{\mathcal E_{\rm loc}}
\Pr\left\{
\left|\overline Z_g(c)-\theta(c)\right|>\frac{\epsilon}{2}
\ \middle|\ \mathscr T_{\rm loc}
\right\}
\leq\frac18\mathbf1_{\mathcal E_{\rm loc}}
}
\quad\text{almost surely}.
\tag{12.6}
\]

If
\(\operatorname{Var}(Z_i(c)\mid\mathscr T_{\rm loc})=0\), then the
conditional probability in (12.6) is exactly zero.

**Proof / justification.** Fix a localization transcript in
\(\mathcal E_{\rm loc}\). By
Lemma~\(\ref{lem:step-012-transcript-kernel}\), the \(s\) variables in
\(G_g\) are conditionally iid with mean \(\theta(c)\) and conditional
variance at most \(V_k\). Conditional independence gives

\[
\mathbb E[\overline Z_g(c)\mid\mathscr T_{\rm loc}]=\theta(c)
\]

and

\[
\operatorname{Var}(\overline Z_g(c)\mid\mathscr T_{\rm loc})
=\frac1{s^2}\sum_{i\in G_g}
\operatorname{Var}(Z_i(c)\mid\mathscr T_{\rm loc})
\leq\frac{V_k}{s}.
\tag{12.7}
\]

If the variance in (12.7) is zero, the block mean equals \(\theta(c)\)
conditionally almost surely, so its bad probability is zero. Otherwise,
the restated conditional Chebyshev inequality and the exact ceiling give

\[
\begin{aligned}
\Pr\left\{
\left|\overline Z_g(c)-\theta(c)\right|>\frac{\epsilon}{2}
\ \middle|\ \mathscr T_{\rm loc}
\right\}
&\leq
\frac{4\operatorname{Var}(\overline Z_g(c)\mid\mathscr T_{\rm loc})}
{\epsilon^2}\\
&\leq\frac{4V_k}{s\epsilon^2}\\
&\leq\frac{4V_k}
{(32V_k/\epsilon^2)\epsilon^2}\\
&=\frac18.
\end{aligned}
\tag{12.8}
\]

Here \(V_k>0\) was proved after (12.1), so the last ratio is legal.
Multiplying the pointwise transcript inequality by the
\(\mathscr T_{\rm loc}\)-measurable indicator of
\(\mathcal E_{\rm loc}\) gives (12.6). No probability of the localization
event has been used. \(\square\)

### unit_003: proposition

**Proposition (Fixed odd-median amplification).**
\(\label{prop:step-012-odd-median}\)

Under Lemma~\(\ref{lem:step-012-transcript-kernel}\) and
Proposition~\(\ref{prop:step-012-one-block}\), choose exactly

\[
q=2\left\lceil8\log\frac4\delta\right\rceil+1.
\]

Let \(M(c)\) be the \((q+1)/2\)-th order statistic of the fixed block means
\(\overline Z_1(c),\ldots,\overline Z_q(c)\); this is the median in the
setting-defined decoder. Then, uniformly on \(\mathcal E_{\rm loc}\),

\[
\boxed{
\mathbf1_{\mathcal E_{\rm loc}}
\Pr\left\{
|M(c)-\theta(c)|>\frac{\epsilon}{2}
\ \middle|\ \mathscr T_{\rm loc}
\right\}
\leq\frac{\delta}{4}\mathbf1_{\mathcal E_{\rm loc}}
}
\quad\text{almost surely}.
\tag{12.9}
\]

The order-statistic definition is fixed even when block values tie. Because
\(q\) is odd, no choice between two central order statistics occurs.

**Proof / justification.** Fix a localization transcript in
\(\mathcal E_{\rm loc}\), and define the proof-local indicators

\[
B_g
:=\mathbf1\left\{
|\overline Z_g(c)-\theta(c)|>\frac{\epsilon}{2}
\right\}.
\]

The blocks are fixed, disjoint, and have equal size. By
Lemma~\(\ref{lem:step-012-transcript-kernel}\), they are conditionally iid;
hence the \(B_g\) are conditionally iid Bernoulli with a common parameter
\(p\leq1/8\) by Proposition~\(\ref{prop:step-012-one-block}\).

Write \(q=2r+1\). If at most \(r\) block means are bad, at least \(r+1\)
belong to the closed interval

\[
\left[\theta(c)-\frac{\epsilon}{2},
\theta(c)+\frac{\epsilon}{2}\right].
\]

The \((r+1)\)-th order statistic must then belong to the same interval.
Equivalently,

\[
\left\{|M(c)-\theta(c)|>\frac{\epsilon}{2}\right\}
\subseteq
\left\{\sum_{g=1}^qB_g\geq r+1\right\}
\subseteq
\left\{\frac1q\sum_{g=1}^qB_g\geq\frac12\right\}.
\tag{12.10}
\]

This argument includes repeated block values and equality at either endpoint:
endpoint equality is good because the bad event is strict.

For completeness, fix the conditional Bernoulli parameter \(p\). For
\(t\geq0\), let

\[
\psi_p(t)=\log(1-p+pe^t)-pt.
\]

Then \(\psi_p(0)=\psi_p'(0)=0\), while

\[
\psi_p''(t)=u_t(1-u_t)\leq\frac14,
\qquad
u_t=\frac{pe^t}{1-p+pe^t}.
\]

Twice integrating the second-derivative bound gives
\(\psi_p(t)\leq t^2/8\). Thus, for every \(a>0\), exponential Markov and
conditional independence yield

\[
\begin{aligned}
\Pr\left\{\sum_{g=1}^q(B_g-p)\geq qa
\ \middle|\ \mathscr T_{\rm loc}\right\}
&\leq
\inf_{t>0}\exp\left(-tqa+\frac{qt^2}{8}\right)\\
&=\exp(-2qa^2),
\end{aligned}
\tag{12.11}
\]

where the infimum is attained at \(t=4a\). Apply (12.11) with
\(a=1/2-p\geq3/8\). From (12.10),

\[
\Pr\left\{|M(c)-\theta(c)|>\frac{\epsilon}{2}
\ \middle|\ \mathscr T_{\rm loc}\right\}
\leq
\exp\left(-2q(1/2-p)^2\right)
\leq e^{-9q/32}
\leq e^{-q/4}.
\tag{12.12}
\]

The exact ceiling in \(q\) gives

\[
q\geq16\log\frac4\delta+1,
\]

and hence

\[
e^{-q/4}
\leq
\exp\left(-4\log\frac4\delta\right)
=\left(\frac{\delta}{4}\right)^4
\leq\frac{\delta}{4},
\tag{12.13}
\]

because \(0<\delta/4<1\). Combining (12.12)--(12.13) and multiplying by
\(\mathbf1_{\mathcal E_{\rm loc}}\) proves (12.9). This is a fixed finite
majority calculation; no horizon or probability-mode upgrade is made.
\(\square\)

### unit_004: proposition

**Proposition (Conditional exact-target refinement certificate).**
\(\label{prop:step-012-conditional-target}\)

Under Assumptions~\(\ref{assump:parameter-domain}\) and
\(\ref{assump:iid-independent-randomness}\),
Proposition~\(\ref{prop:step-012-odd-median}\), and the accepted
step_011 bias certificate
Proposition~\(\ref{prop:step-011-bias-certificate}\), define the final
setting estimator

\[
\widehat\mu=c+M(c).
\]

Then, uniformly on every localization transcript in
\(\mathcal E_{\rm loc}\),

\[
\Pr\left\{
|\widehat\mu-\mu|>\frac{3\epsilon}{4}
\ \middle|\ \mathscr T_{\rm loc}
\right\}
\leq\frac{\delta}{4}.
\tag{12.14}
\]

Equivalently, the indicator-valued conditional interface is

\[
\boxed{
\mathbf1_{\mathcal E_{\rm loc}}
\Pr\left\{|\widehat\mu-\mu|>\epsilon
\ \middle|\ \mathscr T_{\rm loc}\right\}
\leq\frac{\delta}{4}\mathbf1_{\mathcal E_{\rm loc}}
}
\quad\text{almost surely}.
\tag{12.15}
\]

This is the output for step_013; no expectation of (12.15) and no control of
\(\mathcal E_{\rm loc}^c\) is taken here.

**Proof / justification.** Fix a localization transcript in
\(\mathcal E_{\rm loc}\). On the median-good event, accepted
Proposition~\(\ref{prop:step-011-bias-certificate}\) is used once, in the
single triangle inequality

\[
\begin{aligned}
|\widehat\mu-\mu|
&=|M(c)-(\mu-c)|\\
&\leq|M(c)-\theta(c)|
   +|\theta(c)-(\mu-c)|\\
&\leq\frac{\epsilon}{2}+\frac{\epsilon}{4}
=\frac{3\epsilon}{4}
<\epsilon.
\end{aligned}
\tag{12.16}
\]

Therefore

\[
\left\{|\widehat\mu-\mu|>\frac{3\epsilon}{4}\right\}
\subseteq
\left\{|M(c)-\theta(c)|>\frac{\epsilon}{2}\right\}
\]

on that transcript. Proposition~\(\ref{prop:step-012-odd-median}\) gives
(12.14). Since \(3\epsilon/4<\epsilon\),

\[
\{|\widehat\mu-\mu|>\epsilon\}
\subseteq
\{|\widehat\mu-\mu|>3\epsilon/4\},
\]

so multiplication by the transcript-measurable localization indicator gives
(12.15). No localization failure probability is inserted or union-bounded.
\(\square\)

## Target-Step Assembly

Lemma~\(\ref{lem:step-012-transcript-kernel}\) first translates the accepted
step_008 independent refinement kernel from the larger localization
sigma-field to the complete observable localization transcript. It proves
conditional iid jointly over every refinement sample, level, offset, and
dither, and retains the exact mean
\(\theta(c)=\mathbb E_DT_c(X)\).

The same lemma composes the accepted interfaces at their legal
raw-second-moment boundary. Accepted
Proposition~\(\ref{prop:step-009-variance-interface}\) contributes
\(3072\sigma^2\) exactly when the fine group is present, while accepted
Proposition~\(\ref{prop:step-010-three-regime}\) contributes exactly the
applicable coarse certificate when the coarse group is present. This yields
the full additive certificate (12.1):

\[
\operatorname{Var}(Z_i(c)\mid\mathscr T_{\rm loc})\leq V_k
\quad\text{uniformly on }\mathcal E_{\rm loc}.
\]

No additive decomposition of component variances is asserted. Empty groups
are removed by explicit indicators, and zero actual variance gives exact
conditional equality \(Z_i(c)=\theta(c)\).

Proposition~\(\ref{prop:step-012-one-block}\) uses the binding choice

\[
s=\left\lceil32V_k/\epsilon^2\right\rceil
\]

and conditional block independence to obtain

\[
\Pr\{|\overline Z_g(c)-\theta(c)|>\epsilon/2
\mid\mathscr T_{\rm loc}\}\leq1/8
\]

for every fixed block on every localized transcript. Proposition~
\(\ref{prop:step-012-odd-median}\) uses the binding odd choice

\[
q=2\left\lceil8\log(4/\delta)\right\rceil+1
\]

and the directly proved Hoeffding bound to show that a bad majority, and
hence a median miss by more than \(\epsilon/2\), has conditional probability
at most \(\delta/4\). The \((q+1)/2\)-th order-statistic convention handles
all repeated-value ties.

Finally, Proposition~\(\ref{prop:step-012-conditional-target}\) invokes the
accepted step_011 certificate
\(|(\mu-c)-\theta(c)|\leq\epsilon/4\) exactly once. It obtains total error
\(\epsilon/2+\epsilon/4=3\epsilon/4<\epsilon\) and exports the
indicator-valued conditional inequality (12.15).

The allocation produced by this step is exactly

\[
\boxed{
N_{\rm ref}
=qs
=
\left(2\left\lceil8\log\frac4\delta\right\rceil+1\right)
\left\lceil\frac{32V_k}{\epsilon^2}\right\rceil.
}
\tag{12.17}
\]

It is determined by known parameters and fixed accepted design constants
before any response is observed. Equations (12.1), (12.6), (12.9),
(12.15), and (12.17) prove the exact binding step claim. The unconditional
confidence conversion and the absorption of (12.17) into the public rate
remain exclusively for later steps.

## Explicit Rate Audit

- Exposed variables: fixed \(k>1\), \(\sigma>0\), \(\epsilon>0\),
  \(\delta\in(0,1/2)\), \(H\), the deterministic group-presence indicators,
  the actual transcript center \(c\), \(\theta(c)\), \(V_k\), \(s\), \(q\),
  and \(N_{\rm ref}=qs\). The setting parameter \(\lambda\) does not enter
  this refinement-only calculation.
- Hidden constants may depend on: fixed \(k\) only. The constants are
  displayed explicitly as \(3072\), \(C_{k,>}^{\rm c}\),
  \(C_2^{\rm c}\), and \(C_{k,<}^{\rm c}\), with their accepted formulas
  shown above (12.1).
- Hidden constants may not depend on:
  \(\lambda,\sigma,\epsilon,\delta,D,c\), the localization transcript,
  \(J,H,s,q,N_{\rm ref}\), group cardinalities, or refinement indices.
- Fixed quantities: \(k\), the accepted design constants, all known protocol
  parameters, the deterministic sample split, and the fixed block partition
  are selected before conditional probabilities are evaluated. No
  asymptotic limit is used.
- Probability mode: transcript-conditional high probability, uniformly on
  the accepted generated event \(\mathcal E_{\rm loc}\). The one-block
  failure is at most \(1/8\); the median and exact-target refinement failures
  are at most \(\delta/4\). Equation (12.15) is indicator-valued. This step
  does not integrate over localization, bound
  \(\Pr(\mathcal E_{\rm loc}^c)\), or state an unconditional PAC result.
- Horizon mode: deterministic fixed horizon
  \(N_{\rm ref}=qs\), with exact ceilings and a fixed precommitted partition.
  There is no stopping time, adaptive sample count, horizon-uniform statement,
  or all-time upgrade.
- Norm mode: absolute value on \(\mathbb R\); variance is ordinary scalar
  conditional variance.
- Admissibility conditions and auxiliary tolerances:
  \(k>1\), \(\sigma>0\), \(\epsilon>0\), \(\delta\in(0,1/2)\), finite
  accepted \(H\), \(J\geq1\), and the accepted localization event only where
  the coarse variance and bias certificates are consumed. No new tolerance,
  tail condition, support condition, or generated invariant is assumed.
- Term absorption or simplification inequalities: none of the three
  variance regimes is absorbed into another. The exact local inequalities
  are
  \[
  s\geq\frac{32V_k}{\epsilon^2},
  \qquad
  \frac{4V_k}{s\epsilon^2}\leq\frac18,
  \]
  \[
  q\geq16\log\frac4\delta+1,
  \qquad
  e^{-9q/32}\leq e^{-q/4}
  \leq(\delta/4)^4\leq\delta/4,
  \]
  and
  \[
  \epsilon/2+\epsilon/4=3\epsilon/4<\epsilon.
  \]
  No ceiling, additive fine term, logarithm, \(H\)-term, or confidence factor
  is dropped.
- Probability conversion: conditional Chebyshev converts a conditional
  variance bound into a fixed-block event, and the conditional Hoeffding
  calculation amplifies independent fixed blocks. Passing from the accepted
  larger localization sigma-field to the observable transcript uses the
  tower property and independence only. There is no conditional-to-
  unconditional confidence conversion.
- Contribution to any Rate Specialization Bridge: this step exports the
  exact unsimplified allocation (12.17) and the full three-regime certificate
  (12.1). Substitution of \(H\), absorption of \(3072\sigma^2\), ceilings,
  confidence factors, or localization cost into the public \(r_k\) is not
  attempted and remains assigned to step_014.
- Baseline-reduction check: if the conditional variance is zero, every block
  mean equals \(\theta(c)\) and the median equals \(\theta(c)\) conditionally
  almost surely. In the exact specialization \(D=\delta_c\) with
  \(\mu=c\), accepted step_008 gives \(Z_i(c)=0\) pathwise for every
  refinement seed, accepted step_011 gives zero bias, and therefore every
  block, the odd median, and \(\widehat\mu-\mu\) are exactly zero. The proof
  does not replace this baseline by a positive error surrogate.

## Blockers

None

## Notation And Assumption Notes

- **Setting-defined public objects:** \(k,\lambda,\sigma,\epsilon,\delta,D\),
  \(\mu,c,H,J,\mathcal J_{\rm f},\mathcal J_{\rm c},Z_i(c)\),
  \(\overline Z_g(c)\), \(s,q,N_{\rm ref}\), and \(\widehat\mu\) retain
  exactly their meanings in setting.md. The choices of \(s,q\) and
  \(N_{\rm ref}\) are fixed here rather than renamed.
- **Accepted public-facing object:** \(\theta(c)=\mathbb E_DT_c(X)\) and its
  identity as the conditional mean of \(Z_i(c)\) are inherited from accepted
  step_008.
- **New public-facing object:** \(V_k\) in (12.1) is the only new exported
  helper. It packages the accepted fine and coarse deterministic
  raw-square certificates without hiding the three regimes, the additive
  fine term, group presence, \(H\), or any constant. It is consumed by the
  exact block size and later public rate accounting.
- **Appendix-local object:** \(\mathscr T_{\rm loc}\) names the complete
  observable localization transcript used for the conditional interface.
  \(M(c)\) abbreviates the setting-defined odd median and is eliminated in
  the final expression \(\widehat\mu=c+M(c)\).
- **Proof-local objects:** \(\mathscr F_{\rm loc}\) is the accepted larger
  localization sigma-field used only to verify the transcript kernel;
  \(\Xi_i\) abbreviates one refinement tuple; \(B_g\), \(p\), \(r\),
  \(\psi_p\), and \(u_t\) are used only in the direct majority calculation.
  None is exported.
- **Constant provenance:** \(3072\) is inherited from accepted step_009.
  \(C_k^{\rm rec}\), \(C_k^{\rm act}\), \(A_k\), and all three coarse
  constants are inherited with exact formulas from accepted step_010.
  The constants \(32\) and \(8\) in the exact block and median choices are
  the binding sketch constants. The exponents \(9/32\) and \(1/4\) are
  derived explicitly from the majority gap \(1/2-1/8=3/8\).
- **Assumption provenance:** refinement/localization independence, mutual
  refinement independence, identical laws, fixed blocks, and precommitment
  are primitive under
  Assumption~\(\ref{assump:iid-independent-randomness}\). The transcript
  kernel and mean are accepted derived outputs from step_008; the fine and
  coarse variance controls are accepted derived outputs from step_009 and
  step_010; and the bias is an accepted derived output from step_011.
  \(\mathcal E_{\rm loc}\) remains a generated event and is never promoted
  to a primitive assumption.
- **Conditional-iid audit:** conditioning fixes the common decoder parameter
  \(c\) but no refinement sample, level, offset, or dither. Every block uses
  disjoint members of one conditional iid family. The response bits are
  deterministic functions of those tuples and are not conditioned upon
  separately.
- **Empty-group audit:** the indicators in (12.1) remove an absent fine or
  coarse group. The proof never evaluates \(W_G\) or \(p_j\) for an absent
  group. Since \(J\geq1\), both groups cannot be empty simultaneously.
- **Zero-variance and zero-activity audit:** actual conditional variance zero
  is handled before Chebyshev division and yields exact block success. An
  empty group, zero activity in one group, or the point-mass baseline retains
  the exact zero conclusion supplied by the dependencies.
- **Odd-median audit:** \(q=2r+1\) is odd by construction, and the decoder
  uses the \((r+1)\)-th order statistic. Repeated numerical values do not
  change that value; equality at either good-interval endpoint is counted as
  good. Thus no unrecorded tie convention or random tie breaking is present.
- **Uniformity and event typing:** every calculation is pointwise in the
  localization transcript. The fine certificate is uniform over every
  center; the coarse and bias certificates are consumed only on
  \(\mathcal E_{\rm loc}\). The final output is the
  \(\mathscr T_{\rm loc}\)-measurable indicator inequality (12.15), ready
  for step_013.
- **Fixed-horizon boundary:** \(V_k,s,q,N_{\rm ref}\) depend only on known
  parameters, deterministic group membership, and fixed \(k\)-only design
  constants. They are selected before messages and never depend on the
  realized localization transcript or refinement data.
- **Dependency and diagnostic boundary:** only the dispatched current
  accepted proof/review pairs for step_008, step_009, step_010, and step_011
  were used. No same-step attempt, tracker, worker log, earlier idea branch,
  downstream review, final review, global proof, or global proof review was
  read or used.
