import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure ExperimentalDesign (Subjects : Type u) (Treatments : Type v) where
  randomAssignment : Subjects → Treatments
  treatmentEffect : Treatments → ℝ → ℝ
  nullHypothesis : Prop
  pValue : ℝ
  significanceLevel : ℝ
  hypothesisTest : pValue ≤ significanceLevel → ¬ nullHypothesis

structure ExperimentalEvidence (D : ExperimentalDesign) where
  hypothesisTestClosed : D.hypothesisTest

def ExperimentalDesignClosed (D : ExperimentalDesign) : Prop :=
  D.hypothesisTest

theorem experimental_design_closed_from_evidence (D : ExperimentalDesign) (Ev : ExperimentalEvidence D) :
    ExperimentalDesignClosed D := by
  exact Ev.hypothesisTestClosed

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse