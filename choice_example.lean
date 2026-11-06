

open Classical
#print choice
#print Nonempty
#print indefiniteDescription
example { S : Type } { P : S → Prop } { Q : Prop }
( h : ∃ (x : S), P x ) ( h' : ∀ (x : S), ( P x → Q ) ) 
: Q := by
  sorry
