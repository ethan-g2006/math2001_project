import functions

theorem compose_associative { S T U V : Type }
( f : S → T ) ( g : T → U ) ( h : U → V )
: h ∘ ( g ∘ f ) = ( h ∘ g ) ∘ f := by
  sorry
