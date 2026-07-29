import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure MembraneFiltrationPackage where
  membraneIntegrityHeld : Prop
  fluxStable : Prop
  foulingControlled : Prop
  rejectionEfficiencyMet : Prop
  permeateQualityCompliant : Prop

structure MembraneFiltrationEvidence (M : MembraneFiltrationPackage) where
  membraneIntegrityHeldClosed : M.membraneIntegrityHeld
  fluxStableClosed : M.fluxStable
  foulingControlledClosed : M.foulingControlled
  rejectionEfficiencyMetClosed : M.rejectionEfficiencyMet
  permeateQualityCompliantClosed : M.permeateQualityCompliant

def MembraneFiltrationClosed (M : MembraneFiltrationPackage) : Prop :=
  M.membraneIntegrityHeld ∧ M.fluxStable ∧
  M.foulingControlled ∧ M.rejectionEfficiencyMet ∧
  M.permeateQualityCompliant

theorem membrane_filtration_closed_from_evidence (M : MembraneFiltrationPackage)
    (E : MembraneFiltrationEvidence M) : MembraneFiltrationClosed M :=
  And.intro E.membraneIntegrityHeldClosed
    (And.intro E.fluxStableClosed
      (And.intro E.foulingControlledClosed
        (And.intro E.rejectionEfficiencyMetClosed
          E.permeateQualityCompliantClosed)))

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse