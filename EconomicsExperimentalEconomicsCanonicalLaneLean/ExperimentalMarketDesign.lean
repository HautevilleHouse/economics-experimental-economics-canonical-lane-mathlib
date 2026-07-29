import EconomicsExperimentalEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure ExperimentalMarketDesignPackage where
  marketClearingRule : Prop
  informationStructure : Prop
  tradingMechanism : Prop
  allocativeEfficiency : Prop
  experimentalImplementation : Prop

structure ExperimentalMarketDesignEvidence (M : ExperimentalMarketDesignPackage) where
  marketClearingRuleClosed : M.marketClearingRule
  informationStructureClosed : M.informationStructure
  tradingMechanismClosed : M.tradingMechanism
  allocativeEfficiencyClosed : M.allocativeEfficiency
  experimentalImplementationClosed : M.experimentalImplementation

def ExperimentalMarketDesignClosed (M : ExperimentalMarketDesignPackage) : Prop :=
  M.marketClearingRule ∧ M.informationStructure ∧ M.tradingMechanism ∧
  M.allocativeEfficiency ∧ M.experimentalImplementation

theorem experimental_market_design_closed_from_evidence
    (M : ExperimentalMarketDesignPackage) (E : ExperimentalMarketDesignEvidence M) :
    ExperimentalMarketDesignClosed M := by
  exact And.intro E.marketClearingRuleClosed
    (And.intro E.informationStructureClosed
      (And.intro E.tradingMechanismClosed
        (And.intro E.allocativeEfficiencyClosed E.experimentalImplementationClosed)))

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse