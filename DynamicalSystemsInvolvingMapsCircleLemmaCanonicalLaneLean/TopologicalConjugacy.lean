import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean.CircleMapDynamics

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure TopologicalConjugacyPackage (M N : CircleMapPackage) where
  homeomorphism : Homeomorphism M.circleCarrier N.circleCarrier
  conjugacyEquation : Prop
  periodicOrbitPreserved : Prop
  rotationNumberPreserved : Prop

structure TopologicalConjugacyEvidence {M N : CircleMapPackage} (C : TopologicalConjugacyPackage M N) where
  conjugacyEquationClosed : C.conjugacyEquation
  periodicOrbitPreservedClosed : C.periodicOrbitPreserved
  rotationNumberPreservedClosed : C.rotationNumberPreserved

def TopologicalConjugacyClosed {M N : CircleMapPackage} (C : TopologicalConjugacyPackage M N) : Prop :=
  C.conjugacyEquation ∧ C.periodicOrbitPreserved ∧ C.rotationNumberPreserved

theorem topological_conjugacy_closed_from_evidence {M N : CircleMapPackage} (C : TopologicalConjugacyPackage M N) (E : TopologicalConjugacyEvidence C) :
    TopologicalConjugacyClosed C := by
  exact And.intro E.conjugacyEquationClosed
    (And.intro E.periodicOrbitPreservedClosed E.rotationNumberPreservedClosed)

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse
