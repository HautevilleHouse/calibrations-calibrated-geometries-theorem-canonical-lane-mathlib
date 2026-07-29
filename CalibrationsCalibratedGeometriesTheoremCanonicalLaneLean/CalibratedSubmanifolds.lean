import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure CalibratedSubmanifold where
  manifold : Type u
  calibrationForm : Type v
  closedness : Prop
  comassCondition : Prop
  homologyClass : Prop

structure CalibrationEvidence (M : CalibratedSubmanifold) where
  closednessClosed : M.closedness
  comassConditionClosed : M.comassCondition
  homologyClassClosed : M.homologyClass

def CalibratedSubmanifoldClosed (M : CalibratedSubmanifold) : Prop :=
  M.closedness ∧ M.comassCondition ∧ M.homologyClass

theorem calibrated_submanifold_closed_from_evidence (M : CalibratedSubmanifold) (E : CalibrationEvidence M) : CalibratedSubmanifoldClosed M := by
  exact And.intro E.closednessClosed (And.intro E.comassConditionClosed E.homologyClassClosed)

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse
