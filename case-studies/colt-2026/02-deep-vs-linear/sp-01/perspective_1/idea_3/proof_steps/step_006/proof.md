# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: step_006
- Unit attempt: 1

## Target Step Claim

- Intended claim: With the unconditional law \(\mathcal P_{\rm gate}\), prove the expected best-linear risk is at most \(\varepsilon+\delta_0\) for every \((\mathcal D,h)\), hence
  \[
  \operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
  \le d_{\rm path}.
  \]
- Depends on: step_005.
- Assumptions used: Primitive assump:universal-expected-success, assump:robust-tube, and assump:fixed-source-witnesses; the accepted conditional best-linear-risk bound from step_005.
- Technical challenge: Preserve the order
  \(\exists\mathcal P_{\rm gate}\,\forall\mathcal D\,\forall h\), condition only on initialization inside the proof, and charge rather than discard the feature maps generated on \(E_r^c\).
- Intended proof tool or cited result: Finite-support pushforward identity, bounded tower property/Tonelli, and \(0\le F\le1\).
- Output target: An unconditional probabilistic-dimension witness.
- Rate objective: RO-1; error \(\varepsilon+\delta_0\) with the exact probability conversion.
- Review status in the accepted sketch row: PENDING.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - assump:fixed-source-witnesses: Assumption~\ref{assump:fixed-source-witnesses} fixes the finite domain, architecture, Gaussian initialization law, finite horizon, update protocol, and tie-resolved risks before any later \((\mathcal D,h)\). For fixed \((\mathcal D,h)\), the training tuple is independent of initialization and has law \(\mathcal D^T\).
  - assump:universal-expected-success: Assumption~\ref{assump:universal-expected-success} gives, for every \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\), joint expected learner loss at most \(\varepsilon\) under the same Gaussian initialization and iid training-sample laws used below.
  - assump:robust-tube: Assumption~\ref{assump:robust-tube} supplies the initialization-measurable static event \(E_r\) and the sole probability estimate
    \(\Pr_{\theta^{(0)}}(E_r^c)\le\delta_0\). It does not supply a trajectory, gate, or representation conclusion.
- Derived invariants supplied by accepted dependencies:
  - Accepted `perspective_1/idea_3/proof_steps/step_005/proof.md` with matching `review.md` status `ACCEPTED`: Proposition~\ref{prop:p1-i3-step005-conditional-comparison} supplies, for every fixed \((\mathcal D,h)\) and every \(\theta^{(0)}\in E_r\),
    \[
    F_{\mathcal D,h}(\theta^{(0)})
    :=\inf_{w\in\mathbb R^{d_{\rm path}}}
    R_{\mathcal D,h}(w,\varphi_{\theta^{(0)}})
    \le
    \mathbb E_{\mathbf X\sim\mathcal D^T}
    \left[\mathcal L_{\mathcal D,h}
    (\widehat h_{\theta^{(0)},\mathbf X})\right].
    \]
    The accepted result also proves \(F_{\mathcal D,h}(\theta^{(0)})\in[0,1]\).
- Local conditional hypotheses:
  - Fix an arbitrary \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\) only after the architecture, Gaussian initialization law, and the map rule \(\theta^{(0)}\mapsto\varphi_{\theta^{(0)}}\) have been fixed. No event membership is assumed in the final statement; \(\theta^{(0)}\in E_r\) is used only on the stable part of the event split.
- Accepted dependency proof/review artifacts:
  - `perspective_1/idea_3/proof_steps/step_005/proof.md`
  - `perspective_1/idea_3/proof_steps/step_005/review.md`

Assumption~\ref{assump:constant-depth} is not used in this step. It is reserved for the dimension specialization in step_007.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| unit_001 | lemma | Under Assumption~\ref{assump:fixed-source-witnesses}, the initialization-to-feature map is Borel and has finite range; for every fixed \((\mathcal D,h)\), its pushforward law satisfies the exact expectation identity \(\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}\inf_wR_{\mathcal D,h}(w,\varphi)=\mathbb E_{\theta^{(0)}}F_{\mathcal D,h}(\theta^{(0)})\). | Establishes that the unconditional Gaussian pushforward is a valid finite-support feature law and identifies exactly the representation expectation to be bounded. |
| unit_002 | proposition | Under Assumptions~\ref{assump:fixed-source-witnesses}, \ref{assump:universal-expected-success}, and \ref{assump:robust-tube}, and accepted Proposition~\ref{prop:p1-i3-step005-conditional-comparison}, every fixed \((\mathcal D,h)\) satisfies \(\mathbb E_{\theta^{(0)}}F_{\mathcal D,h}(\theta^{(0)})\le\varepsilon+\delta_0\). | Converts the conditional stable-event comparison into the unconditional error bound, with the entire unstable contribution charged by its probability mass. |
| unit_003 | proposition | Under the same three primitive assumptions and Lemma~\ref{lem:p1-i3-step006-gate-pushforward} together with Proposition~\ref{prop:p1-i3-step006-event-split}, the one law \(\mathcal P_{\rm gate}\), fixed before all \((\mathcal D,h)\), witnesses \(\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}\). | Closes the required existential/universal quantifier order and the exact probabilistic-dimension claim. |

## Cited Result Applications

No external paper theorem is used. The accepted dependency and the two standard expectation facts used below are restated here in current notation.

1. **Accepted conditional comparison (Proposition~\ref{prop:p1-i3-step005-conditional-comparison}).** For arbitrary fixed \(\mathcal D\in\Delta(\mathcal X)\), \(h\in\mathcal H\), and \(\theta^{(0)}\in E_r\), let \(\mathbf X\sim\mathcal D^T\) be the iid training tuple, independent of initialization. The accepted step proves
   \[
   F_{\mathcal D,h}(\theta^{(0)})\in[0,1],
   \qquad
   F_{\mathcal D,h}(\theta^{(0)})
   \le
   \mathbb E_{\mathbf X\sim\mathcal D^T}
   \left[Z_{\mathcal D,h}(\theta^{(0)},\mathbf X)\right],
   \tag{1}
   \]
   where
   \(Z_{\mathcal D,h}(\theta^{(0)},\mathbf X)
   :=\mathcal L_{\mathcal D,h}
   (\widehat h_{\theta^{(0)},\mathbf X})\in[0,1]\).
   Its assumptions are discharged by the accepted proof/review pair, the local arbitrary choice of \((\mathcal D,h)\), and event membership only on the \(E_r\) part of the split.
2. **Finite-range pushforward integration.** If \(\Phi:\Theta\to\Gamma\) is measurable, \(\Gamma\) is finite, \(\gamma\) is a probability law on \(\Theta\), and \(q:\Gamma\to\mathbb R\), then for \(\Phi_\#\gamma\),
   \[
   \mathbb E_{\psi\sim\Phi_\#\gamma}[q(\psi)]
   =\mathbb E_{\vartheta\sim\gamma}[q(\Phi(\vartheta))].
   \tag{2}
   \]
   This follows by summing \(q(\psi)\gamma(\Phi^{-1}(\{\psi\}))\) over the finite range. Lemma~\ref{lem:p1-i3-step006-gate-pushforward} checks measurability, finiteness, and the object mapping for \(\Phi(\vartheta)=\varphi_\vartheta\).
3. **Bounded tower/Tonelli identity.** If \(E\) is measurable with respect to initialization and \(Z\ge0\) is a bounded measurable function of initialization and an independent finite-valued sample tuple, then
   \[
   \mathbb E_{\theta^{(0)}}
   \left[\mathbf1_E
   \mathbb E_{\mathbf X\sim\mathcal D^T}
   [Z(\theta^{(0)},\mathbf X)]\right]
   =
   \mathbb E_{\theta^{(0)},\mathbf X}
   [\mathbf1_E Z(\theta^{(0)},\mathbf X)].
   \tag{3}
   \]
   In the present finite-sample space, (3) is simply interchange of one finite sum and one nonnegative integral. Proposition~\ref{prop:p1-i3-step006-event-split} verifies boundedness and measurability and uses \(E=E_r\).

## Local Derivation

Let \(\Theta=\mathbb R^S\) be the initialization parameter space and let \(\gamma\) be the product Gaussian initialization law from `setting.md`. Write
\[
\Phi:\Theta\longrightarrow
\{\text{maps }\mathcal X\to\mathbb R^{d_{\rm path}}\},
\qquad
\Phi(\vartheta):=\varphi_\vartheta.
\]
For fixed \((\mathcal D,h)\), define
\[
F_{\mathcal D,h}(\vartheta)
:=\inf_{w\in\mathbb R^{d_{\rm path}}}
R_{\mathcal D,h}(w,\Phi(\vartheta))
\qquad(\vartheta\in\Theta).
\tag{4}
\]
This definition applies on both \(E_r\) and \(E_r^c\).

### unit_001: lemma

**Lemma (Finite gate law and exact pushforward identity).** \label{lem:p1-i3-step006-gate-pushforward}

**Statement.** Under Assumption~\ref{assump:fixed-source-witnesses}, the map \(\Phi:\Theta\to\Gamma\), where
\[
\Gamma:=\Phi(\Theta),
\]
is Borel measurable and has finite range, with
\[
|\Gamma|\le 3^{d_{\rm path}|\mathcal X|}.
\]
For every fixed \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\), the function \(F_{\mathcal D,h}\) in (4) is Borel measurable, takes values in \([0,1]\), and satisfies
\[
\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}
\left[
\inf_{w\in\mathbb R^{d_{\rm path}}}
R_{\mathcal D,h}(w,\varphi)
\right]
=
\mathbb E_{\theta^{(0)}\sim\gamma}
[F_{\mathcal D,h}(\theta^{(0)})].
\tag{5}
\]
No measurable choice of an optimizing coefficient is required.

**Proof / justification.** Fix \(x\in\mathcal X\). By induction over layers, every initialization preactivation \(u_{\ell,j}(\vartheta,x)\) is continuous in \(\vartheta\): the input is fixed, matrix multiplication is continuous, and coordinatewise ReLU is continuous. Consequently
\[
\vartheta\longmapsto
\mathbf1\{u_{\ell,j}(\vartheta,x)>0\}
\]
is Borel measurable. Each coordinate
\[
[\Phi(\vartheta)(x)]_p
=x_{i_0}\prod_{\ell=1}^{L-1}
\mathbf1\{u_{\ell,i_\ell}(\vartheta,x)>0\}
\]
is therefore Borel measurable and belongs to \(\{-1,0,+1\}\). There are only \(|\mathcal X|d_{\rm path}\) input-coordinate pairs. Thus \(\Phi\), viewed as their finite tuple, is Borel measurable and its range is contained in a set of cardinality \(3^{d_{\rm path}|\mathcal X|}\). This also covers \(L=1\): the product is empty, \(\Phi(\vartheta)(x)=x\), and \(\Gamma\) is a singleton.

For \(\psi\in\Gamma\), set
\[
\Psi_{\mathcal D,h}(\psi)
:=\inf_{w\in\mathbb R^{d_{\rm path}}}
R_{\mathcal D,h}(w,\psi).
\tag{6}
\]
Every risk is a probability in \([0,1]\), and the coefficient space is nonempty, so \(\Psi_{\mathcal D,h}(\psi)\in[0,1]\) even if the infimum is not attained. Equation (4) is exactly
\[
F_{\mathcal D,h}=\Psi_{\mathcal D,h}\circ\Phi.
\]
Since \(\Gamma\) is finite, \(\Psi_{\mathcal D,h}\) is measurable on \(\Gamma\), and hence \(F_{\mathcal D,h}\) is Borel measurable. By the setting definition \(\mathcal P_{\rm gate}=\Phi_\#\gamma\). Applying the finite-range identity (2), or directly summing over \(\Gamma\), gives
\[
\begin{aligned}
&\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}
\left[\inf_wR_{\mathcal D,h}(w,\varphi)\right]\\
&\quad=
\sum_{\psi\in\Gamma}
\Psi_{\mathcal D,h}(\psi)
\gamma(\Phi^{-1}(\{\psi\}))\\
&\quad=
\int_\Theta
\Psi_{\mathcal D,h}(\Phi(\vartheta))\,d\gamma(\vartheta)
=\mathbb E_{\theta^{(0)}\sim\gamma}
[F_{\mathcal D,h}(\theta^{(0)})].
\end{aligned}
\]
Initializations inducing the same feature map contribute to the same pushforward atom, and (6) depends only on that map. No coefficient selector appears. \(\square\)

### unit_002: proposition

**Proposition (Unconditional event-split risk bound).** \label{prop:p1-i3-step006-event-split}

**Statement.** Under Assumptions~\ref{assump:fixed-source-witnesses}, \ref{assump:universal-expected-success}, and \ref{assump:robust-tube}, and accepted Proposition~\ref{prop:p1-i3-step005-conditional-comparison}, fix arbitrary \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\). Then
\[
\mathbb E_{\theta^{(0)}\sim\gamma}
[F_{\mathcal D,h}(\theta^{(0)})]
\le\varepsilon+\delta_0.
\tag{7}
\]
The expectation is over the unconditional Gaussian initialization law; in particular, no law conditioned on \(E_r\) replaces \(\gamma\).

**Proof / justification.** For \(\vartheta\in\Theta\) and \(\mathbf x\in\mathcal X^T\), let
\[
Z_{\mathcal D,h}(\vartheta,\mathbf x)
:=\mathcal L_{\mathcal D,h}
(\widehat h_{\vartheta,\mathbf x})
\in[0,1]
\tag{8}
\]
be the loss of the prescribed SGD predictor initialized at \(\vartheta\) and trained on the source-consistent labeled tuple generated from \(\mathbf x\). This is the same random learner loss as in Assumption~\ref{assump:universal-expected-success}.

For completeness, (8) is measurable. For each fixed tuple, the forward network operations are Borel. The fixed-kink factor \(\rho_\kappa\) is Borel, the logistic derivative is continuous, and the finite back-propagation recurrence uses only sums and products of these functions. Hence one update is Borel in \(\vartheta\), and induction through the finite horizon makes every iterate and latter-half score Borel. The fixed tie map \(\operatorname{sign}_{s_0}\) is Borel, and the risk in (8) is a finite sum of error indicators over \(\mathcal X\), weighted by \(\mathcal D(x)\). Because \(\mathcal X^T\) is finite, \(Z_{\mathcal D,h}\) is jointly measurable and bounded.

Define the conditional sample average
\[
g_{\mathcal D,h}(\vartheta)
:=\mathbb E_{\mathbf X\sim\mathcal D^T}
[Z_{\mathcal D,h}(\vartheta,\mathbf X)]
=\sum_{\mathbf x\in\mathcal X^T}
\mathcal D^T(\mathbf x)Z_{\mathcal D,h}(\vartheta,\mathbf x).
\tag{9}
\]
It is measurable and lies in \([0,1]\). Independence of initialization and the training tuple makes (9) a version of the conditional expected learner loss given \(\theta^{(0)}=\vartheta\).

For every \(\vartheta\in E_r\), accepted Proposition~\ref{prop:p1-i3-step005-conditional-comparison} gives
\[
F_{\mathcal D,h}(\vartheta)\le g_{\mathcal D,h}(\vartheta).
\tag{10}
\]
For every \(\vartheta\in E_r^c\), Lemma~\ref{lem:p1-i3-step006-gate-pushforward} gives the unconditional metric bound
\[
0\le F_{\mathcal D,h}(\vartheta)\le1.
\tag{11}
\]
Splitting the same unconditional expectation and applying (10)--(11) therefore yields
\[
\begin{aligned}
\mathbb E_{\theta^{(0)}}[F_{\mathcal D,h}(\theta^{(0)})]
&=\mathbb E[\mathbf1_{E_r}F_{\mathcal D,h}]
  +\mathbb E[\mathbf1_{E_r^c}F_{\mathcal D,h}]\\
&\le
\mathbb E[\mathbf1_{E_r}g_{\mathcal D,h}]
+\Pr(E_r^c).
\end{aligned}
\tag{12}
\]
Using the finite sum (9), nonnegativity, and then the two primitive bounds gives
\[
\begin{aligned}
\mathbb E[\mathbf1_{E_r}g_{\mathcal D,h}]
&=
\mathbb E_{\theta^{(0)},\mathbf X}
[\mathbf1_{E_r}Z_{\mathcal D,h}(\theta^{(0)},\mathbf X)]\\
&\le
\mathbb E_{\theta^{(0)},\mathbf X}
[Z_{\mathcal D,h}(\theta^{(0)},\mathbf X)]\\
&\le\varepsilon,
\end{aligned}
\tag{13}
\]
while
\[
\Pr_{\theta^{(0)}}(E_r^c)\le\delta_0.
\tag{14}
\]
Here (13) is exactly the universal expected-success premise instantiated at the currently arbitrary \((\mathcal D,h)\), and (14) is exactly the robust-tube probability premise. Substituting (13)--(14) into (12) proves (7). Arbitrary behavior on \(E_r^c\) is neither excluded nor conditioned away; it is charged once by the unit loss bound and the mass \(\delta_0\). \(\square\)

### unit_003: proposition

**Proposition (Universal probabilistic-dimension witness).** \label{prop:p1-i3-step006-dc-witness}

**Statement.** Under Assumptions~\ref{assump:fixed-source-witnesses}, \ref{assump:universal-expected-success}, and \ref{assump:robust-tube}, Lemma~\ref{lem:p1-i3-step006-gate-pushforward}, and Proposition~\ref{prop:p1-i3-step006-event-split}, the unconditional law \(\mathcal P_{\rm gate}\) satisfies
\[
\forall\mathcal D\in\Delta(\mathcal X)\quad
\forall h\in\mathcal H,
\qquad
\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}
\left[
\inf_{w\in\mathbb R^{d_{\rm path}}}
R_{\mathcal D,h}(w,\varphi)
\right]
\le\varepsilon+\delta_0,
\tag{15}
\]
and consequently
\[
\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)
\le d_{\rm path}.
\tag{16}
\]

