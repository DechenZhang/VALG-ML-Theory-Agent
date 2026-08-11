# Run Configuration

- Run mode: interactive
- Worker model: gpt-5.6-sol
- Worker reasoning effort: max
- Maximum perspectives: 3
- Maximum idea variants per perspective: 30
- Maximum sketch attempts per idea: 10
- Maximum global-proof attempts per accepted sketch: 100
- Maximum proof attempts per step per sketch: 100
- Maximum assembly attempts per accepted sketch: 100
- Acceptance threshold: 7

Interpretation of the requested `all attempt budget=100`: every producer-attempt
budget not separately overridden by the sketch or idea budgets is set to 100.
The budgets count total producer attempts, including attempt 1, rather than only
retries.
