# Proof Step

## Step Identity

- Sketch attempt: 1
- Step ID: `step_007`
- Unit attempt: 1
- Binding setting SHA-256:
  `a33149a79b6aa9bac978e69ec3b87d7eb3ccba3d5e93abc8daf897a9a122fbf4`
- Binding proof-sketch SHA-256:
  `cc6d2becc9c22c43494d32351fc387ad87c6bb5b8fc0667517a12d42fd9bb8e7`
- Binding proof-sketch-review SHA-256:
  `302cf83a2270c12b59ba079b9a4423e67062238b2f8dbfbc4ca900d0c19c2789`
- Accepted diagnostic global-proof SHA-256 (planning context only):
  `bbb47a7e0753c47fc073d71b9e8e5b0a74d40d79aad7e22c1e8d7bf44c687784`
- Accepted diagnostic global-proof-review SHA-256 (planning context only):
  `490e6b89ecd229a41dac2b24c82bb277cbacfd66acff00f4f5c82fc58ac7cf09`
- Accepted dependency proof SHA-256 (`step_001`):
  `0cd51e748813399f1c1e80bc659200d37f96aa013c97e75eda2adeaf74c5d530`
- Accepted dependency review SHA-256 (`step_001`):
  `83fee520299e99482863c0e2fe5b905f9b8a1aef70cfcb8b933decbdffe19b7c`
- Accepted dependency proof SHA-256 (`step_006`):
  `5177f69ab096c7afcb360bbb2d016461fe16fc334c3eb39f2353945f56c7cf7b`
- Accepted dependency review SHA-256 (`step_006`):
  `3ea50da72012b8307579c24a6a56d25d9c5cab9e90e82cf91e7603879e452e76`

## Target Step Claim

- Intended claim: Solve the \(n_0=km\) fixed point, prove
  \(\log(en_0/v)=O(\log Q)\), and charge `E_good` failure to
  \(\beta_{\mathrm{tr}}\).
- Depends on: `step_001`, `step_006`.
- Assumptions used: Primitive `assump:approximate-dp-regime`; derived trace
  event.
- Technical challenge: Ceiling-aware noncircular scalar closure.
- Intended proof tool or cited result: Direct inequalities and tower/finite
  union accounting.
- Output target: Trace confidence budget and sample envelope.
- Rate objective: Structural/confidence explicit intermediate rate.
- Row-local review status: `PENDING` (the binding `ACCEPTED`
  `proof_sketch_review.md`, rather than this row, is the sketch acceptance
  gate).

The exact positive-branch dictionary used below is the one already produced
before sampling by accepted `step_001`. In current notation,

\[
 \beta_{\rm tr}:=\beta/4,
 \qquad
 a(t):=v+\log(4t/\beta),
 \qquad
 Q(t):=e+\frac{etd^2a(t)}{\alpha v},
\tag{1}
\]
\[
 m(t):=\left\lceil
 C_{\rm blk}\frac{d^2}{\alpha}a(t)\log Q(t)
 \right\rceil,
 \qquad n(t):=tm(t).
\tag{2}
\]
The accepted least feasible teacher count \(k\ge2\) is deterministic and
public; set

\[
 a:=a(k),\qquad Q:=Q(k)=Q_{\rm blk},\qquad
 m:=m(k),\qquad n_0:=n(k)=km.
\tag{3}
\]
No event, sample, partition, trace, source stage, or mechanism output appears
in (1)-(3).

Because the setting deliberately leaves \(C_{\rm blk}\) as a sufficiently
large universal constant, fix it once and for all so that

\[
 C_{\rm blk}>0,
 \qquad
 \frac{C_{\rm blk}}{3600}
 \ge 4+\log(1+C_{\rm blk}).
\tag{4}
\]
This is a genuine universal choice, not a parameter-dependent hypothesis.
For example, \(C_{\rm blk}=144000\) satisfies (4): its left side is \(40\),
whereas
\(1+144000<2^{18}<e^{18}\) gives
\(4+\log(1+144000)<22\). Any later common choice of the universal block
constant need only retain (4). All constants in accepted `step_001`,
including its teacher witness, were proved for a fixed universal
\(C_{\rm blk}>0\), so this admissible specialization does not alter its
dictionary or conclusion.

## Step Proof Status

COMPLETE

## Allowed Assumptions And Dependencies

- Primitive conditions:
  - `assump:approximate-dp-regime`:
    \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\), and
    \(0<\delta<1\). The scalar trace charge uses the first two ranges; the
    accepted teacher witness and the explicit sample envelope retain the
    dependence on all four parameters.
  - The setting-authorized choice of a sufficiently large universal
    \(C_{\rm blk}\), fixed before sampling, is made through the explicit
    universal inequality (4). It is a constant calibration, not a random
    or generated condition.
  - Static probability interface: the formalized branch's quotient master
    sample takes values in the setting-defined discrete sample space, and
    the partition kernel is the fixed finite uniform law drawn
    independently after that sample. This is an original object/procedure
    interface, not a generated measurability, success, or event-membership
    condition; it is used only for the tower conversion.
- Derived invariants supplied by accepted dependencies:
  - Accepted Proposition~\ref{prop:step-001-zero} supplies the exact \(d=0\),
    \(N=0\) singleton bypass.
  - Accepted Lemma~\ref{lem:step-001-calibration} and
    Proposition~\ref{prop:step-001-teacher} supply \(1\le v\le d\), the
    exact functions (1)-(2), the deterministic least feasible \(k\),
    \(2\le k\le\bar k\), and the exact values (3), all before sampling.
  - Accepted Lemma~\ref{lem:step-001-envelope} and
    Proposition~\ref{prop:step-001-teacher} supply the ceiling-aware public
    witness and logarithmic bounds used in the sample envelope below.
  - Accepted Proposition~\ref{prop:step-006-good-event} supplies the exact
    generated event and, for every fixed quotient master sample \(\bar S\),
    the conditional finite-union estimate
    \[
      \Pr_{\mathcal P}
      [E_{\rm good}(\bar S,\mathcal P)^c\mid\bar S]
      \le 4k\left(\frac{en_0}{v}\right)^v
      \exp\!\left(-\frac{m\alpha}{3600d^2}\right).
      \tag{5}
    \]
    Its event is derived, not assumed, and (5) uses the actual ceiled \(m\).
- Local conditional hypotheses: None. The positive-branch conclusions are
  proved from the public tuple and accepted generated event. The \(d=0\)
  branch bypasses every expression containing \(v^{-1}\) or \(d^{-2}\).
- Accepted dependency artifacts:
  - `proof_steps/step_001/proof.md` and
    `proof_steps/step_001/review.md`, with the hashes in `## Step Identity`
    and review status `ACCEPTED`.
  - `proof_steps/step_006/proof.md` and
    `proof_steps/step_006/review.md`, with the hashes in `## Step Identity`
    and review status `ACCEPTED`.

## Local Lemma Map

| Local Unit ID | Unit type | Statement | Contribution to target step |
| ------------- | --------- | --------- | --------------------------- |
| `unit_001` | lemma | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Lemma~\ref{lem:step-001-calibration}, and accepted Proposition~\ref{prop:step-001-teacher}, if \(d\ge1\), then the exact ceiled dictionary (1)-(3) obeys \(en_0/v\le(1+C_{\rm blk})Q\log Q\), hence \(\log(en_0/v)\le C_{\rm fp}\log Q\) with the explicit universal \(C_{\rm fp}:=2+\log(1+C_{\rm blk})\); moreover \(m\le(1+C_{\rm blk})d^2a\log Q/\alpha\). | Closes the occurrence of \(n_0=km\) inside its own trace logarithm while retaining the ceiling remainder explicitly. |
| `unit_002` | lemma | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Lemma~\ref{lem:step-001-envelope}, accepted Proposition~\ref{prop:step-001-teacher}, and Lemma~\ref{lem:step-007-fixed-point}, if \(d\ge1\), then \(n_0\le(1+C_{\rm blk})\bar k d^2a(\bar k)\log Q(\bar k)/\alpha\), and this is at most an explicit universal constant times \(d^4\log(64/(\delta\beta))\Lambda^3(v+\Lambda)/(\varepsilon\alpha)\). | Uses the accepted public witness, rather than an event or an implicit equation, to export a fully parameter-exposed intermediate sample envelope. |
| `unit_003` | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Proposition~\ref{prop:step-006-good-event}, Lemma~\ref{lem:step-007-fixed-point}, and the universal calibration (4), if \(d\ge1\), then \(\frac{m\alpha}{3600d^2}\ge v\log(en_0/v)+\log(4k/\beta_{\rm tr})\), and consequently the conditional probability in (5) is at most \(\beta_{\rm tr}\) for every fixed master sample. | Gives the exact requested domination of the positive exponent over the VC trace term and confidence multiplicity. |
| `unit_004` | proposition | Under Assumption~\ref{assump:approximate-dp-regime}, accepted Proposition~\ref{prop:step-006-good-event}, and Proposition~\ref{prop:step-007-conditional-charge}, if \(d\ge1\), then mixing the data-independent finite partition over any probability law on the setting-defined quotient master-sample space gives \(\Pr[E_{\rm good}^c]\le\beta_{\rm tr}\); this uses a tower integral, not block independence or a second stage union. | Converts the pointwise conditional finite-union estimate into the unconditional trace confidence ledger. |
| `unit_005` | proposition | Under Assumption~\ref{assump:approximate-dp-regime} and accepted Proposition~\ref{prop:step-001-zero}, the \(d=0\) branch bypasses the fixed point exactly; under the same assumption, accepted Proposition~\ref{prop:step-006-good-event}, Lemmas~\ref{lem:step-007-fixed-point} and~\ref{lem:step-007-sample-envelope}, and Proposition~\ref{prop:step-007-conditional-charge}, if \(d\ge1\), then the scalar closure is valid at \(v=1\), \(v=d\), \(k=2\), and \(d=v=1\), retains both sides of the ceiling for \(m\), and is uniform for every \(0<\alpha<1/4\), including limits \(\alpha\downarrow0\). | Discharges every boundary and baseline specialization assigned to this step without claiming a later PAC, privacy, or source-structure result. |

Atomic step = no. The ceiling fixed point, witness-based sample envelope,
exponent domination, probability-mode conversion, and boundary/bypass audit
are distinct obligations.

## Cited Result Applications

No paper theorem is invoked directly in this step. The finite-population
source result used to prove (5) was already restated, instantiated, and
accepted inside `step_006`; the present proof consumes only that accepted
dependency conclusion.

| Result | Restated statement in current notation | Assumptions and object mapping | Exact conclusion used |
| --- | --- | --- | --- |
| Accepted Proposition~\ref{prop:step-001-zero} | If \(d=0\), then \(C\) and \(\bar C\) are singletons and the deterministic quotient learner uses \(N=0\), is \((0,0)\)-DP, and has zero population error. | Its accepted proof discharges `assump:finite-littlestone`; this step uses only its branch conclusion and does not activate positive-dimensional notation. | The exact \(d=0\) bypass in Proposition~\ref{prop:step-007-boundaries}. |
| Accepted Lemma~\ref{lem:step-001-calibration} | On the positive branch, \(1\le v\le d\), and for every integer \(t\ge2\), (1)-(2) are finite legal public quantities. | Translate its \(Q(t),m(t),n(t)\) literally into (1)-(2); no symbol is redefined. | Positivity, denominator legality, and the exact scalar dictionary in every local unit. |
| Accepted Lemma~\ref{lem:step-001-envelope} | With \(\ell=\log(64/(\delta\beta))\), \(R_T=d^2\ell\Lambda^2/\varepsilon\), \(A_{\log}=80+\log(1+C_{\rm blk})\), \(u_C=1+\log C\), and \(t_C=\lceil CR_T\rceil\), one has \(\log t_C,\log Q(t_C)\le A_{\log}u_C\Lambda\). | Use the exact accepted constant \(C=C_{\rm teach}\), so \(t_C=\bar k\). The accepted proof retains the ceiling in \(t_C\). | The two logarithmic witness bounds in Lemma~\ref{lem:step-007-sample-envelope}. |
| Accepted Proposition~\ref{prop:step-001-teacher} | The universal \(C_{\rm teach}=2^{12}A_{\rm def}^2\) makes \(\bar k=\lceil C_{\rm teach}R_T\rceil\) feasible, and the least feasible count satisfies \(2\le k\le\bar k\le2C_{\rm teach}R_T\); afterward \(m=m(k)\) and \(n_0=km(k)\) are fixed exactly. | All source list/noise defects and the feasibility ceiling were discharged in the accepted dependency. This step uses only its deterministic scalar output. | Noncircular chronology and the public witness bound. |
| Accepted Proposition~\ref{prop:step-006-good-event} | For every fixed indexed quotient master sample, the exact simultaneous high/low source trace event obeys (5) with \(c_{\rm tr}=1/3600\). Its proof used one finite union over exact traces and block marginals and no block independence. | The \(a,Q,m,n_0,k,v\) here are exactly those in its accepted statement. No alternate sample, partition, event, trace representative, or exponent is introduced. | The probability input to Proposition~\ref{prop:step-007-conditional-charge}. |
| Lemma~\ref{lem:step-007-fixed-point} | The exact ceiling gives \(en_0/v\le(1+C_{\rm blk})Q\log Q\), \(\log(en_0/v)\le C_{\rm fp}\log Q\), and \(m\le(1+C_{\rm blk})d^2a\log Q/\alpha\). | Proved below from (1)-(3) and positive-branch ranges. | Trace-log domination in Proposition~\ref{prop:step-007-conditional-charge} and sample control in Lemma~\ref{lem:step-007-sample-envelope}. |
| Lemma~\ref{lem:step-007-sample-envelope} | The actual \(n_0\) is bounded by the accepted witness tuple and then by the displayed fully exposed \(d,v,\alpha,\beta,\varepsilon,\delta\) envelope. | Proved below using monotonicity of the already defined scalar dictionary and accepted witness bounds. | The target sample-envelope output and boundary specializations. |
| Proposition~\ref{prop:step-007-conditional-charge} | For every fixed master sample, the exact trace failure probability is at most \(\beta_{\rm tr}\). | The accepted finite-union estimate and the locally proved exact exponent inequality discharge all inputs. | The integrand bound in Proposition~\ref{prop:step-007-tower}. |
| Proposition~\ref{prop:step-007-tower} | Any probability mixture over the setting-defined quotient master-sample space preserves the pointwise partition failure bound, so the joint failure probability is at most \(\beta_{\rm tr}\). | Proved directly by summation/integration of the finite-partition section probability. | The unconditional trace-ledger output. |
| Proposition~\ref{prop:step-007-boundaries} | The positive-branch scalar estimates specialize legally to \(v=1\), \(v=d\), \(k=2\), and \(d=v=1\), retain the ceiling and all positive-\(\alpha\) dependence, while the \(d=0\) branch bypasses every positive-dimensional expression. | Proved below from the accepted zero branch and the preceding named local fixed-point, envelope, and charge results. | The complete boundary and baseline audit in the target assembly. |

## Local Derivation

### unit_001: lemma

**Lemma (Exact ceiling-aware trace fixed point).**
\(\label{lem:step-007-fixed-point}\)
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Lemma~\ref{lem:step-001-calibration}, and accepted
Proposition~\ref{prop:step-001-teacher}, suppose \(d\ge1\), and use the
exact positive-branch dictionary (1)-(3). Define the appendix-local
universal constant

\[
 C_{\rm fp}:=2+\log(1+C_{\rm blk}).
\tag{6}
\]

Then

\[
 \frac{en_0}{v}\le(1+C_{\rm blk})Q\log Q,
 \qquad
 \log\frac{en_0}{v}\le C_{\rm fp}\log Q,
\tag{7}
\]

and the exact block size also obeys

\[
 m\le(1+C_{\rm blk})
 \frac{d^2}{\alpha}a\log Q.
\tag{8}
\]

**Proof.** Accepted Lemma~\ref{lem:step-001-calibration} gives
\(1\le v\le d\), while the parameter regime gives
\(0<\alpha<1/4\). Moreover \(a=v+\log(4k/\beta)>v\ge1\), and
\(Q>e\), hence \(\log Q>1\). Put

\[
 x:=C_{\rm blk}\frac{d^2}{\alpha}a\log Q.
\tag{9}
\]

The ceiling is represented exactly as

\[
 m=\lceil x\rceil=x+\theta,
 \qquad 0\le\theta<1.
\tag{10}
\]

This includes the integer case \(\theta=0\); no ceiling remainder is
dropped. Since

\[
 \frac{d^2}{\alpha}a\log Q>4,
\tag{11}
\]

we have \(1\le d^2a\log Q/\alpha\). Therefore (10) gives

\[
 m\le
 C_{\rm blk}\frac{d^2}{\alpha}a\log Q+1
 \le(1+C_{\rm blk})\frac{d^2}{\alpha}a\log Q,
\]

which proves (8), including the additive ceiling contribution.

For the fixed point itself, substitute \(n_0=k(x+\theta)\) and separate the
ceiling term:

\[
\begin{aligned}
 \frac{en_0}{v}
 &=C_{\rm blk}\log Q
   \left(\frac{ekd^2a}{\alpha v}\right)
   +\frac{ek\theta}{v}\\
 &\le C_{\rm blk}Q\log Q+Q.
\end{aligned}
\tag{12}
\]

Indeed, the first term uses
\(ekd^2a/(\alpha v)\le Q\). For the second,
\(d^2a/\alpha\ge1\) implies

\[
 \frac{ek\theta}{v}\le\frac{ek}{v}
 \le\frac{ekd^2a}{\alpha v}\le Q.
\tag{13}
\]

Because \(\log Q>1\), the last \(Q\) in (12) is at most \(Q\log Q\),
which proves the first inequality in (7). Taking logarithms and using
\(\log\log Q\le\log Q\) gives

\[
\begin{aligned}
 \log\frac{en_0}{v}
 &\le\log(1+C_{\rm blk})+\log Q+\log\log Q\\
 &\le\bigl(2+\log(1+C_{\rm blk})\bigr)\log Q
 =C_{\rm fp}\log Q.
\end{aligned}
\tag{14}
\]

The last step also uses \(\log Q>1\) to bound the fixed positive constant
\(\log(1+C_{\rm blk})\) by
\(\log(1+C_{\rm blk})\log Q\). Equations (12)-(14) close the fixed point
using the same \(n_0=km\) that appears in \(Q,m\), and the trace count.
\(\square\)

### unit_002: lemma

**Lemma (Public-witness sample envelope).**
\(\label{lem:step-007-sample-envelope}\)
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Lemma~\ref{lem:step-001-envelope}, accepted
Proposition~\ref{prop:step-001-teacher}, and
Lemma~\ref{lem:step-007-fixed-point}, suppose \(d\ge1\). Define the accepted
appendix quantities

\[
 \ell:=\log\frac{64}{\delta\beta},
 \qquad
 R_T:=\frac{d^2\ell\Lambda^2}{\varepsilon},
 \qquad
 A_{\log}:=80+\log(1+C_{\rm blk}),
\tag{15}
\]

and the appendix-local universal constant

\[
 H:=A_{\log}(1+\log C_{\rm teach}).
\tag{16}
\]

Then the exact sample size obeys

\[
 n_0
 \le(1+C_{\rm blk})\bar k\frac{d^2}{\alpha}
 a(\bar k)\log Q(\bar k),
\tag{17}
\]

and, more explicitly,

\[
 n_0
 \le
 2(1+C_{\rm blk})C_{\rm teach}H
 \frac{d^4\ell\Lambda^3}{\varepsilon\alpha}
 \bigl[v+(H+3)\Lambda\bigr].
\tag{18}
\]

In particular, with the explicit universal constant

\[
 K_{\rm fp}:=
 2(1+C_{\rm blk})C_{\rm teach}H(H+3),
\tag{19}
\]

one has the fully parameter-exposed intermediate envelope

\[
 n_0\le
 K_{\rm fp}
 \frac{d^4\log(64/(\delta\beta))\Lambda^3}
      {\varepsilon\alpha}
 (v+\Lambda).
\tag{20}
\]

No hidden constant in (18)-(20) depends on
\(d,v,\alpha,\beta,\varepsilon,\delta\).

**Proof.** For integers \(2\le s\le t\), the definition (1) gives
\(a(s)\le a(t)\). Because all factors are positive,
\(sa(s)\le ta(t)\), and hence \(Q(s)\le Q(t)\) and
\(\log Q(s)\le\log Q(t)\). Thus the right side of (8), multiplied by
\(k\), and the accepted inequality \(k\le\bar k\) give

\[
\begin{aligned}
 n_0=km(k)
 &\le(1+C_{\rm blk})k\frac{d^2}{\alpha}
      a(k)\log Q(k)\\
 &\le(1+C_{\rm blk})\bar k\frac{d^2}{\alpha}
      a(\bar k)\log Q(\bar k),
\end{aligned}
\tag{21}
\]

which is (17). This comparison uses monotonicity only after the least
feasible \(k\) and the independently verified public witness \(\bar k\)
have both been produced; it does not assume that the teacher feasible set
is monotone.

The accepted witness is exactly
\(\bar k=\lceil C_{\rm teach}R_T\rceil\). Accepted
Lemma~\ref{lem:step-001-envelope}, instantiated with
\(C=C_{\rm teach}\), and accepted
Proposition~\ref{prop:step-001-teacher} give

\[
 \bar k\le2C_{\rm teach}R_T,
 \qquad
 \log\bar k\le H\Lambda,
 \qquad
 \log Q(\bar k)\le H\Lambda.
\tag{22}
\]

Since \(\Lambda\ge1\), \(\log(1/\beta)\le\Lambda\), and
\(\log4<2\),

\[
\begin{aligned}
 a(\bar k)
 &=v+\log4+\log\bar k+\log(1/\beta)\\
 &\le v+(H+3)\Lambda.
\end{aligned}
\tag{23}
\]

Insert (22)-(23) and
\(R_T=d^2\ell\Lambda^2/\varepsilon\) into (17) to obtain (18).
Finally, \(H+3\ge1\) implies

\[
 v+(H+3)\Lambda\le(H+3)(v+\Lambda),
\]

so (19) turns (18) into (20). Every use of a ceiling is upstream in the
accepted bound \(\bar k\le2C_{\rm teach}R_T\) or explicitly retained in
(8); no additive integer term has been hidden. \(\square\)

### unit_003: proposition

**Proposition (Exact trace-exponent domination and conditional charge).**
\(\label{prop:step-007-conditional-charge}\)
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Proposition~\ref{prop:step-006-good-event},
Lemma~\ref{lem:step-007-fixed-point}, and the universal block calibration
(4), suppose \(d\ge1\). Then

\[
 \boxed{
 \frac{m\alpha}{3600d^2}
 \ge
 v\log\frac{en_0}{v}
 +\log\frac{4k}{\beta_{\rm tr}}
 }
\tag{24}
\]

and, for every fixed indexed quotient master sample \(\bar S\),

\[
 \Pr_{\mathcal P}
 [E_{\rm good}(\bar S,\mathcal P)^c\mid\bar S]
 \le\beta_{\rm tr}=\beta/4.
\tag{25}
\]

**Proof.** The lower side of the exact ceiling (2) is

\[
 m\ge C_{\rm blk}\frac{d^2}{\alpha}a\log Q,
\]

so

\[
 \frac{m\alpha}{3600d^2}
 \ge\frac{C_{\rm blk}}{3600}a\log Q.
\tag{26}
\]

The two positive terms that must be paid are controlled separately. First,
Lemma~\ref{lem:step-007-fixed-point} and \(v\le a\) give

\[
 v\log\frac{en_0}{v}
 \le C_{\rm fp}v\log Q
 \le C_{\rm fp}a\log Q.
\tag{27}
\]

Second, put \(b:=\log(4k/\beta)>0\), so \(a=v+b\). Since
\(\beta_{\rm tr}=\beta/4\), \(\log4<2\le2v\), and
\(\log Q>1\),

\[
\begin{aligned}
 \log\frac{4k}{\beta_{\rm tr}}
 &=\log\frac{16k}{\beta}=b+\log4\\
 &\le b+2v\le2(v+b)=2a\le2a\log Q.
\end{aligned}
\tag{28}
\]

Combining (27)-(28), and recalling
\(C_{\rm fp}=2+\log(1+C_{\rm blk})\), yields the exact opposing-term
bound

\[
\begin{aligned}
 v\log\frac{en_0}{v}
 +\log\frac{4k}{\beta_{\rm tr}}
 &\le(C_{\rm fp}+2)a\log Q\\
 &=\bigl(4+\log(1+C_{\rm blk})\bigr)a\log Q\\
 &\le\frac{C_{\rm blk}}{3600}a\log Q
 \le\frac{m\alpha}{3600d^2},
\end{aligned}
\tag{29}
\]

where the penultimate inequality is precisely (4), and the last is (26).
This proves (24) with every multiplicity and confidence term visible.

Now apply the accepted conditional finite-union estimate (5). Taking the
logarithm of its deterministic upper bound and using (24),

\[
\begin{aligned}
 &\log(4k)+v\log\frac{en_0}{v}
   -\frac{m\alpha}{3600d^2}\\
 &\qquad\le
 \log(4k)-\log\frac{4k}{\beta_{\rm tr}}
 =\log\beta_{\rm tr}.
\end{aligned}
\tag{30}
\]

Exponentiating (30) proves (25). The finite trace/block union is already
the one in accepted Proposition~\ref{prop:step-006-good-event}; no new
factor, stage union, or independence assertion is inserted. \(\square\)

### unit_004: proposition

**Proposition (Tower conversion for the trace ledger).**
\(\label{prop:step-007-tower}\)
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Proposition~\ref{prop:step-006-good-event}, and
Proposition~\ref{prop:step-007-conditional-charge}, suppose \(d\ge1\).
Let \(\nu\) be any probability law on the setting-defined discrete quotient
master-sample space and, after drawing the sample, draw the data-independent
uniform labeled partition \(\mathcal P\) prescribed by the setting. Then

\[
 \Pr_{\bar S\sim\nu,\,\mathcal P}
 [E_{\rm good}(\bar S,\mathcal P)^c]
 \le\beta_{\rm tr}.
\tag{31}
\]

**Proof.** The partition space is finite. For each fixed sample, accepted
Proposition~\ref{prop:step-006-good-event} forms the bad section by a finite
union over its finite exact trace set and the \(k\) labeled blocks. Thus its
conditional section probability is the function

\[
 r(\bar s):=
 \Pr_{\mathcal P}[E_{\rm good}(\bar s,\mathcal P)^c
 \mid\bar S=\bar s].
\]

On the setting's quotient sample interface this section is measurable; in
particular, the quotient sample space is discrete in the declared branch,
and the finite-partition sum has measurable sections. Proposition
~\ref{prop:step-007-conditional-charge} proves the pointwise inequality
\(0\le r(\bar s)\le\beta_{\rm tr}\) for every \(\bar s\), without a
distributional or realizability hypothesis. Therefore the tower identity
is simply

\[
\begin{aligned}
 \Pr[E_{\rm good}^c]
 &=\int r(\bar s)\,\nu(d\bar s)\\
 &\le\int\beta_{\rm tr}\,\nu(d\bar s)
 =\beta_{\rm tr}.
\end{aligned}
\tag{32}
\]

This is a mixture of one-partition failure probabilities. It neither
conditions on a successful generated event nor multiplies block success
probabilities. The same event is reused across the fixed source stages, so
there is no additional stage union in (32). \(\square\)

### unit_005: proposition

**Proposition (Boundary integrity and null-branch bypass).**
\(\label{prop:step-007-boundaries}\)
Under Assumption~\ref{assump:approximate-dp-regime}, accepted
Proposition~\ref{prop:step-001-zero},
accepted Proposition~\ref{prop:step-006-good-event},
Lemma~\ref{lem:step-007-fixed-point},
Lemma~\ref{lem:step-007-sample-envelope}, and
Proposition~\ref{prop:step-007-conditional-charge}, the following
piecewise conclusions hold: Item 7 applies when \(d=0\), and Items 1-6
apply when \(d\ge1\).

1. At \(v=1\), (7), (18), (24), and the charge (25) remain valid with no
   division by zero and with trace logarithm \(\log(en_0)\).
2. At \(v=d\ge1\), (7), (18), and (24) remain valid, the trace term is
   \(d\log(en_0/d)\), and the factor \(d^4(v+\Lambda)\) in (20) becomes
   \(d^4(d+\Lambda)\), whose polynomial \(v\)-term is \(d^5\). This is only
   the fixed-point baseline specialization, not a final sample-complexity
   theorem.
3. At \(k=2\), all scalar inequalities remain valid. No proof line requires
   block independence; accepted (5) already treats the two complementary
   blocks through their marginal laws and a finite union.
4. At \(d=v=1\), every denominator in (1)-(3), (7), and (24) is positive,
   \(Q=e+eka/\alpha>e\), and the same constants apply.
5. The ceiling is retained in both useful directions:
   \(m\ge C_{\rm blk}d^2a\log Q/\alpha\) in (26), while (10)-(13) pay its
   entire additive remainder in the logarithmic fixed point and (8), (17)
   pay it in the sample envelope.
6. For every \(0<\alpha<1/4\), the proof is uniform and uses no positive
   lower cutoff on \(\alpha\). Thus it remains valid along any sequence
   \(\alpha\downarrow0\); the explicit \(1/\alpha\), \(Q\), and logarithmic
   growth remain visible. The excluded value \(\alpha=0\) is not claimed.
7. If \(d=0\), accepted Proposition~\ref{prop:step-001-zero} gives the exact
   \(N=0\) singleton law. The positive-branch fact \(v\ge1\), the partition,
   \(m,k,n_0,Q\), and \(E_{\rm good}\) are not constructed, so no expression
   containing \(v^{-1}\) or \(d^{-2}\) is evaluated and the trace ledger
   contributes zero failure.

**Proof.** For Item 1, the accepted positive-branch range is
\(1\le v\le d\), and substitution \(v=1\) in (1), (7), (18), and (24)
leaves every quantity finite. For Item 2, substitution \(v=d\) turns
\(d^4(v+\Lambda)\) in (20) into \(d^4(d+\Lambda)\), while the exact trace
power in (5) becomes \(d\); no inequality changes direction. Item 3 follows
because \(k\ge2\) is used only through positive logarithms and accepted
(5), whose proof did not factor the block law. Item 4 is the common
specialization of Items 1-3 and the strict parameter ranges.

