import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure ExpectedUtilityPackage where
  outcomeSpace : Type u
  lotteries : Type v
  preferenceRelation : lotteries → lotteries → Prop
  continuity : Prop
  independence : Prop
  completeness : Prop
  transitivity : Prop
  utilityFunction : lotteries → ℝ
  expectedUtilityRepresentation : Prop

structure ExpectedUtilityEvidence (E : ExpectedUtilityPackage) where
  continuityClosed : E.continuity
  independenceClosed : E.independence
  completenessClosed : E.completeness
  transitivityClosed : E.transitivity
  expectedUtilityRepresentationClosed : E.expectedUtilityRepresentation

def ExpectedUtilityClosed (E : ExpectedUtilityPackage) : Prop :=
  E.continuity ∧ E.independence ∧ E.completeness ∧ E.transitivity ∧ E.expectedUtilityRepresentation

theorem expected_utility_closed_from_evidence (E : ExpectedUtilityPackage) (Ev : ExpectedUtilityEvidence E) :
    ExpectedUtilityClosed E := by
  exact And.intro Ev.continuityClosed
    (And.intro Ev.independenceClosed
      (And.intro Ev.completenessClosed
        (And.intro Ev.transitivityClosed Ev.expectedUtilityRepresentationClosed)))

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse