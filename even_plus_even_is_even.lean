import even_plus_is_same_parity
import times_right_distrib

theorem even_plus_even_is_even (m n : ℕ)
: is_even m ∧ is_even n → is_even (m + n)
:= by
  intro h
  have hm := h.left
  have hn := h.right
  unfold is_even
  unfold is_even at hm hn
  unfold divides at hm hn
  unfold divides
  obtain ⟨a, ha⟩ := hm
  obtain ⟨b, hb⟩ := hn
  apply Exists.intro (a+b)
  rewrite [times_right_distrib]
  rewrite [ha]
  rewrite [hb]
  rfl
