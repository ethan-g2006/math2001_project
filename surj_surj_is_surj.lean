import functions

theorem surj_surj_is_surj { S T U : Type } { f : S → T } { g : T → U }
( hf : surjective f ) ( hg : surjective g ) 
: surjective ( g ∘ f ) := by
  sorry
