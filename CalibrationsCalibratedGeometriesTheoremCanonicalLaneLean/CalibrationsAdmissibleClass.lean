import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure CalibratedAdmittedObject where
  space : Type u
  calibrationForm : Type v
  closed : Prop
  comass : Prop
  conclusion : closed ∧ comass

def CalibratedWitnessClosed (O : CalibratedAdmittedObject) : Prop :=
  O.closed ∧ O.comass

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse
