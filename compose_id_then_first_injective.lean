import functions

theorem compose_id_then_first_injective { S T : Type }
  { f : S → T } { g : T → S }
  ( h : g ∘ f = id )
  : injective f := by
  intro p q hpq
  have h1 : g (f p) = p := congrFun h p
  have h2 : g (f q) = q := congrFun h q
  rewrite [hpq] at h1
  rewrite [← h1]
  exact h2
  
