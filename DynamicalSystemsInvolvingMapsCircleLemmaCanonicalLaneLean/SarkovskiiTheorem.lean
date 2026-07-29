import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean

structure SarkovskiiTheoremPackage {T : CircleMapTopologyPackage} where
  forcingOrderDefined : Prop
  periodThreeImpliesChaos : Prop
  orderingOnNaturalNumbers : Prop
  periodicOrbitsForcedByOrder : Prop
  continuousMapsOnInterval : Prop

structure SarkovskiiTheoremEvidence {T : CircleMapTopologyPackage}
    (S : SarkovskiiTheoremPackage T) where
  forcingOrderDefinedClosed : S.forcingOrderDefined
  periodThreeImpliesChaosClosed : S.periodThreeImpliesChaos
  orderingOnNaturalNumbersClosed : S.orderingOnNaturalNumbers
  periodicOrbitsForcedByOrderClosed : S.periodicOrbitsForcedByOrder
  continuousMapsOnIntervalClosed : S.continuousMapsOnInterval

def SarkovskiiTheoremClosed {T : CircleMapTopologyPackage} (S : SarkovskiiTheoremPackage T) : Prop :=
  S.forcingOrderDefined ∧ S.periodThreeImpliesChaos ∧ S.orderingOnNaturalNumbers ∧ S.periodicOrbitsForcedByOrder ∧ S.continuousMapsOnInterval

theorem sarkovskii_theorem_closed_from_evidence {T : CircleMapTopologyPackage}
    (S : SarkovskiiTheoremPackage T) (E : SarkovskiiTheoremEvidence S) : SarkovskiiTheoremClosed S := by
  exact And.intro E.forcingOrderDefinedClosed
    (And.intro E.periodThreeImpliesChaosClosed
      (And.intro E.orderingOnNaturalNumbersClosed
        (And.intro E.periodicOrbitsForcedByOrderClosed E.continuousMapsOnIntervalClosed)))

end DynamicalSystemsInvolvingMapsCircleLemmaCanonicalLaneLean
end HautevilleHouse