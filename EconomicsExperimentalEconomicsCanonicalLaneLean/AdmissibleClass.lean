import EconomicsExperimentalEconomicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure AdmissibleClass where
  object : EconomicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EconomicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse