import functions
import image_factorization_first_surjective
import image_factorization_second_injective
import image_factorization_is_factorization

theorem image_factorization {S T : Type} ( f : S → T )
: ∃ (V:Type) (g : S → V) (h : V → T), (surjective g) ∧ (injective h) ∧ (h ∘ g = f)
:= by
  sorry
