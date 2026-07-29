import EconomicsExperimentalEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsExperimentalEconomicsCanonicalLaneLean

structure SocialPreferencesPackage where
  ultimatumGame : Prop
  dictatorGame : Prop
  reciprocityModel : Prop
  inequityAversion : Prop
  experimentalEvidence : Prop

structure SocialPreferencesEvidence (S : SocialPreferencesPackage) where
  ultimatumGameClosed : S.ultimatumGame
  dictatorGameClosed : S.dictatorGame
  reciprocityModelClosed : S.reciprocityModel
  inequityAversionClosed : S.inequityAversion
  experimentalEvidenceClosed : S.experimentalEvidence

def SocialPreferencesClosed (S : SocialPreferencesPackage) : Prop :=
  S.ultimatumGame ∧ S.dictatorGame ∧ S.reciprocityModel ∧
  S.inequityAversion ∧ S.experimentalEvidence

theorem social_preferences_closed_from_evidence
    (S : SocialPreferencesPackage) (E : SocialPreferencesEvidence S) :
    SocialPreferencesClosed S := by
  exact And.intro E.ultimatumGameClosed
    (And.intro E.dictatorGameClosed
      (And.intro E.reciprocityModelClosed
        (And.intro E.inequityAversionClosed E.experimentalEvidenceClosed)))

end EconomicsExperimentalEconomicsCanonicalLaneLean
end HautevilleHouse