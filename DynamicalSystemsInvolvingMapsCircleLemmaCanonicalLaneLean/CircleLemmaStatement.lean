import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean.CircleMapDynamics

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure CircleLemmaPackage (M : CircleMapPackage) where
  degreeNonZero : Prop
  liftStrictlyIncreasing : Prop
  periodicPointExists : Prop
  rotationNumberRational : Prop
  periodicPointDense : Prop

structure CircleLemmaEvidence {M : CircleMapPackage} (L : CircleLemmaPackage M) where
  periodicPointExistsClosed : L.periodicPointExists
  rotationNumberRationalClosed : L.rotationNumberRational
  periodicPointDenseClosed : L.periodicPointDense

def CircleLemmaClosed {M : CircleMapPackage} (L : CircleLemmaPackage M) : Prop :=
  L.periodicPointExists ∧ L.rotationNumberRational ∧ L.periodicPointDense

theorem circle_lemma_closed_from_evidence {M : CircleMapPackage} (L : CircleLemmaPackage M) (E : CircleLemmaEvidence L) :
    CircleLemmaClosed L := by
  exact And.intro E.periodicPointExistsClosed
    (And.intro E.rotationNumberRationalClosed E.periodicPointDenseClosed)

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse
