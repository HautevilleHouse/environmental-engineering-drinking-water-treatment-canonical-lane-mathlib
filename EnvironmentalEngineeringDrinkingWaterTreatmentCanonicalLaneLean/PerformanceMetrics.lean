import EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean.RegulatoryStandard

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure PerformanceMetricsPackage {P : WaterTreatmentProcessPackage}
    {C : ContaminantBehaviorPackage P} {T : TreatmentTrainPackage P C}
    {R : RegulatoryStandardPackage P C T} where
  removalEfficiency : ℝ
  costPerVolume : ℝ
  energyConsumption : ℝ
  reliabilityIndex : ℝ
  resilienceIndex : ℝ

structure PerformanceMetricsEvidence {P : WaterTreatmentProcessPackage}
    {C : ContaminantBehaviorPackage P} {T : TreatmentTrainPackage P C}
    {R : RegulatoryStandardPackage P C T} (M : PerformanceMetricsPackage P C T R) where
  removalEfficiencyClosed : M.removalEfficiency
  costPerVolumeClosed : M.costPerVolume
  energyConsumptionClosed : M.energyConsumption
  reliabilityIndexClosed : M.reliabilityIndex
  resilienceIndexClosed : M.resilienceIndex

def PerformanceMetricsClosed {P : WaterTreatmentProcessPackage}
    {C : ContaminantBehaviorPackage P} {T : TreatmentTrainPackage P C}
    {R : RegulatoryStandardPackage P C T} (M : PerformanceMetricsPackage P C T R) : Prop :=
  M.removalEfficiency ∧ M.costPerVolume ∧ M.energyConsumption ∧ M.reliabilityIndex ∧ M.resilienceIndex

theorem performance_metrics_closed_from_evidence
    {P : WaterTreatmentProcessPackage} {C : ContaminantBehaviorPackage P}
    {T : TreatmentTrainPackage P C} {R : RegulatoryStandardPackage P C T}
    (M : PerformanceMetricsPackage P C T R) (E : PerformanceMetricsEvidence M) :
    PerformanceMetricsClosed M := by
  exact And.intro E.removalEfficiencyClosed
    (And.intro E.costPerVolumeClosed
      (And.intro E.energyConsumptionClosed
        (And.intro E.reliabilityIndexClosed E.resilienceIndexClosed)))

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse