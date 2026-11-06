import natural_numbers
import strong_induction
import times_left_distrib
import lt_succ

private def f : ℕ → ℕ
| 0 => 0
| ℕ.succ n => 2 * ( f n ) + 1


example ( n : ℕ ) : f n + 1 = 2^n := by
  sorry
example ( n : ℕ ) : f n + 1 = 2^n := by
  induction n
  case zero =>
    unfold f
    unfold power
    rfl
  case succ n ih =>
    unfold f
    unfold power
    rewrite [<- ih]
    rewrite [<- plus_assoc]
    rewrite [times_left_distrib]
    rfl
