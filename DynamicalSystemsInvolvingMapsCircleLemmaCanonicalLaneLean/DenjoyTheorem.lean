import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure DenjoyTheoremPackage {T : CircleMapTopologyPackage} where
  diffeomorphismCircle : Prop
  irrationalRotationNumber : Prop
  minimalSetClassification : Prop
  topologicalConjugacyToRotation : Prop
  smoothnessHypothesis : Prop

structure DenjoyTheoremEvidence {T : CircleMapTopologyPackage} (D : DenjoyTheoremPackage T) where
  diffeomorphismCircleClosed : D.diffeomorphismCircle
  irrationalRotationNumberClosed : D.irrationalRotationNumber
  minimalSetClassificationClosed : D.minimalSetClassification
  topologicalConjugacyToRotationClosed : D.topologicalConjugacyToRotation
  smoothnessHypothesisClosed : D.smoothnessHypothesis

def DenjoyTheoremClosed {T : CircleMapTopologyPackage} (D : DenjoyTheoremPackage T) : Prop :=
  D.diffeomorphismCircle ∧ D.irrationalRotationNumber ∧ D.minimalSetClassification ∧ D.topologicalConjugacyToRotation ∧ D.smoothnessHypothesis

theorem denjoy_theorem_closed_from_evidence {T : CircleMapTopologyPackage}
    (D : DenjoyTheoremPackage T) (E : DenjoyTheoremEvidence D) : DenjoyTheoremClosed D := by
  exact And.intro E.diffeomorphismCircleClosed
    (And.intro E.irrationalRotationNumberClosed
      (And.intro E.minimalSetClassificationClosed
        (And.intro E.topologicalConjugacyToRotationClosed E.smoothnessHypothesisClosed)))

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse