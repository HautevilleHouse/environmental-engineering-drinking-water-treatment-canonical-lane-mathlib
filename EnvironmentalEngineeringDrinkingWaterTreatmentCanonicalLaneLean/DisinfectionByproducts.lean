import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean

structure TrihalomethaneFormation where
  chlorineDose : ℝ
  naturalOrganicMatter : ℝ
  temperature : ℝ
  ph : ℝ
  thmConcentration : ℝ

structure HaloaceticAcidFormation where
  chlorineDose : ℝ
  bromide : ℝ
  haaConcentration : ℝ

structure DisinfectionByproductPackage where
  thm : TrihalomethaneFormation
  haa : HaloaceticAcidFormation
  dbpControlStrategy : Prop
  regulatoryLimitMet : Prop

structure DisinfectionByproductEvidence (D : DisinfectionByproductPackage) where
  dbpControlStrategyClosed : D.dbpControlStrategy
  regulatoryLimitMetClosed : D.regulatoryLimitMet

def DisinfectionByproductClosed (D : DisinfectionByproductPackage) : Prop :=
  D.dbpControlStrategy ∧ D.regulatoryLimitMet

theorem disinfection_byproduct_closed_from_evidence (D : DisinfectionByproductPackage)
    (E : DisinfectionByproductEvidence D) : DisinfectionByproductClosed D := by
  exact And.intro E.dbpControlStrategyClosed E.regulatoryLimitMetClosed

end EnvironmentalEngineeringDrinkingWaterTreatmentCanonicalLaneLean
end HautevilleHouse
