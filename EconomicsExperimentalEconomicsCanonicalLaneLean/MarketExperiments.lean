import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure MarketExperimentPackage where
  marketType : String
  tradingMechanism : String
  participants : Nat
  endowments : Prop
  equilibriumPrediction : Prop
  observedOutcome : Prop
  deviationFromEquilibrium : Prop

structure MarketExperimentEvidence (M : MarketExperimentPackage) where
  endowmentSetClosed : M.endowments
  equilibriumPredictionClosed : M.equilibriumPrediction
  observedOutcomeClosed : M.observedOutcome
  deviationFromEquilibriumClosed : M.deviationFromEquilibrium

def MarketExperimentClosed (M : MarketExperimentPackage) : Prop :=
  M.endowments ∧ M.equilibriumPrediction ∧ M.observedOutcome ∧ M.deviationFromEquilibrium

theorem market_experiment_closed_from_evidence (M : MarketExperimentPackage) (E : MarketExperimentEvidence M) :
    MarketExperimentClosed M := by
  exact And.intro E.endowmentSetClosed
    (And.intro E.equilibriumPredictionClosed
      (And.intro E.observedOutcomeClosed E.deviationFromEquilibriumClosed))

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse