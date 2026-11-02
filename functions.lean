def injective {S T : Type} (f : S → T)
: Prop
:= ∀ (x y : S), f x = f y → x = y

def surjective {S T : Type} (f : S → T)
: Prop
:= ∀ (x : T), ∃ (y : S), f y = x

def bijective {S T : Type} (f : S → T)
: Prop
:= injective f ∧ surjective f

def compose {S T U : Type} (g : T → U) (f : S → T) 
: S → U 
:= fun x => g ( f x )

macro_rules 
| `($g ∘ $f) => `(compose $g $f)

@[app_unexpander compose]
meta def unexpandcompose : Lean.PrettyPrinter.Unexpander
  | `($_ $a $b) => `($a ∘ $b)
  | _ => throw ()

def image { S T : Type } ( f : S → T ) :=
  { x : T // ∃ (y:S), f y = x }

def image_factorization_first { S T : Type } ( f : S → T )
: ( S → image f ) := by
  intro x
  apply Subtype.mk
  case val => exact f x
  case property => 
    apply Exists.intro x
    rfl

def image_factorization_second { S T : Type } ( f : S → T )
: ( image f → T ) := by
  intro y
  exact y.val
