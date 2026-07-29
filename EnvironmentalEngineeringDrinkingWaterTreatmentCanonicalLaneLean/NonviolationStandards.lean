import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean.WaterTreatmentProcessCertificates

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure NonviolationStandardsPackage {F : WaterTreatmentProcessPackage} (P : ProcessParameterPackage F) where
  contaminantLevelBounds : Prop
  removalEfficiencySufficient : Prop
  operationalStability : Prop

structure NonviolationStandardsEvidence {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F} (N : NonviolationStandardsPackage P) where
  contaminantLevelBoundsClosed : N.contaminantLevelBounds
  removalEfficiencySufficientClosed : N.removalEfficiencySufficient
  operationalStabilityClosed : N.operationalStability

def NonviolationStandardsClosed {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F} (N : NonviolationStandardsPackage P) : Prop :=
  N.contaminantLevelBounds ∧ N.removalEfficiencySufficient ∧ N.operationalStability

theorem nonviolation_standards_closed_from_evidence
    {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F} (N : NonviolationStandardsPackage P)
    (E : NonviolationStandardsEvidence N) : NonviolationStandardsClosed N := by
  exact And.intro E.contaminantLevelBoundsClosed
    (And.intro E.removalEfficiencySufficientClosed E.operationalStabilityClosed)

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse
