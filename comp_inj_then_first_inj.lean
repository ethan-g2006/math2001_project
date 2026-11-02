import functions

theorem comp_inj_then_first_inj { S T U : Type } { f : S → T } { g : T → U }
( h : injective ( g ∘ f ) ) 
: injective f := by
  sorry
