import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure SolowGrowthModel (Capital : Type u) (Labor : Type v) where
  productionFunction : Capital → Labor → ℝ
  savingRate : ℝ
  depreciationRate : ℝ
  capitalAccumulation : ℝ → ℝ
  steadyStateCapital : ℝ
  steadyStateCondition : savingRate * productionFunction steadyStateCapital 1 = depreciationRate * steadyStateCapital

structure SolowEvidence (S : SolowGrowthModel) where
  steadyStateConditionClosed : S.steadyStateCondition

def SolowGrowthClosed (S : SolowGrowthModel) : Prop :=
  S.steadyStateCondition

theorem solow_closed_from_evidence (S : SolowGrowthModel) (Ev : SolowEvidence S) :
    SolowGrowthClosed S := by
  exact Ev.steadyStateConditionClosed

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse