import functions

theorem compose_id_then_first_injective { S T : Type } 
  { f : S → T } { g : T → S } 
  ( h : g ∘ f = id ) 
  : injective f := by
  sorry
