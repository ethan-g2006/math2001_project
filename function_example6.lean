import natural_numbers
import functions
import plus_comm
import zero_not_succ
import lt_succ
import zero_le
import le_lt_is_lt


private theorem plus_one_gt_zero ( n : ℕ )
: n + 1 > 0 := by
  have h1 := zero_le n
  have h2 := lt_succ n
  have h3 := le_lt_is_lt h1 h2
  have h : n + 1 = n.succ := by
    change n + ℕ.succ ℕ.zero = ℕ.succ n
    rewrite [plus_succ]
    rewrite [plus_zero]
    rfl
  rewrite [h]
  exact h3

def f ( n : ℕ ) : ℕ_pos := ⟨ n+1, plus_one_gt_zero n ⟩


private theorem f_surj : surjective f := by
  unfold surjective
  intro x
  have ⟨a, ha⟩ := x
  cases a
  case zero =>
    unfold lt at ha
    have ⟨hle, hne⟩ := ha
    exfalso
    apply hne
    rfl
  case succ k =>
    apply Exists.intro k
    apply Subtype.ext
    change k + 1 = k.succ
    have h : k + 1 = k.succ := by
      change k + ℕ.succ ℕ.zero = ℕ.succ k
      rewrite [plus_succ]
      rewrite [plus_zero]
      rfl
    rewrite [h]
    rfl

def g ( x : ℕ_pos ) : ℕ := by
  have ⟨ a, ha ⟩ := x  /- this is how you break a subtype
                          into the underlying element of the
                          ambient set and the proof that it
                          lies in the subset -/
  exact a

-- Here is a shorter way of defining the same g
-- def g ( x : ℕ_pos ) : ℕ := x.val


def h ( x : ℕ ) : ℕ := 1 + x

private theorem h_eq_gf : h = g ∘ f := by
  funext x
  unfold compose
  unfold h
  unfold f
  unfold g
  change 1 + x = x + 1
  exact plus_comm 1 x

private theorem g_inj : injective g := by
  unfold injective
  intro x y h
  obtain ⟨a, ha⟩ := x
  obtain ⟨b, hb⟩ := y
  apply Subtype.ext
  change a = b
  change a = b at h
  exact h

private example : ∃ (V:Type) ( p : ℕ → V ) ( i : V → ℕ ),
i ∘ p = h ∧ surjective p ∧ injective i := by
  apply Exists.intro ℕ_pos
  apply Exists.intro f
  apply Exists.intro g
  apply And.intro
  case left =>
    exact h_eq_gf.symm
  case right =>
    apply And.intro
    exact f_surj
    exact g_inj