**Proof / justification.** The architecture, Gaussian initialization law \(\gamma\), and rule \(\Phi(\vartheta)=\varphi_\vartheta\) are fixed by Assumption~\ref{assump:fixed-source-witnesses} before any \(\mathcal D\) or \(h\) is selected. Therefore their pushforward \(\mathcal P_{\rm gate}=\Phi_\#\gamma\) is one law over maps \(\mathcal X\to\mathbb R^{d_{\rm path}}\), independent of every later \((\mathcal D,h)\).

Now take arbitrary \(\mathcal D\in\Delta(\mathcal X)\) and \(h\in\mathcal H\). Lemma~\ref{lem:p1-i3-step006-gate-pushforward} and Proposition~\ref{prop:p1-i3-step006-event-split} give
\[
\mathbb E_{\varphi\sim\mathcal P_{\rm gate}}
\left[\inf_wR_{\mathcal D,h}(w,\varphi)\right]
=\mathbb E_{\theta^{(0)}}[F_{\mathcal D,h}(\theta^{(0)})]
\le\varepsilon+\delta_0.
\]
The law was fixed before this arbitrary choice, so the same law satisfies (15) simultaneously in the required logical sense. By the definition of \(\operatorname{dc}_{\varepsilon+\delta_0}\), the existence of this law in dimension \(d_{\rm path}\) proves (16). \(\square\)

## Target-Step Assembly

Fix the architecture and its Gaussian initialization law first, and push that law through the initialization-gate rule without conditioning. Lemma~\ref{lem:p1-i3-step006-gate-pushforward} proves that this rule is Borel with finite support and identifies the target expectation under \(\mathcal P_{\rm gate}\) exactly with \(\mathbb E_{\theta^{(0)}}F_{\mathcal D,h}(\theta^{(0)})\).

For an arbitrary later \((\mathcal D,h)\), accepted Proposition~\ref{prop:p1-i3-step005-conditional-comparison} bounds \(F\) by the conditional sample-path loss on every initialization in \(E_r\). Proposition~\ref{prop:p1-i3-step006-event-split} uses the unit bound on \(F\) on \(E_r^c\), the initialization-only nature of \(E_r\), finite Tonelli/tower averaging, universal expected success, and \(\Pr(E_r^c)\le\delta_0\) to obtain
\[
\mathbb E_{\theta^{(0)}}F_{\mathcal D,h}(\theta^{(0)})
\le\varepsilon+\delta_0.
\]
Proposition~\ref{prop:p1-i3-step006-dc-witness} then records that the same unconditional law was chosen before the arbitrary \((\mathcal D,h)\), establishing the exact order
\[
\exists\mathcal P_{\rm gate}\quad
\forall\mathcal D\in\Delta(\mathcal X)\quad
\forall h\in\mathcal H
\]
and hence \(\operatorname{dc}_{\varepsilon+\delta_0}(\mathcal H)\le d_{\rm path}\). These three named results prove the exact accepted step_006 claim; no conditional feature law, measurable optimizer, or claim about unstable trajectories is introduced.

## Explicit Rate Audit

- Exposed variables: \(\varepsilon,\delta_0,T,\eta,r,M_r,G_r,d_{\rm path}\), the architecture and fixed conventions \(s_0,\kappa\), and arbitrary \(\mathcal D,h\). The exported error is exactly \(\varepsilon+\delta_0\).
- Hidden constants may depend on: None.
- Hidden constants may not depend on: \(n,\mathcal H,\mathcal D,h,S,L\), widths, \(T,\eta,r,M_r,G_r,d_{\rm path},\varepsilon,\delta_0,s_0,\kappa\), initialization, or sample paths.
- Fixed quantities: The architecture, Gaussian initialization law, \(S,L,T,\eta,r,\varepsilon,\delta_0,s_0,\kappa\), and feature-map rule are fixed before \(\mathcal D,h\). The current \((\mathcal D,h)\) is arbitrary only after that law has been fixed.
- Probability mode: The source premise is joint expectation over unconditional initialization and iid samples; the tube premise is initialization probability at least \(1-\delta_0\); the conclusion is expectation over the unconditional finite-support law \(\mathcal P_{\rm gate}\). No conditioning remains in the conclusion.
- Horizon mode: Fixed finite horizon \(T\). No horizon-uniform or asymptotic upgrade is made.
- Norm mode: Tie-resolved \(0\)-\(1\) classification risk and its infimum over \(w\in\mathbb R^{d_{\rm path}}\). The tube's coordinate sup norm enters only through the already accepted event interface.
- Admissibility conditions and auxiliary tolerances: \(0\le\delta_0\le\varepsilon<1/4\), \(T\ge1\), \(\eta>0\), and the primitive robust-tube probability statement. No new tolerance, margin, selector, or optimizer-attainment condition is added.
- Term absorption or simplification inequalities: Pointwise on initialization,
  \[
  \mathbf1_{E_r}F+\mathbf1_{E_r^c}F
  \le \mathbf1_{E_r}g+\mathbf1_{E_r^c},
  \]
  followed by
  \[
  \mathbb E[\mathbf1_{E_r}g]\le\mathbb E Z\le\varepsilon,
  \qquad
  \mathbb E[\mathbf1_{E_r^c}]\le\delta_0.
  \]
  No term is hidden or absorbed into a constant.
- Probability conversion: Exactly one initialization-event split. The stable contribution has zero representation residual; the arbitrary complement has loss at most one and therefore contributes at most \(\delta_0\). There is no union bound over time or histories.
- Contribution to any Rate Specialization Bridge: This step supplies the unconditional \(\mathcal P_{\rm gate}\) witness at error \(\varepsilon+\delta_0\). Step_007 may combine it with \(\delta_0\le\varepsilon\) and the deterministic path count; no such specialization is performed here.
- Baseline-reduction check: If \(\delta_0=0\), the complement contribution is exactly zero and (7) becomes the unconditional bound \(\mathbb EF\le\varepsilon\). If \(\varepsilon=0\), then \(\delta_0=0\) and the bound remains exactly zero. For \(L=1\), the gate map is the deterministic feature \(x\mapsto x\), so the pushforward support is a singleton and the same event split applies. Duplicate gate maps, zero feature coordinates, and score ties are preserved because the pushforward identity uses the exact map and step_005 uses exact tie-resolved risk.

## Blockers

None

## Notation And Assumption Notes

- Local notation: \(\Theta=\mathbb R^S\) and \(\gamma\) name the setting's parameter space and product Gaussian initialization law. \(\Phi(\vartheta)=\varphi_\vartheta\) names the setting's initialization-gate map rule. \(\Gamma=\Phi(\Theta)\) is its finite range. \(\Psi_{\mathcal D,h}\) is the best-risk table on that range, \(F_{\mathcal D,h}=\Psi_{\mathcal D,h}\circ\Phi\), \(Z_{\mathcal D,h}\) is the prescribed realized learner loss, and \(g_{\mathcal D,h}\) is its finite conditional sample average.
- Helper-object surface classification: \(\mathcal P_{\rm gate}\), \(F_{\mathcal D,h}\), the bound (15), and the dimension conclusion (16) are public-facing outputs. \(\Theta,\gamma,\Phi,\Gamma\), and \(Z_{\mathcal D,h}\) are appendix-local objects used to expose measurability and probability provenance. \(\Psi_{\mathcal D,h}\) and \(g_{\mathcal D,h}\) are proof-local tables/functions and are not exported downstream.
- Constant provenance: \(d_{\rm path},\varepsilon,\delta_0,T,\eta,r,M_r,G_r,s_0,\kappa\) come directly from `setting.md`. The finite support bound \(3^{d_{\rm path}|\mathcal X|}\) is proved in Lemma~\ref{lem:p1-i3-step006-gate-pushforward} and is used only for measurability, not as a theorem-facing rate. No free constant, threshold, radius, or error term is introduced.
- Assumption provenance: The event \(E_r\) and its probability bound are primitive under Assumption~\ref{assump:robust-tube}; no trajectory or gate fact is extracted from that primitive. The stable conditional inequality is derived by the accepted step_005 dependency. Gate-map measurability and finite support are proved in Lemma~\ref{lem:p1-i3-step006-gate-pushforward}; learner-loss measurability and the event split are proved in Proposition~\ref{prop:p1-i3-step006-event-split}. No generated invariant is reclassified as primitive.
- Quantifier and law note: \(\mathcal P_{\rm gate}=\Phi_\#\gamma\) depends only on the already fixed architecture and initialization distribution. The functions \(F,\Psi,Z,g\) may depend on the later arbitrary \((\mathcal D,h)\), but the law does not. The proof splits an expectation under \(\gamma\); it never replaces \(\gamma\) or \(\mathcal P_{\rm gate}\) by a conditional law.
- Measurability and optimizer note: Finite gate support makes the best-risk functional measurable as a finite table. The proof uses only infimum values and the accepted pointwise candidate comparison; it never selects a minimizing \(w\), measurably or otherwise.
- Diagnostic boundary: `global_proof.md` was not read or used for this step.
