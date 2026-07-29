import calibrationsCalibratedGeometriesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

def ConstrainedCalibratedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_calibrated_endgame (A : AdmissibleClass) :
    ConstrainedCalibratedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse