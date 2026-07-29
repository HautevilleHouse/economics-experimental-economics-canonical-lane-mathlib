import EconomicsExperimentalEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure DisequilibriumDynamicsPackage where
  initialEndowment : Prop
  priceAdjustmentMechanism : Prop
  excessDemandFunction : Prop
  tatonnementProcess : Prop
  convergenceUnderConditions : Prop

structure DisequilibriumDynamicsEvidence (D : DisequilibriumDynamicsPackage) where
  initialEndowmentClosed : D.initialEndowment
  priceAdjustmentMechanismClosed : D.priceAdjustmentMechanism
  excessDemandFunctionClosed : D.excessDemandFunction
  tatonnementProcessClosed : D.tatonnementProcess
  convergenceUnderConditionsClosed : D.convergenceUnderConditions

def DisequilibriumDynamicsClosed (D : DisequilibriumDynamicsPackage) : Prop :=
  D.initialEndowment ∧ D.priceAdjustmentMechanism ∧ D.excessDemandFunction ∧
  D.tatonnementProcess ∧ D.convergenceUnderConditions

theorem disequilibrium_dynamics_closed_from_evidence
    (D : DisequilibriumDynamicsPackage) (E : DisequilibriumDynamicsEvidence D) :
    DisequilibriumDynamicsClosed D := by
  exact And.intro E.initialEndowmentClosed
    (And.intro E.priceAdjustmentMechanismClosed
      (And.intro E.excessDemandFunctionClosed
        (And.intro E.tatonnementProcessClosed E.convergenceUnderConditionsClosed)))

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse