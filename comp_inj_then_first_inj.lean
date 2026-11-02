import functions

theorem comp_inj_then_first_inj { S T U : Type } { f : S → T } { g : T → U }
( h : injective ( g ∘ f ) )
: injective f := by
  intro p q hpq
  apply h
  show g (f p) = g (f q)
  rewrite [hpq]
  rfl
