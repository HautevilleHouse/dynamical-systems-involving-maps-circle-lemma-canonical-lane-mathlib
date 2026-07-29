import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure DenjoyTheoremPackage where
  orientationPreservingHomeoOnCircle : Prop
  irrationalRotationNumber : Prop
  minimalityImplied : Prop
  nonwanderingSetFull : Prop

structure DenjoyTheoremEvidence (D : DenjoyTheoremPackage) where
  orientationPreservingHomeoOnCircleClosed : D.orientationPreservingHomeoOnCircle
  irrationalRotationNumberClosed : D.irrationalRotationNumber
  minimalityImpliedClosed : D.minimalityImplied
  nonwanderingSetFullClosed : D.nonwanderingSetFull

def DenjoyTheoremClosed (D : DenjoyTheoremPackage) : Prop :=
  D.orientationPreservingHomeoOnCircle ∧ D.irrationalRotationNumber ∧
  D.minimalityImplied ∧ D.nonwanderingSetFull

theorem denjoy_theorem_closed_from_evidence (D : DenjoyTheoremPackage)
    (E : DenjoyTheoremEvidence D) : DenjoyTheoremClosed D := by
  exact And.intro E.orientationPreservingHomeoOnCircleClosed
    (And.intro E.irrationalRotationNumberClosed
      (And.intro E.minimalityImpliedClosed E.nonwanderingSetFullClosed))

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse