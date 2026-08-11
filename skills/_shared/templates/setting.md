# Formalized Setting

- Basic setup:
- Technical assumptions:
  List every technical assumption as a separate item with a stable ASCII id and a short name. Use ids of the form `assump:<slug>`, for example:
  - `assump:smoothness` (Smoothness): [precise assumption statement]
  Do not write full LaTeX assumption environments here; downstream proof stages cite these ids, and assembly translates them into LaTeX labels such as `\label{assump:smoothness}`.

# Formalized Goal

- Goal statement:
  Either an exact theorem claim or a theorem-ready target specification. If the final rate, constants, or dependence are not yet known, specify the target quantity, claim type or relation, active scope or regime, and success criterion without guessing the final bound.

# Note

- Rigor:
  Include a compact assumption-support summary mapping each theorem-critical `assump:<slug>` id to its standard/literature source or to the novel verification examples recorded in `idea.md`. Preserve the `Source alignment`, `Progress type`, and `Materiality` metadata from `idea.md` when present.
