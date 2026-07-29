import EconomicsExperimentalEconomicsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EconomicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EconomicsAdmittedObject where
  space : EconomicsSpace
  preferenceProfile : Prop
  choiceCorrespondence : Prop
  revealedPreferenceAxiom : Prop
  conclusion : revealedPreferenceAxiom

structure EconomicsEndgameState where
  object : EconomicsAdmittedObject

def EconomicsWitnessClosed (O : EconomicsAdmittedObject) : Prop :=
  O.revealedPreferenceAxiom

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse