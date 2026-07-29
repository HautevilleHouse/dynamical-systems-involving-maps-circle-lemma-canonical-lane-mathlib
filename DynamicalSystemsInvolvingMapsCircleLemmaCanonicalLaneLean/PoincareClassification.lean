import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure PoincareClassificationPackage where
  circleMap : CircleMap ℝ
  rotationRational : Prop
  rotationIrrational : Prop
  periodicPointsCase : Prop
  minimalSetCase : Prop
  denseOrbitCase : Prop

structure PoincareClassificationEvidence (P : PoincareClassificationPackage) where
  rotationRationalClosed : P.rotationRational
  rotationIrrationalClosed : P.rotationIrrational
  periodicPointsCaseClosed : P.periodicPointsCase
  minimalSetCaseClosed : P.minimalSetCase
  denseOrbitCaseClosed : P.denseOrbitCase

def PoincareClassificationClosed (P : PoincareClassificationPackage) : Prop :=
  (P.rotationRational ↔ P.periodicPointsCase) ∧
  (P.rotationIrrational ↔ P.minimalSetCase) ∧
  (P.minimalSetCase → P.denseOrbitCase)

theorem poincare_classification_closed_from_evidence (P : PoincareClassificationPackage) (E : PoincareClassificationEvidence P) : PoincareClassificationClosed P := by
  refine And.intro ?_ (And.intro ?_ ?_)
  · exact ⟨fun h => E.periodicPointsCaseClosed, fun h => E.rotationRationalClosed⟩
  · exact ⟨fun h => E.minimalSetCaseClosed, fun h => E.rotationIrrationalClosed⟩
  · intro h; exact E.denseOrbitCaseClosed

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse