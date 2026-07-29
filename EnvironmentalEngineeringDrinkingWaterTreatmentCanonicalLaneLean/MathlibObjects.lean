import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure WaterTreatmentSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WaterTreatmentAdmittedObject where
  space : WaterTreatmentSpace
  waterQualityStandardSatisfied : Prop
  treatmentProcessFeasible : Prop
  contaminantModel : Type
  contaminantTopology : TopologicalSpace contaminantModel
  treatmentEndpointReached : Prop
  conclusion : treatmentEndpointReached

structure WaterTreatmentEndgameState where
  object : WaterTreatmentAdmittedObject

def WaterTreatmentWitnessClosed (O : WaterTreatmentAdmittedObject) : Prop :=
  O.treatmentEndpointReached

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse
