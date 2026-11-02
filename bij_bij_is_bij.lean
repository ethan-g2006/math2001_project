import functions
import inj_inj_is_inj
import surj_surj_is_surj

theorem bij_bij_is_bij { S T U : Type } { f : S → T } { g : T → U }
( hf : bijective f ) ( hg : bijective g )
: bijective ( g ∘ f ) := by
  sorry
