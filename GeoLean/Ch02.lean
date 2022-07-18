import GeoLean
open TarskiAxioms
variable (t:TarskiAxioms)

theorem eq_refl : ∀ A B:Point, δ A B A B := by
intro A B
apply transEq B A A B
apply And.intro
. apply reflEq
. apply reflEq

theorem eq_symmetry : ∀ A B C D:Point, δ A B C D → δ C D A B := by
intro A B C D dabcd
apply transEq A B
apply And.intro
. exact dabcd
. apply eq_refl

theorem eq_trans : ∀ A B C D E F, δ A B C D → δ C D E F → δ A B E F := by
intro A B C D E F dabcd dcdef
apply transEq C D
apply And.intro
. apply eq_symmetry
  exact dabcd
. exact dcdef

theorem eq_left_commutative : ∀ A B C D, δ A B C D → δ B A C D := by
intro A B C D dabcd
apply eq_trans t B A A B
. apply reflEq
. exact dabcd

