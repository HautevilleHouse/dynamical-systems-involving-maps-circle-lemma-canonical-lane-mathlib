import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure CircleMap where
  rotationNumber : ℝ
  lift : ℝ → ℝ
  continuousLift : Continuous lift
  periodicCondition : ∀ x : ℝ, lift (x + 1) = lift x + 1

structure DenjoyTheoremPiece where
  irrationallyRotating : CircleMap
  minimalSetIsFullMeasure : Prop

structure DenjoyData (c : CircleMap) where
  minimalSetIsFullMeasureClosed : Prop

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse