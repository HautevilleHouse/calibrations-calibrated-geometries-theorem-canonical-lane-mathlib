import canonicalLaneMathlib.AdmissibleClass
import CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean.Holonomy

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure SpinSevenStructurePackage (M : Type u) [TopologicalSpace M] where
  fourForm : Type v
  closedCondition : Prop
  parallelCondition : Prop
  positiveDefiniteCondition : Prop
  holonomyReduction : HolonomyPackage M

structure SpinSevenStructureEvidence (S : SpinSevenStructurePackage M) where
  closedConditionClosed : S.closedCondition
  parallelConditionClosed : S.parallelCondition
  positiveDefiniteConditionClosed : S.positiveDefiniteCondition
  holonomyReductionClosed : HolonomyClosed S.holonomyReduction

def SpinSevenStructureClosed (S : SpinSevenStructurePackage M) : Prop :=
  S.closedCondition ∧ S.parallelCondition ∧ S.positiveDefiniteCondition ∧ HolonomyClosed S.holonomyReduction

theorem spin_seven_structure_closed_from_evidence (S : SpinSevenStructurePackage M) (E : SpinSevenStructureEvidence S) :
    SpinSevenStructureClosed S := by
  exact And.intro E.closedConditionClosed
    (And.intro E.parallelConditionClosed
      (And.intro E.positiveDefiniteConditionClosed E.holonomyReductionClosed))

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse