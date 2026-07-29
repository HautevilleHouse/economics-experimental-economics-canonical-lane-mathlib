import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure BehavioralAnomalyPackage where
  anomalyName : String
  description : String
  experimentalEvidence : Prop
  violatesExpectedUtility : Prop
  alternativeModel : Prop

structure BehavioralAnomalyEvidence (B : BehavioralAnomalyPackage) where
  experimentalEvidenceClosed : B.experimentalEvidence
  violatesExpectedUtilityClosed : B.violatesExpectedUtility
  alternativeModelClosed : B.alternativeModel

def BehavioralAnomalyClosed (B : BehavioralAnomalyPackage) : Prop :=
  B.experimentalEvidence ∧ B.violatesExpectedUtility ∧ B.alternativeModel

theorem behavioral_anomaly_closed_from_evidence (B : BehavioralAnomalyPackage) (E : BehavioralAnomalyEvidence B) :
    BehavioralAnomalyClosed B := by
  exact And.intro E.experimentalEvidenceClosed (And.intro E.violatesExpectedUtilityClosed E.alternativeModelClosed)

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse