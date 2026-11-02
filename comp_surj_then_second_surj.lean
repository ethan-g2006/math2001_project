import functions

theorem comp_surj_then_second_surj { S T U : Type } { f : S → T } { g : T → U }
( h : surjective ( g ∘ f ) )
: surjective g := by
  sorry
