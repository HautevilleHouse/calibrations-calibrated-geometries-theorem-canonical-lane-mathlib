import canonicalLaneMathlib.AdmissibleClass
import CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean.CalibratedSubmanifolds

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure CalibratedGeometry where
  ambientManifold : Type u
  calibratedCycle : Type v
  massMinimizing : Prop
  calibrationExistence : Prop
  homologicalConstraint : Prop

structure CalibratedGeometryEvidence (G : CalibratedGeometry) where
  massMinimizingClosed : G.massMinimizing
  calibrationExistenceClosed : G.calibrationExistence
  homologicalConstraintClosed : G.homologicalConstraint

def CalibratedGeometryClosed (G : CalibratedGeometry) : Prop :=
  G.massMinimizing ∧ G.calibrationExistence ∧ G.homologicalConstraint

theorem calibrated_geometry_closed_from_evidence (G : CalibratedGeometry) (E : CalibratedGeometryEvidence G) : CalibratedGeometryClosed G := by
  exact And.intro E.massMinimizingClosed (And.intro E.calibrationExistenceClosed E.homologicalConstraintClosed)

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse
