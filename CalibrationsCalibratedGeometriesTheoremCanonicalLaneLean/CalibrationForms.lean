import CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure CalibrationFormPackage where
  ambient : Type u
  differentialForm : Nat → Type v
  closedCondition : Prop
  comassCondition : Prop

structure CalibrationFormEvidence (C : CalibrationFormPackage) where
  closedConditionClosed : C.closedCondition
  comassConditionClosed : C.comassCondition

def CalibrationFormClosed (C : CalibrationFormPackage) : Prop :=
  C.closedCondition ∧ C.comassCondition

theorem calibration_form_closed_from_evidence
    (C : CalibrationFormPackage) (E : CalibrationFormEvidence C) :
    CalibrationFormClosed C := by
  exact And.intro E.closedConditionClosed E.comassConditionClosed

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse