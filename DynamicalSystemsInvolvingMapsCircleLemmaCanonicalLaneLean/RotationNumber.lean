import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure RotationNumberPackage {T : CircleMapTopologyPackage} where
  rotationNumberComputed : Prop
  rationalRotationClassification : Prop
  periodicOrbitsExist : Prop
  rotationNumberContinuousInParameter : Prop
  monotonicityUnderConjugation : Prop

structure RotationNumberEvidence {T : CircleMapTopologyPackage}
    (R : RotationNumberPackage T) where
  rotationNumberComputedClosed : R.rotationNumberComputed
  rationalRotationClassificationClosed : R.rationalRotationClassification
  periodicOrbitsExistClosed : R.periodicOrbitsExist
  rotationNumberContinuousInParameterClosed : R.rotationNumberContinuousInParameter
  monotonicityUnderConjugationClosed : R.monotonicityUnderConjugation

def RotationNumberClosed {T : CircleMapTopologyPackage} (R : RotationNumberPackage T) : Prop :=
  R.rotationNumberComputed ∧ R.rationalRotationClassification ∧ R.periodicOrbitsExist ∧ R.rotationNumberContinuousInParameter ∧ R.monotonicityUnderConjugation

theorem rotation_number_closed_from_evidence {T : CircleMapTopologyPackage}
    (R : RotationNumberPackage T) (E : RotationNumberEvidence R) : RotationNumberClosed R := by
  exact And.intro E.rotationNumberComputedClosed
    (And.intro E.rationalRotationClassificationClosed
      (And.intro E.periodicOrbitsExistClosed
        (And.intro E.rotationNumberContinuousInParameterClosed E.monotonicityUnderConjugationClosed)))

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse