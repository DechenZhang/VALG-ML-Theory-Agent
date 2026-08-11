# workflow_feedback.md

Use this template for controller-owned persisted rerun feedback.

Rules:

- The public controller initializes and maintains `workflow_feedback.md` at project root.
- Internal skills read only the matching section for their checkpoint reruns.
- Use `None` when no rerun feedback is pending.
- After a rerun finishes, the controller clears the corresponding section back to `None`.
- `edit` actions do not use this file because the edited artifact itself is the persisted input.

## Global Checkpoints

### Literature Survey

- Pending rerun feedback: None

### Perspective Selection

- Pending rerun feedback: None

## Branch Checkpoints

### perspective_M/idea_N

- Idea checkpoint pending rerun feedback: None
- Formalization checkpoint pending rerun feedback: None
