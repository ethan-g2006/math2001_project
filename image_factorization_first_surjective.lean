import functions

theorem image_factorization_first_surjective { S T : Type } ( f : S → T )
: surjective ( image_factorization_first f ) := by
  unfold surjective
  intro imx
  cases imx.property with
  | intro y hy =>
      apply Exists.intro y
      apply Subtype.ext
      exact hy
