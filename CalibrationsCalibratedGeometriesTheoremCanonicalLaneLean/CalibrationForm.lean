import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure CalibrationFormPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  formDegree : Nat
  calibrationForm : Type w
  closedCondition : Prop
  comassCondition : Prop
  positiveCondition : Prop

structure CalibrationFormEvidence (C : CalibrationFormPackage) where
  closedConditionClosed : C.closedCondition
  comassConditionClosed : C.comassCondition
  positiveConditionClosed : C.positiveCondition

def CalibrationFormClosed (C : CalibrationFormPackage) : Prop :=
  C.closedCondition ∧ C.comassCondition ∧ C.positiveCondition

theorem calibration_form_closed_from_evidence (C : CalibrationFormPackage) (E : CalibrationFormEvidence C) :
    CalibrationFormClosed C := by
  exact And.intro E.closedConditionClosed (And.intro E.comassConditionClosed E.positiveConditionClosed)

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse