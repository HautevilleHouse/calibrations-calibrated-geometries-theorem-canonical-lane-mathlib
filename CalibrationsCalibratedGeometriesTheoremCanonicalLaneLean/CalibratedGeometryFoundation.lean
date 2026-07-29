import HautevilleHouse.CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean.CalibratedSubmanifold

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure CalibratedGeometryFoundation where
  calibration : CalibrationFormPackage
  calibrationEvidence : CalibrationFormEvidence calibration
  submanifold : CalibratedSubmanifoldPackage calibration
  submanifoldEvidence : CalibratedSubmanifoldEvidence submanifold

def CalibratedGeometryFoundationClosed (A : CalibratedGeometryFoundation) : Prop :=
  CalibrationFormClosed A.calibration ∧ CalibratedSubmanifoldClosed A.submanifold

theorem calibrated_geometry_foundation_closed_from_evidence
    (A : CalibratedGeometryFoundation) :
    CalibratedGeometryFoundationClosed A := by
  exact And.intro
    (calibration_form_closed_from_evidence A.calibration A.calibrationEvidence)
    (calibrated_submanifold_closed_from_evidence A.submanifold A.submanifoldEvidence)

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse