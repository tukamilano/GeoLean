class TarskiAxioms where 
  Point : Type
  β : Point → Point → Point → Prop
  δ : Point → Point → Point → Point → Prop

  identBet : ∀ x y, (β x y x) → (x = y)
  transBet : ∀ x y z u, (β x y u) ∧ (β y z u) → (β x y z)
  connectBet : ∀ x y z u, (β x y z) ∧ (β x y u) ∧ (x ≠ y) → (β x z u) ∨ (β x u z)
  reflEq : ∀ x y, δ x y y x
  identEq : ∀ x y z, (δ x y z z) → (x = y)
  transEq : ∀ x y z u v w, (δ x y z u) ∧ (δ x y v w) → (δ z u v w)
  pasch : ∀ t x y z u, ∃ v, (β x t u) ∧ (β y u z) → (β x v y) ∧ (β z t v)
  euclid : ∀ t x y z u, ∃ v w, (β x u t) ∧ (β y u z) ∧ (x ≠ u) → (β x z u) ∧ (β x y w) ∧ (β v t w)
  fiveSeg: ∀ x x' y y' z z' u u', (δ x y x' y') ∧ (δ y z y' z') ∧ (δ x u x' u') ∧ (δ y u y' u') ∧ (β x y z) ∧ (β x' y' z') ∧ (x ≠ y) → (δ z u z' u')
  segConstruct : ∀ x y u v, ∃ z, (β x y z) ∧ (δ y z u v)
  lowerD : ∃ x y z, ¬ (β x y z) ∧ ¬ (β y z x) ∧ ¬ (β z x y)
  upperD : ∀ x y z u v, (δ x u x v) ∧ (δ z u z v) ∧ (u ≠ v) → (β x y z) ∨ (β y z x) ∨ (β z x y)

