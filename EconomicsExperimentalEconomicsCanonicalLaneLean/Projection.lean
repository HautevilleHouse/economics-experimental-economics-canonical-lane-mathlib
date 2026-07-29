import EconomicsExperimentalEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def economicsProjection : Projection EconomicsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem economics_projection_idempotent (x : EconomicsEndgameState) :
    economicsProjection.toFun (economicsProjection.toFun x) = economicsProjection.toFun x := by
  exact economicsProjection.idempotent x

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse