import functions

theorem image_factorization_second_injective { S T : Type } ( f : S → T )
: injective ( image_factorization_second f ) := by
  unfold injective
  intro x y h
  apply Subtype.ext
  exact h

