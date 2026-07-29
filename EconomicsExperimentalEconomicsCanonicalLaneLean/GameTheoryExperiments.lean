import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure GameExperimentPackage where
  gameType : String
  payoffMatrix : Prop
  nashEquilibrium : Prop
  observedPlay : Prop
  learningDynamics : Prop
  cooperationRate : ℝ

structure GameExperimentEvidence (G : GameExperimentPackage) where
  payoffMatrixClosed : G.payoffMatrix
  nashEquilibriumClosed : G.nashEquilibrium
  observedPlayClosed : G.observedPlay
  learningDynamicsClosed : G.learningDynamics

def GameExperimentClosed (G : GameExperimentPackage) : Prop :=
  G.payoffMatrix ∧ G.nashEquilibrium ∧ G.observedPlay ∧ G.learningDynamics

theorem game_experiment_closed_from_evidence (G : GameExperimentPackage) (E : GameExperimentEvidence G) :
    GameExperimentClosed G := by
  exact And.intro E.payoffMatrixClosed
    (And.intro E.nashEquilibriumClosed
      (And.intro E.observedPlayClosed E.learningDynamicsClosed))

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse