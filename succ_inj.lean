import natural_numbers

theorem succ_inj {m n : ℕ} : m.succ = n.succ → m = n := by
  intro h
  let f : ℕ → ℕ 
  | 0 => 0
  | ℕ.succ x => x
  exact congrArg f h
