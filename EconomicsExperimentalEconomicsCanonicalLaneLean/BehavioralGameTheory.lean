import EconomicsExperimentalEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure BehavioralGameTheoryPackage where
  prisonerDilemma : Prop
  publicGoodsGame : Prop
  coordinationGame : Prop
  levelKReasoning : Prop
  experimentalFindings : Prop

structure BehavioralGameTheoryEvidence (B : BehavioralGameTheoryPackage) where
  prisonerDilemmaClosed : B.prisonerDilemma
  publicGoodsGameClosed : B.publicGoodsGame
  coordinationGameClosed : B.coordinationGame
  levelKReasoningClosed : B.levelKReasoning
  experimentalFindingsClosed : B.experimentalFindings

def BehavioralGameTheoryClosed (B : BehavioralGameTheoryPackage) : Prop :=
  B.prisonerDilemma ∧ B.publicGoodsGame ∧ B.coordinationGame ∧
  B.levelKReasoning ∧ B.experimentalFindings

theorem behavioral_game_theory_closed_from_evidence
    (B : BehavioralGameTheoryPackage) (E : BehavioralGameTheoryEvidence B) :
    BehavioralGameTheoryClosed B := by
  exact And.intro E.prisonerDilemmaClosed
    (And.intro E.publicGoodsGameClosed
      (And.intro E.coordinationGameClosed
        (And.intro E.levelKReasoningClosed E.experimentalFindingsClosed)))

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse