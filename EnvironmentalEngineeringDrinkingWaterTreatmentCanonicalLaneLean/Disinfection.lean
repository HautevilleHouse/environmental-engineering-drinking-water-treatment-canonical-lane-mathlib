import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure DisinfectionPackage where
  disinfectantType : String
  concentration : Float
  contactTime : Float
  inactivationEfficiency : Float

tructure DisinfectionEvidence (D : DisinfectionPackage) where
  disinfectantTypeClosed : D.disinfectantType = "chlorine" ∨ D.disinfectantType = "ozone"
  concentrationClosed : D.concentration > 0.0 ∧ D.concentration < 5.0
  contactTimeClosed : D.contactTime >= 10.0 ∧ D.contactTime <= 60.0
  inactivationEfficiencyClosed : D.inactivationEfficiency > 99.9

def DisinfectionClosed (D : DisinfectionPackage) : Prop :=
  (D.disinfectantType = "chlorine" ∨ D.disinfectantType = "ozone") ∧
  (D.concentration > 0.0 ∧ D.concentration < 5.0) ∧
  (D.contactTime >= 10.0 ∧ D.contactTime <= 60.0) ∧
  D.inactivationEfficiency > 99.9

theorem disinfection_closed_from_evidence (D : DisinfectionPackage)
    (E : DisinfectionEvidence D) : DisinfectionClosed D := by
  exact And.intro E.disinfectantTypeClosed (And.intro E.concentrationClosed (And.intro E.contactTimeClosed E.inactivationEfficiencyClosed))

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse