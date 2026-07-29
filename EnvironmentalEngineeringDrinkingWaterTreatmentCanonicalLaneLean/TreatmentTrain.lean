import EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean.ContaminantBehavior

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure TreatmentTrainPackage {P : WaterTreatmentProcessPackage}
    {C : ContaminantBehaviorPackage P} where
  unitProcesses : List String
  sequenceOrder : Prop
  overallRemovalEfficiency : ℝ
  hydraulicLoad : Prop
  operationalConstraints : Prop

structure TreatmentTrainEvidence {P : WaterTreatmentProcessPackage}
    {C : ContaminantBehaviorPackage P} (T : TreatmentTrainPackage P C) where
  sequenceOrderClosed : T.sequenceOrder
  hydraulicLoadClosed : T.hydraulicLoad
  operationalConstraintsClosed : T.operationalConstraints

def TreatmentTrainClosed {P : WaterTreatmentProcessPackage}
    {C : ContaminantBehaviorPackage P} (T : TreatmentTrainPackage P C) : Prop :=
  T.sequenceOrder ∧ T.hydraulicLoad ∧ T.operationalConstraints

theorem treatment_train_closed_from_evidence
    {P : WaterTreatmentProcessPackage} {C : ContaminantBehaviorPackage P}
    (T : TreatmentTrainPackage P C) (E : TreatmentTrainEvidence T) :
    TreatmentTrainClosed T := by
  exact And.intro E.sequenceOrderClosed
    (And.intro E.hydraulicLoadClosed E.operationalConstraintsClosed)

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse