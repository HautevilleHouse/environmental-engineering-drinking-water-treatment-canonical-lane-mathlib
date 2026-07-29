import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure AdmissibleClass where
  object : DrinkingWaterAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DrinkingWaterWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse