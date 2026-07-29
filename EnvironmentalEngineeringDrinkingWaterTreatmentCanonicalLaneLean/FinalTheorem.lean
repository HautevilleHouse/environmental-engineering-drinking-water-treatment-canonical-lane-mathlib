import canonicalLaneMathlib.AdmissibleClass
import EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean.BridgeLemmas
import EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

def ConstrainedDrinkingWaterTreatmentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_drinking_water_treatment_endgame (A : AdmissibleClass) :
    ConstrainedDrinkingWaterTreatmentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse