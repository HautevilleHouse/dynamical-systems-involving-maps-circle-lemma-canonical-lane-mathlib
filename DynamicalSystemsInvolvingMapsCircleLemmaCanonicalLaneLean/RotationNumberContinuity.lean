import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure RotationNumberContinuityPackage where
  continuousFamilyOfMaps : Type
  rotationNumberLimit : Prop
  genericContinuity : Prop
  semicontinuityProperties : Prop

structure RotationNumberContinuityEvidence (R : RotationNumberContinuityPackage) where
  rotationNumberLimitClosed : R.rotationNumberLimit
  genericContinuityClosed : R.genericContinuity
  semicontinuityPropertiesClosed : R.semicontinuityProperties

def RotationNumberContinuityClosed (R : RotationNumberContinuityPackage) : Prop :=
  R.rotationNumberLimit ∧ R.genericContinuity ∧ R.semicontinuityProperties

theorem rotation_number_continuity_closed_from_evidence (R : RotationNumberContinuityPackage)
    (E : RotationNumberContinuityEvidence R) : RotationNumberContinuityClosed R := by
  exact And.intro E.rotationNumberLimitClosed
    (And.intro E.genericContinuityClosed E.semicontinuityPropertiesClosed)

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse