import functions
import compose_associative
import compose_id
import id_compose

theorem left_inverse_right_inverse_same { S T : Type } 
  { f : S → T } { g : T → S } { h : T → S }
  ( h_gf : g ∘ f = id ) ( h_fg : f ∘ h = id )
  : g = h := by
  sorry
