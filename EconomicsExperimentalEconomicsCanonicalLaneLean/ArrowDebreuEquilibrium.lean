import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibrium (Agents : Type u) (Commodities : Type v) where
  endowments : Agents → Commodities → ℝ
  preferences : Agents → (Commodities → ℝ) → Prop
  prices : Commodities → ℝ
  allocations : Agents → Commodities → ℝ
  feasibility : ∀ c : Commodities, ∑ a : Agents, allocations a c = ∑ a : Agents, endowments a c
  optimality : ∀ a : Agents, ∀ bundle : Commodities → ℝ,
    (∀ c : Commodities, bundle c ≥ 0) → (∑ c : Commodities, prices c * bundle c ≤ ∑ c : Commodities, prices c * endowments a c) →
    ¬ (preferences a bundle ∧ ¬ (∀ c : Commodities, bundle c = allocations a c))

structure ArrowDebreuEvidence (E : ArrowDebreuEquilibrium) where
  feasibilityClosed : E.feasibility
  optimalityClosed : E.optimality

def ArrowDebreuClosed (E : ArrowDebreuEquilibrium) : Prop :=
  E.feasibility ∧ E.optimality

theorem arrow_debreu_closed_from_evidence (E : ArrowDebreuEquilibrium) (Ev : ArrowDebreuEvidence E) :
    ArrowDebreuClosed E := by
  exact And.intro Ev.feasibilityClosed Ev.optimalityClosed

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse