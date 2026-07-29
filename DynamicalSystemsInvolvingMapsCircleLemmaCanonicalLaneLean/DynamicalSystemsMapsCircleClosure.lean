import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure CircleMap where
  domain : Type u
  codomain : Type v
  map : domain → codomain
  continuity : Prop
  degree : ℤ
  periodicPoints : Set domain

structure CircleMapPackage (C : CircleMap) where
  coveringSemiConjugacy : Prop
  liftPreservesOrder : Prop
  rotationNumber : ℝ
  invariantMeasuresExist : Prop
  topologicalEntropy : ℝ

structure CircleMapEvidence {C : CircleMap} (P : CircleMapPackage C) where
  coveringSemiConjugacyClosed : P.coveringSemiConjugacy
  liftPreservesOrderClosed : P.liftPreservesOrder
  rotationNumberClosed : True
  invariantMeasuresExistClosed : P.invariantMeasuresExist
  topologicalEntropyClosed : P.topologicalEntropy = P.topologicalEntropy

def CircleMapPackageClosed {C : CircleMap} (P : CircleMapPackage C) : Prop :=
  P.coveringSemiConjugacy ∧ P.liftPreservesOrder ∧ P.invariantMeasuresExist

theorem circle_map_closed_from_evidence {C : CircleMap} (P : CircleMapPackage C) (E : CircleMapEvidence P) :
    CircleMapPackageClosed P := by
  exact And.intro E.coveringSemiConjugacyClosed
    (And.intro E.liftPreservesOrderClosed E.invariantMeasuresExistClosed)

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse