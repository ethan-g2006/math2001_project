import functions

theorem image_factorization_is_factorization { S T : Type } ( f : S → T )
: ( image_factorization_second f ) ∘ ( image_factorization_first f ) = f := by
  funext x
  unfold image_factorization_second
  unfold image_factorization_first
  rfl
