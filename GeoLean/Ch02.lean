import GeoLean
open TarskiAxioms
variable (t:TarskiAxioms)

theorem cong_reflexivity : ∀ A B:Point, δ A B A B := by
intro A B
apply transEq B A A B
apply And.intro
. apply reflEq
. apply reflEq

theorem cong_symmetry : ∀ A B C D:Point, δ A B C D → δ C D A B := by
intro A B C D dabcd
apply transEq A B
apply And.intro
. exact dabcd
. apply cong_reflexivity

theorem cong_transitivity : ∀ A B C D E F, δ A B C D → δ C D E F → δ A B E F := by
intro A B C D E F dabcd dcdef
apply transEq C D
apply And.intro
. apply cong_symmetry
  exact dabcd
. exact dcdef

theorem cong_left_commutativity : ∀ A B C D, δ A B C D → δ B A C D := by
intro A B C D dabcd
apply cong_transitivity t B A A B
. apply reflEq
. exact dabcd


