import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure CircleMapCombinatorialPackage where
  rotationNumberRational : Prop
  periodicPointExists : Prop
  combinatorialRotationSet : Type
  minimalSetFamily : Prop

structure CircleMapCombinatorialEvidence (C : CircleMapCombinatorialPackage) where
  rotationNumberRationalClosed : C.rotationNumberRational
  periodicPointExistsClosed : C.periodicPointExists
  minimalSetFamilyClosed : C.minimalSetFamily

def CircleMapCombinatorialClosed (C : CircleMapCombinatorialPackage) : Prop :=
  C.rotationNumberRational ∧ C.periodicPointExists ∧ C.minimalSetFamily

theorem circle_map_combinatorial_closed_from_evidence (C : CircleMapCombinatorialPackage)
    (E : CircleMapCombinatorialEvidence C) : CircleMapCombinatorialClosed C := by
  exact And.intro E.rotationNumberRationalClosed
    (And.intro E.periodicPointExistsClosed E.minimalSetFamilyClosed)

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse