import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean.WaterTreatmentAnalyticProof

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure CoagulationEvidenceTerms {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    {C : CoagulationCertificate P} where
  injectionRateOptimal : C.injectionRateOptimal
  mixingEfficiencyAchieved : C.mixingEfficiencyAchieved
  flocFormationInitiated : C.flocFormationInitiated
  coagulationClosed : CoagulationClosed P

def CoagulationCertificate.evidenceTerms {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    (C : CoagulationCertificate P) : CoagulationEvidenceTerms C := {
  injectionRateOptimal := C.injectionRateOptimalClosed
  mixingEfficiencyAchieved := C.mixingEfficiencyAchievedClosed
  flocFormationInitiated := C.flocFormationInitiatedClosed
  coagulationClosed := coagulation_closed_from_evidence P C.coagulationEvidence
}

structure SedimentationEvidenceTerms {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    {S : SedimentationCertificate P} where
  settlingVelocitySufficient : S.settlingVelocitySufficient
  tankHydraulicDesignOk : S.tankHydraulicDesignOk
  weirLoadingControlled : S.weirLoadingControlled
  sedimentationClosed : SedimentationClosed P

def SedimentationCertificate.evidenceTerms {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    (S : SedimentationCertificate P) : SedimentationEvidenceTerms S := {
  settlingVelocitySufficient := S.settlingVelocitySufficientClosed
  tankHydraulicDesignOk := S.tankHydraulicDesignOkClosed
  weirLoadingControlled := S.weirLoadingControlledClosed
  sedimentationClosed := sedimentation_closed_from_evidence P S.sedimentationEvidence
}

structure FiltrationEvidenceTerms {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    {Fi : FiltrationCertificate P} where
  mediaDepthAdequate : Fi.mediaDepthAdequate
  filtrationRateProper : Fi.filtrationRateProper
  backwashProtocolEffective : Fi.backwashProtocolEffective
  filtrationClosed : FiltrationClosed P

def FiltrationCertificate.evidenceTerms {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    (Fi : FiltrationCertificate P) : FiltrationEvidenceTerms Fi := {
  mediaDepthAdequate := Fi.mediaDepthAdequateClosed
  filtrationRateProper := Fi.filtrationRateProperClosed
  backwashProtocolEffective := Fi.backwashProtocolEffectiveClosed
  filtrationClosed := filtration_closed_from_evidence P Fi.filtrationEvidence
}

structure DisinfectionEvidenceTerms {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    {D : DisinfectionCertificate P} where
  disinfectionDoseAdequate : D.disinfectionDoseAdequate
  contactTimeSufficient : D.contactTimeSufficient
  residualProtectionVerified : D.residualProtectionVerified
  disinfectionClosed : DisinfectionClosed P

def DisinfectionCertificate.evidenceTerms {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    (D : DisinfectionCertificate P) : DisinfectionEvidenceTerms D := {
  disinfectionDoseAdequate := D.disinfectionDoseAdequateClosed
  contactTimeSufficient := D.contactTimeSufficientClosed
  residualProtectionVerified := D.residualProtectionVerifiedClosed
  disinfectionClosed := disinfection_closed_from_evidence P D.disinfectionEvidence
}

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse
