import functions

theorem inj_comp_inj_is_inj {S T U : Type} (f : S → T) (g : T → U)
: injective f ∧ injective g → injective ( g ∘ f )
:= by
  intro h
  cases h
  case intro hf hg =>
    intro a b hab
    apply hf
    apply hg
    exact hab