Item 5 is exactly the pair of ceiling inequalities (10), (12)-(13), and
(26). For Item 6, every use of \(\alpha\) is through its strict positive
range, (11), or an explicitly displayed \(1/\alpha\) term; the constants in
(4), (6), (16), and (19) are independent of \(\alpha\). Item 7 is precisely
the branch conclusion of accepted
Proposition~\ref{prop:step-001-zero}; it is logically prior to every
positive-branch definition. \(\square\)

## Target-Step Assembly

Accepted Lemma~\ref{lem:step-001-calibration} and accepted
Proposition~\ref{prop:step-001-teacher} first produce the exact public
dictionary (1)-(3), including the least feasible \(k\), its independent
witness \(\bar k\), the ceiled block size \(m\), and \(n_0=km\), before a
sample or event exists. Lemma~\ref{lem:step-007-fixed-point} then separates
the ceiling as \(m=x+\theta\) and proves

\[
 \log(en_0/v)
 \le\bigl(2+\log(1+C_{\rm blk})\bigr)\log Q.
\tag{33}
\]

This is the requested noncircular fixed-point closure for the exact public
\(Q=Q(k)\), not for an alternate sample size. Lemma
~\ref{lem:step-007-sample-envelope} next uses \(k\le\bar k\) and the
accepted ceiling-aware witness bounds to prove both the exact auxiliary
envelope (17) and the fully exposed intermediate envelope (20).

Accepted Proposition~\ref{prop:step-006-good-event} supplies the conditional
finite-union bound (5) with the actual \(m\). Proposition
~\ref{prop:step-007-conditional-charge} proves the exact bridge inequality

\[
 \frac{m\alpha}{3600d^2}
 \ge v\log(en_0/v)+\log(4k/\beta_{\rm tr}),
\]

so that (5) is at most \(\beta_{\rm tr}\) for every fixed master sample.
Proposition~\ref{prop:step-007-tower} integrates this pointwise bound over
the master sample and proves the same unconditional trace charge. Finally,
Proposition~\ref{prop:step-007-boundaries} verifies \(v=1\), \(v=d\),
\(k=2\), \(d=v=1\), the complete ceiling remainder, arbitrary positive
\(\alpha\) tending to zero, and the exact \(d=0\) bypass.

These named results prove exactly the `step_007` sketch row: the fixed point,
the trace confidence ledger, and the explicit intermediate sample envelope.
They do not claim any later source restriction, list, mechanism, privacy,
population-risk, PAC, comparison-arm, or final-rate conclusion.

## Explicit Rate Audit

- Exposed variables: The exact interface exposes
  \(d,v,\alpha,\beta,\varepsilon,\delta\), the accepted public
  \(k,\bar k,a,Q,m,n_0\), \(\beta_{\rm tr}=\beta/4\),
  \(\ell=\log(64/(\delta\beta))\), and the setting-defined \(\Lambda\).
  The principal outputs are (20), (24), (25), and (31).
- Hidden constants may depend on: Only the once-fixed universal source
  constant \(c_{\rm AT}\) through the accepted constants
  \(A_{\log},A_{\rm def},C_{\rm teach}\), and the once-fixed universal
  \(C_{\rm blk}\) satisfying (4). Consequently
  \(C_{\rm fp},H,K_{\rm fp}\) are universal numerical constants.
- Hidden constants may not depend on:
  \(d,v,\alpha,\beta,\varepsilon,\delta,X,\Sigma,C,D,c,\bar S\), a trace,
  block, partition, source stage, decomposition, list, event, kernel,
  mechanism transcript, or output.
- Fixed quantities: The inequalities are pointwise for every allowed
  parameter tuple. There is no asymptotic conclusion in this step. In the
  boundary check \(\alpha\downarrow0\), the remaining displayed parameters
  may be held fixed, and every \(\alpha\)-dependent term remains explicit.
- Probability mode: First, conditional high probability over the single
  data-independent uniform labeled partition for every fixed master sample.
  Second, unconditional high probability after integrating this pointwise
  conditional bound over any probability law on the setting-defined
  quotient master-sample space. No mechanism randomness or population-error
  event is claimed here.
- Horizon mode: One fixed finite master sample and one fixed finite
  partition, simultaneous over its \(k\) blocks. The accepted event is
  reused across the finite source stages with no additional union and no
  all-time, stopping-time, or asymptotic upgrade.
- Norm mode: Master-sample and block empirical binary zero-one error through
  the accepted exact trace event. This step makes no population-risk or
  other norm claim.
- Admissibility conditions and auxiliary tolerances:
  \(d\ge1\), \(1\le v\le d\), \(k\ge2\),
  \(0<\alpha,\beta<1/4\), \(0<\varepsilon\le1\),
  \(0<\delta<1\), exact \(\beta_{\rm tr}=\beta/4\), exact public
  dictionary (1)-(3), and the universal constant condition (4). The
  \(d=0\) branch bypasses all positive-dimensional conditions.
- Term absorption or simplification inequalities:
  - The ceiling remainder is paid explicitly in (12)-(13):
    \[
      \frac{en_0}{v}
      \le C_{\rm blk}Q\log Q+Q
      \le(1+C_{\rm blk})Q\log Q.
    \]
  - The exact logarithmic fixed point is (14):
    \[
      \log(en_0/v)\le
      [2+\log(1+C_{\rm blk})]\log Q.
    \]
  - The confidence multiplicity is not hidden:
    \[
      \log(4k/\beta_{\rm tr})
      =\log(16k/\beta)\le2a\log Q.
    \]
  - The negative exponent domination is the displayed inequality (29),
    ending in the exact bridge (24).
  - The witness and ceiling terms are exposed in (17)-(18) before the
    universal simplification (20).
- Probability conversion: Accepted `step_006` takes the only finite union,
  over exact trace/block clauses, to obtain (5). Equation (30) charges that
  conditional bound to \(\beta_{\rm tr}\). Equation (32) then applies the
  tower integral. No product of dependent block probabilities and no
  second union are used.
- Contribution to any Rate Specialization Bridge: Equations (17)-(20) are
  an intermediate sample envelope for the VC-sensitive branch. They retain
  every exposed parameter and all logarithmic factors. Eliminating these
  logarithms into the setting's eventual public \(R_{\rm VC}\) format is a
  later assigned step and is not asserted here.
- Baseline-reduction check: At \(v=1\), the trace exponent has one VC power
  and (20) retains the \(d^4\) structural factor. At \(v=d\), (20) reads
  \(d^4(d+\Lambda)\) times its displayed logarithmic prefactor, so its
  polynomial \(v\)-term is exactly \(d^5\). At \(k=2\), the finite
  union remains valid despite complementary blocks. At \(d=v=1\), all
  denominators are positive. For every positive \(\alpha\), including
  sequences tending to zero, no constant changes. At \(d=0\), the exact
  no-data branch is used and no positive-branch scalar is evaluated.

## Blockers

None

## Notation And Assumption Notes

- Setting-defined/public-facing objects:
  \(d,v,\alpha,\beta,\varepsilon,\delta,\Lambda,C_{\rm blk},k,m,n_0,a,Q,
  \bar k\), and \(E_{\rm good}\) retain exactly their setting or
  accepted-dependency meanings. The minimal exported interface consists of
  (20), (24), (25), and (31); no new public helper dictionary is exported.
- Appendix-local objects: \(\beta_{\rm tr}=\beta/4\),
  \(\ell,R_T,A_{\log},A_{\rm def},C_{\rm teach}\) are inherited from accepted
  `step_001`; \(C_{\rm fp},H,K_{\rm fp}\) are defined in (6), (16), and
  (19) solely to package universal constants in this proof. Their
  provenance is the exact public dictionary and accepted witness, not a
  boundedness assumption.
- Proof-local objects: \(x\) and the exact ceiling remainder
  \(\theta\in[0,1)\) in (9)-(10), the confidence abbreviation
  \(b=\log(4k/\beta)\), the arbitrary master-sample law \(\nu\), and the
  section probability \(r(\bar s)\) are used only inside their respective
  derivations. None is exported.
- Constant provenance: \(c_{\rm tr}=1/3600\) is inherited from accepted
  Proposition~\ref{prop:step-006-good-event}; \(C_{\rm blk}\) is the
  setting's sufficiently large universal block constant and receives the
  explicit legal calibration (4); all other constants are direct formulas
  in fixed universal constants. No free finite or bounded quantity is
  introduced.
- Assumption provenance: The parameter ranges are primitive under
  Assumption~\ref{assump:approximate-dp-regime}. The least feasible \(k\),
  public witness, exact ceiling, and \(n_0=km\) are deterministic derived
  outputs of accepted `step_001`. The exact trace event and conditional
  finite-union estimate are derived outputs of accepted `step_006`.
  The fixed-point, exponent domination, section measurability on the
  setting-defined discrete sample interface, and tower conversion are
  proved by the named local results. No event membership, sample-size
  equation, boundedness property, block independence, later source-validity
  fact, or PAC conclusion is used as a primitive condition or local
  conditional hypothesis.
- Noncircular chronology: Public parameters determine all candidate
  dictionaries; accepted `step_001` verifies \(\bar k\), takes the least
  feasible \(k\), and only then evaluates \(m=m(k)\) and \(n_0=km\). The
  sample and partition are drawn afterward, and only then is
  \(E_{\rm good}\) evaluated. Thus the event cannot define, select, or
  alter its own sample size.
- Boundary provenance: \(v=1\), \(v=d\), \(k=2\), \(d=v=1\), the ceiling
  remainder, \(\alpha\downarrow0\), and \(d=0\) are discharged explicitly in
  Proposition~\ref{prop:step-007-boundaries}; none is left to a later
  informal convention.
- Diagnostic boundary: The paired global proof and global-proof review have
  the hashes in `## Step Identity`, and the review status is `ACCEPTED`.
  They were read only for the step-relevant planning suggestion to separate
  the ceiling fixed point, exponent domination, and tower charge. Neither
  diagnostic artifact is proof evidence, a cited result, an assumption
  source, or authority to change the target claim.
- Evidence boundary: No prior same-step artifact, prior idea branch,
  `proof_history/` artifact, unrelated proof step, tracker, worker log,
  final artifact, or accepted-results artifact was read or used as current
  proof evidence.
