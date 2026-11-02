import natural_numbers
import times_left_distrib
import times_one
import strong_induction
import lt_succ

private def f : ℕ → ℕ 
| 0 => 0
| ℕ.succ n => n.succ + f n

/- proof using ordinary induction -/
example ( n : ℕ ) : 2 * f n = n * (n + 1) := by
  induction n using ℕ.rec
  sorry


/- proof using strong induction -/
example ( n : ℕ ) : 2 * f n = n * (n + 1) := by
  induction n using strong_induction
  sorry





  


