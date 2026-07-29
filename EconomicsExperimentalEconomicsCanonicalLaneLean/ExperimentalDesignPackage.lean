import EconomicsExperimentalEconomicsCanonicalLaneLean.PreferenceRevelation

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure ExperimentalDesignPackage {P : PreferenceRevelationPackage}
  (R : RandomizationPackage P) where
  controlTreatment : Prop
  randomAssignment : Prop
  incentivizedDecisions : Prop
  demandRevelation : Prop

structure ExperimentalDesignEvidence {P : PreferenceRevelationPackage}
  {R : RandomizationPackage P} (D : ExperimentalDesignPackage R) where
  controlTreatmentClosed : D.controlTreatment
  randomAssignmentClosed : D.randomAssignment
  incentivizedDecisionsClosed : D.incentivizedDecisions
  demandRevelationClosed : D.demandRevelation

def ExperimentalDesignClosed {P : PreferenceRevelationPackage}
  {R : RandomizationPackage P} (D : ExperimentalDesignPackage R) : Prop :=
  D.controlTreatment ∧ D.randomAssignment ∧ D.incentivizedDecisions ∧ D.demandRevelation

theorem experimental_design_closed_from_evidence
  {P : PreferenceRevelationPackage} {R : RandomizationPackage P}
  (D : ExperimentalDesignPackage R) (E : ExperimentalDesignEvidence D) :
  ExperimentalDesignClosed D := by
  exact And.intro E.controlTreatmentClosed
    (And.intro E.randomAssignmentClosed
      (And.intro E.incentivizedDecisionsClosed E.demandRevelationClosed))

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse