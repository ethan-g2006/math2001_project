import functions
import compose_id_then_first_injective
import compose_id_then_second_surjective

theorem has_inverse_then_bijective { S T : Type }
{ f : S → T } { g : T → S } 
( h_gf : g ∘ f = id ) ( h_fg : f ∘ g = id ) 
: bijective f := by
  sorry
