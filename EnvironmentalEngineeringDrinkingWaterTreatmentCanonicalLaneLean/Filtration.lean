import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure FiltrationPackage where
  mediaSize : Float
  filtrationRate : Float
  bedDepth : Float
  turbidityRemoval : Float

tructure FiltrationEvidence (F : FiltrationPackage) where
  mediaSizeClosed : F.mediaSize > 0.0 ∧ F.mediaSize < 2.0
  filtrationRateClosed : F.filtrationRate > 0.0 ∧ F.filtrationRate < 15.0
  bedDepthClosed : F.bedDepth >= 0.5 ∧ F.bedDepth <= 2.0
  turbidityRemovalClosed : F.turbidityRemoval > 0.95

def FiltrationClosed (F : FiltrationPackage) : Prop :=
  (F.mediaSize > 0.0 ∧ F.mediaSize < 2.0) ∧
  (F.filtrationRate > 0.0 ∧ F.filtrationRate < 15.0) ∧
  (F.bedDepth >= 0.5 ∧ F.bedDepth <= 2.0) ∧
  F.turbidityRemoval > 0.95

theorem filtration_closed_from_evidence (F : FiltrationPackage)
    (E : FiltrationEvidence F) : FiltrationClosed F := by
  exact And.intro E.mediaSizeClosed (And.intro E.filtrationRateClosed (And.intro E.bedDepthClosed E.turbidityRemovalClosed))

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse