import EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean.AdmissibleClass

/-!
# Water Quality Package
-/

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure WaterQualityPackage where
  turbidity : Prop
  phLevel : Prop
  dissolvedOxygen : Prop
  totalColiform : Prop

def turbidity (w : WaterQualityPackage) : Prop := w.turbidity
def phLevel (w : WaterQualityPackage) : Prop := w.phLevel
def dissolvedOxygen (w : WaterQualityPackage) : Prop := w.dissolvedOxygen
def totalColiform (w : WaterQualityPackage) : Prop := w.totalColiform

structure WaterQualityEvidence (w : WaterQualityPackage) where
  turbidityClosed : w.turbidity
  phLevelClosed : w.phLevel
  dissolvedOxygenClosed : w.dissolvedOxygen
  totalColiformClosed : w.totalColiform

def WaterQualityClosed (w : WaterQualityPackage) : Prop :=
  w.turbidity ∧ w.phLevel ∧ w.dissolvedOxygen ∧ w.totalColiform

theorem water_quality_closed_from_evidence
  (w : WaterQualityPackage) (e : WaterQualityEvidence w) : WaterQualityClosed w := by
  exact And.intro e.turbidityClosed
    (And.intro e.phLevelClosed
      (And.intro e.dissolvedOxygenClosed e.totalColiformClosed))

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse