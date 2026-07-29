import canonicalLaneMathlib.AdmissibleClass
import CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean.CalibrationForm
import CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean.CalibratedSubmanifold

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure MinimalSubmanifoldPackage (C : CalibrationFormPackage) where
  submanifold : Type u
  embedding : submanifold → C.manifold
  dimension : Nat
  minimalCondition : Prop
  areaMinimizing : Prop

structure MinimalSubmanifoldEvidence {C : CalibrationFormPackage} (M : MinimalSubmanifoldPackage C) where
  minimalConditionClosed : M.minimalCondition
  areaMinimizingClosed : M.areaMinimizing

def MinimalSubmanifoldClosed {C : CalibrationFormPackage} (M : MinimalSubmanifoldPackage C) : Prop :=
  M.minimalCondition ∧ M.areaMinimizing

theorem minimal_submanifold_closed_from_evidence {C : CalibrationFormPackage}
    (M : MinimalSubmanifoldPackage C) (E : MinimalSubmanifoldEvidence M) :
    MinimalSubmanifoldClosed M := by
  exact And.intro E.minimalConditionClosed E.areaMinimizingClosed

theorem calibrated_submanifold_is_minimal {C : CalibrationFormPackage}
    (S : CalibratedSubmanifoldPackage C) (E : CalibratedSubmanifoldEvidence S) :
    MinimalSubmanifoldClosed ({
      submanifold := S.submanifold,
      embedding := S.embedding,
      dimension := S.dimension,
      minimalCondition := True,
      areaMinimizing := E.massMinimizingClosed
    } : MinimalSubmanifoldPackage C) := by
  exact And.intro trivial E.massMinimizingClosed

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse