import functions

theorem id_compose { f : S → T }
: id ∘ f = f := by
  apply funext
  intro x
  show f (x) = f x
  rfl
