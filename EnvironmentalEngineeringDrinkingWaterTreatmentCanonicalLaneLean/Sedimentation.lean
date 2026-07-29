import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure SedimentationPackage where
  basinArea : Float
  overflowRate : Float
  detentionTime : Float
  sludgeRemovalEfficiency : Float

tructure SedimentationEvidence (S : SedimentationPackage) where
  basinAreaClosed : S.basinArea > 0.0
  overflowRateClosed : S.overflowRate > 0.0 ∧ S.overflowRate < 50.0
  detentionTimeClosed : S.detentionTime >= 1.0 ∧ S.detentionTime <= 6.0
  sludgeRemovalEfficiencyClosed : S.sludgeRemovalEfficiency > 0.9

def SedimentationClosed (S : SedimentationPackage) : Prop :=
  S.basinArea > 0.0 ∧ (S.overflowRate > 0.0 ∧ S.overflowRate < 50.0) ∧
  (S.detentionTime >= 1.0 ∧ S.detentionTime <= 6.0) ∧ S.sludgeRemovalEfficiency > 0.9

theorem sedimentation_closed_from_evidence (S : SedimentationPackage)
    (E : SedimentationEvidence S) : SedimentationClosed S := by
  exact And.intro E.basinAreaClosed (And.intro E.overflowRateClosed (And.intro E.detentionTimeClosed E.sludgeRemovalEfficiencyClosed))

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse