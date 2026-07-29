import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure CircleMap (X : Type) where
  domain : Set ℝ
  map : ℝ → ℝ
  continuous : Prop
  degree : Int
  lift : ℝ → ℝ
  liftContinuous : Prop
  liftPeriodic : ∀ x : ℝ, lift (x + 1) = lift x + 1
  circleProjection : ℝ → ℝ := fun x => exp (2π * I * x)

structure CircleMapAdmittedObject where
  circleMap : CircleMap ℝ
  rotationNumberDefined : Prop
  periodicPointsDense : Prop
  topologicalConjugacyCondition : Prop
  conclusion : rotationNumberDefined ∧ periodicPointsDense ∧ topologicalConjugacyCondition

def CircleWitnessClosed (O : CircleMapAdmittedObject) : Prop :=
  O.rotationNumberDefined ∧ O.periodicPointsDense ∧ O.topologicalConjugacyCondition

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse