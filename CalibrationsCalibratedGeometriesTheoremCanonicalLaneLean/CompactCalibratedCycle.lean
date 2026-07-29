import CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean.CalibratedSubmanifolds

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure CompactCalibratedCyclePackage {C : CalibrationPackage} {S : CalibratedSubmanifoldPackage C} where
  compact : Prop
  massMinimizing : Prop
  homologyClass : Type u
  fundamentalClassMaps : homologyClass → C.calibrationForm
  endpointMatch : Prop

structure CompactCalibratedCycleEvidence {C : CalibrationPackage} {S : CalibratedSubmanifoldPackage C}
    (Z : CompactCalibratedCyclePackage S) where
  compactClosed : Z.compact
  massMinimizingClosed : Z.massMinimizing
  endpointMatchClosed : Z.endpointMatch

def CompactCalibratedCycleClosed {C : CalibrationPackage} {S : CalibratedSubmanifoldPackage C}
    (Z : CompactCalibratedCyclePackage S) : Prop :=
  Z.compact ∧ Z.massMinimizing ∧ Z.endpointMatch

theorem compact_calibrated_cycle_closed_from_evidence
    {C : CalibrationPackage} {S : CalibratedSubmanifoldPackage C}
    (Z : CompactCalibratedCyclePackage S) (E : CompactCalibratedCycleEvidence Z) : CompactCalibratedCycleClosed Z :=
  And.intro E.compactClosed (And.intro E.massMinimizingClosed E.endpointMatchClosed)

def CalibratedWitnessClosed (O : AdmissibleCalibratedObject) : Prop :=
  O.calibratedWitness

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse