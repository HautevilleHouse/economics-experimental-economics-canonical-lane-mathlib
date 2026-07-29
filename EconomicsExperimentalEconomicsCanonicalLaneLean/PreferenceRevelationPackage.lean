import EconomicsExperimentalEconomicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure PreferenceRevelationPackage where
  finiteSetOfAlternatives : Prop
  preferenceRelation : Prop
  choiceFunction : Prop
  weakAxiom : Prop
  strongAxiom : Prop

structure PreferenceRevelationEvidence (P : PreferenceRevelationPackage) where
  finiteSetOfAlternativesClosed : P.finiteSetOfAlternatives
  preferenceRelationClosed : P.preferenceRelation
  choiceFunctionClosed : P.choiceFunction
  weakAxiomClosed : P.weakAxiom
  strongAxiomClosed : P.strongAxiom

def PreferenceRevelationClosed (P : PreferenceRevelationPackage) : Prop :=
  P.finiteSetOfAlternatives ∧ P.preferenceRelation ∧ P.choiceFunction ∧ P.weakAxiom ∧ P.strongAxiom

theorem preference_revelation_closed_from_evidence
  (P : PreferenceRevelationPackage) (E : PreferenceRevelationEvidence P) :
  PreferenceRevelationClosed P := by
  exact And.intro E.finiteSetOfAlternativesClosed
    (And.intro E.preferenceRelationClosed
      (And.intro E.choiceFunctionClosed
        (And.intro E.weakAxiomClosed E.strongAxiomClosed)))

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse