import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure DisinfectionPackage where
  pathogenReductionLog : Prop
  contactTimeAdequate : Prop
  residualDisinfectantMaintained : Prop
  disinfectionByproductControlled : Prop
  regulatoryCompliance : Prop

structure DisinfectionEvidence (D : DisinfectionPackage) where
  pathogenReductionLogClosed : D.pathogenReductionLog
  contactTimeAdequateClosed : D.contactTimeAdequate
  residualDisinfectantMaintainedClosed : D.residualDisinfectantMaintained
  disinfectionByproductControlledClosed : D.disinfectionByproductControlled
  regulatoryComplianceClosed : D.regulatoryCompliance

def DisinfectionClosed (D : DisinfectionPackage) : Prop :=
  D.pathogenReductionLog ∧ D.contactTimeAdequate ∧
  D.residualDisinfectantMaintained ∧ D.disinfectionByproductControlled ∧
  D.regulatoryCompliance

theorem disinfection_closed_from_evidence (D : DisinfectionPackage)
    (E : DisinfectionEvidence D) : DisinfectionClosed D :=
  And.intro E.pathogenReductionLogClosed
    (And.intro E.contactTimeAdequateClosed
      (And.intro E.residualDisinfectantMaintainedClosed
        (And.intro E.disinfectionByproductControlledClosed
          E.regulatoryComplianceClosed)))

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse