import EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure WaterTreatmentProcessPackage where
  processName : String
  removalMechanism : String
  designParameters : Prop
  performanceData : Prop
  costModel : Prop

structure WaterTreatmentProcessEvidence (P : WaterTreatmentProcessPackage) where
  removalMechanismClosed : P.removalMechanism
  designParametersClosed : P.designParameters
  performanceDataClosed : P.performanceData
  costModelClosed : P.costModel

def WaterTreatmentProcessClosed (P : WaterTreatmentProcessPackage) : Prop :=
  P.removalMechanism ∧ P.designParameters ∧ P.performanceData ∧ P.costModel

theorem water_treatment_process_closed_from_evidence
    (P : WaterTreatmentProcessPackage) (E : WaterTreatmentProcessEvidence P) :
    WaterTreatmentProcessClosed P := by
  exact And.intro E.removalMechanismClosed
    (And.intro E.designParametersClosed
      (And.intro E.performanceDataClosed E.costModelClosed))

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse