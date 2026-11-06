import natural_numbers
import functions
import plus_comm
import succ_inj


private def f : ℕ × ℕ → ℕ 
| ⟨ a, b ⟩ => a + b


example : ¬ injective f := by
  sorry

example : surjective f := by
  sorry

private def g : ℕ → ℕ 
| a => 1 + a

example : injective g := by
  sorry
