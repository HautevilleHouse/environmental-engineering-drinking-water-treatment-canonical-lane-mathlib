import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean.WaterTreatmentProcessPackages

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure CoagulationCertificate {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F} where
  injectionRateOptimal : Prop
  mixingEfficiencyAchieved : Prop
  flocFormationInitiated : Prop
  injectionRateOptimalClosed : injectionRateOptimal
  mixingEfficiencyAchievedClosed : mixingEfficiencyAchieved
  flocFormationInitiatedClosed : flocFormationInitiated
  coagulationEvidence : ProcessEvidence P

def CoagulationCertificateClosed {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F} (C : CoagulationCertificate P) : Prop :=
  C.injectionRateOptimal ∧ C.mixingEfficiencyAchieved ∧ C.flocFormationInitiated ∧ ProcessClosed P

theorem coagulation_certificate_closed {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    (C : CoagulationCertificate P) : CoagulationCertificateClosed C := by
  exact And.intro C.injectionRateOptimalClosed
    (And.intro C.mixingEfficiencyAchievedClosed
      (And.intro C.flocFormationInitiatedClosed (process_closed_from_evidence P C.coagulationEvidence)))

structure SedimentationCertificate {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F} where
  settlingVelocitySufficient : Prop
  tankHydraulicDesignOk : Prop
  weirLoadingControlled : Prop
  settlingVelocitySufficientClosed : settlingVelocitySufficient
  tankHydraulicDesignOkClosed : tankHydraulicDesignOk
  weirLoadingControlledClosed : weirLoadingControlled
  sedimentationEvidence : ProcessEvidence P

def SedimentationCertificateClosed {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F} (S : SedimentationCertificate P) : Prop :=
  S.settlingVelocitySufficient ∧ S.tankHydraulicDesignOk ∧ S.weirLoadingControlled ∧ ProcessClosed P

theorem sedimentation_certificate_closed {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    (S : SedimentationCertificate P) : SedimentationCertificateClosed S := by
  exact And.intro S.settlingVelocitySufficientClosed
    (And.intro S.tankHydraulicDesignOkClosed
      (And.intro S.weirLoadingControlledClosed (process_closed_from_evidence P S.sedimentationEvidence)))

structure FiltrationCertificate {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F} where
  mediaDepthAdequate : Prop
  filtrationRateProper : Prop
  backwashProtocolEffective : Prop
  mediaDepthAdequateClosed : mediaDepthAdequate
  filtrationRateProperClosed : filtrationRateProper
  backwashProtocolEffectiveClosed : backwashProtocolEffective
  filtrationEvidence : ProcessEvidence P

def FiltrationCertificateClosed {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F} (Fi : FiltrationCertificate P) : Prop :=
  Fi.mediaDepthAdequate ∧ Fi.filtrationRateProper ∧ Fi.backwashProtocolEffective ∧ ProcessClosed P

theorem filtration_certificate_closed {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    (Fi : FiltrationCertificate P) : FiltrationCertificateClosed Fi := by
  exact And.intro Fi.mediaDepthAdequateClosed
    (And.intro Fi.filtrationRateProperClosed
      (And.intro Fi.backwashProtocolEffectiveClosed (process_closed_from_evidence P Fi.filtrationEvidence)))

structure DisinfectionCertificate {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F} where
  disinfectionDoseAdequate : Prop
  contactTimeSufficient : Prop
  residualProtectionVerified : Prop
  disinfectionDoseAdequateClosed : disinfectionDoseAdequate
  contactTimeSufficientClosed : contactTimeSufficient
  residualProtectionVerifiedClosed : residualProtectionVerified
  disinfectionEvidence : ProcessEvidence P

def DisinfectionCertificateClosed {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F} (D : DisinfectionCertificate P) : Prop :=
  D.disinfectionDoseAdequate ∧ D.contactTimeSufficient ∧ D.residualProtectionVerified ∧ ProcessClosed P

theorem disinfection_certificate_closed {F : WaterTreatmentProcessPackage} {P : ProcessParameterPackage F}
    (D : DisinfectionCertificate P) : DisinfectionCertificateClosed D := by
  exact And.intro D.disinfectionDoseAdequateClosed
    (And.intro D.contactTimeSufficientClosed
      (And.intro D.residualProtectionVerifiedClosed (process_closed_from_evidence P D.disinfectionEvidence)))

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse
