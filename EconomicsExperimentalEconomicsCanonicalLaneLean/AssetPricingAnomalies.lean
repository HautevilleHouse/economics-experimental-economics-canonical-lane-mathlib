import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure AssetPricingAnomalyPackage where
  anomalyName : String
  expectedReturn : ℝ
  riskFactor : ℝ
  observedReturn : ℝ
  efficientMarketHypothesis : Prop
  violationEvidence : Prop

structure AssetPricingAnomalyEvidence (A : AssetPricingAnomalyPackage) where
  efficientMarketHypothesisClosed : A.efficientMarketHypothesis
  violationEvidenceClosed : A.violationEvidence

def AssetPricingAnomalyClosed (A : AssetPricingAnomalyPackage) : Prop :=
  A.efficientMarketHypothesis ∧ A.violationEvidence

theorem asset_pricing_anomaly_closed_from_evidence (A : AssetPricingAnomalyPackage) (E : AssetPricingAnomalyEvidence A) :
    AssetPricingAnomalyClosed A := by
  exact And.intro E.efficientMarketHypothesisClosed E.violationEvidenceClosed

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse