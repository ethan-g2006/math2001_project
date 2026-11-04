import functions

theorem compose_id { f : S → T }
: f ∘ id = f := by
  apply funext
  intro x
  show f (x) = f x
  rfl
