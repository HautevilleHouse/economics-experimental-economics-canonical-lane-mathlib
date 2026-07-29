import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure UtilityTheory (ConsumptionSet : Type u) where
  preferences : ConsumptionSet → ConsumptionSet → Prop
  utilityFunction : ConsumptionSet → ℝ
  representation : ∀ x y : ConsumptionSet, preferences x y ↔ utilityFunction x ≥ utilityFunction y

def UtilityClosed (U : UtilityTheory) : Prop :=
  U.representation

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse