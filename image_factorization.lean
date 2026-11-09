import functions
import image_factorization_first_surjective
import image_factorization_second_injective
import image_factorization_is_factorization

theorem image_factorization {S T : Type} ( f : S → T )
: ∃ (V:Type) (g : S → V) (h : V → T), (surjective g) ∧ (injective h) ∧ (h ∘ g = f)
:= by
  apply Exists.intro (image f)
  apply Exists.intro (image_factorization_first f)
  apply Exists.intro (image_factorization_second f)
  apply And.intro
  case left =>
    exact image_factorization_first_surjective f
  case right =>
    apply And.intro
    exact image_factorization_second_injective f
    exact image_factorization_is_factorization f
    
