import functions
import surjective_has_right_inverse

theorem bijective_has_inverse { S T : Type } { f : S → T }
: ( bijective f ) → ∃ (g : T → S), g ∘ f = id ∧ f ∘ g = id 
:= by
  sorry
