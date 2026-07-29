import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure ExperimentalDesign where
  subjects : ℕ
  treatments : List String
  outcomeVariable : String
  randomization : Prop
  controlGroup : Prop
  statisticalPower : ℝ

structure ExperimentEvidence (D : ExperimentalDesign) where
  randomizationClosed : D.randomization
  controlGroupClosed : D.controlGroup
  sufficientPower : D.statisticalPower ≥ 0.8

def ExperimentalDesignValid (D : ExperimentalDesign) : Prop :=
  D.randomization ∧ D.controlGroup ∧ D.statisticalPower ≥ 0.8

theorem experimental_design_valid_from_evidence (D : ExperimentalDesign)
    (E : ExperimentEvidence D) : ExperimentalDesignValid D := by
  exact And.intro E.randomizationClosed (And.intro E.controlGroupClosed E.sufficientPower)

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse