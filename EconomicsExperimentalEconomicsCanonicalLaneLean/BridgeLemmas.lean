import EconomicsExperimentalEconomicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EconomicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse