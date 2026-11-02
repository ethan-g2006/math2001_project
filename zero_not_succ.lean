import natural_numbers

theorem zero_not_succ (n:ℕ) : 0 ≠ n.succ := by
  intro h
  let f : ℕ → Prop 
  | 0 => True
  | ℕ.succ _ => False
  have := congrArg f h
  change True = False at this
  contradiction
