import natural_numbers
import ne_succ

theorem lt_succ (n : ℕ)
: n < n.succ := by
  unfold lt
  apply And.intro
  case left =>
    unfold le
    apply Exists.intro 1
    rfl
  case right =>
    exact ne_succ n

