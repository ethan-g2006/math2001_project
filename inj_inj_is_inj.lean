import functions

theorem inj_inj_is_inj { S T U : Type } { f : S → T } { g : T → U }
( hf : injective f ) ( hg : injective g )
: injective ( g ∘ f ) := by
  sorry
