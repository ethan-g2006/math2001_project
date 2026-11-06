import functions

theorem surj_comp_surj_is_surj {S T U : Type} (f : S → T) (g : T → U)
: surjective f ∧ surjective g → surjective ( g ∘ f )
:= by
  unfold surjective -- replace "surjective" with def
  intro h xu -- simplify goal into some assumptions
  have ⟨hf, hg⟩ := h -- get two sides of conjuction
  have ⟨y, hy⟩ := hg xu -- get rid of univeral and existential, assign value of y
  have ⟨xs, hx⟩ := hf y -- split out hf
  rw [← hy]
  exists xs -- use the y we have
  rw [← hx]
  rfl -- by definition of composite functions i assume
