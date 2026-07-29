import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure WaterSourceQualityPackage where
  sourceType : String
  turbidity : Float
  pH : Float
  organicCarbon : Float
  pathogenIndicator : Float

tructure WaterSourceQualityEvidence (W : WaterSourceQualityPackage) where
  turbidityClosed : W.turbidity > 0.0
  pHClosed : W.pH >= 6.5 ∧ W.pH <= 8.5
  organicCarbonClosed : W.organicCarbon < 5.0
  pathogenIndicatorClosed : W.pathogenIndicator < 1.0

def WaterSourceQualityClosed (W : WaterSourceQualityPackage) : Prop :=
  W.turbidity > 0.0 ∧ (W.pH >= 6.5 ∧ W.pH <= 8.5) ∧ W.organicCarbon < 5.0 ∧ W.pathogenIndicator < 1.0

theorem water_source_quality_closed_from_evidence (W : WaterSourceQualityPackage)
    (E : WaterSourceQualityEvidence W) : WaterSourceQualityClosed W := by
  exact And.intro E.turbidityClosed (And.intro E.pHClosed (And.intro E.organicCarbonClosed E.pathogenIndicatorClosed))

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse