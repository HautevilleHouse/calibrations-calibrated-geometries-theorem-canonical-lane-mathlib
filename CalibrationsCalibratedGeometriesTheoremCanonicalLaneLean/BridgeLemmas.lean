import calibrationsCalibratedGeometriesTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CalibratedWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse