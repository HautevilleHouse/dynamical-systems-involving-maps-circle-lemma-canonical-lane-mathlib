import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure CircleLemmaPackage {T : CircleMapTopologyPackage} {D : DenjoyTheoremPackage T} where
  minimizingSequenceExists : Prop
  gapDynamicsControlled : Prop
  invariantCantorSetStructure : Prop
  limitPointsClassified : Prop
  orderPreservingProperty : Prop

structure CircleLemmaEvidence {T : CircleMapTopologyPackage} {D : DenjoyTheoremPackage T}
    (C : CircleLemmaPackage T D) where
  minimizingSequenceExistsClosed : C.minimizingSequenceExists
  gapDynamicsControlledClosed : C.gapDynamicsControlled
  invariantCantorSetStructureClosed : C.invariantCantorSetStructure
  limitPointsClassifiedClosed : C.limitPointsClassified
  orderPreservingPropertyClosed : C.orderPreservingProperty

def CircleLemmaClosed {T : CircleMapTopologyPackage} {D : DenjoyTheoremPackage T}
    (C : CircleLemmaPackage T D) : Prop :=
  C.minimizingSequenceExists ∧ C.gapDynamicsControlled ∧ C.invariantCantorSetStructure ∧ C.limitPointsClassified ∧ C.orderPreservingProperty

theorem circle_lemma_closed_from_evidence {T : CircleMapTopologyPackage}
    {D : DenjoyTheoremPackage T} (C : CircleLemmaPackage T D)
    (E : CircleLemmaEvidence C) : CircleLemmaClosed C := by
  exact And.intro E.minimizingSequenceExistsClosed
    (And.intro E.gapDynamicsControlledClosed
      (And.intro E.invariantCantorSetStructureClosed
        (And.intro E.limitPointsClassifiedClosed E.orderPreservingPropertyClosed)))

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse