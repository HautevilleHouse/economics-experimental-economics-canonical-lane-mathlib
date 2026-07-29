import EconomicsExperimentalEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure IndividualChoiceUnderRiskPackage where
  lotterySet : Prop
  preferenceRelation : Prop
  expectedUtilityForm : Prop
  riskAversionParameter : Prop
  choiceRevelation : Prop

structure IndividualChoiceUnderRiskEvidence (C : IndividualChoiceUnderRiskPackage) where
  lotterySetClosed : C.lotterySet
  preferenceRelationClosed : C.preferenceRelation
  expectedUtilityFormClosed : C.expectedUtilityForm
  riskAversionParameterClosed : C.riskAversionParameter
  choiceRevelationClosed : C.choiceRevelation

def IndividualChoiceUnderRiskClosed (C : IndividualChoiceUnderRiskPackage) : Prop :=
  C.lotterySet ∧ C.preferenceRelation ∧ C.expectedUtilityForm ∧
  C.riskAversionParameter ∧ C.choiceRevelation

theorem individual_choice_under_risk_closed_from_evidence
    (C : IndividualChoiceUnderRiskPackage) (E : IndividualChoiceUnderRiskEvidence C) :
    IndividualChoiceUnderRiskClosed C := by
  exact And.intro E.lotterySetClosed
    (And.intro E.preferenceRelationClosed
      (And.intro E.expectedUtilityFormClosed
        (And.intro E.riskAversionParameterClosed E.choiceRevelationClosed)))

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse