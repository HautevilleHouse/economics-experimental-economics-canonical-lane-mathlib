import EconomicsExperimentalEconomicsCanonicalLaneLean.PreferenceRevelation

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure RandomizationPackage (P : PreferenceRevelationPackage) where
  randomMechanism : Prop
  treatmentAssignment : Prop
  independence : Prop
  monotonicity : Prop

structure RandomizationEvidence {P : PreferenceRevelationPackage}
  (R : RandomizationPackage P) where
  randomMechanismClosed : R.randomMechanism
  treatmentAssignmentClosed : R.treatmentAssignment
  independenceClosed : R.independence
  monotonicityClosed : R.monotonicity

def RandomizationClosed {P : PreferenceRevelationPackage}
  (R : RandomizationPackage P) : Prop :=
  R.randomMechanism ∧ R.treatmentAssignment ∧ R.independence ∧ R.monotonicity

theorem randomization_closed_from_evidence
  {P : PreferenceRevelationPackage} (R : RandomizationPackage P)
  (E : RandomizationEvidence R) : RandomizationClosed R := by
  exact And.intro E.randomMechanismClosed
    (And.intro E.treatmentAssignmentClosed
      (And.intro E.independenceClosed E.monotonicityClosed))

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse