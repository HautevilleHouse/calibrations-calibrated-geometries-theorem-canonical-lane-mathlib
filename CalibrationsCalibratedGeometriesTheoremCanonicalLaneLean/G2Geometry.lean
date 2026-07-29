import canonicalLaneMathlib.AdmissibleClass
import CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean.Holonomy

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure G2StructurePackage (M : Type u) [TopologicalSpace M] where
  threeForm : Type v
  closedCondition : Prop
  parallelCondition : Prop
  positiveDefiniteCondition : Prop
  holonomyReduction : HolonomyPackage M

structure G2StructureEvidence (G : G2StructurePackage M) where
  closedConditionClosed : G.closedCondition
  parallelConditionClosed : G.parallelCondition
  positiveDefiniteConditionClosed : G.positiveDefiniteCondition
  holonomyReductionClosed : HolonomyClosed G.holonomyReduction

def G2StructureClosed (G : G2StructurePackage M) : Prop :=
  G.closedCondition ∧ G.parallelCondition ∧ G.positiveDefiniteCondition ∧ HolonomyClosed G.holonomyReduction

theorem g2_structure_closed_from_evidence (G : G2StructurePackage M) (E : G2StructureEvidence G) :
    G2StructureClosed G := by
  exact And.intro E.closedConditionClosed
    (And.intro E.parallelConditionClosed
      (And.intro E.positiveDefiniteConditionClosed E.holonomyReductionClosed))

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse