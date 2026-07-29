import DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

def ConstrainedCircleLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_circle_lemma_endgame (A : AdmissibleClass) :
    ConstrainedCircleLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse