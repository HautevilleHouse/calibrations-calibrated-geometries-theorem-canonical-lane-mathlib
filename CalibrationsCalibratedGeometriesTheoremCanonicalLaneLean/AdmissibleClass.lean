import calibrationsCalibratedGeometriesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CalibratedAdmittedObject
  calibrationSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : calibrationSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CalibratedWitnessClosed A.object ∧ (A.calibrationSatisfied ∨ A.remainderRecorded)

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse