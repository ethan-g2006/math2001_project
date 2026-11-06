import functions
import inj_inj_is_inj
import surj_surj_is_surj

theorem bij_bij_is_bij { S T U : Type } { f : S → T } { g : T → U }
( hf : bijective f ) ( hg : bijective g )
: bijective ( g ∘ f ) := by
  unfold bijective -- unfolds bijective into injective and surjective
  unfold bijective at hf
  have ⟨hif, hsf⟩ := hf
  unfold bijective at hg
  have ⟨hig, hsg⟩ := hg
  apply And.intro -- two cases, need to prove bijective and injective
  case left =>
    apply inj_inj_is_inj
    exact hif
    exact hig
  case right =>
    apply surj_surj_is_surj
    exact hsf
    exact hsg
