import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure CoagulationFlocculationPackage where
  coagulantDose : Float
  rapidMixTime : Float
  flocculationTime : Float
  pHAdjustment : Float

tructure CoagulationFlocculationEvidence (C : CoagulationFlocculationPackage) where
  coagulantDoseClosed : C.coagulantDose > 0.0 ∧ C.coagulantDose < 100.0
  rapidMixTimeClosed : C.rapidMixTime >= 10.0 ∧ C.rapidMixTime <= 60.0
  flocculationTimeClosed : C.flocculationTime >= 10.0 ∧ C.flocculationTime <= 45.0
  pHAdjustmentClosed : C.pHAdjustment >= 5.0 ∧ C.pHAdjustment <= 8.0

def CoagulationFlocculationClosed (C : CoagulationFlocculationPackage) : Prop :=
  (C.coagulantDose > 0.0 ∧ C.coagulantDose < 100.0) ∧
  (C.rapidMixTime >= 10.0 ∧ C.rapidMixTime <= 60.0) ∧
  (C.flocculationTime >= 10.0 ∧ C.flocculationTime <= 45.0) ∧
  (C.pHAdjustment >= 5.0 ∧ C.pHAdjustment <= 8.0)

theorem coagulation_flocculation_closed_from_evidence (C : CoagulationFlocculationPackage)
    (E : CoagulationFlocculationEvidence C) : CoagulationFlocculationClosed C := by
  exact And.intro E.coagulantDoseClosed (And.intro E.rapidMixTimeClosed (And.intro E.flocculationTimeClosed E.pHAdjustmentClosed))

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse