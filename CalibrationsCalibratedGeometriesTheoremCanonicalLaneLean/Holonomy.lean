import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean

structure HolonomyPackage (M : Type u) [TopologicalSpace M] where
  riemannianMetric : Type v
  holonomyGroup : Type w
  reducedHolonomy : Type w
  holonomySubgroupOfSO : Prop
  specialHolonomyCondition : Prop

structure HolonomyEvidence {M : Type u} [TopologicalSpace M] (H : HolonomyPackage M) where
  holonomySubgroupOfSOClosed : H.holonomySubgroupOfSO
  specialHolonomyConditionClosed : H.specialHolonomyCondition

def HolonomyClosed {M : Type u} [TopologicalSpace M] (H : HolonomyPackage M) : Prop :=
  H.holonomySubgroupOfSO ∧ H.specialHolonomyCondition

theorem holonomy_closed_from_evidence {M : Type u} [TopologicalSpace M]
    (H : HolonomyPackage M) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomySubgroupOfSOClosed E.specialHolonomyConditionClosed

end CalibrationsCalibratedGeometriesTheoremCanonicalLaneLean
end HautevilleHouse