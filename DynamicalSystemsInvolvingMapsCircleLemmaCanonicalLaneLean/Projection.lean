import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

def circleLemmaProjection : Projection CircleMapPackage := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem circle_lemma_projection_idempotent (x : CircleMapPackage) :
    circleLemmaProjection.toFun (circleLemmaProjection.toFun x) = circleLemmaProjection.toFun x := by
  exact circleLemmaProjection.idempotent x

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse
