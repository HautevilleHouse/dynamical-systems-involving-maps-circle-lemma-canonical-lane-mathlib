import DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean.DynamicalSystemsMapsCircleClosure

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure CircleLemmaEndpointPackage (P : CircleMapPackage) where
  denjoyTheoremApplied : Prop
  minimalSetClassification : Prop
  periodicPointDensity : Prop
  topologicalTransitivity : Prop
  uniqueErgodicityCases : Prop

structure CircleLemmaEndpointEvidence {P : CircleMapPackage} (E : CircleLemmaEndpointPackage P) where
  denjoyTheoremAppliedClosed : E.denjoyTheoremApplied
  minimalSetClassificationClosed : E.minimalSetClassification
  periodicPointDensityClosed : E.periodicPointDensity
  topologicalTransitivityClosed : E.topologicalTransitivity
  uniqueErgodicityCasesClosed : E.uniqueErgodicityCases

def CircleLemmaEndpointClosed {P : CircleMapPackage} (E : CircleLemmaEndpointPackage P) : Prop :=
  E.denjoyTheoremApplied ∧ E.minimalSetClassification ∧ E.periodicPointDensity ∧
  E.topologicalTransitivity ∧ E.uniqueErgodicityCases

theorem circle_lemma_endpoint_closed_from_evidence {P : CircleMapPackage} (E : CircleLemmaEndpointPackage P)
    (Ev : CircleLemmaEndpointEvidence E) : CircleLemmaEndpointClosed E := by
  exact And.intro Ev.denjoyTheoremAppliedClosed
    (And.intro Ev.minimalSetClassificationClosed
      (And.intro Ev.periodicPointDensityClosed
        (And.intro Ev.topologicalTransitivityClosed Ev.uniqueErgodicityCasesClosed)))

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse