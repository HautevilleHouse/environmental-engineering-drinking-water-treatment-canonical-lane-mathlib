import EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean.TreatmentTrain

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure RegulatoryStandardPackage {P : WaterTreatmentProcessPackage}
    {C : ContaminantBehaviorPackage P} {T : TreatmentTrainPackage P C} where
  maximumContaminantLevel : ℝ
  treatmentTechniqueRequirement : Prop
  monitoringFrequency : ℕ
  complianceDeadline : ℕ

structure RegulatoryStandardEvidence {P : WaterTreatmentProcessPackage}
    {C : ContaminantBehaviorPackage P} {T : TreatmentTrainPackage P C}
    (R : RegulatoryStandardPackage P C T) where
  treatmentTechniqueRequirementClosed : R.treatmentTechniqueRequirement
  monitoringFrequencyClosed : R.monitoringFrequency
  complianceDeadlineClosed : R.complianceDeadline

def RegulatoryStandardClosed {P : WaterTreatmentProcessPackage}
    {C : ContaminantBehaviorPackage P} {T : TreatmentTrainPackage P C}
    (R : RegulatoryStandardPackage P C T) : Prop :=
  R.treatmentTechniqueRequirement ∧ R.monitoringFrequency ∧ R.complianceDeadline

theorem regulatory_standard_closed_from_evidence
    {P : WaterTreatmentProcessPackage} {C : ContaminantBehaviorPackage P}
    {T : TreatmentTrainPackage P C} (R : RegulatoryStandardPackage P C T)
    (E : RegulatoryStandardEvidence R) : RegulatoryStandardClosed R := by
  exact And.intro E.treatmentTechniqueRequirementClosed
    (And.intro E.monitoringFrequencyClosed E.complianceDeadlineClosed)

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse