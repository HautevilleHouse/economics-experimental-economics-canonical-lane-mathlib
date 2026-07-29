import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure ContinuousDoubleAuction (Orders : Type u) where
  bidQueue : List (ℝ × ℕ)
  askQueue : List (ℝ × ℕ)
  transactionPrice : ℝ → ℝ
  volumeTraded : ℕ
  priceDetermination : transactionPrice 0 = (if bidQueue.isEmpty then 0 else (bidQueue.head).1 + (askQueue.head).1) / 2
  marketClearing : volumeTraded = min (∑ (p,q) in bidQueue, q) (∑ (p,q) in askQueue, q)

structure MarketMicrostructureEvidence (M : ContinuousDoubleAuction) where
  priceDeterminationClosed : M.priceDetermination
  marketClearingClosed : M.marketClearing

def MarketMicrostructureClosed (M : ContinuousDoubleAuction) : Prop :=
  M.priceDetermination ∧ M.marketClearing

theorem market_microstructure_closed_from_evidence (M : ContinuousDoubleAuction) (Ev : MarketMicrostructureEvidence M) :
    MarketMicrostructureClosed M := by
  exact And.intro Ev.priceDeterminationClosed Ev.marketClearingClosed

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse