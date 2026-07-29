import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure RotationNumberPackage where
  circleMap : CircleMap ℝ
  rotationNumber : ℝ
  existsLimit : Prop
  independentOfStartingPoint : Prop
  rationalIffPeriodic : Prop
  irrationalIffMinimal : Prop

structure RotationNumberEvidence (R : RotationNumberPackage) where
  existsLimitClosed : R.existsLimit
  independentOfStartingPointClosed : R.independentOfStartingPoint
  rationalIffPeriodicClosed : R.rationalIffPeriodic
  irrationalIffMinimalClosed : R.irrationalIffMinimal

def RotationNumberClosed (R : RotationNumberPackage) : Prop :=
  R.existsLimit ∧ R.independentOfStartingPoint ∧ R.rationalIffPeriodic ∧ R.irrationalIffMinimal

theorem rotation_number_closed_from_evidence (R : RotationNumberPackage) (E : RotationNumberEvidence R) : RotationNumberClosed R := by
  exact And.intro E.existsLimitClosed
    (And.intro E.independentOfStartingPointClosed
      (And.intro E.rationalIffPeriodicClosed E.irrationalIffMinimalClosed))

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse