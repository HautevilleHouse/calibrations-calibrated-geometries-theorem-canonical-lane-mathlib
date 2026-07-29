import HautevilleHouse.CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean.CalibratedSubmanifold

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure CalibratedCurrentPackage {C : CalibrationFormPackage} {S : CalibratedSubmanifoldPackage C} where
  current : Type u
  support : Type v
  calibrationPairing : Prop
  massMinimizing : Prop
  calibratedCondition : calibrationPairing ∧ massMinimizing

structure CalibratedCurrentEvidence {C : CalibrationFormPackage} {S : CalibratedSubmanifoldPackage C} (T : CalibratedCurrentPackage C S) where
  calibrationPairingClosed : T.calibrationPairing
  massMinimizingClosed : T.massMinimizing

def CalibratedCurrentClosed {C : CalibrationFormPackage} {S : CalibratedSubmanifoldPackage C} (T : CalibratedCurrentPackage C S) : Prop :=
  T.calibrationPairing ∧ T.massMinimizing

theorem calibrated_current_closed_from_evidence {C : CalibrationFormPackage} {S : CalibratedSubmanifoldPackage C} (T : CalibratedCurrentPackage C S) (E : CalibratedCurrentEvidence T) : CalibratedCurrentClosed T := by
  exact And.intro E.calibrationPairingClosed E.massMinimizingClosed

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse