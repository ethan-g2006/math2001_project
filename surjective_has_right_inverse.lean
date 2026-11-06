import functions

open Classical
theorem surjective_has_right_inverse { S T : Type } { f : S → T }
: surjective f → ∃ (g : T → S), f ∘ g = id
:= by
  sorry
