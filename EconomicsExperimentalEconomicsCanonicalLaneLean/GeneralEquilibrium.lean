import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure ArrowDebreuEconomy where
  commodities : Type u
  consumers : Type v
  productionSets : Type w
  endowment : consumers → commodities → ℝ
  preferences : consumers → (commodities → ℝ) → Prop
  prices : commodities → ℝ
  marketClearing : Prop
  equilibriumExists : Prop

structure ArrowDebreuEvidence (E : ArrowDebreuEconomy) where
  marketClearingClosed : E.marketClearing
  equilibriumExistsClosed : E.equilibriumExists

def ArrowDebreuClosed (E : ArrowDebreuEconomy) : Prop :=
  E.marketClearing ∧ E.equilibriumExists

theorem arrow_debreu_closed_from_evidence (E : ArrowDebreuEconomy)
    (Ev : ArrowDebreuEvidence E) : ArrowDebreuClosed E := by
  exact And.intro Ev.marketClearingClosed Ev.equilibriumExistsClosed

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse