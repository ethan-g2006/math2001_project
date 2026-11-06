import functions

open Classical
noncomputable def right_inverse_of_surjection { S T : Type } { f : S → T }
: surjective f → { g : T → S // f ∘ g = id } := by
  sorry


