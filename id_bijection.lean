import functions

theorem id_bijection { S : Type }
: ( bijective ( id : S → S ) ) := by
  unfold bijective
  apply And.intro
  case left =>
    intro p q hpq
    apply hpq
  case right =>
    intro s
    exists s
    
