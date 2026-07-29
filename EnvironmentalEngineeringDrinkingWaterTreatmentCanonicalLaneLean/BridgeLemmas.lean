import canonicalLaneMathlib.AdmissibleClass
import EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DrinkingWaterWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse