import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure AssetPricingModel (States : Type u) (Assets : Type v) where
  statePrices : States → ℝ
  assetPayoffs : Assets → States → ℝ
  assetPrices : Assets → ℝ
  noArbitrage : ∀ portfolio : Assets → ℝ,
    (∀ s : States, ∑ a : Assets, portfolio a * assetPayoffs a s ≥ 0) →
    (∑ a : Assets, portfolio a * assetPrices a ≥ 0)
  lawOfOnePrice : ∀ a1 a2 : Assets,
    (∀ s : States, assetPayoffs a1 s = assetPayoffs a2 s) → assetPrices a1 = assetPrices a2

structure AssetPricingEvidence (A : AssetPricingModel) where
  noArbitrageClosed : A.noArbitrage
  lawOfOnePriceClosed : A.lawOfOnePrice

def AssetPricingClosed (A : AssetPricingModel) : Prop :=
  A.noArbitrage ∧ A.lawOfOnePrice

theorem asset_pricing_closed_from_evidence (A : AssetPricingModel) (Ev : AssetPricingEvidence A) :
    AssetPricingClosed A := by
  exact And.intro Ev.noArbitrageClosed Ev.lawOfOnePriceClosed

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse