([report_failure_max-defeasibly-dot] of derived-attribute-rule
   (pos-name report_failure_max-defeasibly-dot-gen699)
   (depends-on declare max_imprisonment failure_to_report max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [report_failure_max] ) ) ) ?gen631 <- ( max_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator report_failure_max $? ) ) ( test ( eq ( class ?gen631 ) max_imprisonment ) ) ( not ( and ?gen638 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen637 & : ( >= ?gen637 1 ) ) ) ?gen631 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen633 & : ( not ( member$ report_failure_max $?gen633 ) ) ) ) ) ) => ?gen631 <- ( max_imprisonment ( positive 0 ) )"))

([report_failure_max-defeasibly] of derived-attribute-rule
   (pos-name report_failure_max-defeasibly-gen701)
   (depends-on declare failure_to_report max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [report_failure_max] ) ) ) ?gen638 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen637 & : ( >= ?gen637 1 ) ) ) ?gen631 <- ( max_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen633 & : ( not ( member$ report_failure_max $?gen633 ) ) ) ) ( test ( eq ( class ?gen631 ) max_imprisonment ) ) => ?gen631 <- ( max_imprisonment ( positive 1 ) ( positive-derivator report_failure_max ?gen638 ) )"))

([report_failure_max-overruled-dot] of derived-attribute-rule
   (pos-name report_failure_max-overruled-dot-gen703)
   (depends-on declare max_imprisonment failure_to_report max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [report_failure_max] ) ) ) ?gen631 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen634 ) ( negative-overruled $?gen635 & : ( subseq-pos ( create$ report_failure_max-overruled $?gen634 $$$ $?gen635 ) ) ) ) ( test ( eq ( class ?gen631 ) max_imprisonment ) ) ( not ( and ?gen638 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen637 & : ( >= ?gen637 1 ) ) ) ?gen631 <- ( max_imprisonment ( positive-defeated $?gen633 & : ( not ( member$ report_failure_max $?gen633 ) ) ) ) ) ) => ( calc ( bind $?gen636 ( delete-member$ $?gen635 ( create$ report_failure_max-overruled $?gen634 ) ) ) ) ?gen631 <- ( max_imprisonment ( negative-overruled $?gen636 ) )"))

([report_failure_max-overruled] of derived-attribute-rule
   (pos-name report_failure_max-overruled-gen705)
   (depends-on declare failure_to_report max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [report_failure_max] ) ) ) ?gen638 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen637 & : ( >= ?gen637 1 ) ) ) ?gen631 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen634 ) ( negative-overruled $?gen635 & : ( not ( subseq-pos ( create$ report_failure_max-overruled $?gen634 $$$ $?gen635 ) ) ) ) ( positive-defeated $?gen633 & : ( not ( member$ report_failure_max $?gen633 ) ) ) ) ( test ( eq ( class ?gen631 ) max_imprisonment ) ) => ( calc ( bind $?gen636 ( create$ report_failure_max-overruled $?gen634 $?gen635 ) ) ) ?gen631 <- ( max_imprisonment ( negative-overruled $?gen636 ) )"))

([report_failure_max-support] of derived-attribute-rule
   (pos-name report_failure_max-support-gen707)
   (depends-on declare failure_to_report max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [report_failure_max] ) ) ) ?gen630 <- ( failure_to_report ( defendant ?Defendant ) ) ?gen631 <- ( max_imprisonment ( value 1 ) ( positive-support $?gen633 & : ( not ( subseq-pos ( create$ report_failure_max ?gen630 $$$ $?gen633 ) ) ) ) ) ( test ( eq ( class ?gen631 ) max_imprisonment ) ) => ( calc ( bind $?gen636 ( create$ report_failure_max ?gen630 $?gen633 ) ) ) ?gen631 <- ( max_imprisonment ( positive-support $?gen636 ) )"))

([report_failure_min-defeasibly-dot] of derived-attribute-rule
   (pos-name report_failure_min-defeasibly-dot-gen709)
   (depends-on declare min_imprisonment failure_to_report min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [report_failure_min] ) ) ) ?gen622 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator report_failure_min $? ) ) ( test ( eq ( class ?gen622 ) min_imprisonment ) ) ( not ( and ?gen629 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen628 & : ( >= ?gen628 1 ) ) ) ?gen622 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen624 & : ( not ( member$ report_failure_min $?gen624 ) ) ) ) ) ) => ?gen622 <- ( min_imprisonment ( positive 0 ) )"))

([report_failure_min-defeasibly] of derived-attribute-rule
   (pos-name report_failure_min-defeasibly-gen711)
   (depends-on declare failure_to_report min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [report_failure_min] ) ) ) ?gen629 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen628 & : ( >= ?gen628 1 ) ) ) ?gen622 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen624 & : ( not ( member$ report_failure_min $?gen624 ) ) ) ) ( test ( eq ( class ?gen622 ) min_imprisonment ) ) => ?gen622 <- ( min_imprisonment ( positive 1 ) ( positive-derivator report_failure_min ?gen629 ) )"))

([report_failure_min-overruled-dot] of derived-attribute-rule
   (pos-name report_failure_min-overruled-dot-gen713)
   (depends-on declare min_imprisonment failure_to_report min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [report_failure_min] ) ) ) ?gen622 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen625 ) ( negative-overruled $?gen626 & : ( subseq-pos ( create$ report_failure_min-overruled $?gen625 $$$ $?gen626 ) ) ) ) ( test ( eq ( class ?gen622 ) min_imprisonment ) ) ( not ( and ?gen629 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen628 & : ( >= ?gen628 1 ) ) ) ?gen622 <- ( min_imprisonment ( positive-defeated $?gen624 & : ( not ( member$ report_failure_min $?gen624 ) ) ) ) ) ) => ( calc ( bind $?gen627 ( delete-member$ $?gen626 ( create$ report_failure_min-overruled $?gen625 ) ) ) ) ?gen622 <- ( min_imprisonment ( negative-overruled $?gen627 ) )"))

([report_failure_min-overruled] of derived-attribute-rule
   (pos-name report_failure_min-overruled-gen715)
   (depends-on declare failure_to_report min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [report_failure_min] ) ) ) ?gen629 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen628 & : ( >= ?gen628 1 ) ) ) ?gen622 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen625 ) ( negative-overruled $?gen626 & : ( not ( subseq-pos ( create$ report_failure_min-overruled $?gen625 $$$ $?gen626 ) ) ) ) ( positive-defeated $?gen624 & : ( not ( member$ report_failure_min $?gen624 ) ) ) ) ( test ( eq ( class ?gen622 ) min_imprisonment ) ) => ( calc ( bind $?gen627 ( create$ report_failure_min-overruled $?gen625 $?gen626 ) ) ) ?gen622 <- ( min_imprisonment ( negative-overruled $?gen627 ) )"))

([report_failure_min-support] of derived-attribute-rule
   (pos-name report_failure_min-support-gen717)
   (depends-on declare failure_to_report min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [report_failure_min] ) ) ) ?gen621 <- ( failure_to_report ( defendant ?Defendant ) ) ?gen622 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen624 & : ( not ( subseq-pos ( create$ report_failure_min ?gen621 $$$ $?gen624 ) ) ) ) ) ( test ( eq ( class ?gen622 ) min_imprisonment ) ) => ( calc ( bind $?gen627 ( create$ report_failure_min ?gen621 $?gen624 ) ) ) ?gen622 <- ( min_imprisonment ( positive-support $?gen627 ) )"))

([pn_use_gt_agg_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_gt_agg_max-defeasibly-dot-gen719)
   (depends-on declare max_imprisonment procurement_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_gt_agg_max] ) ) ) ?gen613 <- ( max_imprisonment ( value 20 ) ( positive 1 ) ( positive-derivator pn_use_gt_agg_max $? ) ) ( test ( eq ( class ?gen613 ) max_imprisonment ) ) ( not ( and ?gen620 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen619 & : ( >= ?gen619 1 ) ) ) ?gen613 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen615 & : ( not ( member$ pn_use_gt_agg_max $?gen615 ) ) ) ) ) ) => ?gen613 <- ( max_imprisonment ( positive 0 ) )"))

([pn_use_gt_agg_max-defeasibly] of derived-attribute-rule
   (pos-name pn_use_gt_agg_max-defeasibly-gen721)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_gt_agg_max] ) ) ) ?gen620 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen619 & : ( >= ?gen619 1 ) ) ) ?gen613 <- ( max_imprisonment ( value 20 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen615 & : ( not ( member$ pn_use_gt_agg_max $?gen615 ) ) ) ) ( test ( eq ( class ?gen613 ) max_imprisonment ) ) => ?gen613 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_use_gt_agg_max ?gen620 ) )"))

([pn_use_gt_agg_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_gt_agg_max-overruled-dot-gen723)
   (depends-on declare max_imprisonment procurement_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_gt_agg_max] ) ) ) ?gen613 <- ( max_imprisonment ( value 20 ) ( negative-support $?gen616 ) ( negative-overruled $?gen617 & : ( subseq-pos ( create$ pn_use_gt_agg_max-overruled $?gen616 $$$ $?gen617 ) ) ) ) ( test ( eq ( class ?gen613 ) max_imprisonment ) ) ( not ( and ?gen620 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen619 & : ( >= ?gen619 1 ) ) ) ?gen613 <- ( max_imprisonment ( positive-defeated $?gen615 & : ( not ( member$ pn_use_gt_agg_max $?gen615 ) ) ) ) ) ) => ( calc ( bind $?gen618 ( delete-member$ $?gen617 ( create$ pn_use_gt_agg_max-overruled $?gen616 ) ) ) ) ?gen613 <- ( max_imprisonment ( negative-overruled $?gen618 ) )"))

([pn_use_gt_agg_max-overruled] of derived-attribute-rule
   (pos-name pn_use_gt_agg_max-overruled-gen725)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_gt_agg_max] ) ) ) ?gen620 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen619 & : ( >= ?gen619 1 ) ) ) ?gen613 <- ( max_imprisonment ( value 20 ) ( negative-support $?gen616 ) ( negative-overruled $?gen617 & : ( not ( subseq-pos ( create$ pn_use_gt_agg_max-overruled $?gen616 $$$ $?gen617 ) ) ) ) ( positive-defeated $?gen615 & : ( not ( member$ pn_use_gt_agg_max $?gen615 ) ) ) ) ( test ( eq ( class ?gen613 ) max_imprisonment ) ) => ( calc ( bind $?gen618 ( create$ pn_use_gt_agg_max-overruled $?gen616 $?gen617 ) ) ) ?gen613 <- ( max_imprisonment ( negative-overruled $?gen618 ) )"))

([pn_use_gt_agg_max-support] of derived-attribute-rule
   (pos-name pn_use_gt_agg_max-support-gen727)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_gt_agg_max] ) ) ) ?gen612 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen613 <- ( max_imprisonment ( value 20 ) ( positive-support $?gen615 & : ( not ( subseq-pos ( create$ pn_use_gt_agg_max ?gen612 $$$ $?gen615 ) ) ) ) ) ( test ( eq ( class ?gen613 ) max_imprisonment ) ) => ( calc ( bind $?gen618 ( create$ pn_use_gt_agg_max ?gen612 $?gen615 ) ) ) ?gen613 <- ( max_imprisonment ( positive-support $?gen618 ) )"))

([pn_use_gt_agg_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_gt_agg_min-defeasibly-dot-gen729)
   (depends-on declare min_imprisonment procurement_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_gt_agg_min] ) ) ) ?gen604 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_use_gt_agg_min $? ) ) ( test ( eq ( class ?gen604 ) min_imprisonment ) ) ( not ( and ?gen611 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen610 & : ( >= ?gen610 1 ) ) ) ?gen604 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen606 & : ( not ( member$ pn_use_gt_agg_min $?gen606 ) ) ) ) ) ) => ?gen604 <- ( min_imprisonment ( positive 0 ) )"))

([pn_use_gt_agg_min-defeasibly] of derived-attribute-rule
   (pos-name pn_use_gt_agg_min-defeasibly-gen731)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_gt_agg_min] ) ) ) ?gen611 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen610 & : ( >= ?gen610 1 ) ) ) ?gen604 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen606 & : ( not ( member$ pn_use_gt_agg_min $?gen606 ) ) ) ) ( test ( eq ( class ?gen604 ) min_imprisonment ) ) => ?gen604 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_use_gt_agg_min ?gen611 ) )"))

([pn_use_gt_agg_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_gt_agg_min-overruled-dot-gen733)
   (depends-on declare min_imprisonment procurement_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_gt_agg_min] ) ) ) ?gen604 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen607 ) ( negative-overruled $?gen608 & : ( subseq-pos ( create$ pn_use_gt_agg_min-overruled $?gen607 $$$ $?gen608 ) ) ) ) ( test ( eq ( class ?gen604 ) min_imprisonment ) ) ( not ( and ?gen611 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen610 & : ( >= ?gen610 1 ) ) ) ?gen604 <- ( min_imprisonment ( positive-defeated $?gen606 & : ( not ( member$ pn_use_gt_agg_min $?gen606 ) ) ) ) ) ) => ( calc ( bind $?gen609 ( delete-member$ $?gen608 ( create$ pn_use_gt_agg_min-overruled $?gen607 ) ) ) ) ?gen604 <- ( min_imprisonment ( negative-overruled $?gen609 ) )"))

([pn_use_gt_agg_min-overruled] of derived-attribute-rule
   (pos-name pn_use_gt_agg_min-overruled-gen735)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_gt_agg_min] ) ) ) ?gen611 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen610 & : ( >= ?gen610 1 ) ) ) ?gen604 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen607 ) ( negative-overruled $?gen608 & : ( not ( subseq-pos ( create$ pn_use_gt_agg_min-overruled $?gen607 $$$ $?gen608 ) ) ) ) ( positive-defeated $?gen606 & : ( not ( member$ pn_use_gt_agg_min $?gen606 ) ) ) ) ( test ( eq ( class ?gen604 ) min_imprisonment ) ) => ( calc ( bind $?gen609 ( create$ pn_use_gt_agg_min-overruled $?gen607 $?gen608 ) ) ) ?gen604 <- ( min_imprisonment ( negative-overruled $?gen609 ) )"))

([pn_use_gt_agg_min-support] of derived-attribute-rule
   (pos-name pn_use_gt_agg_min-support-gen737)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_gt_agg_min] ) ) ) ?gen603 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen604 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen606 & : ( not ( subseq-pos ( create$ pn_use_gt_agg_min ?gen603 $$$ $?gen606 ) ) ) ) ) ( test ( eq ( class ?gen604 ) min_imprisonment ) ) => ( calc ( bind $?gen609 ( create$ pn_use_gt_agg_min ?gen603 $?gen606 ) ) ) ?gen604 <- ( min_imprisonment ( positive-support $?gen609 ) )"))

([pn_use_lt_agg_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_lt_agg_max-defeasibly-dot-gen739)
   (depends-on declare max_imprisonment procurement_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_lt_agg_max] ) ) ) ?gen595 <- ( max_imprisonment ( value 20 ) ( positive 1 ) ( positive-derivator pn_use_lt_agg_max $? ) ) ( test ( eq ( class ?gen595 ) max_imprisonment ) ) ( not ( and ?gen602 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen601 & : ( >= ?gen601 1 ) ) ) ?gen595 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen597 & : ( not ( member$ pn_use_lt_agg_max $?gen597 ) ) ) ) ) ) => ?gen595 <- ( max_imprisonment ( positive 0 ) )"))

([pn_use_lt_agg_max-defeasibly] of derived-attribute-rule
   (pos-name pn_use_lt_agg_max-defeasibly-gen741)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_lt_agg_max] ) ) ) ?gen602 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen601 & : ( >= ?gen601 1 ) ) ) ?gen595 <- ( max_imprisonment ( value 20 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen597 & : ( not ( member$ pn_use_lt_agg_max $?gen597 ) ) ) ) ( test ( eq ( class ?gen595 ) max_imprisonment ) ) => ?gen595 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_use_lt_agg_max ?gen602 ) )"))

([pn_use_lt_agg_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_lt_agg_max-overruled-dot-gen743)
   (depends-on declare max_imprisonment procurement_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_lt_agg_max] ) ) ) ?gen595 <- ( max_imprisonment ( value 20 ) ( negative-support $?gen598 ) ( negative-overruled $?gen599 & : ( subseq-pos ( create$ pn_use_lt_agg_max-overruled $?gen598 $$$ $?gen599 ) ) ) ) ( test ( eq ( class ?gen595 ) max_imprisonment ) ) ( not ( and ?gen602 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen601 & : ( >= ?gen601 1 ) ) ) ?gen595 <- ( max_imprisonment ( positive-defeated $?gen597 & : ( not ( member$ pn_use_lt_agg_max $?gen597 ) ) ) ) ) ) => ( calc ( bind $?gen600 ( delete-member$ $?gen599 ( create$ pn_use_lt_agg_max-overruled $?gen598 ) ) ) ) ?gen595 <- ( max_imprisonment ( negative-overruled $?gen600 ) )"))

([pn_use_lt_agg_max-overruled] of derived-attribute-rule
   (pos-name pn_use_lt_agg_max-overruled-gen745)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_lt_agg_max] ) ) ) ?gen602 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen601 & : ( >= ?gen601 1 ) ) ) ?gen595 <- ( max_imprisonment ( value 20 ) ( negative-support $?gen598 ) ( negative-overruled $?gen599 & : ( not ( subseq-pos ( create$ pn_use_lt_agg_max-overruled $?gen598 $$$ $?gen599 ) ) ) ) ( positive-defeated $?gen597 & : ( not ( member$ pn_use_lt_agg_max $?gen597 ) ) ) ) ( test ( eq ( class ?gen595 ) max_imprisonment ) ) => ( calc ( bind $?gen600 ( create$ pn_use_lt_agg_max-overruled $?gen598 $?gen599 ) ) ) ?gen595 <- ( max_imprisonment ( negative-overruled $?gen600 ) )"))

([pn_use_lt_agg_max-support] of derived-attribute-rule
   (pos-name pn_use_lt_agg_max-support-gen747)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_lt_agg_max] ) ) ) ?gen594 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen595 <- ( max_imprisonment ( value 20 ) ( positive-support $?gen597 & : ( not ( subseq-pos ( create$ pn_use_lt_agg_max ?gen594 $$$ $?gen597 ) ) ) ) ) ( test ( eq ( class ?gen595 ) max_imprisonment ) ) => ( calc ( bind $?gen600 ( create$ pn_use_lt_agg_max ?gen594 $?gen597 ) ) ) ?gen595 <- ( max_imprisonment ( positive-support $?gen600 ) )"))

([pn_use_lt_agg_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_lt_agg_min-defeasibly-dot-gen749)
   (depends-on declare min_imprisonment procurement_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_lt_agg_min] ) ) ) ?gen586 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_use_lt_agg_min $? ) ) ( test ( eq ( class ?gen586 ) min_imprisonment ) ) ( not ( and ?gen593 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen592 & : ( >= ?gen592 1 ) ) ) ?gen586 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen588 & : ( not ( member$ pn_use_lt_agg_min $?gen588 ) ) ) ) ) ) => ?gen586 <- ( min_imprisonment ( positive 0 ) )"))

([pn_use_lt_agg_min-defeasibly] of derived-attribute-rule
   (pos-name pn_use_lt_agg_min-defeasibly-gen751)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_lt_agg_min] ) ) ) ?gen593 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen592 & : ( >= ?gen592 1 ) ) ) ?gen586 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen588 & : ( not ( member$ pn_use_lt_agg_min $?gen588 ) ) ) ) ( test ( eq ( class ?gen586 ) min_imprisonment ) ) => ?gen586 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_use_lt_agg_min ?gen593 ) )"))

([pn_use_lt_agg_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_lt_agg_min-overruled-dot-gen753)
   (depends-on declare min_imprisonment procurement_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_lt_agg_min] ) ) ) ?gen586 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen589 ) ( negative-overruled $?gen590 & : ( subseq-pos ( create$ pn_use_lt_agg_min-overruled $?gen589 $$$ $?gen590 ) ) ) ) ( test ( eq ( class ?gen586 ) min_imprisonment ) ) ( not ( and ?gen593 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen592 & : ( >= ?gen592 1 ) ) ) ?gen586 <- ( min_imprisonment ( positive-defeated $?gen588 & : ( not ( member$ pn_use_lt_agg_min $?gen588 ) ) ) ) ) ) => ( calc ( bind $?gen591 ( delete-member$ $?gen590 ( create$ pn_use_lt_agg_min-overruled $?gen589 ) ) ) ) ?gen586 <- ( min_imprisonment ( negative-overruled $?gen591 ) )"))

([pn_use_lt_agg_min-overruled] of derived-attribute-rule
   (pos-name pn_use_lt_agg_min-overruled-gen755)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_lt_agg_min] ) ) ) ?gen593 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen592 & : ( >= ?gen592 1 ) ) ) ?gen586 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen589 ) ( negative-overruled $?gen590 & : ( not ( subseq-pos ( create$ pn_use_lt_agg_min-overruled $?gen589 $$$ $?gen590 ) ) ) ) ( positive-defeated $?gen588 & : ( not ( member$ pn_use_lt_agg_min $?gen588 ) ) ) ) ( test ( eq ( class ?gen586 ) min_imprisonment ) ) => ( calc ( bind $?gen591 ( create$ pn_use_lt_agg_min-overruled $?gen589 $?gen590 ) ) ) ?gen586 <- ( min_imprisonment ( negative-overruled $?gen591 ) )"))

([pn_use_lt_agg_min-support] of derived-attribute-rule
   (pos-name pn_use_lt_agg_min-support-gen757)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_lt_agg_min] ) ) ) ?gen585 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen586 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen588 & : ( not ( subseq-pos ( create$ pn_use_lt_agg_min ?gen585 $$$ $?gen588 ) ) ) ) ) ( test ( eq ( class ?gen586 ) min_imprisonment ) ) => ( calc ( bind $?gen591 ( create$ pn_use_lt_agg_min ?gen585 $?gen588 ) ) ) ?gen586 <- ( min_imprisonment ( positive-support $?gen591 ) )"))

([pn_make_gt_agg_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_gt_agg_max-defeasibly-dot-gen759)
   (depends-on declare max_imprisonment counterfeiting_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_gt_agg_max] ) ) ) ?gen577 <- ( max_imprisonment ( value 20 ) ( positive 1 ) ( positive-derivator pn_make_gt_agg_max $? ) ) ( test ( eq ( class ?gen577 ) max_imprisonment ) ) ( not ( and ?gen584 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen583 & : ( >= ?gen583 1 ) ) ) ?gen577 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen579 & : ( not ( member$ pn_make_gt_agg_max $?gen579 ) ) ) ) ) ) => ?gen577 <- ( max_imprisonment ( positive 0 ) )"))

([pn_make_gt_agg_max-defeasibly] of derived-attribute-rule
   (pos-name pn_make_gt_agg_max-defeasibly-gen761)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_gt_agg_max] ) ) ) ?gen584 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen583 & : ( >= ?gen583 1 ) ) ) ?gen577 <- ( max_imprisonment ( value 20 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen579 & : ( not ( member$ pn_make_gt_agg_max $?gen579 ) ) ) ) ( test ( eq ( class ?gen577 ) max_imprisonment ) ) => ?gen577 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_make_gt_agg_max ?gen584 ) )"))

([pn_make_gt_agg_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_gt_agg_max-overruled-dot-gen763)
   (depends-on declare max_imprisonment counterfeiting_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_gt_agg_max] ) ) ) ?gen577 <- ( max_imprisonment ( value 20 ) ( negative-support $?gen580 ) ( negative-overruled $?gen581 & : ( subseq-pos ( create$ pn_make_gt_agg_max-overruled $?gen580 $$$ $?gen581 ) ) ) ) ( test ( eq ( class ?gen577 ) max_imprisonment ) ) ( not ( and ?gen584 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen583 & : ( >= ?gen583 1 ) ) ) ?gen577 <- ( max_imprisonment ( positive-defeated $?gen579 & : ( not ( member$ pn_make_gt_agg_max $?gen579 ) ) ) ) ) ) => ( calc ( bind $?gen582 ( delete-member$ $?gen581 ( create$ pn_make_gt_agg_max-overruled $?gen580 ) ) ) ) ?gen577 <- ( max_imprisonment ( negative-overruled $?gen582 ) )"))

([pn_make_gt_agg_max-overruled] of derived-attribute-rule
   (pos-name pn_make_gt_agg_max-overruled-gen765)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_gt_agg_max] ) ) ) ?gen584 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen583 & : ( >= ?gen583 1 ) ) ) ?gen577 <- ( max_imprisonment ( value 20 ) ( negative-support $?gen580 ) ( negative-overruled $?gen581 & : ( not ( subseq-pos ( create$ pn_make_gt_agg_max-overruled $?gen580 $$$ $?gen581 ) ) ) ) ( positive-defeated $?gen579 & : ( not ( member$ pn_make_gt_agg_max $?gen579 ) ) ) ) ( test ( eq ( class ?gen577 ) max_imprisonment ) ) => ( calc ( bind $?gen582 ( create$ pn_make_gt_agg_max-overruled $?gen580 $?gen581 ) ) ) ?gen577 <- ( max_imprisonment ( negative-overruled $?gen582 ) )"))

([pn_make_gt_agg_max-support] of derived-attribute-rule
   (pos-name pn_make_gt_agg_max-support-gen767)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_gt_agg_max] ) ) ) ?gen576 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen577 <- ( max_imprisonment ( value 20 ) ( positive-support $?gen579 & : ( not ( subseq-pos ( create$ pn_make_gt_agg_max ?gen576 $$$ $?gen579 ) ) ) ) ) ( test ( eq ( class ?gen577 ) max_imprisonment ) ) => ( calc ( bind $?gen582 ( create$ pn_make_gt_agg_max ?gen576 $?gen579 ) ) ) ?gen577 <- ( max_imprisonment ( positive-support $?gen582 ) )"))

([pn_make_gt_agg_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_gt_agg_min-defeasibly-dot-gen769)
   (depends-on declare min_imprisonment counterfeiting_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_gt_agg_min] ) ) ) ?gen568 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_make_gt_agg_min $? ) ) ( test ( eq ( class ?gen568 ) min_imprisonment ) ) ( not ( and ?gen575 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen574 & : ( >= ?gen574 1 ) ) ) ?gen568 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen570 & : ( not ( member$ pn_make_gt_agg_min $?gen570 ) ) ) ) ) ) => ?gen568 <- ( min_imprisonment ( positive 0 ) )"))

([pn_make_gt_agg_min-defeasibly] of derived-attribute-rule
   (pos-name pn_make_gt_agg_min-defeasibly-gen771)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_gt_agg_min] ) ) ) ?gen575 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen574 & : ( >= ?gen574 1 ) ) ) ?gen568 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen570 & : ( not ( member$ pn_make_gt_agg_min $?gen570 ) ) ) ) ( test ( eq ( class ?gen568 ) min_imprisonment ) ) => ?gen568 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_make_gt_agg_min ?gen575 ) )"))

([pn_make_gt_agg_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_gt_agg_min-overruled-dot-gen773)
   (depends-on declare min_imprisonment counterfeiting_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_gt_agg_min] ) ) ) ?gen568 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen571 ) ( negative-overruled $?gen572 & : ( subseq-pos ( create$ pn_make_gt_agg_min-overruled $?gen571 $$$ $?gen572 ) ) ) ) ( test ( eq ( class ?gen568 ) min_imprisonment ) ) ( not ( and ?gen575 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen574 & : ( >= ?gen574 1 ) ) ) ?gen568 <- ( min_imprisonment ( positive-defeated $?gen570 & : ( not ( member$ pn_make_gt_agg_min $?gen570 ) ) ) ) ) ) => ( calc ( bind $?gen573 ( delete-member$ $?gen572 ( create$ pn_make_gt_agg_min-overruled $?gen571 ) ) ) ) ?gen568 <- ( min_imprisonment ( negative-overruled $?gen573 ) )"))

([pn_make_gt_agg_min-overruled] of derived-attribute-rule
   (pos-name pn_make_gt_agg_min-overruled-gen775)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_gt_agg_min] ) ) ) ?gen575 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen574 & : ( >= ?gen574 1 ) ) ) ?gen568 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen571 ) ( negative-overruled $?gen572 & : ( not ( subseq-pos ( create$ pn_make_gt_agg_min-overruled $?gen571 $$$ $?gen572 ) ) ) ) ( positive-defeated $?gen570 & : ( not ( member$ pn_make_gt_agg_min $?gen570 ) ) ) ) ( test ( eq ( class ?gen568 ) min_imprisonment ) ) => ( calc ( bind $?gen573 ( create$ pn_make_gt_agg_min-overruled $?gen571 $?gen572 ) ) ) ?gen568 <- ( min_imprisonment ( negative-overruled $?gen573 ) )"))

([pn_make_gt_agg_min-support] of derived-attribute-rule
   (pos-name pn_make_gt_agg_min-support-gen777)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_gt_agg_min] ) ) ) ?gen567 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen568 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen570 & : ( not ( subseq-pos ( create$ pn_make_gt_agg_min ?gen567 $$$ $?gen570 ) ) ) ) ) ( test ( eq ( class ?gen568 ) min_imprisonment ) ) => ( calc ( bind $?gen573 ( create$ pn_make_gt_agg_min ?gen567 $?gen570 ) ) ) ?gen568 <- ( min_imprisonment ( positive-support $?gen573 ) )"))

([pn_make_lt_agg_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_lt_agg_max-defeasibly-dot-gen779)
   (depends-on declare max_imprisonment counterfeiting_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_lt_agg_max] ) ) ) ?gen559 <- ( max_imprisonment ( value 20 ) ( positive 1 ) ( positive-derivator pn_make_lt_agg_max $? ) ) ( test ( eq ( class ?gen559 ) max_imprisonment ) ) ( not ( and ?gen566 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen565 & : ( >= ?gen565 1 ) ) ) ?gen559 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen561 & : ( not ( member$ pn_make_lt_agg_max $?gen561 ) ) ) ) ) ) => ?gen559 <- ( max_imprisonment ( positive 0 ) )"))

([pn_make_lt_agg_max-defeasibly] of derived-attribute-rule
   (pos-name pn_make_lt_agg_max-defeasibly-gen781)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_lt_agg_max] ) ) ) ?gen566 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen565 & : ( >= ?gen565 1 ) ) ) ?gen559 <- ( max_imprisonment ( value 20 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen561 & : ( not ( member$ pn_make_lt_agg_max $?gen561 ) ) ) ) ( test ( eq ( class ?gen559 ) max_imprisonment ) ) => ?gen559 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_make_lt_agg_max ?gen566 ) )"))

([pn_make_lt_agg_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_lt_agg_max-overruled-dot-gen783)
   (depends-on declare max_imprisonment counterfeiting_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_lt_agg_max] ) ) ) ?gen559 <- ( max_imprisonment ( value 20 ) ( negative-support $?gen562 ) ( negative-overruled $?gen563 & : ( subseq-pos ( create$ pn_make_lt_agg_max-overruled $?gen562 $$$ $?gen563 ) ) ) ) ( test ( eq ( class ?gen559 ) max_imprisonment ) ) ( not ( and ?gen566 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen565 & : ( >= ?gen565 1 ) ) ) ?gen559 <- ( max_imprisonment ( positive-defeated $?gen561 & : ( not ( member$ pn_make_lt_agg_max $?gen561 ) ) ) ) ) ) => ( calc ( bind $?gen564 ( delete-member$ $?gen563 ( create$ pn_make_lt_agg_max-overruled $?gen562 ) ) ) ) ?gen559 <- ( max_imprisonment ( negative-overruled $?gen564 ) )"))

([pn_make_lt_agg_max-overruled] of derived-attribute-rule
   (pos-name pn_make_lt_agg_max-overruled-gen785)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_lt_agg_max] ) ) ) ?gen566 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen565 & : ( >= ?gen565 1 ) ) ) ?gen559 <- ( max_imprisonment ( value 20 ) ( negative-support $?gen562 ) ( negative-overruled $?gen563 & : ( not ( subseq-pos ( create$ pn_make_lt_agg_max-overruled $?gen562 $$$ $?gen563 ) ) ) ) ( positive-defeated $?gen561 & : ( not ( member$ pn_make_lt_agg_max $?gen561 ) ) ) ) ( test ( eq ( class ?gen559 ) max_imprisonment ) ) => ( calc ( bind $?gen564 ( create$ pn_make_lt_agg_max-overruled $?gen562 $?gen563 ) ) ) ?gen559 <- ( max_imprisonment ( negative-overruled $?gen564 ) )"))

([pn_make_lt_agg_max-support] of derived-attribute-rule
   (pos-name pn_make_lt_agg_max-support-gen787)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_lt_agg_max] ) ) ) ?gen558 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen559 <- ( max_imprisonment ( value 20 ) ( positive-support $?gen561 & : ( not ( subseq-pos ( create$ pn_make_lt_agg_max ?gen558 $$$ $?gen561 ) ) ) ) ) ( test ( eq ( class ?gen559 ) max_imprisonment ) ) => ( calc ( bind $?gen564 ( create$ pn_make_lt_agg_max ?gen558 $?gen561 ) ) ) ?gen559 <- ( max_imprisonment ( positive-support $?gen564 ) )"))

([pn_make_lt_agg_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_lt_agg_min-defeasibly-dot-gen789)
   (depends-on declare min_imprisonment counterfeiting_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_lt_agg_min] ) ) ) ?gen550 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_make_lt_agg_min $? ) ) ( test ( eq ( class ?gen550 ) min_imprisonment ) ) ( not ( and ?gen557 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen556 & : ( >= ?gen556 1 ) ) ) ?gen550 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen552 & : ( not ( member$ pn_make_lt_agg_min $?gen552 ) ) ) ) ) ) => ?gen550 <- ( min_imprisonment ( positive 0 ) )"))

([pn_make_lt_agg_min-defeasibly] of derived-attribute-rule
   (pos-name pn_make_lt_agg_min-defeasibly-gen791)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_lt_agg_min] ) ) ) ?gen557 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen556 & : ( >= ?gen556 1 ) ) ) ?gen550 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen552 & : ( not ( member$ pn_make_lt_agg_min $?gen552 ) ) ) ) ( test ( eq ( class ?gen550 ) min_imprisonment ) ) => ?gen550 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_make_lt_agg_min ?gen557 ) )"))

([pn_make_lt_agg_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_lt_agg_min-overruled-dot-gen793)
   (depends-on declare min_imprisonment counterfeiting_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_lt_agg_min] ) ) ) ?gen550 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen553 ) ( negative-overruled $?gen554 & : ( subseq-pos ( create$ pn_make_lt_agg_min-overruled $?gen553 $$$ $?gen554 ) ) ) ) ( test ( eq ( class ?gen550 ) min_imprisonment ) ) ( not ( and ?gen557 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen556 & : ( >= ?gen556 1 ) ) ) ?gen550 <- ( min_imprisonment ( positive-defeated $?gen552 & : ( not ( member$ pn_make_lt_agg_min $?gen552 ) ) ) ) ) ) => ( calc ( bind $?gen555 ( delete-member$ $?gen554 ( create$ pn_make_lt_agg_min-overruled $?gen553 ) ) ) ) ?gen550 <- ( min_imprisonment ( negative-overruled $?gen555 ) )"))

([pn_make_lt_agg_min-overruled] of derived-attribute-rule
   (pos-name pn_make_lt_agg_min-overruled-gen795)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_lt_agg_min] ) ) ) ?gen557 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen556 & : ( >= ?gen556 1 ) ) ) ?gen550 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen553 ) ( negative-overruled $?gen554 & : ( not ( subseq-pos ( create$ pn_make_lt_agg_min-overruled $?gen553 $$$ $?gen554 ) ) ) ) ( positive-defeated $?gen552 & : ( not ( member$ pn_make_lt_agg_min $?gen552 ) ) ) ) ( test ( eq ( class ?gen550 ) min_imprisonment ) ) => ( calc ( bind $?gen555 ( create$ pn_make_lt_agg_min-overruled $?gen553 $?gen554 ) ) ) ?gen550 <- ( min_imprisonment ( negative-overruled $?gen555 ) )"))

([pn_make_lt_agg_min-support] of derived-attribute-rule
   (pos-name pn_make_lt_agg_min-support-gen797)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_lt_agg_min] ) ) ) ?gen549 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen550 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen552 & : ( not ( subseq-pos ( create$ pn_make_lt_agg_min ?gen549 $$$ $?gen552 ) ) ) ) ) ( test ( eq ( class ?gen550 ) min_imprisonment ) ) => ( calc ( bind $?gen555 ( create$ pn_make_lt_agg_min ?gen549 $?gen552 ) ) ) ?gen550 <- ( min_imprisonment ( positive-support $?gen555 ) )"))

([pn_use_gt_mitigating_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_gt_mitigating_max-defeasibly-dot-gen799)
   (depends-on declare max_imprisonment procurement_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_gt_mitigating_max] ) ) ) ?gen541 <- ( max_imprisonment ( value 15 ) ( positive 1 ) ( positive-derivator pn_use_gt_mitigating_max $? ) ) ( test ( eq ( class ?gen541 ) max_imprisonment ) ) ( not ( and ?gen548 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen547 & : ( >= ?gen547 1 ) ) ) ?gen541 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen543 & : ( not ( member$ pn_use_gt_mitigating_max $?gen543 ) ) ) ) ) ) => ?gen541 <- ( max_imprisonment ( positive 0 ) )"))

([pn_use_gt_mitigating_max-defeasibly] of derived-attribute-rule
   (pos-name pn_use_gt_mitigating_max-defeasibly-gen801)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_gt_mitigating_max] ) ) ) ?gen548 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen547 & : ( >= ?gen547 1 ) ) ) ?gen541 <- ( max_imprisonment ( value 15 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen543 & : ( not ( member$ pn_use_gt_mitigating_max $?gen543 ) ) ) ) ( test ( eq ( class ?gen541 ) max_imprisonment ) ) => ?gen541 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_use_gt_mitigating_max ?gen548 ) )"))

([pn_use_gt_mitigating_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_gt_mitigating_max-overruled-dot-gen803)
   (depends-on declare max_imprisonment procurement_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_gt_mitigating_max] ) ) ) ?gen541 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen544 ) ( negative-overruled $?gen545 & : ( subseq-pos ( create$ pn_use_gt_mitigating_max-overruled $?gen544 $$$ $?gen545 ) ) ) ) ( test ( eq ( class ?gen541 ) max_imprisonment ) ) ( not ( and ?gen548 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen547 & : ( >= ?gen547 1 ) ) ) ?gen541 <- ( max_imprisonment ( positive-defeated $?gen543 & : ( not ( member$ pn_use_gt_mitigating_max $?gen543 ) ) ) ) ) ) => ( calc ( bind $?gen546 ( delete-member$ $?gen545 ( create$ pn_use_gt_mitigating_max-overruled $?gen544 ) ) ) ) ?gen541 <- ( max_imprisonment ( negative-overruled $?gen546 ) )"))

([pn_use_gt_mitigating_max-overruled] of derived-attribute-rule
   (pos-name pn_use_gt_mitigating_max-overruled-gen805)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_gt_mitigating_max] ) ) ) ?gen548 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen547 & : ( >= ?gen547 1 ) ) ) ?gen541 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen544 ) ( negative-overruled $?gen545 & : ( not ( subseq-pos ( create$ pn_use_gt_mitigating_max-overruled $?gen544 $$$ $?gen545 ) ) ) ) ( positive-defeated $?gen543 & : ( not ( member$ pn_use_gt_mitigating_max $?gen543 ) ) ) ) ( test ( eq ( class ?gen541 ) max_imprisonment ) ) => ( calc ( bind $?gen546 ( create$ pn_use_gt_mitigating_max-overruled $?gen544 $?gen545 ) ) ) ?gen541 <- ( max_imprisonment ( negative-overruled $?gen546 ) )"))

([pn_use_gt_mitigating_max-support] of derived-attribute-rule
   (pos-name pn_use_gt_mitigating_max-support-gen807)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_gt_mitigating_max] ) ) ) ?gen540 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen541 <- ( max_imprisonment ( value 15 ) ( positive-support $?gen543 & : ( not ( subseq-pos ( create$ pn_use_gt_mitigating_max ?gen540 $$$ $?gen543 ) ) ) ) ) ( test ( eq ( class ?gen541 ) max_imprisonment ) ) => ( calc ( bind $?gen546 ( create$ pn_use_gt_mitigating_max ?gen540 $?gen543 ) ) ) ?gen541 <- ( max_imprisonment ( positive-support $?gen546 ) )"))

([pn_use_gt_mitigating_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_gt_mitigating_min-defeasibly-dot-gen809)
   (depends-on declare min_imprisonment procurement_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_gt_mitigating_min] ) ) ) ?gen532 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_use_gt_mitigating_min $? ) ) ( test ( eq ( class ?gen532 ) min_imprisonment ) ) ( not ( and ?gen539 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen538 & : ( >= ?gen538 1 ) ) ) ?gen532 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen534 & : ( not ( member$ pn_use_gt_mitigating_min $?gen534 ) ) ) ) ) ) => ?gen532 <- ( min_imprisonment ( positive 0 ) )"))

([pn_use_gt_mitigating_min-defeasibly] of derived-attribute-rule
   (pos-name pn_use_gt_mitigating_min-defeasibly-gen811)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_gt_mitigating_min] ) ) ) ?gen539 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen538 & : ( >= ?gen538 1 ) ) ) ?gen532 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen534 & : ( not ( member$ pn_use_gt_mitigating_min $?gen534 ) ) ) ) ( test ( eq ( class ?gen532 ) min_imprisonment ) ) => ?gen532 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_use_gt_mitigating_min ?gen539 ) )"))

([pn_use_gt_mitigating_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_gt_mitigating_min-overruled-dot-gen813)
   (depends-on declare min_imprisonment procurement_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_gt_mitigating_min] ) ) ) ?gen532 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen535 ) ( negative-overruled $?gen536 & : ( subseq-pos ( create$ pn_use_gt_mitigating_min-overruled $?gen535 $$$ $?gen536 ) ) ) ) ( test ( eq ( class ?gen532 ) min_imprisonment ) ) ( not ( and ?gen539 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen538 & : ( >= ?gen538 1 ) ) ) ?gen532 <- ( min_imprisonment ( positive-defeated $?gen534 & : ( not ( member$ pn_use_gt_mitigating_min $?gen534 ) ) ) ) ) ) => ( calc ( bind $?gen537 ( delete-member$ $?gen536 ( create$ pn_use_gt_mitigating_min-overruled $?gen535 ) ) ) ) ?gen532 <- ( min_imprisonment ( negative-overruled $?gen537 ) )"))

([pn_use_gt_mitigating_min-overruled] of derived-attribute-rule
   (pos-name pn_use_gt_mitigating_min-overruled-gen815)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_gt_mitigating_min] ) ) ) ?gen539 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen538 & : ( >= ?gen538 1 ) ) ) ?gen532 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen535 ) ( negative-overruled $?gen536 & : ( not ( subseq-pos ( create$ pn_use_gt_mitigating_min-overruled $?gen535 $$$ $?gen536 ) ) ) ) ( positive-defeated $?gen534 & : ( not ( member$ pn_use_gt_mitigating_min $?gen534 ) ) ) ) ( test ( eq ( class ?gen532 ) min_imprisonment ) ) => ( calc ( bind $?gen537 ( create$ pn_use_gt_mitigating_min-overruled $?gen535 $?gen536 ) ) ) ?gen532 <- ( min_imprisonment ( negative-overruled $?gen537 ) )"))

([pn_use_gt_mitigating_min-support] of derived-attribute-rule
   (pos-name pn_use_gt_mitigating_min-support-gen817)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_gt_mitigating_min] ) ) ) ?gen531 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen532 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen534 & : ( not ( subseq-pos ( create$ pn_use_gt_mitigating_min ?gen531 $$$ $?gen534 ) ) ) ) ) ( test ( eq ( class ?gen532 ) min_imprisonment ) ) => ( calc ( bind $?gen537 ( create$ pn_use_gt_mitigating_min ?gen531 $?gen534 ) ) ) ?gen532 <- ( min_imprisonment ( positive-support $?gen537 ) )"))

([pn_use_lt_mitigating_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_lt_mitigating_max-defeasibly-dot-gen819)
   (depends-on declare max_imprisonment procurement_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_lt_mitigating_max] ) ) ) ?gen523 <- ( max_imprisonment ( value 10 ) ( positive 1 ) ( positive-derivator pn_use_lt_mitigating_max $? ) ) ( test ( eq ( class ?gen523 ) max_imprisonment ) ) ( not ( and ?gen530 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen529 & : ( >= ?gen529 1 ) ) ) ?gen523 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen525 & : ( not ( member$ pn_use_lt_mitigating_max $?gen525 ) ) ) ) ) ) => ?gen523 <- ( max_imprisonment ( positive 0 ) )"))

([pn_use_lt_mitigating_max-defeasibly] of derived-attribute-rule
   (pos-name pn_use_lt_mitigating_max-defeasibly-gen821)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_lt_mitigating_max] ) ) ) ?gen530 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen529 & : ( >= ?gen529 1 ) ) ) ?gen523 <- ( max_imprisonment ( value 10 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen525 & : ( not ( member$ pn_use_lt_mitigating_max $?gen525 ) ) ) ) ( test ( eq ( class ?gen523 ) max_imprisonment ) ) => ?gen523 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_use_lt_mitigating_max ?gen530 ) )"))

([pn_use_lt_mitigating_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_lt_mitigating_max-overruled-dot-gen823)
   (depends-on declare max_imprisonment procurement_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_lt_mitigating_max] ) ) ) ?gen523 <- ( max_imprisonment ( value 10 ) ( negative-support $?gen526 ) ( negative-overruled $?gen527 & : ( subseq-pos ( create$ pn_use_lt_mitigating_max-overruled $?gen526 $$$ $?gen527 ) ) ) ) ( test ( eq ( class ?gen523 ) max_imprisonment ) ) ( not ( and ?gen530 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen529 & : ( >= ?gen529 1 ) ) ) ?gen523 <- ( max_imprisonment ( positive-defeated $?gen525 & : ( not ( member$ pn_use_lt_mitigating_max $?gen525 ) ) ) ) ) ) => ( calc ( bind $?gen528 ( delete-member$ $?gen527 ( create$ pn_use_lt_mitigating_max-overruled $?gen526 ) ) ) ) ?gen523 <- ( max_imprisonment ( negative-overruled $?gen528 ) )"))

([pn_use_lt_mitigating_max-overruled] of derived-attribute-rule
   (pos-name pn_use_lt_mitigating_max-overruled-gen825)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_lt_mitigating_max] ) ) ) ?gen530 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen529 & : ( >= ?gen529 1 ) ) ) ?gen523 <- ( max_imprisonment ( value 10 ) ( negative-support $?gen526 ) ( negative-overruled $?gen527 & : ( not ( subseq-pos ( create$ pn_use_lt_mitigating_max-overruled $?gen526 $$$ $?gen527 ) ) ) ) ( positive-defeated $?gen525 & : ( not ( member$ pn_use_lt_mitigating_max $?gen525 ) ) ) ) ( test ( eq ( class ?gen523 ) max_imprisonment ) ) => ( calc ( bind $?gen528 ( create$ pn_use_lt_mitigating_max-overruled $?gen526 $?gen527 ) ) ) ?gen523 <- ( max_imprisonment ( negative-overruled $?gen528 ) )"))

([pn_use_lt_mitigating_max-support] of derived-attribute-rule
   (pos-name pn_use_lt_mitigating_max-support-gen827)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_lt_mitigating_max] ) ) ) ?gen522 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen523 <- ( max_imprisonment ( value 10 ) ( positive-support $?gen525 & : ( not ( subseq-pos ( create$ pn_use_lt_mitigating_max ?gen522 $$$ $?gen525 ) ) ) ) ) ( test ( eq ( class ?gen523 ) max_imprisonment ) ) => ( calc ( bind $?gen528 ( create$ pn_use_lt_mitigating_max ?gen522 $?gen525 ) ) ) ?gen523 <- ( max_imprisonment ( positive-support $?gen528 ) )"))

([pn_use_lt_mitigating_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_lt_mitigating_min-defeasibly-dot-gen829)
   (depends-on declare min_imprisonment procurement_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_lt_mitigating_min] ) ) ) ?gen514 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_use_lt_mitigating_min $? ) ) ( test ( eq ( class ?gen514 ) min_imprisonment ) ) ( not ( and ?gen521 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen520 & : ( >= ?gen520 1 ) ) ) ?gen514 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen516 & : ( not ( member$ pn_use_lt_mitigating_min $?gen516 ) ) ) ) ) ) => ?gen514 <- ( min_imprisonment ( positive 0 ) )"))

([pn_use_lt_mitigating_min-defeasibly] of derived-attribute-rule
   (pos-name pn_use_lt_mitigating_min-defeasibly-gen831)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_lt_mitigating_min] ) ) ) ?gen521 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen520 & : ( >= ?gen520 1 ) ) ) ?gen514 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen516 & : ( not ( member$ pn_use_lt_mitigating_min $?gen516 ) ) ) ) ( test ( eq ( class ?gen514 ) min_imprisonment ) ) => ?gen514 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_use_lt_mitigating_min ?gen521 ) )"))

([pn_use_lt_mitigating_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_lt_mitigating_min-overruled-dot-gen833)
   (depends-on declare min_imprisonment procurement_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_lt_mitigating_min] ) ) ) ?gen514 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen517 ) ( negative-overruled $?gen518 & : ( subseq-pos ( create$ pn_use_lt_mitigating_min-overruled $?gen517 $$$ $?gen518 ) ) ) ) ( test ( eq ( class ?gen514 ) min_imprisonment ) ) ( not ( and ?gen521 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen520 & : ( >= ?gen520 1 ) ) ) ?gen514 <- ( min_imprisonment ( positive-defeated $?gen516 & : ( not ( member$ pn_use_lt_mitigating_min $?gen516 ) ) ) ) ) ) => ( calc ( bind $?gen519 ( delete-member$ $?gen518 ( create$ pn_use_lt_mitigating_min-overruled $?gen517 ) ) ) ) ?gen514 <- ( min_imprisonment ( negative-overruled $?gen519 ) )"))

([pn_use_lt_mitigating_min-overruled] of derived-attribute-rule
   (pos-name pn_use_lt_mitigating_min-overruled-gen835)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_lt_mitigating_min] ) ) ) ?gen521 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen520 & : ( >= ?gen520 1 ) ) ) ?gen514 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen517 ) ( negative-overruled $?gen518 & : ( not ( subseq-pos ( create$ pn_use_lt_mitigating_min-overruled $?gen517 $$$ $?gen518 ) ) ) ) ( positive-defeated $?gen516 & : ( not ( member$ pn_use_lt_mitigating_min $?gen516 ) ) ) ) ( test ( eq ( class ?gen514 ) min_imprisonment ) ) => ( calc ( bind $?gen519 ( create$ pn_use_lt_mitigating_min-overruled $?gen517 $?gen518 ) ) ) ?gen514 <- ( min_imprisonment ( negative-overruled $?gen519 ) )"))

([pn_use_lt_mitigating_min-support] of derived-attribute-rule
   (pos-name pn_use_lt_mitigating_min-support-gen837)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_lt_mitigating_min] ) ) ) ?gen513 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen514 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen516 & : ( not ( subseq-pos ( create$ pn_use_lt_mitigating_min ?gen513 $$$ $?gen516 ) ) ) ) ) ( test ( eq ( class ?gen514 ) min_imprisonment ) ) => ( calc ( bind $?gen519 ( create$ pn_use_lt_mitigating_min ?gen513 $?gen516 ) ) ) ?gen514 <- ( min_imprisonment ( positive-support $?gen519 ) )"))

([pn_make_gt_mitigating_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_gt_mitigating_max-defeasibly-dot-gen839)
   (depends-on declare max_imprisonment counterfeiting_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_gt_mitigating_max] ) ) ) ?gen505 <- ( max_imprisonment ( value 15 ) ( positive 1 ) ( positive-derivator pn_make_gt_mitigating_max $? ) ) ( test ( eq ( class ?gen505 ) max_imprisonment ) ) ( not ( and ?gen512 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen511 & : ( >= ?gen511 1 ) ) ) ?gen505 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen507 & : ( not ( member$ pn_make_gt_mitigating_max $?gen507 ) ) ) ) ) ) => ?gen505 <- ( max_imprisonment ( positive 0 ) )"))

([pn_make_gt_mitigating_max-defeasibly] of derived-attribute-rule
   (pos-name pn_make_gt_mitigating_max-defeasibly-gen841)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_gt_mitigating_max] ) ) ) ?gen512 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen511 & : ( >= ?gen511 1 ) ) ) ?gen505 <- ( max_imprisonment ( value 15 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen507 & : ( not ( member$ pn_make_gt_mitigating_max $?gen507 ) ) ) ) ( test ( eq ( class ?gen505 ) max_imprisonment ) ) => ?gen505 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_make_gt_mitigating_max ?gen512 ) )"))

([pn_make_gt_mitigating_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_gt_mitigating_max-overruled-dot-gen843)
   (depends-on declare max_imprisonment counterfeiting_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_gt_mitigating_max] ) ) ) ?gen505 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen508 ) ( negative-overruled $?gen509 & : ( subseq-pos ( create$ pn_make_gt_mitigating_max-overruled $?gen508 $$$ $?gen509 ) ) ) ) ( test ( eq ( class ?gen505 ) max_imprisonment ) ) ( not ( and ?gen512 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen511 & : ( >= ?gen511 1 ) ) ) ?gen505 <- ( max_imprisonment ( positive-defeated $?gen507 & : ( not ( member$ pn_make_gt_mitigating_max $?gen507 ) ) ) ) ) ) => ( calc ( bind $?gen510 ( delete-member$ $?gen509 ( create$ pn_make_gt_mitigating_max-overruled $?gen508 ) ) ) ) ?gen505 <- ( max_imprisonment ( negative-overruled $?gen510 ) )"))

([pn_make_gt_mitigating_max-overruled] of derived-attribute-rule
   (pos-name pn_make_gt_mitigating_max-overruled-gen845)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_gt_mitigating_max] ) ) ) ?gen512 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen511 & : ( >= ?gen511 1 ) ) ) ?gen505 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen508 ) ( negative-overruled $?gen509 & : ( not ( subseq-pos ( create$ pn_make_gt_mitigating_max-overruled $?gen508 $$$ $?gen509 ) ) ) ) ( positive-defeated $?gen507 & : ( not ( member$ pn_make_gt_mitigating_max $?gen507 ) ) ) ) ( test ( eq ( class ?gen505 ) max_imprisonment ) ) => ( calc ( bind $?gen510 ( create$ pn_make_gt_mitigating_max-overruled $?gen508 $?gen509 ) ) ) ?gen505 <- ( max_imprisonment ( negative-overruled $?gen510 ) )"))

([pn_make_gt_mitigating_max-support] of derived-attribute-rule
   (pos-name pn_make_gt_mitigating_max-support-gen847)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_gt_mitigating_max] ) ) ) ?gen504 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen505 <- ( max_imprisonment ( value 15 ) ( positive-support $?gen507 & : ( not ( subseq-pos ( create$ pn_make_gt_mitigating_max ?gen504 $$$ $?gen507 ) ) ) ) ) ( test ( eq ( class ?gen505 ) max_imprisonment ) ) => ( calc ( bind $?gen510 ( create$ pn_make_gt_mitigating_max ?gen504 $?gen507 ) ) ) ?gen505 <- ( max_imprisonment ( positive-support $?gen510 ) )"))

([pn_make_gt_mitigating_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_gt_mitigating_min-defeasibly-dot-gen849)
   (depends-on declare min_imprisonment counterfeiting_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_gt_mitigating_min] ) ) ) ?gen496 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_make_gt_mitigating_min $? ) ) ( test ( eq ( class ?gen496 ) min_imprisonment ) ) ( not ( and ?gen503 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen502 & : ( >= ?gen502 1 ) ) ) ?gen496 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen498 & : ( not ( member$ pn_make_gt_mitigating_min $?gen498 ) ) ) ) ) ) => ?gen496 <- ( min_imprisonment ( positive 0 ) )"))

([pn_make_gt_mitigating_min-defeasibly] of derived-attribute-rule
   (pos-name pn_make_gt_mitigating_min-defeasibly-gen851)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_gt_mitigating_min] ) ) ) ?gen503 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen502 & : ( >= ?gen502 1 ) ) ) ?gen496 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen498 & : ( not ( member$ pn_make_gt_mitigating_min $?gen498 ) ) ) ) ( test ( eq ( class ?gen496 ) min_imprisonment ) ) => ?gen496 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_make_gt_mitigating_min ?gen503 ) )"))

([pn_make_gt_mitigating_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_gt_mitigating_min-overruled-dot-gen853)
   (depends-on declare min_imprisonment counterfeiting_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_gt_mitigating_min] ) ) ) ?gen496 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen499 ) ( negative-overruled $?gen500 & : ( subseq-pos ( create$ pn_make_gt_mitigating_min-overruled $?gen499 $$$ $?gen500 ) ) ) ) ( test ( eq ( class ?gen496 ) min_imprisonment ) ) ( not ( and ?gen503 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen502 & : ( >= ?gen502 1 ) ) ) ?gen496 <- ( min_imprisonment ( positive-defeated $?gen498 & : ( not ( member$ pn_make_gt_mitigating_min $?gen498 ) ) ) ) ) ) => ( calc ( bind $?gen501 ( delete-member$ $?gen500 ( create$ pn_make_gt_mitigating_min-overruled $?gen499 ) ) ) ) ?gen496 <- ( min_imprisonment ( negative-overruled $?gen501 ) )"))

([pn_make_gt_mitigating_min-overruled] of derived-attribute-rule
   (pos-name pn_make_gt_mitigating_min-overruled-gen855)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_gt_mitigating_min] ) ) ) ?gen503 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen502 & : ( >= ?gen502 1 ) ) ) ?gen496 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen499 ) ( negative-overruled $?gen500 & : ( not ( subseq-pos ( create$ pn_make_gt_mitigating_min-overruled $?gen499 $$$ $?gen500 ) ) ) ) ( positive-defeated $?gen498 & : ( not ( member$ pn_make_gt_mitigating_min $?gen498 ) ) ) ) ( test ( eq ( class ?gen496 ) min_imprisonment ) ) => ( calc ( bind $?gen501 ( create$ pn_make_gt_mitigating_min-overruled $?gen499 $?gen500 ) ) ) ?gen496 <- ( min_imprisonment ( negative-overruled $?gen501 ) )"))

([pn_make_gt_mitigating_min-support] of derived-attribute-rule
   (pos-name pn_make_gt_mitigating_min-support-gen857)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_gt_mitigating_min] ) ) ) ?gen495 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen496 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen498 & : ( not ( subseq-pos ( create$ pn_make_gt_mitigating_min ?gen495 $$$ $?gen498 ) ) ) ) ) ( test ( eq ( class ?gen496 ) min_imprisonment ) ) => ( calc ( bind $?gen501 ( create$ pn_make_gt_mitigating_min ?gen495 $?gen498 ) ) ) ?gen496 <- ( min_imprisonment ( positive-support $?gen501 ) )"))

([pn_make_lt_mitigating_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_lt_mitigating_max-defeasibly-dot-gen859)
   (depends-on declare max_imprisonment counterfeiting_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_lt_mitigating_max] ) ) ) ?gen487 <- ( max_imprisonment ( value 12 ) ( positive 1 ) ( positive-derivator pn_make_lt_mitigating_max $? ) ) ( test ( eq ( class ?gen487 ) max_imprisonment ) ) ( not ( and ?gen494 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen493 & : ( >= ?gen493 1 ) ) ) ?gen487 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen489 & : ( not ( member$ pn_make_lt_mitigating_max $?gen489 ) ) ) ) ) ) => ?gen487 <- ( max_imprisonment ( positive 0 ) )"))

([pn_make_lt_mitigating_max-defeasibly] of derived-attribute-rule
   (pos-name pn_make_lt_mitigating_max-defeasibly-gen861)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_lt_mitigating_max] ) ) ) ?gen494 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen493 & : ( >= ?gen493 1 ) ) ) ?gen487 <- ( max_imprisonment ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen489 & : ( not ( member$ pn_make_lt_mitigating_max $?gen489 ) ) ) ) ( test ( eq ( class ?gen487 ) max_imprisonment ) ) => ?gen487 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_make_lt_mitigating_max ?gen494 ) )"))

([pn_make_lt_mitigating_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_lt_mitigating_max-overruled-dot-gen863)
   (depends-on declare max_imprisonment counterfeiting_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_lt_mitigating_max] ) ) ) ?gen487 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen490 ) ( negative-overruled $?gen491 & : ( subseq-pos ( create$ pn_make_lt_mitigating_max-overruled $?gen490 $$$ $?gen491 ) ) ) ) ( test ( eq ( class ?gen487 ) max_imprisonment ) ) ( not ( and ?gen494 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen493 & : ( >= ?gen493 1 ) ) ) ?gen487 <- ( max_imprisonment ( positive-defeated $?gen489 & : ( not ( member$ pn_make_lt_mitigating_max $?gen489 ) ) ) ) ) ) => ( calc ( bind $?gen492 ( delete-member$ $?gen491 ( create$ pn_make_lt_mitigating_max-overruled $?gen490 ) ) ) ) ?gen487 <- ( max_imprisonment ( negative-overruled $?gen492 ) )"))

([pn_make_lt_mitigating_max-overruled] of derived-attribute-rule
   (pos-name pn_make_lt_mitigating_max-overruled-gen865)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_lt_mitigating_max] ) ) ) ?gen494 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen493 & : ( >= ?gen493 1 ) ) ) ?gen487 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen490 ) ( negative-overruled $?gen491 & : ( not ( subseq-pos ( create$ pn_make_lt_mitigating_max-overruled $?gen490 $$$ $?gen491 ) ) ) ) ( positive-defeated $?gen489 & : ( not ( member$ pn_make_lt_mitigating_max $?gen489 ) ) ) ) ( test ( eq ( class ?gen487 ) max_imprisonment ) ) => ( calc ( bind $?gen492 ( create$ pn_make_lt_mitigating_max-overruled $?gen490 $?gen491 ) ) ) ?gen487 <- ( max_imprisonment ( negative-overruled $?gen492 ) )"))

([pn_make_lt_mitigating_max-support] of derived-attribute-rule
   (pos-name pn_make_lt_mitigating_max-support-gen867)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_lt_mitigating_max] ) ) ) ?gen486 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen487 <- ( max_imprisonment ( value 12 ) ( positive-support $?gen489 & : ( not ( subseq-pos ( create$ pn_make_lt_mitigating_max ?gen486 $$$ $?gen489 ) ) ) ) ) ( test ( eq ( class ?gen487 ) max_imprisonment ) ) => ( calc ( bind $?gen492 ( create$ pn_make_lt_mitigating_max ?gen486 $?gen489 ) ) ) ?gen487 <- ( max_imprisonment ( positive-support $?gen492 ) )"))

([pn_make_lt_mitigating_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_lt_mitigating_min-defeasibly-dot-gen869)
   (depends-on declare min_imprisonment counterfeiting_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_lt_mitigating_min] ) ) ) ?gen478 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_make_lt_mitigating_min $? ) ) ( test ( eq ( class ?gen478 ) min_imprisonment ) ) ( not ( and ?gen485 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen484 & : ( >= ?gen484 1 ) ) ) ?gen478 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen480 & : ( not ( member$ pn_make_lt_mitigating_min $?gen480 ) ) ) ) ) ) => ?gen478 <- ( min_imprisonment ( positive 0 ) )"))

([pn_make_lt_mitigating_min-defeasibly] of derived-attribute-rule
   (pos-name pn_make_lt_mitigating_min-defeasibly-gen871)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_lt_mitigating_min] ) ) ) ?gen485 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen484 & : ( >= ?gen484 1 ) ) ) ?gen478 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen480 & : ( not ( member$ pn_make_lt_mitigating_min $?gen480 ) ) ) ) ( test ( eq ( class ?gen478 ) min_imprisonment ) ) => ?gen478 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_make_lt_mitigating_min ?gen485 ) )"))

([pn_make_lt_mitigating_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_lt_mitigating_min-overruled-dot-gen873)
   (depends-on declare min_imprisonment counterfeiting_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_lt_mitigating_min] ) ) ) ?gen478 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen481 ) ( negative-overruled $?gen482 & : ( subseq-pos ( create$ pn_make_lt_mitigating_min-overruled $?gen481 $$$ $?gen482 ) ) ) ) ( test ( eq ( class ?gen478 ) min_imprisonment ) ) ( not ( and ?gen485 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen484 & : ( >= ?gen484 1 ) ) ) ?gen478 <- ( min_imprisonment ( positive-defeated $?gen480 & : ( not ( member$ pn_make_lt_mitigating_min $?gen480 ) ) ) ) ) ) => ( calc ( bind $?gen483 ( delete-member$ $?gen482 ( create$ pn_make_lt_mitigating_min-overruled $?gen481 ) ) ) ) ?gen478 <- ( min_imprisonment ( negative-overruled $?gen483 ) )"))

([pn_make_lt_mitigating_min-overruled] of derived-attribute-rule
   (pos-name pn_make_lt_mitigating_min-overruled-gen875)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_lt_mitigating_min] ) ) ) ?gen485 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen484 & : ( >= ?gen484 1 ) ) ) ?gen478 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen481 ) ( negative-overruled $?gen482 & : ( not ( subseq-pos ( create$ pn_make_lt_mitigating_min-overruled $?gen481 $$$ $?gen482 ) ) ) ) ( positive-defeated $?gen480 & : ( not ( member$ pn_make_lt_mitigating_min $?gen480 ) ) ) ) ( test ( eq ( class ?gen478 ) min_imprisonment ) ) => ( calc ( bind $?gen483 ( create$ pn_make_lt_mitigating_min-overruled $?gen481 $?gen482 ) ) ) ?gen478 <- ( min_imprisonment ( negative-overruled $?gen483 ) )"))

([pn_make_lt_mitigating_min-support] of derived-attribute-rule
   (pos-name pn_make_lt_mitigating_min-support-gen877)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_lt_mitigating_min] ) ) ) ?gen477 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen478 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen480 & : ( not ( subseq-pos ( create$ pn_make_lt_mitigating_min ?gen477 $$$ $?gen480 ) ) ) ) ) ( test ( eq ( class ?gen478 ) min_imprisonment ) ) => ( calc ( bind $?gen483 ( create$ pn_make_lt_mitigating_min ?gen477 $?gen480 ) ) ) ?gen478 <- ( min_imprisonment ( positive-support $?gen483 ) )"))

([pn_use_gt_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_gt_max-defeasibly-dot-gen879)
   (depends-on declare max_imprisonment procurement_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_gt_max] ) ) ) ?gen469 <- ( max_imprisonment ( value 15 ) ( positive 1 ) ( positive-derivator pn_use_gt_max $? ) ) ( test ( eq ( class ?gen469 ) max_imprisonment ) ) ( not ( and ?gen476 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen475 & : ( >= ?gen475 1 ) ) ) ?gen469 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen471 & : ( not ( member$ pn_use_gt_max $?gen471 ) ) ) ) ) ) => ?gen469 <- ( max_imprisonment ( positive 0 ) )"))

([pn_use_gt_max-defeasibly] of derived-attribute-rule
   (pos-name pn_use_gt_max-defeasibly-gen881)
   (depends-on declare procurement_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_gt_max] ) ) ) ?gen476 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen475 & : ( >= ?gen475 1 ) ) ) ?gen469 <- ( max_imprisonment ( value 15 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen471 & : ( not ( member$ pn_use_gt_max $?gen471 ) ) ) ) ( test ( eq ( class ?gen469 ) max_imprisonment ) ) => ?gen469 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_use_gt_max ?gen476 ) )"))

([pn_use_gt_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_gt_max-overruled-dot-gen883)
   (depends-on declare max_imprisonment procurement_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_gt_max] ) ) ) ?gen469 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen472 ) ( negative-overruled $?gen473 & : ( subseq-pos ( create$ pn_use_gt_max-overruled $?gen472 $$$ $?gen473 ) ) ) ) ( test ( eq ( class ?gen469 ) max_imprisonment ) ) ( not ( and ?gen476 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen475 & : ( >= ?gen475 1 ) ) ) ?gen469 <- ( max_imprisonment ( positive-defeated $?gen471 & : ( not ( member$ pn_use_gt_max $?gen471 ) ) ) ) ) ) => ( calc ( bind $?gen474 ( delete-member$ $?gen473 ( create$ pn_use_gt_max-overruled $?gen472 ) ) ) ) ?gen469 <- ( max_imprisonment ( negative-overruled $?gen474 ) )"))

([pn_use_gt_max-overruled] of derived-attribute-rule
   (pos-name pn_use_gt_max-overruled-gen885)
   (depends-on declare procurement_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_gt_max] ) ) ) ?gen476 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen475 & : ( >= ?gen475 1 ) ) ) ?gen469 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen472 ) ( negative-overruled $?gen473 & : ( not ( subseq-pos ( create$ pn_use_gt_max-overruled $?gen472 $$$ $?gen473 ) ) ) ) ( positive-defeated $?gen471 & : ( not ( member$ pn_use_gt_max $?gen471 ) ) ) ) ( test ( eq ( class ?gen469 ) max_imprisonment ) ) => ( calc ( bind $?gen474 ( create$ pn_use_gt_max-overruled $?gen472 $?gen473 ) ) ) ?gen469 <- ( max_imprisonment ( negative-overruled $?gen474 ) )"))

([pn_use_gt_max-support] of derived-attribute-rule
   (pos-name pn_use_gt_max-support-gen887)
   (depends-on declare procurement_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_gt_max] ) ) ) ?gen468 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ) ?gen469 <- ( max_imprisonment ( value 15 ) ( positive-support $?gen471 & : ( not ( subseq-pos ( create$ pn_use_gt_max ?gen468 $$$ $?gen471 ) ) ) ) ) ( test ( eq ( class ?gen469 ) max_imprisonment ) ) => ( calc ( bind $?gen474 ( create$ pn_use_gt_max ?gen468 $?gen471 ) ) ) ?gen469 <- ( max_imprisonment ( positive-support $?gen474 ) )"))

([pn_use_gt_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_gt_min-defeasibly-dot-gen889)
   (depends-on declare min_imprisonment procurement_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_gt_min] ) ) ) ?gen460 <- ( min_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_use_gt_min $? ) ) ( test ( eq ( class ?gen460 ) min_imprisonment ) ) ( not ( and ?gen467 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen466 & : ( >= ?gen466 1 ) ) ) ?gen460 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen462 & : ( not ( member$ pn_use_gt_min $?gen462 ) ) ) ) ) ) => ?gen460 <- ( min_imprisonment ( positive 0 ) )"))

([pn_use_gt_min-defeasibly] of derived-attribute-rule
   (pos-name pn_use_gt_min-defeasibly-gen891)
   (depends-on declare procurement_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_gt_min] ) ) ) ?gen467 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen466 & : ( >= ?gen466 1 ) ) ) ?gen460 <- ( min_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen462 & : ( not ( member$ pn_use_gt_min $?gen462 ) ) ) ) ( test ( eq ( class ?gen460 ) min_imprisonment ) ) => ?gen460 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_use_gt_min ?gen467 ) )"))

([pn_use_gt_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_gt_min-overruled-dot-gen893)
   (depends-on declare min_imprisonment procurement_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_gt_min] ) ) ) ?gen460 <- ( min_imprisonment ( value 5 ) ( negative-support $?gen463 ) ( negative-overruled $?gen464 & : ( subseq-pos ( create$ pn_use_gt_min-overruled $?gen463 $$$ $?gen464 ) ) ) ) ( test ( eq ( class ?gen460 ) min_imprisonment ) ) ( not ( and ?gen467 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen466 & : ( >= ?gen466 1 ) ) ) ?gen460 <- ( min_imprisonment ( positive-defeated $?gen462 & : ( not ( member$ pn_use_gt_min $?gen462 ) ) ) ) ) ) => ( calc ( bind $?gen465 ( delete-member$ $?gen464 ( create$ pn_use_gt_min-overruled $?gen463 ) ) ) ) ?gen460 <- ( min_imprisonment ( negative-overruled $?gen465 ) )"))

([pn_use_gt_min-overruled] of derived-attribute-rule
   (pos-name pn_use_gt_min-overruled-gen895)
   (depends-on declare procurement_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_gt_min] ) ) ) ?gen467 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen466 & : ( >= ?gen466 1 ) ) ) ?gen460 <- ( min_imprisonment ( value 5 ) ( negative-support $?gen463 ) ( negative-overruled $?gen464 & : ( not ( subseq-pos ( create$ pn_use_gt_min-overruled $?gen463 $$$ $?gen464 ) ) ) ) ( positive-defeated $?gen462 & : ( not ( member$ pn_use_gt_min $?gen462 ) ) ) ) ( test ( eq ( class ?gen460 ) min_imprisonment ) ) => ( calc ( bind $?gen465 ( create$ pn_use_gt_min-overruled $?gen463 $?gen464 ) ) ) ?gen460 <- ( min_imprisonment ( negative-overruled $?gen465 ) )"))

([pn_use_gt_min-support] of derived-attribute-rule
   (pos-name pn_use_gt_min-support-gen897)
   (depends-on declare procurement_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_gt_min] ) ) ) ?gen459 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ) ?gen460 <- ( min_imprisonment ( value 5 ) ( positive-support $?gen462 & : ( not ( subseq-pos ( create$ pn_use_gt_min ?gen459 $$$ $?gen462 ) ) ) ) ) ( test ( eq ( class ?gen460 ) min_imprisonment ) ) => ( calc ( bind $?gen465 ( create$ pn_use_gt_min ?gen459 $?gen462 ) ) ) ?gen460 <- ( min_imprisonment ( positive-support $?gen465 ) )"))

([pn_use_lt_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_lt_max-defeasibly-dot-gen899)
   (depends-on declare max_imprisonment procurement_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_lt_max] ) ) ) ?gen451 <- ( max_imprisonment ( value 10 ) ( positive 1 ) ( positive-derivator pn_use_lt_max $? ) ) ( test ( eq ( class ?gen451 ) max_imprisonment ) ) ( not ( and ?gen458 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen457 & : ( >= ?gen457 1 ) ) ) ?gen451 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen453 & : ( not ( member$ pn_use_lt_max $?gen453 ) ) ) ) ) ) => ?gen451 <- ( max_imprisonment ( positive 0 ) )"))

([pn_use_lt_max-defeasibly] of derived-attribute-rule
   (pos-name pn_use_lt_max-defeasibly-gen901)
   (depends-on declare procurement_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_lt_max] ) ) ) ?gen458 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen457 & : ( >= ?gen457 1 ) ) ) ?gen451 <- ( max_imprisonment ( value 10 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen453 & : ( not ( member$ pn_use_lt_max $?gen453 ) ) ) ) ( test ( eq ( class ?gen451 ) max_imprisonment ) ) => ?gen451 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_use_lt_max ?gen458 ) )"))

([pn_use_lt_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_lt_max-overruled-dot-gen903)
   (depends-on declare max_imprisonment procurement_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_lt_max] ) ) ) ?gen451 <- ( max_imprisonment ( value 10 ) ( negative-support $?gen454 ) ( negative-overruled $?gen455 & : ( subseq-pos ( create$ pn_use_lt_max-overruled $?gen454 $$$ $?gen455 ) ) ) ) ( test ( eq ( class ?gen451 ) max_imprisonment ) ) ( not ( and ?gen458 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen457 & : ( >= ?gen457 1 ) ) ) ?gen451 <- ( max_imprisonment ( positive-defeated $?gen453 & : ( not ( member$ pn_use_lt_max $?gen453 ) ) ) ) ) ) => ( calc ( bind $?gen456 ( delete-member$ $?gen455 ( create$ pn_use_lt_max-overruled $?gen454 ) ) ) ) ?gen451 <- ( max_imprisonment ( negative-overruled $?gen456 ) )"))

([pn_use_lt_max-overruled] of derived-attribute-rule
   (pos-name pn_use_lt_max-overruled-gen905)
   (depends-on declare procurement_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_lt_max] ) ) ) ?gen458 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen457 & : ( >= ?gen457 1 ) ) ) ?gen451 <- ( max_imprisonment ( value 10 ) ( negative-support $?gen454 ) ( negative-overruled $?gen455 & : ( not ( subseq-pos ( create$ pn_use_lt_max-overruled $?gen454 $$$ $?gen455 ) ) ) ) ( positive-defeated $?gen453 & : ( not ( member$ pn_use_lt_max $?gen453 ) ) ) ) ( test ( eq ( class ?gen451 ) max_imprisonment ) ) => ( calc ( bind $?gen456 ( create$ pn_use_lt_max-overruled $?gen454 $?gen455 ) ) ) ?gen451 <- ( max_imprisonment ( negative-overruled $?gen456 ) )"))

([pn_use_lt_max-support] of derived-attribute-rule
   (pos-name pn_use_lt_max-support-gen907)
   (depends-on declare procurement_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_lt_max] ) ) ) ?gen450 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ) ?gen451 <- ( max_imprisonment ( value 10 ) ( positive-support $?gen453 & : ( not ( subseq-pos ( create$ pn_use_lt_max ?gen450 $$$ $?gen453 ) ) ) ) ) ( test ( eq ( class ?gen451 ) max_imprisonment ) ) => ( calc ( bind $?gen456 ( create$ pn_use_lt_max ?gen450 $?gen453 ) ) ) ?gen451 <- ( max_imprisonment ( positive-support $?gen456 ) )"))

([pn_use_lt_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_use_lt_min-defeasibly-dot-gen909)
   (depends-on declare min_imprisonment procurement_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_use_lt_min] ) ) ) ?gen442 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_use_lt_min $? ) ) ( test ( eq ( class ?gen442 ) min_imprisonment ) ) ( not ( and ?gen449 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen448 & : ( >= ?gen448 1 ) ) ) ?gen442 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen444 & : ( not ( member$ pn_use_lt_min $?gen444 ) ) ) ) ) ) => ?gen442 <- ( min_imprisonment ( positive 0 ) )"))

([pn_use_lt_min-defeasibly] of derived-attribute-rule
   (pos-name pn_use_lt_min-defeasibly-gen911)
   (depends-on declare procurement_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_use_lt_min] ) ) ) ?gen449 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen448 & : ( >= ?gen448 1 ) ) ) ?gen442 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen444 & : ( not ( member$ pn_use_lt_min $?gen444 ) ) ) ) ( test ( eq ( class ?gen442 ) min_imprisonment ) ) => ?gen442 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_use_lt_min ?gen449 ) )"))

([pn_use_lt_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_use_lt_min-overruled-dot-gen913)
   (depends-on declare min_imprisonment procurement_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_use_lt_min] ) ) ) ?gen442 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen445 ) ( negative-overruled $?gen446 & : ( subseq-pos ( create$ pn_use_lt_min-overruled $?gen445 $$$ $?gen446 ) ) ) ) ( test ( eq ( class ?gen442 ) min_imprisonment ) ) ( not ( and ?gen449 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen448 & : ( >= ?gen448 1 ) ) ) ?gen442 <- ( min_imprisonment ( positive-defeated $?gen444 & : ( not ( member$ pn_use_lt_min $?gen444 ) ) ) ) ) ) => ( calc ( bind $?gen447 ( delete-member$ $?gen446 ( create$ pn_use_lt_min-overruled $?gen445 ) ) ) ) ?gen442 <- ( min_imprisonment ( negative-overruled $?gen447 ) )"))

([pn_use_lt_min-overruled] of derived-attribute-rule
   (pos-name pn_use_lt_min-overruled-gen915)
   (depends-on declare procurement_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_use_lt_min] ) ) ) ?gen449 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen448 & : ( >= ?gen448 1 ) ) ) ?gen442 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen445 ) ( negative-overruled $?gen446 & : ( not ( subseq-pos ( create$ pn_use_lt_min-overruled $?gen445 $$$ $?gen446 ) ) ) ) ( positive-defeated $?gen444 & : ( not ( member$ pn_use_lt_min $?gen444 ) ) ) ) ( test ( eq ( class ?gen442 ) min_imprisonment ) ) => ( calc ( bind $?gen447 ( create$ pn_use_lt_min-overruled $?gen445 $?gen446 ) ) ) ?gen442 <- ( min_imprisonment ( negative-overruled $?gen447 ) )"))

([pn_use_lt_min-support] of derived-attribute-rule
   (pos-name pn_use_lt_min-support-gen917)
   (depends-on declare procurement_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_use_lt_min] ) ) ) ?gen441 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ) ?gen442 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen444 & : ( not ( subseq-pos ( create$ pn_use_lt_min ?gen441 $$$ $?gen444 ) ) ) ) ) ( test ( eq ( class ?gen442 ) min_imprisonment ) ) => ( calc ( bind $?gen447 ( create$ pn_use_lt_min ?gen441 $?gen444 ) ) ) ?gen442 <- ( min_imprisonment ( positive-support $?gen447 ) )"))

([pn_make_gt_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_gt_max-defeasibly-dot-gen919)
   (depends-on declare max_imprisonment counterfeiting_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_gt_max] ) ) ) ?gen433 <- ( max_imprisonment ( value 15 ) ( positive 1 ) ( positive-derivator pn_make_gt_max $? ) ) ( test ( eq ( class ?gen433 ) max_imprisonment ) ) ( not ( and ?gen440 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen439 & : ( >= ?gen439 1 ) ) ) ?gen433 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen435 & : ( not ( member$ pn_make_gt_max $?gen435 ) ) ) ) ) ) => ?gen433 <- ( max_imprisonment ( positive 0 ) )"))

([pn_make_gt_max-defeasibly] of derived-attribute-rule
   (pos-name pn_make_gt_max-defeasibly-gen921)
   (depends-on declare counterfeiting_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_gt_max] ) ) ) ?gen440 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen439 & : ( >= ?gen439 1 ) ) ) ?gen433 <- ( max_imprisonment ( value 15 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen435 & : ( not ( member$ pn_make_gt_max $?gen435 ) ) ) ) ( test ( eq ( class ?gen433 ) max_imprisonment ) ) => ?gen433 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_make_gt_max ?gen440 ) )"))

([pn_make_gt_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_gt_max-overruled-dot-gen923)
   (depends-on declare max_imprisonment counterfeiting_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_gt_max] ) ) ) ?gen433 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen436 ) ( negative-overruled $?gen437 & : ( subseq-pos ( create$ pn_make_gt_max-overruled $?gen436 $$$ $?gen437 ) ) ) ) ( test ( eq ( class ?gen433 ) max_imprisonment ) ) ( not ( and ?gen440 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen439 & : ( >= ?gen439 1 ) ) ) ?gen433 <- ( max_imprisonment ( positive-defeated $?gen435 & : ( not ( member$ pn_make_gt_max $?gen435 ) ) ) ) ) ) => ( calc ( bind $?gen438 ( delete-member$ $?gen437 ( create$ pn_make_gt_max-overruled $?gen436 ) ) ) ) ?gen433 <- ( max_imprisonment ( negative-overruled $?gen438 ) )"))

([pn_make_gt_max-overruled] of derived-attribute-rule
   (pos-name pn_make_gt_max-overruled-gen925)
   (depends-on declare counterfeiting_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_gt_max] ) ) ) ?gen440 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen439 & : ( >= ?gen439 1 ) ) ) ?gen433 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen436 ) ( negative-overruled $?gen437 & : ( not ( subseq-pos ( create$ pn_make_gt_max-overruled $?gen436 $$$ $?gen437 ) ) ) ) ( positive-defeated $?gen435 & : ( not ( member$ pn_make_gt_max $?gen435 ) ) ) ) ( test ( eq ( class ?gen433 ) max_imprisonment ) ) => ( calc ( bind $?gen438 ( create$ pn_make_gt_max-overruled $?gen436 $?gen437 ) ) ) ?gen433 <- ( max_imprisonment ( negative-overruled $?gen438 ) )"))

([pn_make_gt_max-support] of derived-attribute-rule
   (pos-name pn_make_gt_max-support-gen927)
   (depends-on declare counterfeiting_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_gt_max] ) ) ) ?gen432 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ) ?gen433 <- ( max_imprisonment ( value 15 ) ( positive-support $?gen435 & : ( not ( subseq-pos ( create$ pn_make_gt_max ?gen432 $$$ $?gen435 ) ) ) ) ) ( test ( eq ( class ?gen433 ) max_imprisonment ) ) => ( calc ( bind $?gen438 ( create$ pn_make_gt_max ?gen432 $?gen435 ) ) ) ?gen433 <- ( max_imprisonment ( positive-support $?gen438 ) )"))

([pn_make_gt_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_gt_min-defeasibly-dot-gen929)
   (depends-on declare min_imprisonment counterfeiting_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_gt_min] ) ) ) ?gen424 <- ( min_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_make_gt_min $? ) ) ( test ( eq ( class ?gen424 ) min_imprisonment ) ) ( not ( and ?gen431 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen430 & : ( >= ?gen430 1 ) ) ) ?gen424 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen426 & : ( not ( member$ pn_make_gt_min $?gen426 ) ) ) ) ) ) => ?gen424 <- ( min_imprisonment ( positive 0 ) )"))

([pn_make_gt_min-defeasibly] of derived-attribute-rule
   (pos-name pn_make_gt_min-defeasibly-gen931)
   (depends-on declare counterfeiting_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_gt_min] ) ) ) ?gen431 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen430 & : ( >= ?gen430 1 ) ) ) ?gen424 <- ( min_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen426 & : ( not ( member$ pn_make_gt_min $?gen426 ) ) ) ) ( test ( eq ( class ?gen424 ) min_imprisonment ) ) => ?gen424 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_make_gt_min ?gen431 ) )"))

([pn_make_gt_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_gt_min-overruled-dot-gen933)
   (depends-on declare min_imprisonment counterfeiting_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_gt_min] ) ) ) ?gen424 <- ( min_imprisonment ( value 5 ) ( negative-support $?gen427 ) ( negative-overruled $?gen428 & : ( subseq-pos ( create$ pn_make_gt_min-overruled $?gen427 $$$ $?gen428 ) ) ) ) ( test ( eq ( class ?gen424 ) min_imprisonment ) ) ( not ( and ?gen431 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen430 & : ( >= ?gen430 1 ) ) ) ?gen424 <- ( min_imprisonment ( positive-defeated $?gen426 & : ( not ( member$ pn_make_gt_min $?gen426 ) ) ) ) ) ) => ( calc ( bind $?gen429 ( delete-member$ $?gen428 ( create$ pn_make_gt_min-overruled $?gen427 ) ) ) ) ?gen424 <- ( min_imprisonment ( negative-overruled $?gen429 ) )"))

([pn_make_gt_min-overruled] of derived-attribute-rule
   (pos-name pn_make_gt_min-overruled-gen935)
   (depends-on declare counterfeiting_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_gt_min] ) ) ) ?gen431 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen430 & : ( >= ?gen430 1 ) ) ) ?gen424 <- ( min_imprisonment ( value 5 ) ( negative-support $?gen427 ) ( negative-overruled $?gen428 & : ( not ( subseq-pos ( create$ pn_make_gt_min-overruled $?gen427 $$$ $?gen428 ) ) ) ) ( positive-defeated $?gen426 & : ( not ( member$ pn_make_gt_min $?gen426 ) ) ) ) ( test ( eq ( class ?gen424 ) min_imprisonment ) ) => ( calc ( bind $?gen429 ( create$ pn_make_gt_min-overruled $?gen427 $?gen428 ) ) ) ?gen424 <- ( min_imprisonment ( negative-overruled $?gen429 ) )"))

([pn_make_gt_min-support] of derived-attribute-rule
   (pos-name pn_make_gt_min-support-gen937)
   (depends-on declare counterfeiting_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_gt_min] ) ) ) ?gen423 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ) ?gen424 <- ( min_imprisonment ( value 5 ) ( positive-support $?gen426 & : ( not ( subseq-pos ( create$ pn_make_gt_min ?gen423 $$$ $?gen426 ) ) ) ) ) ( test ( eq ( class ?gen424 ) min_imprisonment ) ) => ( calc ( bind $?gen429 ( create$ pn_make_gt_min ?gen423 $?gen426 ) ) ) ?gen424 <- ( min_imprisonment ( positive-support $?gen429 ) )"))

([pn_make_lt_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_lt_max-defeasibly-dot-gen939)
   (depends-on declare max_imprisonment counterfeiting_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_lt_max] ) ) ) ?gen415 <- ( max_imprisonment ( value 12 ) ( positive 1 ) ( positive-derivator pn_make_lt_max $? ) ) ( test ( eq ( class ?gen415 ) max_imprisonment ) ) ( not ( and ?gen422 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen421 & : ( >= ?gen421 1 ) ) ) ?gen415 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen417 & : ( not ( member$ pn_make_lt_max $?gen417 ) ) ) ) ) ) => ?gen415 <- ( max_imprisonment ( positive 0 ) )"))

([pn_make_lt_max-defeasibly] of derived-attribute-rule
   (pos-name pn_make_lt_max-defeasibly-gen941)
   (depends-on declare counterfeiting_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_lt_max] ) ) ) ?gen422 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen421 & : ( >= ?gen421 1 ) ) ) ?gen415 <- ( max_imprisonment ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen417 & : ( not ( member$ pn_make_lt_max $?gen417 ) ) ) ) ( test ( eq ( class ?gen415 ) max_imprisonment ) ) => ?gen415 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_make_lt_max ?gen422 ) )"))

([pn_make_lt_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_lt_max-overruled-dot-gen943)
   (depends-on declare max_imprisonment counterfeiting_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_lt_max] ) ) ) ?gen415 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen418 ) ( negative-overruled $?gen419 & : ( subseq-pos ( create$ pn_make_lt_max-overruled $?gen418 $$$ $?gen419 ) ) ) ) ( test ( eq ( class ?gen415 ) max_imprisonment ) ) ( not ( and ?gen422 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen421 & : ( >= ?gen421 1 ) ) ) ?gen415 <- ( max_imprisonment ( positive-defeated $?gen417 & : ( not ( member$ pn_make_lt_max $?gen417 ) ) ) ) ) ) => ( calc ( bind $?gen420 ( delete-member$ $?gen419 ( create$ pn_make_lt_max-overruled $?gen418 ) ) ) ) ?gen415 <- ( max_imprisonment ( negative-overruled $?gen420 ) )"))

([pn_make_lt_max-overruled] of derived-attribute-rule
   (pos-name pn_make_lt_max-overruled-gen945)
   (depends-on declare counterfeiting_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_lt_max] ) ) ) ?gen422 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen421 & : ( >= ?gen421 1 ) ) ) ?gen415 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen418 ) ( negative-overruled $?gen419 & : ( not ( subseq-pos ( create$ pn_make_lt_max-overruled $?gen418 $$$ $?gen419 ) ) ) ) ( positive-defeated $?gen417 & : ( not ( member$ pn_make_lt_max $?gen417 ) ) ) ) ( test ( eq ( class ?gen415 ) max_imprisonment ) ) => ( calc ( bind $?gen420 ( create$ pn_make_lt_max-overruled $?gen418 $?gen419 ) ) ) ?gen415 <- ( max_imprisonment ( negative-overruled $?gen420 ) )"))

([pn_make_lt_max-support] of derived-attribute-rule
   (pos-name pn_make_lt_max-support-gen947)
   (depends-on declare counterfeiting_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_lt_max] ) ) ) ?gen414 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ) ?gen415 <- ( max_imprisonment ( value 12 ) ( positive-support $?gen417 & : ( not ( subseq-pos ( create$ pn_make_lt_max ?gen414 $$$ $?gen417 ) ) ) ) ) ( test ( eq ( class ?gen415 ) max_imprisonment ) ) => ( calc ( bind $?gen420 ( create$ pn_make_lt_max ?gen414 $?gen417 ) ) ) ?gen415 <- ( max_imprisonment ( positive-support $?gen420 ) )"))

([pn_make_lt_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_make_lt_min-defeasibly-dot-gen949)
   (depends-on declare min_imprisonment counterfeiting_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_make_lt_min] ) ) ) ?gen406 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_make_lt_min $? ) ) ( test ( eq ( class ?gen406 ) min_imprisonment ) ) ( not ( and ?gen413 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen412 & : ( >= ?gen412 1 ) ) ) ?gen406 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen408 & : ( not ( member$ pn_make_lt_min $?gen408 ) ) ) ) ) ) => ?gen406 <- ( min_imprisonment ( positive 0 ) )"))

([pn_make_lt_min-defeasibly] of derived-attribute-rule
   (pos-name pn_make_lt_min-defeasibly-gen951)
   (depends-on declare counterfeiting_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_make_lt_min] ) ) ) ?gen413 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen412 & : ( >= ?gen412 1 ) ) ) ?gen406 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen408 & : ( not ( member$ pn_make_lt_min $?gen408 ) ) ) ) ( test ( eq ( class ?gen406 ) min_imprisonment ) ) => ?gen406 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_make_lt_min ?gen413 ) )"))

([pn_make_lt_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_make_lt_min-overruled-dot-gen953)
   (depends-on declare min_imprisonment counterfeiting_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_make_lt_min] ) ) ) ?gen406 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen409 ) ( negative-overruled $?gen410 & : ( subseq-pos ( create$ pn_make_lt_min-overruled $?gen409 $$$ $?gen410 ) ) ) ) ( test ( eq ( class ?gen406 ) min_imprisonment ) ) ( not ( and ?gen413 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen412 & : ( >= ?gen412 1 ) ) ) ?gen406 <- ( min_imprisonment ( positive-defeated $?gen408 & : ( not ( member$ pn_make_lt_min $?gen408 ) ) ) ) ) ) => ( calc ( bind $?gen411 ( delete-member$ $?gen410 ( create$ pn_make_lt_min-overruled $?gen409 ) ) ) ) ?gen406 <- ( min_imprisonment ( negative-overruled $?gen411 ) )"))

([pn_make_lt_min-overruled] of derived-attribute-rule
   (pos-name pn_make_lt_min-overruled-gen955)
   (depends-on declare counterfeiting_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_make_lt_min] ) ) ) ?gen413 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen412 & : ( >= ?gen412 1 ) ) ) ?gen406 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen409 ) ( negative-overruled $?gen410 & : ( not ( subseq-pos ( create$ pn_make_lt_min-overruled $?gen409 $$$ $?gen410 ) ) ) ) ( positive-defeated $?gen408 & : ( not ( member$ pn_make_lt_min $?gen408 ) ) ) ) ( test ( eq ( class ?gen406 ) min_imprisonment ) ) => ( calc ( bind $?gen411 ( create$ pn_make_lt_min-overruled $?gen409 $?gen410 ) ) ) ?gen406 <- ( min_imprisonment ( negative-overruled $?gen411 ) )"))

([pn_make_lt_min-support] of derived-attribute-rule
   (pos-name pn_make_lt_min-support-gen957)
   (depends-on declare counterfeiting_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_make_lt_min] ) ) ) ?gen405 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ) ?gen406 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen408 & : ( not ( subseq-pos ( create$ pn_make_lt_min ?gen405 $$$ $?gen408 ) ) ) ) ) ( test ( eq ( class ?gen406 ) min_imprisonment ) ) => ( calc ( bind $?gen411 ( create$ pn_make_lt_min ?gen405 $?gen408 ) ) ) ?gen406 <- ( min_imprisonment ( positive-support $?gen411 ) )"))

([pen_conf_13-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_13-defeasibly-dot-gen959)
   (depends-on declare to_confiscate failure_to_report to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_13] ) ) ) ?gen397 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_13 $? ) ) ( test ( eq ( class ?gen397 ) to_confiscate ) ) ( not ( and ?gen404 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen403 & : ( >= ?gen403 1 ) ) ) ?gen397 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen399 & : ( not ( member$ pen_conf_13 $?gen399 ) ) ) ) ) ) => ?gen397 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_13-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_13-defeasibly-gen961)
   (depends-on declare failure_to_report to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_13] ) ) ) ?gen404 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen403 & : ( >= ?gen403 1 ) ) ) ?gen397 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen399 & : ( not ( member$ pen_conf_13 $?gen399 ) ) ) ) ( test ( eq ( class ?gen397 ) to_confiscate ) ) => ?gen397 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_13 ?gen404 ) )"))

([pen_conf_13-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_13-overruled-dot-gen963)
   (depends-on declare to_confiscate failure_to_report to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_13] ) ) ) ?gen397 <- ( to_confiscate ( value 1 ) ( negative-support $?gen400 ) ( negative-overruled $?gen401 & : ( subseq-pos ( create$ pen_conf_13-overruled $?gen400 $$$ $?gen401 ) ) ) ) ( test ( eq ( class ?gen397 ) to_confiscate ) ) ( not ( and ?gen404 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen403 & : ( >= ?gen403 1 ) ) ) ?gen397 <- ( to_confiscate ( positive-defeated $?gen399 & : ( not ( member$ pen_conf_13 $?gen399 ) ) ) ) ) ) => ( calc ( bind $?gen402 ( delete-member$ $?gen401 ( create$ pen_conf_13-overruled $?gen400 ) ) ) ) ?gen397 <- ( to_confiscate ( negative-overruled $?gen402 ) )"))

([pen_conf_13-overruled] of derived-attribute-rule
   (pos-name pen_conf_13-overruled-gen965)
   (depends-on declare failure_to_report to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_13] ) ) ) ?gen404 <- ( failure_to_report ( defendant ?Defendant ) ( positive ?gen403 & : ( >= ?gen403 1 ) ) ) ?gen397 <- ( to_confiscate ( value 1 ) ( negative-support $?gen400 ) ( negative-overruled $?gen401 & : ( not ( subseq-pos ( create$ pen_conf_13-overruled $?gen400 $$$ $?gen401 ) ) ) ) ( positive-defeated $?gen399 & : ( not ( member$ pen_conf_13 $?gen399 ) ) ) ) ( test ( eq ( class ?gen397 ) to_confiscate ) ) => ( calc ( bind $?gen402 ( create$ pen_conf_13-overruled $?gen400 $?gen401 ) ) ) ?gen397 <- ( to_confiscate ( negative-overruled $?gen402 ) )"))

([pen_conf_13-support] of derived-attribute-rule
   (pos-name pen_conf_13-support-gen967)
   (depends-on declare failure_to_report to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_13] ) ) ) ?gen396 <- ( failure_to_report ( defendant ?Defendant ) ) ?gen397 <- ( to_confiscate ( value 1 ) ( positive-support $?gen399 & : ( not ( subseq-pos ( create$ pen_conf_13 ?gen396 $$$ $?gen399 ) ) ) ) ) ( test ( eq ( class ?gen397 ) to_confiscate ) ) => ( calc ( bind $?gen402 ( create$ pen_conf_13 ?gen396 $?gen399 ) ) ) ?gen397 <- ( to_confiscate ( positive-support $?gen402 ) )"))

([pen_conf_12-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_12-defeasibly-dot-gen969)
   (depends-on declare to_confiscate procurement_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_12] ) ) ) ?gen388 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_12 $? ) ) ( test ( eq ( class ?gen388 ) to_confiscate ) ) ( not ( and ?gen395 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen394 & : ( >= ?gen394 1 ) ) ) ?gen388 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen390 & : ( not ( member$ pen_conf_12 $?gen390 ) ) ) ) ) ) => ?gen388 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_12-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_12-defeasibly-gen971)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_12] ) ) ) ?gen395 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen394 & : ( >= ?gen394 1 ) ) ) ?gen388 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen390 & : ( not ( member$ pen_conf_12 $?gen390 ) ) ) ) ( test ( eq ( class ?gen388 ) to_confiscate ) ) => ?gen388 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_12 ?gen395 ) )"))

([pen_conf_12-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_12-overruled-dot-gen973)
   (depends-on declare to_confiscate procurement_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_12] ) ) ) ?gen388 <- ( to_confiscate ( value 1 ) ( negative-support $?gen391 ) ( negative-overruled $?gen392 & : ( subseq-pos ( create$ pen_conf_12-overruled $?gen391 $$$ $?gen392 ) ) ) ) ( test ( eq ( class ?gen388 ) to_confiscate ) ) ( not ( and ?gen395 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen394 & : ( >= ?gen394 1 ) ) ) ?gen388 <- ( to_confiscate ( positive-defeated $?gen390 & : ( not ( member$ pen_conf_12 $?gen390 ) ) ) ) ) ) => ( calc ( bind $?gen393 ( delete-member$ $?gen392 ( create$ pen_conf_12-overruled $?gen391 ) ) ) ) ?gen388 <- ( to_confiscate ( negative-overruled $?gen393 ) )"))

([pen_conf_12-overruled] of derived-attribute-rule
   (pos-name pen_conf_12-overruled-gen975)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_12] ) ) ) ?gen395 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen394 & : ( >= ?gen394 1 ) ) ) ?gen388 <- ( to_confiscate ( value 1 ) ( negative-support $?gen391 ) ( negative-overruled $?gen392 & : ( not ( subseq-pos ( create$ pen_conf_12-overruled $?gen391 $$$ $?gen392 ) ) ) ) ( positive-defeated $?gen390 & : ( not ( member$ pen_conf_12 $?gen390 ) ) ) ) ( test ( eq ( class ?gen388 ) to_confiscate ) ) => ( calc ( bind $?gen393 ( create$ pen_conf_12-overruled $?gen391 $?gen392 ) ) ) ?gen388 <- ( to_confiscate ( negative-overruled $?gen393 ) )"))

([pen_conf_12-support] of derived-attribute-rule
   (pos-name pen_conf_12-support-gen977)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_12] ) ) ) ?gen387 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen388 <- ( to_confiscate ( value 1 ) ( positive-support $?gen390 & : ( not ( subseq-pos ( create$ pen_conf_12 ?gen387 $$$ $?gen390 ) ) ) ) ) ( test ( eq ( class ?gen388 ) to_confiscate ) ) => ( calc ( bind $?gen393 ( create$ pen_conf_12 ?gen387 $?gen390 ) ) ) ?gen388 <- ( to_confiscate ( positive-support $?gen393 ) )"))

([pen_conf_11-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_11-defeasibly-dot-gen979)
   (depends-on declare to_confiscate procurement_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_11] ) ) ) ?gen379 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_11 $? ) ) ( test ( eq ( class ?gen379 ) to_confiscate ) ) ( not ( and ?gen386 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen385 & : ( >= ?gen385 1 ) ) ) ?gen379 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen381 & : ( not ( member$ pen_conf_11 $?gen381 ) ) ) ) ) ) => ?gen379 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_11-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_11-defeasibly-gen981)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_11] ) ) ) ?gen386 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen385 & : ( >= ?gen385 1 ) ) ) ?gen379 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen381 & : ( not ( member$ pen_conf_11 $?gen381 ) ) ) ) ( test ( eq ( class ?gen379 ) to_confiscate ) ) => ?gen379 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_11 ?gen386 ) )"))

([pen_conf_11-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_11-overruled-dot-gen983)
   (depends-on declare to_confiscate procurement_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_11] ) ) ) ?gen379 <- ( to_confiscate ( value 1 ) ( negative-support $?gen382 ) ( negative-overruled $?gen383 & : ( subseq-pos ( create$ pen_conf_11-overruled $?gen382 $$$ $?gen383 ) ) ) ) ( test ( eq ( class ?gen379 ) to_confiscate ) ) ( not ( and ?gen386 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen385 & : ( >= ?gen385 1 ) ) ) ?gen379 <- ( to_confiscate ( positive-defeated $?gen381 & : ( not ( member$ pen_conf_11 $?gen381 ) ) ) ) ) ) => ( calc ( bind $?gen384 ( delete-member$ $?gen383 ( create$ pen_conf_11-overruled $?gen382 ) ) ) ) ?gen379 <- ( to_confiscate ( negative-overruled $?gen384 ) )"))

([pen_conf_11-overruled] of derived-attribute-rule
   (pos-name pen_conf_11-overruled-gen985)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_11] ) ) ) ?gen386 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen385 & : ( >= ?gen385 1 ) ) ) ?gen379 <- ( to_confiscate ( value 1 ) ( negative-support $?gen382 ) ( negative-overruled $?gen383 & : ( not ( subseq-pos ( create$ pen_conf_11-overruled $?gen382 $$$ $?gen383 ) ) ) ) ( positive-defeated $?gen381 & : ( not ( member$ pen_conf_11 $?gen381 ) ) ) ) ( test ( eq ( class ?gen379 ) to_confiscate ) ) => ( calc ( bind $?gen384 ( create$ pen_conf_11-overruled $?gen382 $?gen383 ) ) ) ?gen379 <- ( to_confiscate ( negative-overruled $?gen384 ) )"))

([pen_conf_11-support] of derived-attribute-rule
   (pos-name pen_conf_11-support-gen987)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_11] ) ) ) ?gen378 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen379 <- ( to_confiscate ( value 1 ) ( positive-support $?gen381 & : ( not ( subseq-pos ( create$ pen_conf_11 ?gen378 $$$ $?gen381 ) ) ) ) ) ( test ( eq ( class ?gen379 ) to_confiscate ) ) => ( calc ( bind $?gen384 ( create$ pen_conf_11 ?gen378 $?gen381 ) ) ) ?gen379 <- ( to_confiscate ( positive-support $?gen384 ) )"))

([pen_conf_10-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_10-defeasibly-dot-gen989)
   (depends-on declare to_confiscate counterfeiting_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_10] ) ) ) ?gen370 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_10 $? ) ) ( test ( eq ( class ?gen370 ) to_confiscate ) ) ( not ( and ?gen377 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen376 & : ( >= ?gen376 1 ) ) ) ?gen370 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen372 & : ( not ( member$ pen_conf_10 $?gen372 ) ) ) ) ) ) => ?gen370 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_10-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_10-defeasibly-gen991)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_10] ) ) ) ?gen377 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen376 & : ( >= ?gen376 1 ) ) ) ?gen370 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen372 & : ( not ( member$ pen_conf_10 $?gen372 ) ) ) ) ( test ( eq ( class ?gen370 ) to_confiscate ) ) => ?gen370 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_10 ?gen377 ) )"))

([pen_conf_10-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_10-overruled-dot-gen993)
   (depends-on declare to_confiscate counterfeiting_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_10] ) ) ) ?gen370 <- ( to_confiscate ( value 1 ) ( negative-support $?gen373 ) ( negative-overruled $?gen374 & : ( subseq-pos ( create$ pen_conf_10-overruled $?gen373 $$$ $?gen374 ) ) ) ) ( test ( eq ( class ?gen370 ) to_confiscate ) ) ( not ( and ?gen377 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen376 & : ( >= ?gen376 1 ) ) ) ?gen370 <- ( to_confiscate ( positive-defeated $?gen372 & : ( not ( member$ pen_conf_10 $?gen372 ) ) ) ) ) ) => ( calc ( bind $?gen375 ( delete-member$ $?gen374 ( create$ pen_conf_10-overruled $?gen373 ) ) ) ) ?gen370 <- ( to_confiscate ( negative-overruled $?gen375 ) )"))

([pen_conf_10-overruled] of derived-attribute-rule
   (pos-name pen_conf_10-overruled-gen995)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_10] ) ) ) ?gen377 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen376 & : ( >= ?gen376 1 ) ) ) ?gen370 <- ( to_confiscate ( value 1 ) ( negative-support $?gen373 ) ( negative-overruled $?gen374 & : ( not ( subseq-pos ( create$ pen_conf_10-overruled $?gen373 $$$ $?gen374 ) ) ) ) ( positive-defeated $?gen372 & : ( not ( member$ pen_conf_10 $?gen372 ) ) ) ) ( test ( eq ( class ?gen370 ) to_confiscate ) ) => ( calc ( bind $?gen375 ( create$ pen_conf_10-overruled $?gen373 $?gen374 ) ) ) ?gen370 <- ( to_confiscate ( negative-overruled $?gen375 ) )"))

([pen_conf_10-support] of derived-attribute-rule
   (pos-name pen_conf_10-support-gen997)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_10] ) ) ) ?gen369 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen370 <- ( to_confiscate ( value 1 ) ( positive-support $?gen372 & : ( not ( subseq-pos ( create$ pen_conf_10 ?gen369 $$$ $?gen372 ) ) ) ) ) ( test ( eq ( class ?gen370 ) to_confiscate ) ) => ( calc ( bind $?gen375 ( create$ pen_conf_10 ?gen369 $?gen372 ) ) ) ?gen370 <- ( to_confiscate ( positive-support $?gen375 ) )"))

([pen_conf_9-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_9-defeasibly-dot-gen999)
   (depends-on declare to_confiscate counterfeiting_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_9] ) ) ) ?gen361 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_9 $? ) ) ( test ( eq ( class ?gen361 ) to_confiscate ) ) ( not ( and ?gen368 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen367 & : ( >= ?gen367 1 ) ) ) ?gen361 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen363 & : ( not ( member$ pen_conf_9 $?gen363 ) ) ) ) ) ) => ?gen361 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_9-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_9-defeasibly-gen1001)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_9] ) ) ) ?gen368 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen367 & : ( >= ?gen367 1 ) ) ) ?gen361 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen363 & : ( not ( member$ pen_conf_9 $?gen363 ) ) ) ) ( test ( eq ( class ?gen361 ) to_confiscate ) ) => ?gen361 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_9 ?gen368 ) )"))

([pen_conf_9-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_9-overruled-dot-gen1003)
   (depends-on declare to_confiscate counterfeiting_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_9] ) ) ) ?gen361 <- ( to_confiscate ( value 1 ) ( negative-support $?gen364 ) ( negative-overruled $?gen365 & : ( subseq-pos ( create$ pen_conf_9-overruled $?gen364 $$$ $?gen365 ) ) ) ) ( test ( eq ( class ?gen361 ) to_confiscate ) ) ( not ( and ?gen368 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen367 & : ( >= ?gen367 1 ) ) ) ?gen361 <- ( to_confiscate ( positive-defeated $?gen363 & : ( not ( member$ pen_conf_9 $?gen363 ) ) ) ) ) ) => ( calc ( bind $?gen366 ( delete-member$ $?gen365 ( create$ pen_conf_9-overruled $?gen364 ) ) ) ) ?gen361 <- ( to_confiscate ( negative-overruled $?gen366 ) )"))

([pen_conf_9-overruled] of derived-attribute-rule
   (pos-name pen_conf_9-overruled-gen1005)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_9] ) ) ) ?gen368 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen367 & : ( >= ?gen367 1 ) ) ) ?gen361 <- ( to_confiscate ( value 1 ) ( negative-support $?gen364 ) ( negative-overruled $?gen365 & : ( not ( subseq-pos ( create$ pen_conf_9-overruled $?gen364 $$$ $?gen365 ) ) ) ) ( positive-defeated $?gen363 & : ( not ( member$ pen_conf_9 $?gen363 ) ) ) ) ( test ( eq ( class ?gen361 ) to_confiscate ) ) => ( calc ( bind $?gen366 ( create$ pen_conf_9-overruled $?gen364 $?gen365 ) ) ) ?gen361 <- ( to_confiscate ( negative-overruled $?gen366 ) )"))

([pen_conf_9-support] of derived-attribute-rule
   (pos-name pen_conf_9-support-gen1007)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_9] ) ) ) ?gen360 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen361 <- ( to_confiscate ( value 1 ) ( positive-support $?gen363 & : ( not ( subseq-pos ( create$ pen_conf_9 ?gen360 $$$ $?gen363 ) ) ) ) ) ( test ( eq ( class ?gen361 ) to_confiscate ) ) => ( calc ( bind $?gen366 ( create$ pen_conf_9 ?gen360 $?gen363 ) ) ) ?gen361 <- ( to_confiscate ( positive-support $?gen366 ) )"))

([pen_conf_8-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_8-defeasibly-dot-gen1009)
   (depends-on declare to_confiscate procurement_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_8] ) ) ) ?gen352 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_8 $? ) ) ( test ( eq ( class ?gen352 ) to_confiscate ) ) ( not ( and ?gen359 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen358 & : ( >= ?gen358 1 ) ) ) ?gen352 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen354 & : ( not ( member$ pen_conf_8 $?gen354 ) ) ) ) ) ) => ?gen352 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_8-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_8-defeasibly-gen1011)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_8] ) ) ) ?gen359 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen358 & : ( >= ?gen358 1 ) ) ) ?gen352 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen354 & : ( not ( member$ pen_conf_8 $?gen354 ) ) ) ) ( test ( eq ( class ?gen352 ) to_confiscate ) ) => ?gen352 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_8 ?gen359 ) )"))

([pen_conf_8-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_8-overruled-dot-gen1013)
   (depends-on declare to_confiscate procurement_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_8] ) ) ) ?gen352 <- ( to_confiscate ( value 1 ) ( negative-support $?gen355 ) ( negative-overruled $?gen356 & : ( subseq-pos ( create$ pen_conf_8-overruled $?gen355 $$$ $?gen356 ) ) ) ) ( test ( eq ( class ?gen352 ) to_confiscate ) ) ( not ( and ?gen359 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen358 & : ( >= ?gen358 1 ) ) ) ?gen352 <- ( to_confiscate ( positive-defeated $?gen354 & : ( not ( member$ pen_conf_8 $?gen354 ) ) ) ) ) ) => ( calc ( bind $?gen357 ( delete-member$ $?gen356 ( create$ pen_conf_8-overruled $?gen355 ) ) ) ) ?gen352 <- ( to_confiscate ( negative-overruled $?gen357 ) )"))

([pen_conf_8-overruled] of derived-attribute-rule
   (pos-name pen_conf_8-overruled-gen1015)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_8] ) ) ) ?gen359 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen358 & : ( >= ?gen358 1 ) ) ) ?gen352 <- ( to_confiscate ( value 1 ) ( negative-support $?gen355 ) ( negative-overruled $?gen356 & : ( not ( subseq-pos ( create$ pen_conf_8-overruled $?gen355 $$$ $?gen356 ) ) ) ) ( positive-defeated $?gen354 & : ( not ( member$ pen_conf_8 $?gen354 ) ) ) ) ( test ( eq ( class ?gen352 ) to_confiscate ) ) => ( calc ( bind $?gen357 ( create$ pen_conf_8-overruled $?gen355 $?gen356 ) ) ) ?gen352 <- ( to_confiscate ( negative-overruled $?gen357 ) )"))

([pen_conf_8-support] of derived-attribute-rule
   (pos-name pen_conf_8-support-gen1017)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_8] ) ) ) ?gen351 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen352 <- ( to_confiscate ( value 1 ) ( positive-support $?gen354 & : ( not ( subseq-pos ( create$ pen_conf_8 ?gen351 $$$ $?gen354 ) ) ) ) ) ( test ( eq ( class ?gen352 ) to_confiscate ) ) => ( calc ( bind $?gen357 ( create$ pen_conf_8 ?gen351 $?gen354 ) ) ) ?gen352 <- ( to_confiscate ( positive-support $?gen357 ) )"))

([pen_conf_7-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_7-defeasibly-dot-gen1019)
   (depends-on declare to_confiscate procurement_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_7] ) ) ) ?gen343 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_7 $? ) ) ( test ( eq ( class ?gen343 ) to_confiscate ) ) ( not ( and ?gen350 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen349 & : ( >= ?gen349 1 ) ) ) ?gen343 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen345 & : ( not ( member$ pen_conf_7 $?gen345 ) ) ) ) ) ) => ?gen343 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_7-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_7-defeasibly-gen1021)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_7] ) ) ) ?gen350 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen349 & : ( >= ?gen349 1 ) ) ) ?gen343 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen345 & : ( not ( member$ pen_conf_7 $?gen345 ) ) ) ) ( test ( eq ( class ?gen343 ) to_confiscate ) ) => ?gen343 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_7 ?gen350 ) )"))

([pen_conf_7-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_7-overruled-dot-gen1023)
   (depends-on declare to_confiscate procurement_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_7] ) ) ) ?gen343 <- ( to_confiscate ( value 1 ) ( negative-support $?gen346 ) ( negative-overruled $?gen347 & : ( subseq-pos ( create$ pen_conf_7-overruled $?gen346 $$$ $?gen347 ) ) ) ) ( test ( eq ( class ?gen343 ) to_confiscate ) ) ( not ( and ?gen350 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen349 & : ( >= ?gen349 1 ) ) ) ?gen343 <- ( to_confiscate ( positive-defeated $?gen345 & : ( not ( member$ pen_conf_7 $?gen345 ) ) ) ) ) ) => ( calc ( bind $?gen348 ( delete-member$ $?gen347 ( create$ pen_conf_7-overruled $?gen346 ) ) ) ) ?gen343 <- ( to_confiscate ( negative-overruled $?gen348 ) )"))

([pen_conf_7-overruled] of derived-attribute-rule
   (pos-name pen_conf_7-overruled-gen1025)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_7] ) ) ) ?gen350 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen349 & : ( >= ?gen349 1 ) ) ) ?gen343 <- ( to_confiscate ( value 1 ) ( negative-support $?gen346 ) ( negative-overruled $?gen347 & : ( not ( subseq-pos ( create$ pen_conf_7-overruled $?gen346 $$$ $?gen347 ) ) ) ) ( positive-defeated $?gen345 & : ( not ( member$ pen_conf_7 $?gen345 ) ) ) ) ( test ( eq ( class ?gen343 ) to_confiscate ) ) => ( calc ( bind $?gen348 ( create$ pen_conf_7-overruled $?gen346 $?gen347 ) ) ) ?gen343 <- ( to_confiscate ( negative-overruled $?gen348 ) )"))

([pen_conf_7-support] of derived-attribute-rule
   (pos-name pen_conf_7-support-gen1027)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_7] ) ) ) ?gen342 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen343 <- ( to_confiscate ( value 1 ) ( positive-support $?gen345 & : ( not ( subseq-pos ( create$ pen_conf_7 ?gen342 $$$ $?gen345 ) ) ) ) ) ( test ( eq ( class ?gen343 ) to_confiscate ) ) => ( calc ( bind $?gen348 ( create$ pen_conf_7 ?gen342 $?gen345 ) ) ) ?gen343 <- ( to_confiscate ( positive-support $?gen348 ) )"))

([pen_conf_6-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_6-defeasibly-dot-gen1029)
   (depends-on declare to_confiscate counterfeiting_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_6] ) ) ) ?gen334 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_6 $? ) ) ( test ( eq ( class ?gen334 ) to_confiscate ) ) ( not ( and ?gen341 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen340 & : ( >= ?gen340 1 ) ) ) ?gen334 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen336 & : ( not ( member$ pen_conf_6 $?gen336 ) ) ) ) ) ) => ?gen334 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_6-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_6-defeasibly-gen1031)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_6] ) ) ) ?gen341 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen340 & : ( >= ?gen340 1 ) ) ) ?gen334 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen336 & : ( not ( member$ pen_conf_6 $?gen336 ) ) ) ) ( test ( eq ( class ?gen334 ) to_confiscate ) ) => ?gen334 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_6 ?gen341 ) )"))

([pen_conf_6-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_6-overruled-dot-gen1033)
   (depends-on declare to_confiscate counterfeiting_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_6] ) ) ) ?gen334 <- ( to_confiscate ( value 1 ) ( negative-support $?gen337 ) ( negative-overruled $?gen338 & : ( subseq-pos ( create$ pen_conf_6-overruled $?gen337 $$$ $?gen338 ) ) ) ) ( test ( eq ( class ?gen334 ) to_confiscate ) ) ( not ( and ?gen341 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen340 & : ( >= ?gen340 1 ) ) ) ?gen334 <- ( to_confiscate ( positive-defeated $?gen336 & : ( not ( member$ pen_conf_6 $?gen336 ) ) ) ) ) ) => ( calc ( bind $?gen339 ( delete-member$ $?gen338 ( create$ pen_conf_6-overruled $?gen337 ) ) ) ) ?gen334 <- ( to_confiscate ( negative-overruled $?gen339 ) )"))

([pen_conf_6-overruled] of derived-attribute-rule
   (pos-name pen_conf_6-overruled-gen1035)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_6] ) ) ) ?gen341 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen340 & : ( >= ?gen340 1 ) ) ) ?gen334 <- ( to_confiscate ( value 1 ) ( negative-support $?gen337 ) ( negative-overruled $?gen338 & : ( not ( subseq-pos ( create$ pen_conf_6-overruled $?gen337 $$$ $?gen338 ) ) ) ) ( positive-defeated $?gen336 & : ( not ( member$ pen_conf_6 $?gen336 ) ) ) ) ( test ( eq ( class ?gen334 ) to_confiscate ) ) => ( calc ( bind $?gen339 ( create$ pen_conf_6-overruled $?gen337 $?gen338 ) ) ) ?gen334 <- ( to_confiscate ( negative-overruled $?gen339 ) )"))

([pen_conf_6-support] of derived-attribute-rule
   (pos-name pen_conf_6-support-gen1037)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_6] ) ) ) ?gen333 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen334 <- ( to_confiscate ( value 1 ) ( positive-support $?gen336 & : ( not ( subseq-pos ( create$ pen_conf_6 ?gen333 $$$ $?gen336 ) ) ) ) ) ( test ( eq ( class ?gen334 ) to_confiscate ) ) => ( calc ( bind $?gen339 ( create$ pen_conf_6 ?gen333 $?gen336 ) ) ) ?gen334 <- ( to_confiscate ( positive-support $?gen339 ) )"))

([pen_conf_5-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_5-defeasibly-dot-gen1039)
   (depends-on declare to_confiscate counterfeiting_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_5] ) ) ) ?gen325 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_5 $? ) ) ( test ( eq ( class ?gen325 ) to_confiscate ) ) ( not ( and ?gen332 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen331 & : ( >= ?gen331 1 ) ) ) ?gen325 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen327 & : ( not ( member$ pen_conf_5 $?gen327 ) ) ) ) ) ) => ?gen325 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_5-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_5-defeasibly-gen1041)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_5] ) ) ) ?gen332 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen331 & : ( >= ?gen331 1 ) ) ) ?gen325 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen327 & : ( not ( member$ pen_conf_5 $?gen327 ) ) ) ) ( test ( eq ( class ?gen325 ) to_confiscate ) ) => ?gen325 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_5 ?gen332 ) )"))

([pen_conf_5-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_5-overruled-dot-gen1043)
   (depends-on declare to_confiscate counterfeiting_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_5] ) ) ) ?gen325 <- ( to_confiscate ( value 1 ) ( negative-support $?gen328 ) ( negative-overruled $?gen329 & : ( subseq-pos ( create$ pen_conf_5-overruled $?gen328 $$$ $?gen329 ) ) ) ) ( test ( eq ( class ?gen325 ) to_confiscate ) ) ( not ( and ?gen332 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen331 & : ( >= ?gen331 1 ) ) ) ?gen325 <- ( to_confiscate ( positive-defeated $?gen327 & : ( not ( member$ pen_conf_5 $?gen327 ) ) ) ) ) ) => ( calc ( bind $?gen330 ( delete-member$ $?gen329 ( create$ pen_conf_5-overruled $?gen328 ) ) ) ) ?gen325 <- ( to_confiscate ( negative-overruled $?gen330 ) )"))

([pen_conf_5-overruled] of derived-attribute-rule
   (pos-name pen_conf_5-overruled-gen1045)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_5] ) ) ) ?gen332 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen331 & : ( >= ?gen331 1 ) ) ) ?gen325 <- ( to_confiscate ( value 1 ) ( negative-support $?gen328 ) ( negative-overruled $?gen329 & : ( not ( subseq-pos ( create$ pen_conf_5-overruled $?gen328 $$$ $?gen329 ) ) ) ) ( positive-defeated $?gen327 & : ( not ( member$ pen_conf_5 $?gen327 ) ) ) ) ( test ( eq ( class ?gen325 ) to_confiscate ) ) => ( calc ( bind $?gen330 ( create$ pen_conf_5-overruled $?gen328 $?gen329 ) ) ) ?gen325 <- ( to_confiscate ( negative-overruled $?gen330 ) )"))

([pen_conf_5-support] of derived-attribute-rule
   (pos-name pen_conf_5-support-gen1047)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_5] ) ) ) ?gen324 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen325 <- ( to_confiscate ( value 1 ) ( positive-support $?gen327 & : ( not ( subseq-pos ( create$ pen_conf_5 ?gen324 $$$ $?gen327 ) ) ) ) ) ( test ( eq ( class ?gen325 ) to_confiscate ) ) => ( calc ( bind $?gen330 ( create$ pen_conf_5 ?gen324 $?gen327 ) ) ) ?gen325 <- ( to_confiscate ( positive-support $?gen330 ) )"))

([pen_conf_4-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_4-defeasibly-dot-gen1049)
   (depends-on declare to_confiscate procurement_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_4] ) ) ) ?gen316 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_4 $? ) ) ( test ( eq ( class ?gen316 ) to_confiscate ) ) ( not ( and ?gen323 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen322 & : ( >= ?gen322 1 ) ) ) ?gen316 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen318 & : ( not ( member$ pen_conf_4 $?gen318 ) ) ) ) ) ) => ?gen316 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_4-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_4-defeasibly-gen1051)
   (depends-on declare procurement_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_4] ) ) ) ?gen323 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen322 & : ( >= ?gen322 1 ) ) ) ?gen316 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen318 & : ( not ( member$ pen_conf_4 $?gen318 ) ) ) ) ( test ( eq ( class ?gen316 ) to_confiscate ) ) => ?gen316 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_4 ?gen323 ) )"))

([pen_conf_4-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_4-overruled-dot-gen1053)
   (depends-on declare to_confiscate procurement_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_4] ) ) ) ?gen316 <- ( to_confiscate ( value 1 ) ( negative-support $?gen319 ) ( negative-overruled $?gen320 & : ( subseq-pos ( create$ pen_conf_4-overruled $?gen319 $$$ $?gen320 ) ) ) ) ( test ( eq ( class ?gen316 ) to_confiscate ) ) ( not ( and ?gen323 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen322 & : ( >= ?gen322 1 ) ) ) ?gen316 <- ( to_confiscate ( positive-defeated $?gen318 & : ( not ( member$ pen_conf_4 $?gen318 ) ) ) ) ) ) => ( calc ( bind $?gen321 ( delete-member$ $?gen320 ( create$ pen_conf_4-overruled $?gen319 ) ) ) ) ?gen316 <- ( to_confiscate ( negative-overruled $?gen321 ) )"))

([pen_conf_4-overruled] of derived-attribute-rule
   (pos-name pen_conf_4-overruled-gen1055)
   (depends-on declare procurement_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_4] ) ) ) ?gen323 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive ?gen322 & : ( >= ?gen322 1 ) ) ) ?gen316 <- ( to_confiscate ( value 1 ) ( negative-support $?gen319 ) ( negative-overruled $?gen320 & : ( not ( subseq-pos ( create$ pen_conf_4-overruled $?gen319 $$$ $?gen320 ) ) ) ) ( positive-defeated $?gen318 & : ( not ( member$ pen_conf_4 $?gen318 ) ) ) ) ( test ( eq ( class ?gen316 ) to_confiscate ) ) => ( calc ( bind $?gen321 ( create$ pen_conf_4-overruled $?gen319 $?gen320 ) ) ) ?gen316 <- ( to_confiscate ( negative-overruled $?gen321 ) )"))

([pen_conf_4-support] of derived-attribute-rule
   (pos-name pen_conf_4-support-gen1057)
   (depends-on declare procurement_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_4] ) ) ) ?gen315 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ) ?gen316 <- ( to_confiscate ( value 1 ) ( positive-support $?gen318 & : ( not ( subseq-pos ( create$ pen_conf_4 ?gen315 $$$ $?gen318 ) ) ) ) ) ( test ( eq ( class ?gen316 ) to_confiscate ) ) => ( calc ( bind $?gen321 ( create$ pen_conf_4 ?gen315 $?gen318 ) ) ) ?gen316 <- ( to_confiscate ( positive-support $?gen321 ) )"))

([pen_conf_3-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_3-defeasibly-dot-gen1059)
   (depends-on declare to_confiscate procurement_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_3] ) ) ) ?gen307 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_3 $? ) ) ( test ( eq ( class ?gen307 ) to_confiscate ) ) ( not ( and ?gen314 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen313 & : ( >= ?gen313 1 ) ) ) ?gen307 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen309 & : ( not ( member$ pen_conf_3 $?gen309 ) ) ) ) ) ) => ?gen307 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_3-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_3-defeasibly-gen1061)
   (depends-on declare procurement_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_3] ) ) ) ?gen314 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen313 & : ( >= ?gen313 1 ) ) ) ?gen307 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen309 & : ( not ( member$ pen_conf_3 $?gen309 ) ) ) ) ( test ( eq ( class ?gen307 ) to_confiscate ) ) => ?gen307 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_3 ?gen314 ) )"))

([pen_conf_3-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_3-overruled-dot-gen1063)
   (depends-on declare to_confiscate procurement_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_3] ) ) ) ?gen307 <- ( to_confiscate ( value 1 ) ( negative-support $?gen310 ) ( negative-overruled $?gen311 & : ( subseq-pos ( create$ pen_conf_3-overruled $?gen310 $$$ $?gen311 ) ) ) ) ( test ( eq ( class ?gen307 ) to_confiscate ) ) ( not ( and ?gen314 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen313 & : ( >= ?gen313 1 ) ) ) ?gen307 <- ( to_confiscate ( positive-defeated $?gen309 & : ( not ( member$ pen_conf_3 $?gen309 ) ) ) ) ) ) => ( calc ( bind $?gen312 ( delete-member$ $?gen311 ( create$ pen_conf_3-overruled $?gen310 ) ) ) ) ?gen307 <- ( to_confiscate ( negative-overruled $?gen312 ) )"))

([pen_conf_3-overruled] of derived-attribute-rule
   (pos-name pen_conf_3-overruled-gen1065)
   (depends-on declare procurement_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_3] ) ) ) ?gen314 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive ?gen313 & : ( >= ?gen313 1 ) ) ) ?gen307 <- ( to_confiscate ( value 1 ) ( negative-support $?gen310 ) ( negative-overruled $?gen311 & : ( not ( subseq-pos ( create$ pen_conf_3-overruled $?gen310 $$$ $?gen311 ) ) ) ) ( positive-defeated $?gen309 & : ( not ( member$ pen_conf_3 $?gen309 ) ) ) ) ( test ( eq ( class ?gen307 ) to_confiscate ) ) => ( calc ( bind $?gen312 ( create$ pen_conf_3-overruled $?gen310 $?gen311 ) ) ) ?gen307 <- ( to_confiscate ( negative-overruled $?gen312 ) )"))

([pen_conf_3-support] of derived-attribute-rule
   (pos-name pen_conf_3-support-gen1067)
   (depends-on declare procurement_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_3] ) ) ) ?gen306 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ) ?gen307 <- ( to_confiscate ( value 1 ) ( positive-support $?gen309 & : ( not ( subseq-pos ( create$ pen_conf_3 ?gen306 $$$ $?gen309 ) ) ) ) ) ( test ( eq ( class ?gen307 ) to_confiscate ) ) => ( calc ( bind $?gen312 ( create$ pen_conf_3 ?gen306 $?gen309 ) ) ) ?gen307 <- ( to_confiscate ( positive-support $?gen312 ) )"))

([pen_conf_2-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_2-defeasibly-dot-gen1069)
   (depends-on declare to_confiscate counterfeiting_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_2] ) ) ) ?gen298 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_2 $? ) ) ( test ( eq ( class ?gen298 ) to_confiscate ) ) ( not ( and ?gen305 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen304 & : ( >= ?gen304 1 ) ) ) ?gen298 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen300 & : ( not ( member$ pen_conf_2 $?gen300 ) ) ) ) ) ) => ?gen298 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_2-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_2-defeasibly-gen1071)
   (depends-on declare counterfeiting_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_2] ) ) ) ?gen305 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen304 & : ( >= ?gen304 1 ) ) ) ?gen298 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen300 & : ( not ( member$ pen_conf_2 $?gen300 ) ) ) ) ( test ( eq ( class ?gen298 ) to_confiscate ) ) => ?gen298 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_2 ?gen305 ) )"))

([pen_conf_2-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_2-overruled-dot-gen1073)
   (depends-on declare to_confiscate counterfeiting_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_2] ) ) ) ?gen298 <- ( to_confiscate ( value 1 ) ( negative-support $?gen301 ) ( negative-overruled $?gen302 & : ( subseq-pos ( create$ pen_conf_2-overruled $?gen301 $$$ $?gen302 ) ) ) ) ( test ( eq ( class ?gen298 ) to_confiscate ) ) ( not ( and ?gen305 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen304 & : ( >= ?gen304 1 ) ) ) ?gen298 <- ( to_confiscate ( positive-defeated $?gen300 & : ( not ( member$ pen_conf_2 $?gen300 ) ) ) ) ) ) => ( calc ( bind $?gen303 ( delete-member$ $?gen302 ( create$ pen_conf_2-overruled $?gen301 ) ) ) ) ?gen298 <- ( to_confiscate ( negative-overruled $?gen303 ) )"))

([pen_conf_2-overruled] of derived-attribute-rule
   (pos-name pen_conf_2-overruled-gen1075)
   (depends-on declare counterfeiting_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_2] ) ) ) ?gen305 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive ?gen304 & : ( >= ?gen304 1 ) ) ) ?gen298 <- ( to_confiscate ( value 1 ) ( negative-support $?gen301 ) ( negative-overruled $?gen302 & : ( not ( subseq-pos ( create$ pen_conf_2-overruled $?gen301 $$$ $?gen302 ) ) ) ) ( positive-defeated $?gen300 & : ( not ( member$ pen_conf_2 $?gen300 ) ) ) ) ( test ( eq ( class ?gen298 ) to_confiscate ) ) => ( calc ( bind $?gen303 ( create$ pen_conf_2-overruled $?gen301 $?gen302 ) ) ) ?gen298 <- ( to_confiscate ( negative-overruled $?gen303 ) )"))

([pen_conf_2-support] of derived-attribute-rule
   (pos-name pen_conf_2-support-gen1077)
   (depends-on declare counterfeiting_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_2] ) ) ) ?gen297 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ) ?gen298 <- ( to_confiscate ( value 1 ) ( positive-support $?gen300 & : ( not ( subseq-pos ( create$ pen_conf_2 ?gen297 $$$ $?gen300 ) ) ) ) ) ( test ( eq ( class ?gen298 ) to_confiscate ) ) => ( calc ( bind $?gen303 ( create$ pen_conf_2 ?gen297 $?gen300 ) ) ) ?gen298 <- ( to_confiscate ( positive-support $?gen303 ) )"))

([pen_conf_1-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_conf_1-defeasibly-dot-gen1079)
   (depends-on declare to_confiscate counterfeiting_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_conf_1] ) ) ) ?gen289 <- ( to_confiscate ( value 1 ) ( positive 1 ) ( positive-derivator pen_conf_1 $? ) ) ( test ( eq ( class ?gen289 ) to_confiscate ) ) ( not ( and ?gen296 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen295 & : ( >= ?gen295 1 ) ) ) ?gen289 <- ( to_confiscate ( negative ~ 2 ) ( positive-overruled $?gen291 & : ( not ( member$ pen_conf_1 $?gen291 ) ) ) ) ) ) => ?gen289 <- ( to_confiscate ( positive 0 ) )"))

([pen_conf_1-defeasibly] of derived-attribute-rule
   (pos-name pen_conf_1-defeasibly-gen1081)
   (depends-on declare counterfeiting_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_conf_1] ) ) ) ?gen296 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen295 & : ( >= ?gen295 1 ) ) ) ?gen289 <- ( to_confiscate ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen291 & : ( not ( member$ pen_conf_1 $?gen291 ) ) ) ) ( test ( eq ( class ?gen289 ) to_confiscate ) ) => ?gen289 <- ( to_confiscate ( positive 1 ) ( positive-derivator pen_conf_1 ?gen296 ) )"))

([pen_conf_1-overruled-dot] of derived-attribute-rule
   (pos-name pen_conf_1-overruled-dot-gen1083)
   (depends-on declare to_confiscate counterfeiting_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_conf_1] ) ) ) ?gen289 <- ( to_confiscate ( value 1 ) ( negative-support $?gen292 ) ( negative-overruled $?gen293 & : ( subseq-pos ( create$ pen_conf_1-overruled $?gen292 $$$ $?gen293 ) ) ) ) ( test ( eq ( class ?gen289 ) to_confiscate ) ) ( not ( and ?gen296 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen295 & : ( >= ?gen295 1 ) ) ) ?gen289 <- ( to_confiscate ( positive-defeated $?gen291 & : ( not ( member$ pen_conf_1 $?gen291 ) ) ) ) ) ) => ( calc ( bind $?gen294 ( delete-member$ $?gen293 ( create$ pen_conf_1-overruled $?gen292 ) ) ) ) ?gen289 <- ( to_confiscate ( negative-overruled $?gen294 ) )"))

([pen_conf_1-overruled] of derived-attribute-rule
   (pos-name pen_conf_1-overruled-gen1085)
   (depends-on declare counterfeiting_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_conf_1] ) ) ) ?gen296 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive ?gen295 & : ( >= ?gen295 1 ) ) ) ?gen289 <- ( to_confiscate ( value 1 ) ( negative-support $?gen292 ) ( negative-overruled $?gen293 & : ( not ( subseq-pos ( create$ pen_conf_1-overruled $?gen292 $$$ $?gen293 ) ) ) ) ( positive-defeated $?gen291 & : ( not ( member$ pen_conf_1 $?gen291 ) ) ) ) ( test ( eq ( class ?gen289 ) to_confiscate ) ) => ( calc ( bind $?gen294 ( create$ pen_conf_1-overruled $?gen292 $?gen293 ) ) ) ?gen289 <- ( to_confiscate ( negative-overruled $?gen294 ) )"))

([pen_conf_1-support] of derived-attribute-rule
   (pos-name pen_conf_1-support-gen1087)
   (depends-on declare counterfeiting_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_conf_1] ) ) ) ?gen288 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ) ?gen289 <- ( to_confiscate ( value 1 ) ( positive-support $?gen291 & : ( not ( subseq-pos ( create$ pen_conf_1 ?gen288 $$$ $?gen291 ) ) ) ) ) ( test ( eq ( class ?gen289 ) to_confiscate ) ) => ( calc ( bind $?gen294 ( create$ pen_conf_1 ?gen288 $?gen291 ) ) ) ?gen289 <- ( to_confiscate ( positive-support $?gen294 ) )"))

([rule13-defeasibly-dot] of derived-attribute-rule
   (pos-name rule13-defeasibly-dot-gen1089)
   (depends-on declare failure_to_report lc:case failure_to_report)
   (implies failure_to_report)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule13] ) ) ) ?gen280 <- ( failure_to_report ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule13 $? ) ) ( test ( eq ( class ?gen280 ) failure_to_report ) ) ( not ( and ?gen287 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"failure_to_report\" ) ( positive ?gen286 & : ( >= ?gen286 1 ) ) ) ?gen280 <- ( failure_to_report ( negative ~ 2 ) ( positive-overruled $?gen282 & : ( not ( member$ rule13 $?gen282 ) ) ) ) ) ) => ?gen280 <- ( failure_to_report ( positive 0 ) )"))

([rule13-defeasibly] of derived-attribute-rule
   (pos-name rule13-defeasibly-gen1091)
   (depends-on declare lc:case failure_to_report)
   (implies failure_to_report)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule13] ) ) ) ?gen287 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"failure_to_report\" ) ( positive ?gen286 & : ( >= ?gen286 1 ) ) ) ?gen280 <- ( failure_to_report ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen282 & : ( not ( member$ rule13 $?gen282 ) ) ) ) ( test ( eq ( class ?gen280 ) failure_to_report ) ) => ?gen280 <- ( failure_to_report ( positive 1 ) ( positive-derivator rule13 ?gen287 ) )"))

([rule13-overruled-dot] of derived-attribute-rule
   (pos-name rule13-overruled-dot-gen1093)
   (depends-on declare failure_to_report lc:case failure_to_report)
   (implies failure_to_report)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule13] ) ) ) ?gen280 <- ( failure_to_report ( defendant ?Defendant ) ( negative-support $?gen283 ) ( negative-overruled $?gen284 & : ( subseq-pos ( create$ rule13-overruled $?gen283 $$$ $?gen284 ) ) ) ) ( test ( eq ( class ?gen280 ) failure_to_report ) ) ( not ( and ?gen287 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"failure_to_report\" ) ( positive ?gen286 & : ( >= ?gen286 1 ) ) ) ?gen280 <- ( failure_to_report ( positive-defeated $?gen282 & : ( not ( member$ rule13 $?gen282 ) ) ) ) ) ) => ( calc ( bind $?gen285 ( delete-member$ $?gen284 ( create$ rule13-overruled $?gen283 ) ) ) ) ?gen280 <- ( failure_to_report ( negative-overruled $?gen285 ) )"))

([rule13-overruled] of derived-attribute-rule
   (pos-name rule13-overruled-gen1095)
   (depends-on declare lc:case failure_to_report)
   (implies failure_to_report)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule13] ) ) ) ?gen287 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"failure_to_report\" ) ( positive ?gen286 & : ( >= ?gen286 1 ) ) ) ?gen280 <- ( failure_to_report ( defendant ?Defendant ) ( negative-support $?gen283 ) ( negative-overruled $?gen284 & : ( not ( subseq-pos ( create$ rule13-overruled $?gen283 $$$ $?gen284 ) ) ) ) ( positive-defeated $?gen282 & : ( not ( member$ rule13 $?gen282 ) ) ) ) ( test ( eq ( class ?gen280 ) failure_to_report ) ) => ( calc ( bind $?gen285 ( create$ rule13-overruled $?gen283 $?gen284 ) ) ) ?gen280 <- ( failure_to_report ( negative-overruled $?gen285 ) )"))

([rule13-support] of derived-attribute-rule
   (pos-name rule13-support-gen1097)
   (depends-on declare lc:case failure_to_report)
   (implies failure_to_report)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule13] ) ) ) ?gen279 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"failure_to_report\" ) ) ?gen280 <- ( failure_to_report ( defendant ?Defendant ) ( positive-support $?gen282 & : ( not ( subseq-pos ( create$ rule13 ?gen279 $$$ $?gen282 ) ) ) ) ) ( test ( eq ( class ?gen280 ) failure_to_report ) ) => ( calc ( bind $?gen285 ( create$ rule13 ?gen279 $?gen282 ) ) ) ?gen280 <- ( failure_to_report ( positive-support $?gen285 ) )"))

([rule12_4-defeated-dot] of derived-attribute-rule
   (pos-name rule12_4-defeated-dot-gen1099)
   (depends-on declare procurement_money_over_15000 procurement_money_over_15000_aggravating_circumstances)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule12_4] ) ) ) ?gen271 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive-defeated $?gen274 & : ( subseq-pos ( create$ rule12_4-defeated rule4 $$$ $?gen274 ) ) ) ) ( test ( eq ( class ?gen271 ) procurement_money_over_15000 ) ) ( not ?gen278 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen277 & : ( >= ?gen277 1 ) ) ) ) => ( calc ( bind $?gen273 ( delete-member$ $?gen274 ( create$ rule12_4-defeated rule4 ) ) ) ) ?gen271 <- ( procurement_money_over_15000 ( positive-defeated $?gen273 ) )"))

([rule12_4-defeated] of derived-attribute-rule
   (pos-name rule12_4-defeated-gen1101)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule12_4] ) ) ) ?gen278 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen277 & : ( >= ?gen277 1 ) ) ) ?gen271 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive-defeated $?gen274 & : ( not ( subseq-pos ( create$ rule12_4-defeated rule4 $$$ $?gen274 ) ) ) ) ) ( test ( eq ( class ?gen271 ) procurement_money_over_15000 ) ) => ( calc ( bind $?gen273 ( create$ rule12_4-defeated rule4 $?gen274 ) ) ) ?gen271 <- ( procurement_money_over_15000 ( positive-defeated $?gen273 ) )"))

([rule12_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule12_4-defeasibly-dot-gen1103)
   (depends-on declare procurement_money_over_15000 procurement_money_over_15000_aggravating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule12_4] ) ) ) ?gen271 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule12_4 $? ) ) ( test ( eq ( class ?gen271 ) procurement_money_over_15000 ) ) ( not ( and ?gen278 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen277 & : ( >= ?gen277 1 ) ) ) ?gen271 <- ( procurement_money_over_15000 ( positive ~ 2 ) ( negative-overruled $?gen273 & : ( not ( member$ rule12_4 $?gen273 ) ) ) ) ) ) => ?gen271 <- ( procurement_money_over_15000 ( negative 0 ) )"))

([rule12_4-defeasibly] of derived-attribute-rule
   (pos-name rule12_4-defeasibly-gen1105)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule12_4] ) ) ) ?gen278 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen277 & : ( >= ?gen277 1 ) ) ) ?gen271 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen273 & : ( not ( member$ rule12_4 $?gen273 ) ) ) ) ( test ( eq ( class ?gen271 ) procurement_money_over_15000 ) ) => ?gen271 <- ( procurement_money_over_15000 ( negative 1 ) ( negative-derivator rule12_4 ?gen278 ) )"))

([rule12_4-overruled-dot] of derived-attribute-rule
   (pos-name rule12_4-overruled-dot-gen1107)
   (depends-on declare procurement_money_over_15000 procurement_money_over_15000_aggravating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule12_4] ) ) ) ?gen271 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive-support $?gen274 ) ( positive-overruled $?gen275 & : ( subseq-pos ( create$ rule12_4-overruled $?gen274 $$$ $?gen275 ) ) ) ) ( test ( eq ( class ?gen271 ) procurement_money_over_15000 ) ) ( not ( and ?gen278 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen277 & : ( >= ?gen277 1 ) ) ) ?gen271 <- ( procurement_money_over_15000 ( negative-defeated $?gen273 & : ( not ( member$ rule12_4 $?gen273 ) ) ) ) ) ) => ( calc ( bind $?gen276 ( delete-member$ $?gen275 ( create$ rule12_4-overruled $?gen274 ) ) ) ) ?gen271 <- ( procurement_money_over_15000 ( positive-overruled $?gen276 ) )"))

([rule12_4-overruled] of derived-attribute-rule
   (pos-name rule12_4-overruled-gen1109)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule12_4] ) ) ) ?gen278 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen277 & : ( >= ?gen277 1 ) ) ) ?gen271 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive-support $?gen274 ) ( positive-overruled $?gen275 & : ( not ( subseq-pos ( create$ rule12_4-overruled $?gen274 $$$ $?gen275 ) ) ) ) ( negative-defeated $?gen273 & : ( not ( member$ rule12_4 $?gen273 ) ) ) ) ( test ( eq ( class ?gen271 ) procurement_money_over_15000 ) ) => ( calc ( bind $?gen276 ( create$ rule12_4-overruled $?gen274 $?gen275 ) ) ) ?gen271 <- ( procurement_money_over_15000 ( positive-overruled $?gen276 ) )"))

([rule12_4-support] of derived-attribute-rule
   (pos-name rule12_4-support-gen1111)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule12_4] ) ) ) ?gen270 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen271 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( negative-support $?gen273 & : ( not ( subseq-pos ( create$ rule12_4 ?gen270 $$$ $?gen273 ) ) ) ) ) ( test ( eq ( class ?gen271 ) procurement_money_over_15000 ) ) => ( calc ( bind $?gen276 ( create$ rule12_4 ?gen270 $?gen273 ) ) ) ?gen271 <- ( procurement_money_over_15000 ( negative-support $?gen276 ) )"))

([rule12-defeasibly-dot] of derived-attribute-rule
   (pos-name rule12-defeasibly-dot-gen1113)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances lc:case lc:case lc:case procurement_money_over_15000_aggravating_circumstances)
   (implies procurement_money_over_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule12] ) ) ) ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule12 $? ) ) ( test ( eq ( class ?gen258 ) procurement_money_over_15000_aggravating_circumstances ) ) ( not ( and ?gen265 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen264 & : ( >= ?gen264 1 ) ) ) ?gen267 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen266 & : ( >= ?gen266 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen269 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen268 & : ( >= ?gen268 1 ) ) ) ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( negative ~ 2 ) ( positive-overruled $?gen260 & : ( not ( member$ rule12 $?gen260 ) ) ) ) ) ) => ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( positive 0 ) )"))

([rule12-defeasibly] of derived-attribute-rule
   (pos-name rule12-defeasibly-gen1115)
   (depends-on declare lc:case lc:case lc:case procurement_money_over_15000_aggravating_circumstances)
   (implies procurement_money_over_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule12] ) ) ) ?gen265 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen264 & : ( >= ?gen264 1 ) ) ) ?gen267 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen266 & : ( >= ?gen266 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen269 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen268 & : ( >= ?gen268 1 ) ) ) ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen260 & : ( not ( member$ rule12 $?gen260 ) ) ) ) ( test ( eq ( class ?gen258 ) procurement_money_over_15000_aggravating_circumstances ) ) => ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( positive 1 ) ( positive-derivator rule12 ?gen265 ?gen267 ?gen269 ) )"))

([rule12-overruled-dot] of derived-attribute-rule
   (pos-name rule12-overruled-dot-gen1117)
   (depends-on declare procurement_money_over_15000_aggravating_circumstances lc:case lc:case lc:case procurement_money_over_15000_aggravating_circumstances)
   (implies procurement_money_over_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule12] ) ) ) ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( negative-support $?gen261 ) ( negative-overruled $?gen262 & : ( subseq-pos ( create$ rule12-overruled $?gen261 $$$ $?gen262 ) ) ) ) ( test ( eq ( class ?gen258 ) procurement_money_over_15000_aggravating_circumstances ) ) ( not ( and ?gen265 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen264 & : ( >= ?gen264 1 ) ) ) ?gen267 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen266 & : ( >= ?gen266 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen269 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen268 & : ( >= ?gen268 1 ) ) ) ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( positive-defeated $?gen260 & : ( not ( member$ rule12 $?gen260 ) ) ) ) ) ) => ( calc ( bind $?gen263 ( delete-member$ $?gen262 ( create$ rule12-overruled $?gen261 ) ) ) ) ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( negative-overruled $?gen263 ) )"))

([rule12-overruled] of derived-attribute-rule
   (pos-name rule12-overruled-gen1119)
   (depends-on declare lc:case lc:case lc:case procurement_money_over_15000_aggravating_circumstances)
   (implies procurement_money_over_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule12] ) ) ) ?gen265 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen264 & : ( >= ?gen264 1 ) ) ) ?gen267 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen266 & : ( >= ?gen266 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen269 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen268 & : ( >= ?gen268 1 ) ) ) ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( negative-support $?gen261 ) ( negative-overruled $?gen262 & : ( not ( subseq-pos ( create$ rule12-overruled $?gen261 $$$ $?gen262 ) ) ) ) ( positive-defeated $?gen260 & : ( not ( member$ rule12 $?gen260 ) ) ) ) ( test ( eq ( class ?gen258 ) procurement_money_over_15000_aggravating_circumstances ) ) => ( calc ( bind $?gen263 ( create$ rule12-overruled $?gen261 $?gen262 ) ) ) ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( negative-overruled $?gen263 ) )"))

([rule12-support] of derived-attribute-rule
   (pos-name rule12-support-gen1121)
   (depends-on declare lc:case lc:case lc:case procurement_money_over_15000_aggravating_circumstances)
   (implies procurement_money_over_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule12] ) ) ) ?gen254 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen255 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( > ?Amount 15000 ) ) ?gen257 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive-support $?gen260 & : ( not ( subseq-pos ( create$ rule12 ?gen254 ?gen255 ?gen257 $$$ $?gen260 ) ) ) ) ) ( test ( eq ( class ?gen258 ) procurement_money_over_15000_aggravating_circumstances ) ) => ( calc ( bind $?gen263 ( create$ rule12 ?gen254 ?gen255 ?gen257 $?gen260 ) ) ) ?gen258 <- ( procurement_money_over_15000_aggravating_circumstances ( positive-support $?gen263 ) )"))

([rule11_3-defeated-dot] of derived-attribute-rule
   (pos-name rule11_3-defeated-dot-gen1123)
   (depends-on declare procurement_money_under_15000 procurement_money_under_15000_aggravating_circumstances)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule11_3] ) ) ) ?gen246 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive-defeated $?gen249 & : ( subseq-pos ( create$ rule11_3-defeated rule3 $$$ $?gen249 ) ) ) ) ( test ( eq ( class ?gen246 ) procurement_money_under_15000 ) ) ( not ?gen253 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen252 & : ( >= ?gen252 1 ) ) ) ) => ( calc ( bind $?gen248 ( delete-member$ $?gen249 ( create$ rule11_3-defeated rule3 ) ) ) ) ?gen246 <- ( procurement_money_under_15000 ( positive-defeated $?gen248 ) )"))

([rule11_3-defeated] of derived-attribute-rule
   (pos-name rule11_3-defeated-gen1125)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule11_3] ) ) ) ?gen253 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen252 & : ( >= ?gen252 1 ) ) ) ?gen246 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive-defeated $?gen249 & : ( not ( subseq-pos ( create$ rule11_3-defeated rule3 $$$ $?gen249 ) ) ) ) ) ( test ( eq ( class ?gen246 ) procurement_money_under_15000 ) ) => ( calc ( bind $?gen248 ( create$ rule11_3-defeated rule3 $?gen249 ) ) ) ?gen246 <- ( procurement_money_under_15000 ( positive-defeated $?gen248 ) )"))

([rule11_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule11_3-defeasibly-dot-gen1127)
   (depends-on declare procurement_money_under_15000 procurement_money_under_15000_aggravating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule11_3] ) ) ) ?gen246 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule11_3 $? ) ) ( test ( eq ( class ?gen246 ) procurement_money_under_15000 ) ) ( not ( and ?gen253 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen252 & : ( >= ?gen252 1 ) ) ) ?gen246 <- ( procurement_money_under_15000 ( positive ~ 2 ) ( negative-overruled $?gen248 & : ( not ( member$ rule11_3 $?gen248 ) ) ) ) ) ) => ?gen246 <- ( procurement_money_under_15000 ( negative 0 ) )"))

([rule11_3-defeasibly] of derived-attribute-rule
   (pos-name rule11_3-defeasibly-gen1129)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule11_3] ) ) ) ?gen253 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen252 & : ( >= ?gen252 1 ) ) ) ?gen246 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen248 & : ( not ( member$ rule11_3 $?gen248 ) ) ) ) ( test ( eq ( class ?gen246 ) procurement_money_under_15000 ) ) => ?gen246 <- ( procurement_money_under_15000 ( negative 1 ) ( negative-derivator rule11_3 ?gen253 ) )"))

([rule11_3-overruled-dot] of derived-attribute-rule
   (pos-name rule11_3-overruled-dot-gen1131)
   (depends-on declare procurement_money_under_15000 procurement_money_under_15000_aggravating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule11_3] ) ) ) ?gen246 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive-support $?gen249 ) ( positive-overruled $?gen250 & : ( subseq-pos ( create$ rule11_3-overruled $?gen249 $$$ $?gen250 ) ) ) ) ( test ( eq ( class ?gen246 ) procurement_money_under_15000 ) ) ( not ( and ?gen253 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen252 & : ( >= ?gen252 1 ) ) ) ?gen246 <- ( procurement_money_under_15000 ( negative-defeated $?gen248 & : ( not ( member$ rule11_3 $?gen248 ) ) ) ) ) ) => ( calc ( bind $?gen251 ( delete-member$ $?gen250 ( create$ rule11_3-overruled $?gen249 ) ) ) ) ?gen246 <- ( procurement_money_under_15000 ( positive-overruled $?gen251 ) )"))

([rule11_3-overruled] of derived-attribute-rule
   (pos-name rule11_3-overruled-gen1133)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule11_3] ) ) ) ?gen253 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen252 & : ( >= ?gen252 1 ) ) ) ?gen246 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive-support $?gen249 ) ( positive-overruled $?gen250 & : ( not ( subseq-pos ( create$ rule11_3-overruled $?gen249 $$$ $?gen250 ) ) ) ) ( negative-defeated $?gen248 & : ( not ( member$ rule11_3 $?gen248 ) ) ) ) ( test ( eq ( class ?gen246 ) procurement_money_under_15000 ) ) => ( calc ( bind $?gen251 ( create$ rule11_3-overruled $?gen249 $?gen250 ) ) ) ?gen246 <- ( procurement_money_under_15000 ( positive-overruled $?gen251 ) )"))

([rule11_3-support] of derived-attribute-rule
   (pos-name rule11_3-support-gen1135)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule11_3] ) ) ) ?gen245 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen246 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( negative-support $?gen248 & : ( not ( subseq-pos ( create$ rule11_3 ?gen245 $$$ $?gen248 ) ) ) ) ) ( test ( eq ( class ?gen246 ) procurement_money_under_15000 ) ) => ( calc ( bind $?gen251 ( create$ rule11_3 ?gen245 $?gen248 ) ) ) ?gen246 <- ( procurement_money_under_15000 ( negative-support $?gen251 ) )"))

([rule11-defeasibly-dot] of derived-attribute-rule
   (pos-name rule11-defeasibly-dot-gen1137)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances lc:case lc:case lc:case procurement_money_under_15000_aggravating_circumstances)
   (implies procurement_money_under_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule11] ) ) ) ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule11 $? ) ) ( test ( eq ( class ?gen233 ) procurement_money_under_15000_aggravating_circumstances ) ) ( not ( and ?gen240 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen239 & : ( >= ?gen239 1 ) ) ) ?gen242 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen244 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen243 & : ( >= ?gen243 1 ) ) ) ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( negative ~ 2 ) ( positive-overruled $?gen235 & : ( not ( member$ rule11 $?gen235 ) ) ) ) ) ) => ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( positive 0 ) )"))

([rule11-defeasibly] of derived-attribute-rule
   (pos-name rule11-defeasibly-gen1139)
   (depends-on declare lc:case lc:case lc:case procurement_money_under_15000_aggravating_circumstances)
   (implies procurement_money_under_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule11] ) ) ) ?gen240 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen239 & : ( >= ?gen239 1 ) ) ) ?gen242 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen244 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen243 & : ( >= ?gen243 1 ) ) ) ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen235 & : ( not ( member$ rule11 $?gen235 ) ) ) ) ( test ( eq ( class ?gen233 ) procurement_money_under_15000_aggravating_circumstances ) ) => ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( positive 1 ) ( positive-derivator rule11 ?gen240 ?gen242 ?gen244 ) )"))

([rule11-overruled-dot] of derived-attribute-rule
   (pos-name rule11-overruled-dot-gen1141)
   (depends-on declare procurement_money_under_15000_aggravating_circumstances lc:case lc:case lc:case procurement_money_under_15000_aggravating_circumstances)
   (implies procurement_money_under_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule11] ) ) ) ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( negative-support $?gen236 ) ( negative-overruled $?gen237 & : ( subseq-pos ( create$ rule11-overruled $?gen236 $$$ $?gen237 ) ) ) ) ( test ( eq ( class ?gen233 ) procurement_money_under_15000_aggravating_circumstances ) ) ( not ( and ?gen240 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen239 & : ( >= ?gen239 1 ) ) ) ?gen242 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen244 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen243 & : ( >= ?gen243 1 ) ) ) ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( positive-defeated $?gen235 & : ( not ( member$ rule11 $?gen235 ) ) ) ) ) ) => ( calc ( bind $?gen238 ( delete-member$ $?gen237 ( create$ rule11-overruled $?gen236 ) ) ) ) ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( negative-overruled $?gen238 ) )"))

([rule11-overruled] of derived-attribute-rule
   (pos-name rule11-overruled-gen1143)
   (depends-on declare lc:case lc:case lc:case procurement_money_under_15000_aggravating_circumstances)
   (implies procurement_money_under_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule11] ) ) ) ?gen240 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen239 & : ( >= ?gen239 1 ) ) ) ?gen242 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen244 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen243 & : ( >= ?gen243 1 ) ) ) ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( negative-support $?gen236 ) ( negative-overruled $?gen237 & : ( not ( subseq-pos ( create$ rule11-overruled $?gen236 $$$ $?gen237 ) ) ) ) ( positive-defeated $?gen235 & : ( not ( member$ rule11 $?gen235 ) ) ) ) ( test ( eq ( class ?gen233 ) procurement_money_under_15000_aggravating_circumstances ) ) => ( calc ( bind $?gen238 ( create$ rule11-overruled $?gen236 $?gen237 ) ) ) ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( negative-overruled $?gen238 ) )"))

([rule11-support] of derived-attribute-rule
   (pos-name rule11-support-gen1145)
   (depends-on declare lc:case lc:case lc:case procurement_money_under_15000_aggravating_circumstances)
   (implies procurement_money_under_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule11] ) ) ) ?gen229 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen230 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( <= ?Amount 15000 ) ) ?gen232 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive-support $?gen235 & : ( not ( subseq-pos ( create$ rule11 ?gen229 ?gen230 ?gen232 $$$ $?gen235 ) ) ) ) ) ( test ( eq ( class ?gen233 ) procurement_money_under_15000_aggravating_circumstances ) ) => ( calc ( bind $?gen238 ( create$ rule11 ?gen229 ?gen230 ?gen232 $?gen235 ) ) ) ?gen233 <- ( procurement_money_under_15000_aggravating_circumstances ( positive-support $?gen238 ) )"))

([rule10_2-defeated-dot] of derived-attribute-rule
   (pos-name rule10_2-defeated-dot-gen1147)
   (depends-on declare counterfeiting_money_over_15000 counterfeiting_money_over_15000_aggravating_circumstances)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule10_2] ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive-defeated $?gen224 & : ( subseq-pos ( create$ rule10_2-defeated rule2 $$$ $?gen224 ) ) ) ) ( test ( eq ( class ?gen221 ) counterfeiting_money_over_15000 ) ) ( not ?gen228 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen227 & : ( >= ?gen227 1 ) ) ) ) => ( calc ( bind $?gen223 ( delete-member$ $?gen224 ( create$ rule10_2-defeated rule2 ) ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( positive-defeated $?gen223 ) )"))

([rule10_2-defeated] of derived-attribute-rule
   (pos-name rule10_2-defeated-gen1149)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule10_2] ) ) ) ?gen228 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen227 & : ( >= ?gen227 1 ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive-defeated $?gen224 & : ( not ( subseq-pos ( create$ rule10_2-defeated rule2 $$$ $?gen224 ) ) ) ) ) ( test ( eq ( class ?gen221 ) counterfeiting_money_over_15000 ) ) => ( calc ( bind $?gen223 ( create$ rule10_2-defeated rule2 $?gen224 ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( positive-defeated $?gen223 ) )"))

([rule10_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10_2-defeasibly-dot-gen1151)
   (depends-on declare counterfeiting_money_over_15000 counterfeiting_money_over_15000_aggravating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10_2] ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule10_2 $? ) ) ( test ( eq ( class ?gen221 ) counterfeiting_money_over_15000 ) ) ( not ( and ?gen228 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen227 & : ( >= ?gen227 1 ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( positive ~ 2 ) ( negative-overruled $?gen223 & : ( not ( member$ rule10_2 $?gen223 ) ) ) ) ) ) => ?gen221 <- ( counterfeiting_money_over_15000 ( negative 0 ) )"))

([rule10_2-defeasibly] of derived-attribute-rule
   (pos-name rule10_2-defeasibly-gen1153)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10_2] ) ) ) ?gen228 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen227 & : ( >= ?gen227 1 ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen223 & : ( not ( member$ rule10_2 $?gen223 ) ) ) ) ( test ( eq ( class ?gen221 ) counterfeiting_money_over_15000 ) ) => ?gen221 <- ( counterfeiting_money_over_15000 ( negative 1 ) ( negative-derivator rule10_2 ?gen228 ) )"))

([rule10_2-overruled-dot] of derived-attribute-rule
   (pos-name rule10_2-overruled-dot-gen1155)
   (depends-on declare counterfeiting_money_over_15000 counterfeiting_money_over_15000_aggravating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10_2] ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive-support $?gen224 ) ( positive-overruled $?gen225 & : ( subseq-pos ( create$ rule10_2-overruled $?gen224 $$$ $?gen225 ) ) ) ) ( test ( eq ( class ?gen221 ) counterfeiting_money_over_15000 ) ) ( not ( and ?gen228 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen227 & : ( >= ?gen227 1 ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( negative-defeated $?gen223 & : ( not ( member$ rule10_2 $?gen223 ) ) ) ) ) ) => ( calc ( bind $?gen226 ( delete-member$ $?gen225 ( create$ rule10_2-overruled $?gen224 ) ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( positive-overruled $?gen226 ) )"))

([rule10_2-overruled] of derived-attribute-rule
   (pos-name rule10_2-overruled-gen1157)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10_2] ) ) ) ?gen228 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen227 & : ( >= ?gen227 1 ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive-support $?gen224 ) ( positive-overruled $?gen225 & : ( not ( subseq-pos ( create$ rule10_2-overruled $?gen224 $$$ $?gen225 ) ) ) ) ( negative-defeated $?gen223 & : ( not ( member$ rule10_2 $?gen223 ) ) ) ) ( test ( eq ( class ?gen221 ) counterfeiting_money_over_15000 ) ) => ( calc ( bind $?gen226 ( create$ rule10_2-overruled $?gen224 $?gen225 ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( positive-overruled $?gen226 ) )"))

([rule10_2-support] of derived-attribute-rule
   (pos-name rule10_2-support-gen1159)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10_2] ) ) ) ?gen220 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( negative-support $?gen223 & : ( not ( subseq-pos ( create$ rule10_2 ?gen220 $$$ $?gen223 ) ) ) ) ) ( test ( eq ( class ?gen221 ) counterfeiting_money_over_15000 ) ) => ( calc ( bind $?gen226 ( create$ rule10_2 ?gen220 $?gen223 ) ) ) ?gen221 <- ( counterfeiting_money_over_15000 ( negative-support $?gen226 ) )"))

([rule10-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10-defeasibly-dot-gen1161)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances lc:case lc:case lc:case counterfeiting_money_over_15000_aggravating_circumstances)
   (implies counterfeiting_money_over_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10] ) ) ) ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule10 $? ) ) ( test ( eq ( class ?gen208 ) counterfeiting_money_over_15000_aggravating_circumstances ) ) ( not ( and ?gen215 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen217 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen216 & : ( >= ?gen216 1 ) ) ) ?gen219 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen218 & : ( >= ?gen218 1 ) ) ) ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( negative ~ 2 ) ( positive-overruled $?gen210 & : ( not ( member$ rule10 $?gen210 ) ) ) ) ) ) => ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( positive 0 ) )"))

([rule10-defeasibly] of derived-attribute-rule
   (pos-name rule10-defeasibly-gen1163)
   (depends-on declare lc:case lc:case lc:case counterfeiting_money_over_15000_aggravating_circumstances)
   (implies counterfeiting_money_over_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10] ) ) ) ?gen215 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen217 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen216 & : ( >= ?gen216 1 ) ) ) ?gen219 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen218 & : ( >= ?gen218 1 ) ) ) ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen210 & : ( not ( member$ rule10 $?gen210 ) ) ) ) ( test ( eq ( class ?gen208 ) counterfeiting_money_over_15000_aggravating_circumstances ) ) => ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( positive 1 ) ( positive-derivator rule10 ?gen215 ?gen217 ?gen219 ) )"))

([rule10-overruled-dot] of derived-attribute-rule
   (pos-name rule10-overruled-dot-gen1165)
   (depends-on declare counterfeiting_money_over_15000_aggravating_circumstances lc:case lc:case lc:case counterfeiting_money_over_15000_aggravating_circumstances)
   (implies counterfeiting_money_over_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10] ) ) ) ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( negative-support $?gen211 ) ( negative-overruled $?gen212 & : ( subseq-pos ( create$ rule10-overruled $?gen211 $$$ $?gen212 ) ) ) ) ( test ( eq ( class ?gen208 ) counterfeiting_money_over_15000_aggravating_circumstances ) ) ( not ( and ?gen215 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen217 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen216 & : ( >= ?gen216 1 ) ) ) ?gen219 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen218 & : ( >= ?gen218 1 ) ) ) ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( positive-defeated $?gen210 & : ( not ( member$ rule10 $?gen210 ) ) ) ) ) ) => ( calc ( bind $?gen213 ( delete-member$ $?gen212 ( create$ rule10-overruled $?gen211 ) ) ) ) ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( negative-overruled $?gen213 ) )"))

([rule10-overruled] of derived-attribute-rule
   (pos-name rule10-overruled-gen1167)
   (depends-on declare lc:case lc:case lc:case counterfeiting_money_over_15000_aggravating_circumstances)
   (implies counterfeiting_money_over_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10] ) ) ) ?gen215 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen217 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen216 & : ( >= ?gen216 1 ) ) ) ?gen219 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen218 & : ( >= ?gen218 1 ) ) ) ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( negative-support $?gen211 ) ( negative-overruled $?gen212 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen211 $$$ $?gen212 ) ) ) ) ( positive-defeated $?gen210 & : ( not ( member$ rule10 $?gen210 ) ) ) ) ( test ( eq ( class ?gen208 ) counterfeiting_money_over_15000_aggravating_circumstances ) ) => ( calc ( bind $?gen213 ( create$ rule10-overruled $?gen211 $?gen212 ) ) ) ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( negative-overruled $?gen213 ) )"))

([rule10-support] of derived-attribute-rule
   (pos-name rule10-support-gen1169)
   (depends-on declare lc:case lc:case lc:case counterfeiting_money_over_15000_aggravating_circumstances)
   (implies counterfeiting_money_over_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10] ) ) ) ?gen204 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( test ( > ?Amount 15000 ) ) ?gen206 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ?gen207 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive-support $?gen210 & : ( not ( subseq-pos ( create$ rule10 ?gen204 ?gen206 ?gen207 $$$ $?gen210 ) ) ) ) ) ( test ( eq ( class ?gen208 ) counterfeiting_money_over_15000_aggravating_circumstances ) ) => ( calc ( bind $?gen213 ( create$ rule10 ?gen204 ?gen206 ?gen207 $?gen210 ) ) ) ?gen208 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( positive-support $?gen213 ) )"))

([rule9_1-defeated-dot] of derived-attribute-rule
   (pos-name rule9_1-defeated-dot-gen1171)
   (depends-on declare counterfeiting_money_under_15000 counterfeiting_money_under_15000_aggravating_circumstances)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule9_1] ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive-defeated $?gen199 & : ( subseq-pos ( create$ rule9_1-defeated rule1 $$$ $?gen199 ) ) ) ) ( test ( eq ( class ?gen196 ) counterfeiting_money_under_15000 ) ) ( not ?gen203 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ) => ( calc ( bind $?gen198 ( delete-member$ $?gen199 ( create$ rule9_1-defeated rule1 ) ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( positive-defeated $?gen198 ) )"))

([rule9_1-defeated] of derived-attribute-rule
   (pos-name rule9_1-defeated-gen1173)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule9_1] ) ) ) ?gen203 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive-defeated $?gen199 & : ( not ( subseq-pos ( create$ rule9_1-defeated rule1 $$$ $?gen199 ) ) ) ) ) ( test ( eq ( class ?gen196 ) counterfeiting_money_under_15000 ) ) => ( calc ( bind $?gen198 ( create$ rule9_1-defeated rule1 $?gen199 ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( positive-defeated $?gen198 ) )"))

([rule9_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9_1-defeasibly-dot-gen1175)
   (depends-on declare counterfeiting_money_under_15000 counterfeiting_money_under_15000_aggravating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9_1] ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule9_1 $? ) ) ( test ( eq ( class ?gen196 ) counterfeiting_money_under_15000 ) ) ( not ( and ?gen203 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( positive ~ 2 ) ( negative-overruled $?gen198 & : ( not ( member$ rule9_1 $?gen198 ) ) ) ) ) ) => ?gen196 <- ( counterfeiting_money_under_15000 ( negative 0 ) )"))

([rule9_1-defeasibly] of derived-attribute-rule
   (pos-name rule9_1-defeasibly-gen1177)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9_1] ) ) ) ?gen203 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen198 & : ( not ( member$ rule9_1 $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) counterfeiting_money_under_15000 ) ) => ?gen196 <- ( counterfeiting_money_under_15000 ( negative 1 ) ( negative-derivator rule9_1 ?gen203 ) )"))

([rule9_1-overruled-dot] of derived-attribute-rule
   (pos-name rule9_1-overruled-dot-gen1179)
   (depends-on declare counterfeiting_money_under_15000 counterfeiting_money_under_15000_aggravating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9_1] ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive-support $?gen199 ) ( positive-overruled $?gen200 & : ( subseq-pos ( create$ rule9_1-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( test ( eq ( class ?gen196 ) counterfeiting_money_under_15000 ) ) ( not ( and ?gen203 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( negative-defeated $?gen198 & : ( not ( member$ rule9_1 $?gen198 ) ) ) ) ) ) => ( calc ( bind $?gen201 ( delete-member$ $?gen200 ( create$ rule9_1-overruled $?gen199 ) ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( positive-overruled $?gen201 ) )"))

([rule9_1-overruled] of derived-attribute-rule
   (pos-name rule9_1-overruled-gen1181)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9_1] ) ) ) ?gen203 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive-support $?gen199 ) ( positive-overruled $?gen200 & : ( not ( subseq-pos ( create$ rule9_1-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( negative-defeated $?gen198 & : ( not ( member$ rule9_1 $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) counterfeiting_money_under_15000 ) ) => ( calc ( bind $?gen201 ( create$ rule9_1-overruled $?gen199 $?gen200 ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( positive-overruled $?gen201 ) )"))

([rule9_1-support] of derived-attribute-rule
   (pos-name rule9_1-support-gen1183)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9_1] ) ) ) ?gen195 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( negative-support $?gen198 & : ( not ( subseq-pos ( create$ rule9_1 ?gen195 $$$ $?gen198 ) ) ) ) ) ( test ( eq ( class ?gen196 ) counterfeiting_money_under_15000 ) ) => ( calc ( bind $?gen201 ( create$ rule9_1 ?gen195 $?gen198 ) ) ) ?gen196 <- ( counterfeiting_money_under_15000 ( negative-support $?gen201 ) )"))

([rule9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9-defeasibly-dot-gen1185)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances lc:case lc:case lc:case counterfeiting_money_under_15000_aggravating_circumstances)
   (implies counterfeiting_money_under_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9] ) ) ) ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen183 ) counterfeiting_money_under_15000_aggravating_circumstances ) ) ( not ( and ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( negative ~ 2 ) ( positive-overruled $?gen185 & : ( not ( member$ rule9 $?gen185 ) ) ) ) ) ) => ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( positive 0 ) )"))

([rule9-defeasibly] of derived-attribute-rule
   (pos-name rule9-defeasibly-gen1187)
   (depends-on declare lc:case lc:case lc:case counterfeiting_money_under_15000_aggravating_circumstances)
   (implies counterfeiting_money_under_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9] ) ) ) ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen185 & : ( not ( member$ rule9 $?gen185 ) ) ) ) ( test ( eq ( class ?gen183 ) counterfeiting_money_under_15000_aggravating_circumstances ) ) => ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( positive 1 ) ( positive-derivator rule9 ?gen190 ?gen192 ?gen194 ) )"))

([rule9-overruled-dot] of derived-attribute-rule
   (pos-name rule9-overruled-dot-gen1189)
   (depends-on declare counterfeiting_money_under_15000_aggravating_circumstances lc:case lc:case lc:case counterfeiting_money_under_15000_aggravating_circumstances)
   (implies counterfeiting_money_under_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9] ) ) ) ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( negative-support $?gen186 ) ( negative-overruled $?gen187 & : ( subseq-pos ( create$ rule9-overruled $?gen186 $$$ $?gen187 ) ) ) ) ( test ( eq ( class ?gen183 ) counterfeiting_money_under_15000_aggravating_circumstances ) ) ( not ( and ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( positive-defeated $?gen185 & : ( not ( member$ rule9 $?gen185 ) ) ) ) ) ) => ( calc ( bind $?gen188 ( delete-member$ $?gen187 ( create$ rule9-overruled $?gen186 ) ) ) ) ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( negative-overruled $?gen188 ) )"))

([rule9-overruled] of derived-attribute-rule
   (pos-name rule9-overruled-gen1191)
   (depends-on declare lc:case lc:case lc:case counterfeiting_money_under_15000_aggravating_circumstances)
   (implies counterfeiting_money_under_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9] ) ) ) ?gen190 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen189 & : ( >= ?gen189 1 ) ) ) ?gen192 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen194 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( negative-support $?gen186 ) ( negative-overruled $?gen187 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen186 $$$ $?gen187 ) ) ) ) ( positive-defeated $?gen185 & : ( not ( member$ rule9 $?gen185 ) ) ) ) ( test ( eq ( class ?gen183 ) counterfeiting_money_under_15000_aggravating_circumstances ) ) => ( calc ( bind $?gen188 ( create$ rule9-overruled $?gen186 $?gen187 ) ) ) ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( negative-overruled $?gen188 ) )"))

([rule9-support] of derived-attribute-rule
   (pos-name rule9-support-gen1193)
   (depends-on declare lc:case lc:case lc:case counterfeiting_money_under_15000_aggravating_circumstances)
   (implies counterfeiting_money_under_15000_aggravating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9] ) ) ) ?gen179 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen180 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( test ( <= ?Amount 15000 ) ) ?gen182 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ( positive-support $?gen185 & : ( not ( subseq-pos ( create$ rule9 ?gen179 ?gen180 ?gen182 $$$ $?gen185 ) ) ) ) ) ( test ( eq ( class ?gen183 ) counterfeiting_money_under_15000_aggravating_circumstances ) ) => ( calc ( bind $?gen188 ( create$ rule9 ?gen179 ?gen180 ?gen182 $?gen185 ) ) ) ?gen183 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( positive-support $?gen188 ) )"))

([rule8_4-defeated-dot] of derived-attribute-rule
   (pos-name rule8_4-defeated-dot-gen1195)
   (depends-on declare procurement_money_over_15000 procurement_money_over_15000_mitigating_circumstances)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule8_4] ) ) ) ?gen171 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive-defeated $?gen174 & : ( subseq-pos ( create$ rule8_4-defeated rule4 $$$ $?gen174 ) ) ) ) ( test ( eq ( class ?gen171 ) procurement_money_over_15000 ) ) ( not ?gen178 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen177 & : ( >= ?gen177 1 ) ) ) ) => ( calc ( bind $?gen173 ( delete-member$ $?gen174 ( create$ rule8_4-defeated rule4 ) ) ) ) ?gen171 <- ( procurement_money_over_15000 ( positive-defeated $?gen173 ) )"))

([rule8_4-defeated] of derived-attribute-rule
   (pos-name rule8_4-defeated-gen1197)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule8_4] ) ) ) ?gen178 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen177 & : ( >= ?gen177 1 ) ) ) ?gen171 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive-defeated $?gen174 & : ( not ( subseq-pos ( create$ rule8_4-defeated rule4 $$$ $?gen174 ) ) ) ) ) ( test ( eq ( class ?gen171 ) procurement_money_over_15000 ) ) => ( calc ( bind $?gen173 ( create$ rule8_4-defeated rule4 $?gen174 ) ) ) ?gen171 <- ( procurement_money_over_15000 ( positive-defeated $?gen173 ) )"))

([rule8_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8_4-defeasibly-dot-gen1199)
   (depends-on declare procurement_money_over_15000 procurement_money_over_15000_mitigating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8_4] ) ) ) ?gen171 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8_4 $? ) ) ( test ( eq ( class ?gen171 ) procurement_money_over_15000 ) ) ( not ( and ?gen178 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen177 & : ( >= ?gen177 1 ) ) ) ?gen171 <- ( procurement_money_over_15000 ( positive ~ 2 ) ( negative-overruled $?gen173 & : ( not ( member$ rule8_4 $?gen173 ) ) ) ) ) ) => ?gen171 <- ( procurement_money_over_15000 ( negative 0 ) )"))

([rule8_4-defeasibly] of derived-attribute-rule
   (pos-name rule8_4-defeasibly-gen1201)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8_4] ) ) ) ?gen178 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen177 & : ( >= ?gen177 1 ) ) ) ?gen171 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen173 & : ( not ( member$ rule8_4 $?gen173 ) ) ) ) ( test ( eq ( class ?gen171 ) procurement_money_over_15000 ) ) => ?gen171 <- ( procurement_money_over_15000 ( negative 1 ) ( negative-derivator rule8_4 ?gen178 ) )"))

([rule8_4-overruled-dot] of derived-attribute-rule
   (pos-name rule8_4-overruled-dot-gen1203)
   (depends-on declare procurement_money_over_15000 procurement_money_over_15000_mitigating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8_4] ) ) ) ?gen171 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive-support $?gen174 ) ( positive-overruled $?gen175 & : ( subseq-pos ( create$ rule8_4-overruled $?gen174 $$$ $?gen175 ) ) ) ) ( test ( eq ( class ?gen171 ) procurement_money_over_15000 ) ) ( not ( and ?gen178 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen177 & : ( >= ?gen177 1 ) ) ) ?gen171 <- ( procurement_money_over_15000 ( negative-defeated $?gen173 & : ( not ( member$ rule8_4 $?gen173 ) ) ) ) ) ) => ( calc ( bind $?gen176 ( delete-member$ $?gen175 ( create$ rule8_4-overruled $?gen174 ) ) ) ) ?gen171 <- ( procurement_money_over_15000 ( positive-overruled $?gen176 ) )"))

([rule8_4-overruled] of derived-attribute-rule
   (pos-name rule8_4-overruled-gen1205)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8_4] ) ) ) ?gen178 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen177 & : ( >= ?gen177 1 ) ) ) ?gen171 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive-support $?gen174 ) ( positive-overruled $?gen175 & : ( not ( subseq-pos ( create$ rule8_4-overruled $?gen174 $$$ $?gen175 ) ) ) ) ( negative-defeated $?gen173 & : ( not ( member$ rule8_4 $?gen173 ) ) ) ) ( test ( eq ( class ?gen171 ) procurement_money_over_15000 ) ) => ( calc ( bind $?gen176 ( create$ rule8_4-overruled $?gen174 $?gen175 ) ) ) ?gen171 <- ( procurement_money_over_15000 ( positive-overruled $?gen176 ) )"))

([rule8_4-support] of derived-attribute-rule
   (pos-name rule8_4-support-gen1207)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8_4] ) ) ) ?gen170 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen171 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( negative-support $?gen173 & : ( not ( subseq-pos ( create$ rule8_4 ?gen170 $$$ $?gen173 ) ) ) ) ) ( test ( eq ( class ?gen171 ) procurement_money_over_15000 ) ) => ( calc ( bind $?gen176 ( create$ rule8_4 ?gen170 $?gen173 ) ) ) ?gen171 <- ( procurement_money_over_15000 ( negative-support $?gen176 ) )"))

([rule8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8-defeasibly-dot-gen1209)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances lc:case lc:case lc:case lc:case procurement_money_over_15000_mitigating_circumstances)
   (implies procurement_money_over_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8] ) ) ) ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule8 $? ) ) ( test ( eq ( class ?gen156 ) procurement_money_over_15000_mitigating_circumstances ) ) ( not ( and ?gen163 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen162 & : ( >= ?gen162 1 ) ) ) ?gen165 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen164 & : ( >= ?gen164 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen169 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen168 & : ( >= ?gen168 1 ) ) ) ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( negative ~ 2 ) ( positive-overruled $?gen158 & : ( not ( member$ rule8 $?gen158 ) ) ) ) ) ) => ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( positive 0 ) )"))

([rule8-defeasibly] of derived-attribute-rule
   (pos-name rule8-defeasibly-gen1211)
   (depends-on declare lc:case lc:case lc:case lc:case procurement_money_over_15000_mitigating_circumstances)
   (implies procurement_money_over_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8] ) ) ) ?gen163 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen162 & : ( >= ?gen162 1 ) ) ) ?gen165 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen164 & : ( >= ?gen164 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen169 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen168 & : ( >= ?gen168 1 ) ) ) ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen158 & : ( not ( member$ rule8 $?gen158 ) ) ) ) ( test ( eq ( class ?gen156 ) procurement_money_over_15000_mitigating_circumstances ) ) => ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( positive 1 ) ( positive-derivator rule8 ?gen163 ?gen165 ?gen167 ?gen169 ) )"))

([rule8-overruled-dot] of derived-attribute-rule
   (pos-name rule8-overruled-dot-gen1213)
   (depends-on declare procurement_money_over_15000_mitigating_circumstances lc:case lc:case lc:case lc:case procurement_money_over_15000_mitigating_circumstances)
   (implies procurement_money_over_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8] ) ) ) ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( negative-support $?gen159 ) ( negative-overruled $?gen160 & : ( subseq-pos ( create$ rule8-overruled $?gen159 $$$ $?gen160 ) ) ) ) ( test ( eq ( class ?gen156 ) procurement_money_over_15000_mitigating_circumstances ) ) ( not ( and ?gen163 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen162 & : ( >= ?gen162 1 ) ) ) ?gen165 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen164 & : ( >= ?gen164 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen169 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen168 & : ( >= ?gen168 1 ) ) ) ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( positive-defeated $?gen158 & : ( not ( member$ rule8 $?gen158 ) ) ) ) ) ) => ( calc ( bind $?gen161 ( delete-member$ $?gen160 ( create$ rule8-overruled $?gen159 ) ) ) ) ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( negative-overruled $?gen161 ) )"))

([rule8-overruled] of derived-attribute-rule
   (pos-name rule8-overruled-gen1215)
   (depends-on declare lc:case lc:case lc:case lc:case procurement_money_over_15000_mitigating_circumstances)
   (implies procurement_money_over_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8] ) ) ) ?gen163 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen162 & : ( >= ?gen162 1 ) ) ) ?gen165 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen164 & : ( >= ?gen164 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen169 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen168 & : ( >= ?gen168 1 ) ) ) ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( negative-support $?gen159 ) ( negative-overruled $?gen160 & : ( not ( subseq-pos ( create$ rule8-overruled $?gen159 $$$ $?gen160 ) ) ) ) ( positive-defeated $?gen158 & : ( not ( member$ rule8 $?gen158 ) ) ) ) ( test ( eq ( class ?gen156 ) procurement_money_over_15000_mitigating_circumstances ) ) => ( calc ( bind $?gen161 ( create$ rule8-overruled $?gen159 $?gen160 ) ) ) ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( negative-overruled $?gen161 ) )"))

([rule8-support] of derived-attribute-rule
   (pos-name rule8-support-gen1217)
   (depends-on declare lc:case lc:case lc:case lc:case procurement_money_over_15000_mitigating_circumstances)
   (implies procurement_money_over_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8] ) ) ) ?gen151 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen152 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( > ?Amount 15000 ) ) ?gen154 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive-support $?gen158 & : ( not ( subseq-pos ( create$ rule8 ?gen151 ?gen152 ?gen154 ?gen155 $$$ $?gen158 ) ) ) ) ) ( test ( eq ( class ?gen156 ) procurement_money_over_15000_mitigating_circumstances ) ) => ( calc ( bind $?gen161 ( create$ rule8 ?gen151 ?gen152 ?gen154 ?gen155 $?gen158 ) ) ) ?gen156 <- ( procurement_money_over_15000_mitigating_circumstances ( positive-support $?gen161 ) )"))

([rule7_3-defeated-dot] of derived-attribute-rule
   (pos-name rule7_3-defeated-dot-gen1219)
   (depends-on declare procurement_money_under_15000 procurement_money_under_15000_mitigating_circumstances)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_3] ) ) ) ?gen143 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive-defeated $?gen146 & : ( subseq-pos ( create$ rule7_3-defeated rule3 $$$ $?gen146 ) ) ) ) ( test ( eq ( class ?gen143 ) procurement_money_under_15000 ) ) ( not ?gen150 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen149 & : ( >= ?gen149 1 ) ) ) ) => ( calc ( bind $?gen145 ( delete-member$ $?gen146 ( create$ rule7_3-defeated rule3 ) ) ) ) ?gen143 <- ( procurement_money_under_15000 ( positive-defeated $?gen145 ) )"))

([rule7_3-defeated] of derived-attribute-rule
   (pos-name rule7_3-defeated-gen1221)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_3] ) ) ) ?gen150 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen149 & : ( >= ?gen149 1 ) ) ) ?gen143 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive-defeated $?gen146 & : ( not ( subseq-pos ( create$ rule7_3-defeated rule3 $$$ $?gen146 ) ) ) ) ) ( test ( eq ( class ?gen143 ) procurement_money_under_15000 ) ) => ( calc ( bind $?gen145 ( create$ rule7_3-defeated rule3 $?gen146 ) ) ) ?gen143 <- ( procurement_money_under_15000 ( positive-defeated $?gen145 ) )"))

([rule7_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_3-defeasibly-dot-gen1223)
   (depends-on declare procurement_money_under_15000 procurement_money_under_15000_mitigating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_3] ) ) ) ?gen143 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_3 $? ) ) ( test ( eq ( class ?gen143 ) procurement_money_under_15000 ) ) ( not ( and ?gen150 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen149 & : ( >= ?gen149 1 ) ) ) ?gen143 <- ( procurement_money_under_15000 ( positive ~ 2 ) ( negative-overruled $?gen145 & : ( not ( member$ rule7_3 $?gen145 ) ) ) ) ) ) => ?gen143 <- ( procurement_money_under_15000 ( negative 0 ) )"))

([rule7_3-defeasibly] of derived-attribute-rule
   (pos-name rule7_3-defeasibly-gen1225)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_3] ) ) ) ?gen150 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen149 & : ( >= ?gen149 1 ) ) ) ?gen143 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen145 & : ( not ( member$ rule7_3 $?gen145 ) ) ) ) ( test ( eq ( class ?gen143 ) procurement_money_under_15000 ) ) => ?gen143 <- ( procurement_money_under_15000 ( negative 1 ) ( negative-derivator rule7_3 ?gen150 ) )"))

([rule7_3-overruled-dot] of derived-attribute-rule
   (pos-name rule7_3-overruled-dot-gen1227)
   (depends-on declare procurement_money_under_15000 procurement_money_under_15000_mitigating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_3] ) ) ) ?gen143 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive-support $?gen146 ) ( positive-overruled $?gen147 & : ( subseq-pos ( create$ rule7_3-overruled $?gen146 $$$ $?gen147 ) ) ) ) ( test ( eq ( class ?gen143 ) procurement_money_under_15000 ) ) ( not ( and ?gen150 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen149 & : ( >= ?gen149 1 ) ) ) ?gen143 <- ( procurement_money_under_15000 ( negative-defeated $?gen145 & : ( not ( member$ rule7_3 $?gen145 ) ) ) ) ) ) => ( calc ( bind $?gen148 ( delete-member$ $?gen147 ( create$ rule7_3-overruled $?gen146 ) ) ) ) ?gen143 <- ( procurement_money_under_15000 ( positive-overruled $?gen148 ) )"))

([rule7_3-overruled] of derived-attribute-rule
   (pos-name rule7_3-overruled-gen1229)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_3] ) ) ) ?gen150 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen149 & : ( >= ?gen149 1 ) ) ) ?gen143 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive-support $?gen146 ) ( positive-overruled $?gen147 & : ( not ( subseq-pos ( create$ rule7_3-overruled $?gen146 $$$ $?gen147 ) ) ) ) ( negative-defeated $?gen145 & : ( not ( member$ rule7_3 $?gen145 ) ) ) ) ( test ( eq ( class ?gen143 ) procurement_money_under_15000 ) ) => ( calc ( bind $?gen148 ( create$ rule7_3-overruled $?gen146 $?gen147 ) ) ) ?gen143 <- ( procurement_money_under_15000 ( positive-overruled $?gen148 ) )"))

([rule7_3-support] of derived-attribute-rule
   (pos-name rule7_3-support-gen1231)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_3] ) ) ) ?gen142 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen143 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( negative-support $?gen145 & : ( not ( subseq-pos ( create$ rule7_3 ?gen142 $$$ $?gen145 ) ) ) ) ) ( test ( eq ( class ?gen143 ) procurement_money_under_15000 ) ) => ( calc ( bind $?gen148 ( create$ rule7_3 ?gen142 $?gen145 ) ) ) ?gen143 <- ( procurement_money_under_15000 ( negative-support $?gen148 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen1233)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances lc:case lc:case lc:case lc:case procurement_money_under_15000_mitigating_circumstances)
   (implies procurement_money_under_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen128 ) procurement_money_under_15000_mitigating_circumstances ) ) ( not ( and ?gen135 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen134 & : ( >= ?gen134 1 ) ) ) ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen139 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen138 & : ( >= ?gen138 1 ) ) ) ?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen140 & : ( >= ?gen140 1 ) ) ) ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( negative ~ 2 ) ( positive-overruled $?gen130 & : ( not ( member$ rule7 $?gen130 ) ) ) ) ) ) => ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen1235)
   (depends-on declare lc:case lc:case lc:case lc:case procurement_money_under_15000_mitigating_circumstances)
   (implies procurement_money_under_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen135 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen134 & : ( >= ?gen134 1 ) ) ) ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen139 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen138 & : ( >= ?gen138 1 ) ) ) ?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen140 & : ( >= ?gen140 1 ) ) ) ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen130 & : ( not ( member$ rule7 $?gen130 ) ) ) ) ( test ( eq ( class ?gen128 ) procurement_money_under_15000_mitigating_circumstances ) ) => ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( positive 1 ) ( positive-derivator rule7 ?gen135 ?gen137 ?gen139 ?gen141 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen1237)
   (depends-on declare procurement_money_under_15000_mitigating_circumstances lc:case lc:case lc:case lc:case procurement_money_under_15000_mitigating_circumstances)
   (implies procurement_money_under_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( negative-support $?gen131 ) ( negative-overruled $?gen132 & : ( subseq-pos ( create$ rule7-overruled $?gen131 $$$ $?gen132 ) ) ) ) ( test ( eq ( class ?gen128 ) procurement_money_under_15000_mitigating_circumstances ) ) ( not ( and ?gen135 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen134 & : ( >= ?gen134 1 ) ) ) ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen139 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen138 & : ( >= ?gen138 1 ) ) ) ?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen140 & : ( >= ?gen140 1 ) ) ) ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( positive-defeated $?gen130 & : ( not ( member$ rule7 $?gen130 ) ) ) ) ) ) => ( calc ( bind $?gen133 ( delete-member$ $?gen132 ( create$ rule7-overruled $?gen131 ) ) ) ) ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( negative-overruled $?gen133 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen1239)
   (depends-on declare lc:case lc:case lc:case lc:case procurement_money_under_15000_mitigating_circumstances)
   (implies procurement_money_under_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen135 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen134 & : ( >= ?gen134 1 ) ) ) ?gen137 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen136 & : ( >= ?gen136 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen139 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen138 & : ( >= ?gen138 1 ) ) ) ?gen141 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen140 & : ( >= ?gen140 1 ) ) ) ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( negative-support $?gen131 ) ( negative-overruled $?gen132 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen131 $$$ $?gen132 ) ) ) ) ( positive-defeated $?gen130 & : ( not ( member$ rule7 $?gen130 ) ) ) ) ( test ( eq ( class ?gen128 ) procurement_money_under_15000_mitigating_circumstances ) ) => ( calc ( bind $?gen133 ( create$ rule7-overruled $?gen131 $?gen132 ) ) ) ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( negative-overruled $?gen133 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen1241)
   (depends-on declare lc:case lc:case lc:case lc:case procurement_money_under_15000_mitigating_circumstances)
   (implies procurement_money_under_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen123 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen124 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( <= ?Amount 15000 ) ) ?gen126 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ?gen127 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive-support $?gen130 & : ( not ( subseq-pos ( create$ rule7 ?gen123 ?gen124 ?gen126 ?gen127 $$$ $?gen130 ) ) ) ) ) ( test ( eq ( class ?gen128 ) procurement_money_under_15000_mitigating_circumstances ) ) => ( calc ( bind $?gen133 ( create$ rule7 ?gen123 ?gen124 ?gen126 ?gen127 $?gen130 ) ) ) ?gen128 <- ( procurement_money_under_15000_mitigating_circumstances ( positive-support $?gen133 ) )"))

([rule6_2-defeated-dot] of derived-attribute-rule
   (pos-name rule6_2-defeated-dot-gen1243)
   (depends-on declare counterfeiting_money_over_15000 counterfeiting_money_over_15000_mitigating_circumstances)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_2] ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive-defeated $?gen118 & : ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen118 ) ) ) ) ( test ( eq ( class ?gen115 ) counterfeiting_money_over_15000 ) ) ( not ?gen122 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ) => ( calc ( bind $?gen117 ( delete-member$ $?gen118 ( create$ rule6_2-defeated rule2 ) ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( positive-defeated $?gen117 ) )"))

([rule6_2-defeated] of derived-attribute-rule
   (pos-name rule6_2-defeated-gen1245)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_2] ) ) ) ?gen122 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive-defeated $?gen118 & : ( not ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen118 ) ) ) ) ) ( test ( eq ( class ?gen115 ) counterfeiting_money_over_15000 ) ) => ( calc ( bind $?gen117 ( create$ rule6_2-defeated rule2 $?gen118 ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( positive-defeated $?gen117 ) )"))

([rule6_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-dot-gen1247)
   (depends-on declare counterfeiting_money_over_15000 counterfeiting_money_over_15000_mitigating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_2] ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_2 $? ) ) ( test ( eq ( class ?gen115 ) counterfeiting_money_over_15000 ) ) ( not ( and ?gen122 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( positive ~ 2 ) ( negative-overruled $?gen117 & : ( not ( member$ rule6_2 $?gen117 ) ) ) ) ) ) => ?gen115 <- ( counterfeiting_money_over_15000 ( negative 0 ) )"))

([rule6_2-defeasibly] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-gen1249)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_2] ) ) ) ?gen122 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen117 & : ( not ( member$ rule6_2 $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) counterfeiting_money_over_15000 ) ) => ?gen115 <- ( counterfeiting_money_over_15000 ( negative 1 ) ( negative-derivator rule6_2 ?gen122 ) )"))

([rule6_2-overruled-dot] of derived-attribute-rule
   (pos-name rule6_2-overruled-dot-gen1251)
   (depends-on declare counterfeiting_money_over_15000 counterfeiting_money_over_15000_mitigating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_2] ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive-support $?gen118 ) ( positive-overruled $?gen119 & : ( subseq-pos ( create$ rule6_2-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( test ( eq ( class ?gen115 ) counterfeiting_money_over_15000 ) ) ( not ( and ?gen122 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( negative-defeated $?gen117 & : ( not ( member$ rule6_2 $?gen117 ) ) ) ) ) ) => ( calc ( bind $?gen120 ( delete-member$ $?gen119 ( create$ rule6_2-overruled $?gen118 ) ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( positive-overruled $?gen120 ) )"))

([rule6_2-overruled] of derived-attribute-rule
   (pos-name rule6_2-overruled-gen1253)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_2] ) ) ) ?gen122 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive-support $?gen118 ) ( positive-overruled $?gen119 & : ( not ( subseq-pos ( create$ rule6_2-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( negative-defeated $?gen117 & : ( not ( member$ rule6_2 $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) counterfeiting_money_over_15000 ) ) => ( calc ( bind $?gen120 ( create$ rule6_2-overruled $?gen118 $?gen119 ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( positive-overruled $?gen120 ) )"))

([rule6_2-support] of derived-attribute-rule
   (pos-name rule6_2-support-gen1255)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_2] ) ) ) ?gen114 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( negative-support $?gen117 & : ( not ( subseq-pos ( create$ rule6_2 ?gen114 $$$ $?gen117 ) ) ) ) ) ( test ( eq ( class ?gen115 ) counterfeiting_money_over_15000 ) ) => ( calc ( bind $?gen120 ( create$ rule6_2 ?gen114 $?gen117 ) ) ) ?gen115 <- ( counterfeiting_money_over_15000 ( negative-support $?gen120 ) )"))

([rule6-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6-defeasibly-dot-gen1257)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances lc:case lc:case lc:case lc:case counterfeiting_money_over_15000_mitigating_circumstances)
   (implies counterfeiting_money_over_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6] ) ) ) ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule6 $? ) ) ( test ( eq ( class ?gen100 ) counterfeiting_money_over_15000_mitigating_circumstances ) ) ( not ( and ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen109 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen108 & : ( >= ?gen108 1 ) ) ) ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( negative ~ 2 ) ( positive-overruled $?gen102 & : ( not ( member$ rule6 $?gen102 ) ) ) ) ) ) => ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( positive 0 ) )"))

([rule6-defeasibly] of derived-attribute-rule
   (pos-name rule6-defeasibly-gen1259)
   (depends-on declare lc:case lc:case lc:case lc:case counterfeiting_money_over_15000_mitigating_circumstances)
   (implies counterfeiting_money_over_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6] ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen109 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen108 & : ( >= ?gen108 1 ) ) ) ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen102 & : ( not ( member$ rule6 $?gen102 ) ) ) ) ( test ( eq ( class ?gen100 ) counterfeiting_money_over_15000_mitigating_circumstances ) ) => ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( positive 1 ) ( positive-derivator rule6 ?gen107 ?gen109 ?gen111 ?gen113 ) )"))

([rule6-overruled-dot] of derived-attribute-rule
   (pos-name rule6-overruled-dot-gen1261)
   (depends-on declare counterfeiting_money_over_15000_mitigating_circumstances lc:case lc:case lc:case lc:case counterfeiting_money_over_15000_mitigating_circumstances)
   (implies counterfeiting_money_over_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6] ) ) ) ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( negative-support $?gen103 ) ( negative-overruled $?gen104 & : ( subseq-pos ( create$ rule6-overruled $?gen103 $$$ $?gen104 ) ) ) ) ( test ( eq ( class ?gen100 ) counterfeiting_money_over_15000_mitigating_circumstances ) ) ( not ( and ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen109 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen108 & : ( >= ?gen108 1 ) ) ) ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( positive-defeated $?gen102 & : ( not ( member$ rule6 $?gen102 ) ) ) ) ) ) => ( calc ( bind $?gen105 ( delete-member$ $?gen104 ( create$ rule6-overruled $?gen103 ) ) ) ) ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( negative-overruled $?gen105 ) )"))

([rule6-overruled] of derived-attribute-rule
   (pos-name rule6-overruled-gen1263)
   (depends-on declare lc:case lc:case lc:case lc:case counterfeiting_money_over_15000_mitigating_circumstances)
   (implies counterfeiting_money_over_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6] ) ) ) ?gen107 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen106 & : ( >= ?gen106 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen109 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen108 & : ( >= ?gen108 1 ) ) ) ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen110 & : ( >= ?gen110 1 ) ) ) ?gen113 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( negative-support $?gen103 ) ( negative-overruled $?gen104 & : ( not ( subseq-pos ( create$ rule6-overruled $?gen103 $$$ $?gen104 ) ) ) ) ( positive-defeated $?gen102 & : ( not ( member$ rule6 $?gen102 ) ) ) ) ( test ( eq ( class ?gen100 ) counterfeiting_money_over_15000_mitigating_circumstances ) ) => ( calc ( bind $?gen105 ( create$ rule6-overruled $?gen103 $?gen104 ) ) ) ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( negative-overruled $?gen105 ) )"))

([rule6-support] of derived-attribute-rule
   (pos-name rule6-support-gen1265)
   (depends-on declare lc:case lc:case lc:case lc:case counterfeiting_money_over_15000_mitigating_circumstances)
   (implies counterfeiting_money_over_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6] ) ) ) ?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( test ( > ?Amount 15000 ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive-support $?gen102 & : ( not ( subseq-pos ( create$ rule6 ?gen95 ?gen97 ?gen98 ?gen99 $$$ $?gen102 ) ) ) ) ) ( test ( eq ( class ?gen100 ) counterfeiting_money_over_15000_mitigating_circumstances ) ) => ( calc ( bind $?gen105 ( create$ rule6 ?gen95 ?gen97 ?gen98 ?gen99 $?gen102 ) ) ) ?gen100 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( positive-support $?gen105 ) )"))

([rule5_1-defeated-dot] of derived-attribute-rule
   (pos-name rule5_1-defeated-dot-gen1267)
   (depends-on declare counterfeiting_money_under_15000 counterfeiting_money_under_15000_mitigating_circumstances)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_1] ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive-defeated $?gen90 & : ( subseq-pos ( create$ rule5_1-defeated rule1 $$$ $?gen90 ) ) ) ) ( test ( eq ( class ?gen87 ) counterfeiting_money_under_15000 ) ) ( not ?gen94 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ) => ( calc ( bind $?gen89 ( delete-member$ $?gen90 ( create$ rule5_1-defeated rule1 ) ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( positive-defeated $?gen89 ) )"))

([rule5_1-defeated] of derived-attribute-rule
   (pos-name rule5_1-defeated-gen1269)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_1] ) ) ) ?gen94 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive-defeated $?gen90 & : ( not ( subseq-pos ( create$ rule5_1-defeated rule1 $$$ $?gen90 ) ) ) ) ) ( test ( eq ( class ?gen87 ) counterfeiting_money_under_15000 ) ) => ( calc ( bind $?gen89 ( create$ rule5_1-defeated rule1 $?gen90 ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( positive-defeated $?gen89 ) )"))

([rule5_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-dot-gen1271)
   (depends-on declare counterfeiting_money_under_15000 counterfeiting_money_under_15000_mitigating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_1] ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_1 $? ) ) ( test ( eq ( class ?gen87 ) counterfeiting_money_under_15000 ) ) ( not ( and ?gen94 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( positive ~ 2 ) ( negative-overruled $?gen89 & : ( not ( member$ rule5_1 $?gen89 ) ) ) ) ) ) => ?gen87 <- ( counterfeiting_money_under_15000 ( negative 0 ) )"))

([rule5_1-defeasibly] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-gen1273)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_1] ) ) ) ?gen94 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen89 & : ( not ( member$ rule5_1 $?gen89 ) ) ) ) ( test ( eq ( class ?gen87 ) counterfeiting_money_under_15000 ) ) => ?gen87 <- ( counterfeiting_money_under_15000 ( negative 1 ) ( negative-derivator rule5_1 ?gen94 ) )"))

([rule5_1-overruled-dot] of derived-attribute-rule
   (pos-name rule5_1-overruled-dot-gen1275)
   (depends-on declare counterfeiting_money_under_15000 counterfeiting_money_under_15000_mitigating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_1] ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive-support $?gen90 ) ( positive-overruled $?gen91 & : ( subseq-pos ( create$ rule5_1-overruled $?gen90 $$$ $?gen91 ) ) ) ) ( test ( eq ( class ?gen87 ) counterfeiting_money_under_15000 ) ) ( not ( and ?gen94 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( negative-defeated $?gen89 & : ( not ( member$ rule5_1 $?gen89 ) ) ) ) ) ) => ( calc ( bind $?gen92 ( delete-member$ $?gen91 ( create$ rule5_1-overruled $?gen90 ) ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( positive-overruled $?gen92 ) )"))

([rule5_1-overruled] of derived-attribute-rule
   (pos-name rule5_1-overruled-gen1277)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_1] ) ) ) ?gen94 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive ?gen93 & : ( >= ?gen93 1 ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive-support $?gen90 ) ( positive-overruled $?gen91 & : ( not ( subseq-pos ( create$ rule5_1-overruled $?gen90 $$$ $?gen91 ) ) ) ) ( negative-defeated $?gen89 & : ( not ( member$ rule5_1 $?gen89 ) ) ) ) ( test ( eq ( class ?gen87 ) counterfeiting_money_under_15000 ) ) => ( calc ( bind $?gen92 ( create$ rule5_1-overruled $?gen90 $?gen91 ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( positive-overruled $?gen92 ) )"))

([rule5_1-support] of derived-attribute-rule
   (pos-name rule5_1-support-gen1279)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_1] ) ) ) ?gen86 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( negative-support $?gen89 & : ( not ( subseq-pos ( create$ rule5_1 ?gen86 $$$ $?gen89 ) ) ) ) ) ( test ( eq ( class ?gen87 ) counterfeiting_money_under_15000 ) ) => ( calc ( bind $?gen92 ( create$ rule5_1 ?gen86 $?gen89 ) ) ) ?gen87 <- ( counterfeiting_money_under_15000 ( negative-support $?gen92 ) )"))

([rule5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5-defeasibly-dot-gen1281)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances lc:case lc:case lc:case lc:case counterfeiting_money_under_15000_mitigating_circumstances)
   (implies counterfeiting_money_under_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5] ) ) ) ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule5 $? ) ) ( test ( eq ( class ?gen72 ) counterfeiting_money_under_15000_mitigating_circumstances ) ) ( not ( and ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen84 & : ( >= ?gen84 1 ) ) ) ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( negative ~ 2 ) ( positive-overruled $?gen74 & : ( not ( member$ rule5 $?gen74 ) ) ) ) ) ) => ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( positive 0 ) )"))

([rule5-defeasibly] of derived-attribute-rule
   (pos-name rule5-defeasibly-gen1283)
   (depends-on declare lc:case lc:case lc:case lc:case counterfeiting_money_under_15000_mitigating_circumstances)
   (implies counterfeiting_money_under_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5] ) ) ) ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen84 & : ( >= ?gen84 1 ) ) ) ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen74 & : ( not ( member$ rule5 $?gen74 ) ) ) ) ( test ( eq ( class ?gen72 ) counterfeiting_money_under_15000_mitigating_circumstances ) ) => ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( positive 1 ) ( positive-derivator rule5 ?gen79 ?gen81 ?gen83 ?gen85 ) )"))

([rule5-overruled-dot] of derived-attribute-rule
   (pos-name rule5-overruled-dot-gen1285)
   (depends-on declare counterfeiting_money_under_15000_mitigating_circumstances lc:case lc:case lc:case lc:case counterfeiting_money_under_15000_mitigating_circumstances)
   (implies counterfeiting_money_under_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5] ) ) ) ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( negative-support $?gen75 ) ( negative-overruled $?gen76 & : ( subseq-pos ( create$ rule5-overruled $?gen75 $$$ $?gen76 ) ) ) ) ( test ( eq ( class ?gen72 ) counterfeiting_money_under_15000_mitigating_circumstances ) ) ( not ( and ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen84 & : ( >= ?gen84 1 ) ) ) ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( positive-defeated $?gen74 & : ( not ( member$ rule5 $?gen74 ) ) ) ) ) ) => ( calc ( bind $?gen77 ( delete-member$ $?gen76 ( create$ rule5-overruled $?gen75 ) ) ) ) ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( negative-overruled $?gen77 ) )"))

([rule5-overruled] of derived-attribute-rule
   (pos-name rule5-overruled-gen1287)
   (depends-on declare lc:case lc:case lc:case lc:case counterfeiting_money_under_15000_mitigating_circumstances)
   (implies counterfeiting_money_under_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5] ) ) ) ?gen79 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen78 & : ( >= ?gen78 1 ) ) ) ?gen81 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen80 & : ( >= ?gen80 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen83 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ( positive ?gen82 & : ( >= ?gen82 1 ) ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ( positive ?gen84 & : ( >= ?gen84 1 ) ) ) ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( negative-support $?gen75 ) ( negative-overruled $?gen76 & : ( not ( subseq-pos ( create$ rule5-overruled $?gen75 $$$ $?gen76 ) ) ) ) ( positive-defeated $?gen74 & : ( not ( member$ rule5 $?gen74 ) ) ) ) ( test ( eq ( class ?gen72 ) counterfeiting_money_under_15000_mitigating_circumstances ) ) => ( calc ( bind $?gen77 ( create$ rule5-overruled $?gen75 $?gen76 ) ) ) ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( negative-overruled $?gen77 ) )"))

([rule5-support] of derived-attribute-rule
   (pos-name rule5-support-gen1289)
   (depends-on declare lc:case lc:case lc:case lc:case counterfeiting_money_under_15000_mitigating_circumstances)
   (implies counterfeiting_money_under_15000_mitigating_circumstances)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5] ) ) ) ?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( test ( <= ?Amount 15000 ) ) ?gen70 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ( positive-support $?gen74 & : ( not ( subseq-pos ( create$ rule5 ?gen67 ?gen68 ?gen70 ?gen71 $$$ $?gen74 ) ) ) ) ) ( test ( eq ( class ?gen72 ) counterfeiting_money_under_15000_mitigating_circumstances ) ) => ( calc ( bind $?gen77 ( create$ rule5 ?gen67 ?gen68 ?gen70 ?gen71 $?gen74 ) ) ) ?gen72 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( positive-support $?gen77 ) )"))

([rule4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4-defeasibly-dot-gen1291)
   (depends-on declare procurement_money_over_15000 lc:case lc:case procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4] ) ) ) ?gen57 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule4 $? ) ) ( test ( eq ( class ?gen57 ) procurement_money_over_15000 ) ) ( not ( and ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen57 <- ( procurement_money_over_15000 ( negative ~ 2 ) ( positive-overruled $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ) ) => ?gen57 <- ( procurement_money_over_15000 ( positive 0 ) )"))

([rule4-defeasibly] of derived-attribute-rule
   (pos-name rule4-defeasibly-gen1293)
   (depends-on declare lc:case lc:case procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4] ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen57 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ( test ( eq ( class ?gen57 ) procurement_money_over_15000 ) ) => ?gen57 <- ( procurement_money_over_15000 ( positive 1 ) ( positive-derivator rule4 ?gen64 ?gen66 ) )"))

([rule4-overruled-dot] of derived-attribute-rule
   (pos-name rule4-overruled-dot-gen1295)
   (depends-on declare procurement_money_over_15000 lc:case lc:case procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4] ) ) ) ?gen57 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( negative-support $?gen60 ) ( negative-overruled $?gen61 & : ( subseq-pos ( create$ rule4-overruled $?gen60 $$$ $?gen61 ) ) ) ) ( test ( eq ( class ?gen57 ) procurement_money_over_15000 ) ) ( not ( and ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen57 <- ( procurement_money_over_15000 ( positive-defeated $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ) ) => ( calc ( bind $?gen62 ( delete-member$ $?gen61 ( create$ rule4-overruled $?gen60 ) ) ) ) ?gen57 <- ( procurement_money_over_15000 ( negative-overruled $?gen62 ) )"))

([rule4-overruled] of derived-attribute-rule
   (pos-name rule4-overruled-gen1297)
   (depends-on declare lc:case lc:case procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4] ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen57 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( negative-support $?gen60 ) ( negative-overruled $?gen61 & : ( not ( subseq-pos ( create$ rule4-overruled $?gen60 $$$ $?gen61 ) ) ) ) ( positive-defeated $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ( test ( eq ( class ?gen57 ) procurement_money_over_15000 ) ) => ( calc ( bind $?gen62 ( create$ rule4-overruled $?gen60 $?gen61 ) ) ) ?gen57 <- ( procurement_money_over_15000 ( negative-overruled $?gen62 ) )"))

([rule4-support] of derived-attribute-rule
   (pos-name rule4-support-gen1299)
   (depends-on declare lc:case lc:case procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4] ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( > ?Amount 15000 ) ) ?gen57 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ( positive-support $?gen59 & : ( not ( subseq-pos ( create$ rule4 ?gen54 ?gen55 $$$ $?gen59 ) ) ) ) ) ( test ( eq ( class ?gen57 ) procurement_money_over_15000 ) ) => ( calc ( bind $?gen62 ( create$ rule4 ?gen54 ?gen55 $?gen59 ) ) ) ?gen57 <- ( procurement_money_over_15000 ( positive-support $?gen62 ) )"))

([rule3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3-defeasibly-dot-gen1301)
   (depends-on declare procurement_money_under_15000 lc:case lc:case procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3] ) ) ) ?gen44 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule3 $? ) ) ( test ( eq ( class ?gen44 ) procurement_money_under_15000 ) ) ( not ( and ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen44 <- ( procurement_money_under_15000 ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ) ) => ?gen44 <- ( procurement_money_under_15000 ( positive 0 ) )"))

([rule3-defeasibly] of derived-attribute-rule
   (pos-name rule3-defeasibly-gen1303)
   (depends-on declare lc:case lc:case procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen44 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) procurement_money_under_15000 ) ) => ?gen44 <- ( procurement_money_under_15000 ( positive 1 ) ( positive-derivator rule3 ?gen51 ?gen53 ) )"))

([rule3-overruled-dot] of derived-attribute-rule
   (pos-name rule3-overruled-dot-gen1305)
   (depends-on declare procurement_money_under_15000 lc:case lc:case procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3] ) ) ) ?gen44 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( subseq-pos ( create$ rule3-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( test ( eq ( class ?gen44 ) procurement_money_under_15000 ) ) ( not ( and ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen44 <- ( procurement_money_under_15000 ( positive-defeated $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ) ) => ( calc ( bind $?gen49 ( delete-member$ $?gen48 ( create$ rule3-overruled $?gen47 ) ) ) ) ?gen44 <- ( procurement_money_under_15000 ( negative-overruled $?gen49 ) )"))

([rule3-overruled] of derived-attribute-rule
   (pos-name rule3-overruled-gen1307)
   (depends-on declare lc:case lc:case procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen44 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( not ( subseq-pos ( create$ rule3-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( positive-defeated $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) procurement_money_under_15000 ) ) => ( calc ( bind $?gen49 ( create$ rule3-overruled $?gen47 $?gen48 ) ) ) ?gen44 <- ( procurement_money_under_15000 ( negative-overruled $?gen49 ) )"))

([rule3-support] of derived-attribute-rule
   (pos-name rule3-support-gen1309)
   (depends-on declare lc:case lc:case procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3] ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( <= ?Amount 15000 ) ) ?gen44 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ( positive-support $?gen46 & : ( not ( subseq-pos ( create$ rule3 ?gen41 ?gen42 $$$ $?gen46 ) ) ) ) ) ( test ( eq ( class ?gen44 ) procurement_money_under_15000 ) ) => ( calc ( bind $?gen49 ( create$ rule3 ?gen41 ?gen42 $?gen46 ) ) ) ?gen44 <- ( procurement_money_under_15000 ( positive-support $?gen49 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen1311)
   (depends-on declare counterfeiting_money_over_15000 lc:case lc:case counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen31 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen31 ) counterfeiting_money_over_15000 ) ) ( not ( and ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ?gen31 <- ( counterfeiting_money_over_15000 ( negative ~ 2 ) ( positive-overruled $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ) ) => ?gen31 <- ( counterfeiting_money_over_15000 ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen1313)
   (depends-on declare lc:case lc:case counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ?gen31 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ( test ( eq ( class ?gen31 ) counterfeiting_money_over_15000 ) ) => ?gen31 <- ( counterfeiting_money_over_15000 ( positive 1 ) ( positive-derivator rule2 ?gen38 ?gen40 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen1315)
   (depends-on declare counterfeiting_money_over_15000 lc:case lc:case counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen31 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( negative-support $?gen34 ) ( negative-overruled $?gen35 & : ( subseq-pos ( create$ rule2-overruled $?gen34 $$$ $?gen35 ) ) ) ) ( test ( eq ( class ?gen31 ) counterfeiting_money_over_15000 ) ) ( not ( and ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ?gen31 <- ( counterfeiting_money_over_15000 ( positive-defeated $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ) ) => ( calc ( bind $?gen36 ( delete-member$ $?gen35 ( create$ rule2-overruled $?gen34 ) ) ) ) ?gen31 <- ( counterfeiting_money_over_15000 ( negative-overruled $?gen36 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen1317)
   (depends-on declare lc:case lc:case counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ( test ( > ?Amount 15000 ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ?gen31 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( negative-support $?gen34 ) ( negative-overruled $?gen35 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen34 $$$ $?gen35 ) ) ) ) ( positive-defeated $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ( test ( eq ( class ?gen31 ) counterfeiting_money_over_15000 ) ) => ( calc ( bind $?gen36 ( create$ rule2-overruled $?gen34 $?gen35 ) ) ) ?gen31 <- ( counterfeiting_money_over_15000 ( negative-overruled $?gen36 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen1319)
   (depends-on declare lc:case lc:case counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( test ( > ?Amount 15000 ) ) ?gen30 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ?gen31 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ( positive-support $?gen33 & : ( not ( subseq-pos ( create$ rule2 ?gen28 ?gen30 $$$ $?gen33 ) ) ) ) ) ( test ( eq ( class ?gen31 ) counterfeiting_money_over_15000 ) ) => ( calc ( bind $?gen36 ( create$ rule2 ?gen28 ?gen30 $?gen33 ) ) ) ?gen31 <- ( counterfeiting_money_over_15000 ( positive-support $?gen36 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen1321)
   (depends-on declare counterfeiting_money_under_15000 lc:case lc:case counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen18 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen18 ) counterfeiting_money_under_15000 ) ) ( not ( and ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen18 <- ( counterfeiting_money_under_15000 ( negative ~ 2 ) ( positive-overruled $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ) ) => ?gen18 <- ( counterfeiting_money_under_15000 ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen1323)
   (depends-on declare lc:case lc:case counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen18 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ( test ( eq ( class ?gen18 ) counterfeiting_money_under_15000 ) ) => ?gen18 <- ( counterfeiting_money_under_15000 ( positive 1 ) ( positive-derivator rule1 ?gen25 ?gen27 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen1325)
   (depends-on declare counterfeiting_money_under_15000 lc:case lc:case counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen18 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( negative-support $?gen21 ) ( negative-overruled $?gen22 & : ( subseq-pos ( create$ rule1-overruled $?gen21 $$$ $?gen22 ) ) ) ) ( test ( eq ( class ?gen18 ) counterfeiting_money_under_15000 ) ) ( not ( and ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen18 <- ( counterfeiting_money_under_15000 ( positive-defeated $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ) ) => ( calc ( bind $?gen23 ( delete-member$ $?gen22 ( create$ rule1-overruled $?gen21 ) ) ) ) ?gen18 <- ( counterfeiting_money_under_15000 ( negative-overruled $?gen23 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen1327)
   (depends-on declare lc:case lc:case counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( <= ?Amount 15000 ) ) ?gen18 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( negative-support $?gen21 ) ( negative-overruled $?gen22 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen21 $$$ $?gen22 ) ) ) ) ( positive-defeated $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ( test ( eq ( class ?gen18 ) counterfeiting_money_under_15000 ) ) => ( calc ( bind $?gen23 ( create$ rule1-overruled $?gen21 $?gen22 ) ) ) ?gen18 <- ( counterfeiting_money_under_15000 ( negative-overruled $?gen23 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen1329)
   (depends-on declare lc:case lc:case counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( test ( <= ?Amount 15000 ) ) ?gen18 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ( positive-support $?gen20 & : ( not ( subseq-pos ( create$ rule1 ?gen15 ?gen16 $$$ $?gen20 ) ) ) ) ) ( test ( eq ( class ?gen18 ) counterfeiting_money_under_15000 ) ) => ( calc ( bind $?gen23 ( create$ rule1 ?gen15 ?gen16 $?gen20 ) ) ) ?gen18 <- ( counterfeiting_money_under_15000 ( positive-support $?gen23 ) )"))

([report_failure_max-deductive] of ntm-deductive-rule
   (pos-name report_failure_max-deductive-gen698)
   (depends-on failure_to_report max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen630 <- ( failure_to_report ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1 ) ) ) => ( max_imprisonment ( value 1 ) )")
   (production-rule "( defrule report_failure_max-deductive-gen698 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen630 ) ( is-a failure_to_report ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1 ) ) )")
   (derived-class max_imprisonment))

([report_failure_min-deductive] of ntm-deductive-rule
   (pos-name report_failure_min-deductive-gen697)
   (depends-on failure_to_report min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen621 <- ( failure_to_report ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule report_failure_min-deductive-gen697 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen621 ) ( is-a failure_to_report ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_use_gt_agg_max-deductive] of ntm-deductive-rule
   (pos-name pn_use_gt_agg_max-deductive-gen696)
   (depends-on procurement_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen612 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 20 ) ) ) => ( max_imprisonment ( value 20 ) )")
   (production-rule "( defrule pn_use_gt_agg_max-deductive-gen696 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen612 ) ( is-a procurement_money_over_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 20 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 20 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 20 ) ) ) ( make-instance ?oid of max_imprisonment ( value 20 ) ) )")
   (derived-class max_imprisonment))

([pn_use_gt_agg_min-deductive] of ntm-deductive-rule
   (pos-name pn_use_gt_agg_min-deductive-gen695)
   (depends-on procurement_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen603 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_use_gt_agg_min-deductive-gen695 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen603 ) ( is-a procurement_money_over_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_use_lt_agg_max-deductive] of ntm-deductive-rule
   (pos-name pn_use_lt_agg_max-deductive-gen694)
   (depends-on procurement_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen594 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 20 ) ) ) => ( max_imprisonment ( value 20 ) )")
   (production-rule "( defrule pn_use_lt_agg_max-deductive-gen694 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen594 ) ( is-a procurement_money_under_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 20 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 20 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 20 ) ) ) ( make-instance ?oid of max_imprisonment ( value 20 ) ) )")
   (derived-class max_imprisonment))

([pn_use_lt_agg_min-deductive] of ntm-deductive-rule
   (pos-name pn_use_lt_agg_min-deductive-gen693)
   (depends-on procurement_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen585 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_use_lt_agg_min-deductive-gen693 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen585 ) ( is-a procurement_money_under_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_make_gt_agg_max-deductive] of ntm-deductive-rule
   (pos-name pn_make_gt_agg_max-deductive-gen692)
   (depends-on counterfeiting_money_over_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen576 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 20 ) ) ) => ( max_imprisonment ( value 20 ) )")
   (production-rule "( defrule pn_make_gt_agg_max-deductive-gen692 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen576 ) ( is-a counterfeiting_money_over_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 20 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 20 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 20 ) ) ) ( make-instance ?oid of max_imprisonment ( value 20 ) ) )")
   (derived-class max_imprisonment))

([pn_make_gt_agg_min-deductive] of ntm-deductive-rule
   (pos-name pn_make_gt_agg_min-deductive-gen691)
   (depends-on counterfeiting_money_over_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen567 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_make_gt_agg_min-deductive-gen691 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen567 ) ( is-a counterfeiting_money_over_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_make_lt_agg_max-deductive] of ntm-deductive-rule
   (pos-name pn_make_lt_agg_max-deductive-gen690)
   (depends-on counterfeiting_money_under_15000_aggravating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen558 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 20 ) ) ) => ( max_imprisonment ( value 20 ) )")
   (production-rule "( defrule pn_make_lt_agg_max-deductive-gen690 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen558 ) ( is-a counterfeiting_money_under_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 20 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 20 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 20 ) ) ) ( make-instance ?oid of max_imprisonment ( value 20 ) ) )")
   (derived-class max_imprisonment))

([pn_make_lt_agg_min-deductive] of ntm-deductive-rule
   (pos-name pn_make_lt_agg_min-deductive-gen689)
   (depends-on counterfeiting_money_under_15000_aggravating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen549 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_make_lt_agg_min-deductive-gen689 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen549 ) ( is-a counterfeiting_money_under_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_use_gt_mitigating_max-deductive] of ntm-deductive-rule
   (pos-name pn_use_gt_mitigating_max-deductive-gen688)
   (depends-on procurement_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen540 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 15 ) ) ) => ( max_imprisonment ( value 15 ) )")
   (production-rule "( defrule pn_use_gt_mitigating_max-deductive-gen688 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen540 ) ( is-a procurement_money_over_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 15 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ( make-instance ?oid of max_imprisonment ( value 15 ) ) )")
   (derived-class max_imprisonment))

([pn_use_gt_mitigating_min-deductive] of ntm-deductive-rule
   (pos-name pn_use_gt_mitigating_min-deductive-gen687)
   (depends-on procurement_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen531 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_use_gt_mitigating_min-deductive-gen687 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen531 ) ( is-a procurement_money_over_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_use_lt_mitigating_max-deductive] of ntm-deductive-rule
   (pos-name pn_use_lt_mitigating_max-deductive-gen686)
   (depends-on procurement_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen522 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 10 ) ) ) => ( max_imprisonment ( value 10 ) )")
   (production-rule "( defrule pn_use_lt_mitigating_max-deductive-gen686 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen522 ) ( is-a procurement_money_under_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 10 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 10 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 10 ) ) ) ( make-instance ?oid of max_imprisonment ( value 10 ) ) )")
   (derived-class max_imprisonment))

([pn_use_lt_mitigating_min-deductive] of ntm-deductive-rule
   (pos-name pn_use_lt_mitigating_min-deductive-gen685)
   (depends-on procurement_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen513 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_use_lt_mitigating_min-deductive-gen685 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen513 ) ( is-a procurement_money_under_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_make_gt_mitigating_max-deductive] of ntm-deductive-rule
   (pos-name pn_make_gt_mitigating_max-deductive-gen684)
   (depends-on counterfeiting_money_over_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen504 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 15 ) ) ) => ( max_imprisonment ( value 15 ) )")
   (production-rule "( defrule pn_make_gt_mitigating_max-deductive-gen684 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen504 ) ( is-a counterfeiting_money_over_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 15 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ( make-instance ?oid of max_imprisonment ( value 15 ) ) )")
   (derived-class max_imprisonment))

([pn_make_gt_mitigating_min-deductive] of ntm-deductive-rule
   (pos-name pn_make_gt_mitigating_min-deductive-gen683)
   (depends-on counterfeiting_money_over_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen495 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_make_gt_mitigating_min-deductive-gen683 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen495 ) ( is-a counterfeiting_money_over_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_make_lt_mitigating_max-deductive] of ntm-deductive-rule
   (pos-name pn_make_lt_mitigating_max-deductive-gen682)
   (depends-on counterfeiting_money_under_15000_mitigating_circumstances max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen486 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 12 ) ) ) => ( max_imprisonment ( value 12 ) )")
   (production-rule "( defrule pn_make_lt_mitigating_max-deductive-gen682 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen486 ) ( is-a counterfeiting_money_under_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ( make-instance ?oid of max_imprisonment ( value 12 ) ) )")
   (derived-class max_imprisonment))

([pn_make_lt_mitigating_min-deductive] of ntm-deductive-rule
   (pos-name pn_make_lt_mitigating_min-deductive-gen681)
   (depends-on counterfeiting_money_under_15000_mitigating_circumstances min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen477 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_make_lt_mitigating_min-deductive-gen681 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen477 ) ( is-a counterfeiting_money_under_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_use_gt_max-deductive] of ntm-deductive-rule
   (pos-name pn_use_gt_max-deductive-gen680)
   (depends-on procurement_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen468 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 15 ) ) ) => ( max_imprisonment ( value 15 ) )")
   (production-rule "( defrule pn_use_gt_max-deductive-gen680 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen468 ) ( is-a procurement_money_over_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 15 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ( make-instance ?oid of max_imprisonment ( value 15 ) ) )")
   (derived-class max_imprisonment))

([pn_use_gt_min-deductive] of ntm-deductive-rule
   (pos-name pn_use_gt_min-deductive-gen679)
   (depends-on procurement_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen459 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 5 ) ) ) => ( min_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_use_gt_min-deductive-gen679 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen459 ) ( is-a procurement_money_over_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 5 ) ) ) ( make-instance ?oid of min_imprisonment ( value 5 ) ) )")
   (derived-class min_imprisonment))

([pn_use_lt_max-deductive] of ntm-deductive-rule
   (pos-name pn_use_lt_max-deductive-gen678)
   (depends-on procurement_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen450 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 10 ) ) ) => ( max_imprisonment ( value 10 ) )")
   (production-rule "( defrule pn_use_lt_max-deductive-gen678 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen450 ) ( is-a procurement_money_under_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 10 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 10 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 10 ) ) ) ( make-instance ?oid of max_imprisonment ( value 10 ) ) )")
   (derived-class max_imprisonment))

([pn_use_lt_min-deductive] of ntm-deductive-rule
   (pos-name pn_use_lt_min-deductive-gen677)
   (depends-on procurement_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen441 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_use_lt_min-deductive-gen677 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen441 ) ( is-a procurement_money_under_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([pn_make_gt_max-deductive] of ntm-deductive-rule
   (pos-name pn_make_gt_max-deductive-gen676)
   (depends-on counterfeiting_money_over_15000 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen432 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 15 ) ) ) => ( max_imprisonment ( value 15 ) )")
   (production-rule "( defrule pn_make_gt_max-deductive-gen676 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen432 ) ( is-a counterfeiting_money_over_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 15 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ( make-instance ?oid of max_imprisonment ( value 15 ) ) )")
   (derived-class max_imprisonment))

([pn_make_gt_min-deductive] of ntm-deductive-rule
   (pos-name pn_make_gt_min-deductive-gen675)
   (depends-on counterfeiting_money_over_15000 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen423 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 5 ) ) ) => ( min_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_make_gt_min-deductive-gen675 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen423 ) ( is-a counterfeiting_money_over_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 5 ) ) ) ( make-instance ?oid of min_imprisonment ( value 5 ) ) )")
   (derived-class min_imprisonment))

([pn_make_lt_max-deductive] of ntm-deductive-rule
   (pos-name pn_make_lt_max-deductive-gen674)
   (depends-on counterfeiting_money_under_15000 max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen414 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 12 ) ) ) => ( max_imprisonment ( value 12 ) )")
   (production-rule "( defrule pn_make_lt_max-deductive-gen674 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen414 ) ( is-a counterfeiting_money_under_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ( make-instance ?oid of max_imprisonment ( value 12 ) ) )")
   (derived-class max_imprisonment))

([pn_make_lt_min-deductive] of ntm-deductive-rule
   (pos-name pn_make_lt_min-deductive-gen673)
   (depends-on counterfeiting_money_under_15000 min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen405 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_make_lt_min-deductive-gen673 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen405 ) ( is-a counterfeiting_money_under_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([pen_conf_13-deductive] of ntm-deductive-rule
   (pos-name pen_conf_13-deductive-gen672)
   (depends-on failure_to_report to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen396 <- ( failure_to_report ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_13-deductive-gen672 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen396 ) ( is-a failure_to_report ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_12-deductive] of ntm-deductive-rule
   (pos-name pen_conf_12-deductive-gen671)
   (depends-on procurement_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen387 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_12-deductive-gen671 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen387 ) ( is-a procurement_money_over_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_11-deductive] of ntm-deductive-rule
   (pos-name pen_conf_11-deductive-gen670)
   (depends-on procurement_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen378 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_11-deductive-gen670 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen378 ) ( is-a procurement_money_under_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_10-deductive] of ntm-deductive-rule
   (pos-name pen_conf_10-deductive-gen669)
   (depends-on counterfeiting_money_over_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen369 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_10-deductive-gen669 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen369 ) ( is-a counterfeiting_money_over_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_9-deductive] of ntm-deductive-rule
   (pos-name pen_conf_9-deductive-gen668)
   (depends-on counterfeiting_money_under_15000_aggravating_circumstances to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen360 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_9-deductive-gen668 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen360 ) ( is-a counterfeiting_money_under_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_8-deductive] of ntm-deductive-rule
   (pos-name pen_conf_8-deductive-gen667)
   (depends-on procurement_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen351 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_8-deductive-gen667 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen351 ) ( is-a procurement_money_over_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_7-deductive] of ntm-deductive-rule
   (pos-name pen_conf_7-deductive-gen666)
   (depends-on procurement_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen342 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_7-deductive-gen666 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen342 ) ( is-a procurement_money_under_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_6-deductive] of ntm-deductive-rule
   (pos-name pen_conf_6-deductive-gen665)
   (depends-on counterfeiting_money_over_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen333 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_6-deductive-gen665 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen333 ) ( is-a counterfeiting_money_over_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_5-deductive] of ntm-deductive-rule
   (pos-name pen_conf_5-deductive-gen664)
   (depends-on counterfeiting_money_under_15000_mitigating_circumstances to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen324 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_5-deductive-gen664 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen324 ) ( is-a counterfeiting_money_under_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_4-deductive] of ntm-deductive-rule
   (pos-name pen_conf_4-deductive-gen663)
   (depends-on procurement_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen315 <- ( procurement_money_over_15000 ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_4-deductive-gen663 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen315 ) ( is-a procurement_money_over_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_3-deductive] of ntm-deductive-rule
   (pos-name pen_conf_3-deductive-gen662)
   (depends-on procurement_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen306 <- ( procurement_money_under_15000 ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_3-deductive-gen662 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen306 ) ( is-a procurement_money_under_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_2-deductive] of ntm-deductive-rule
   (pos-name pen_conf_2-deductive-gen661)
   (depends-on counterfeiting_money_over_15000 to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen297 <- ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_2-deductive-gen661 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen297 ) ( is-a counterfeiting_money_over_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([pen_conf_1-deductive] of ntm-deductive-rule
   (pos-name pen_conf_1-deductive-gen660)
   (depends-on counterfeiting_money_under_15000 to_confiscate)
   (implies to_confiscate)
   (deductive-rule "?gen288 <- ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ) ( not ( to_confiscate ( value 1 ) ) ) => ( to_confiscate ( value 1 ) )")
   (production-rule "( defrule pen_conf_1-deductive-gen660 ( declare ( salience ( calc-salience to_confiscate ) ) ) ( run-deductive-rules ) ( object ( name ?gen288 ) ( is-a counterfeiting_money_under_15000 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate 1 ) ) ) ( make-instance ?oid of to_confiscate ( value 1 ) ) )")
   (derived-class to_confiscate))

([rule13-deductive] of ntm-deductive-rule
   (pos-name rule13-deductive-gen659)
   (depends-on lc:case failure_to_report)
   (implies failure_to_report)
   (deductive-rule "?gen279 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"failure_to_report\" ) ) ( not ( failure_to_report ( defendant ?Defendant ) ) ) => ( failure_to_report ( defendant ?Defendant ) )")
   (production-rule "( defrule rule13-deductive-gen659 ( declare ( salience ( calc-salience failure_to_report ) ) ) ( run-deductive-rules ) ( object ( name ?gen279 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"failure_to_report\" ) ) ( not ( object ( is-a failure_to_report ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat failure_to_report ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat failure_to_report ?Defendant ) ) ) ( make-instance ?oid of failure_to_report ( defendant ?Defendant ) ) )")
   (derived-class failure_to_report))

([rule12_4-deductive] of ntm-deductive-rule
   (pos-name rule12_4-deductive-gen658)
   (depends-on procurement_money_over_15000_aggravating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (deductive-rule "?gen270 <- ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( procurement_money_over_15000 ( defendant ?Defendant ) ) ) => ( procurement_money_over_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule12_4-deductive-gen658 ( declare ( salience ( calc-salience procurement_money_over_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen270 ) ( is-a procurement_money_over_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a procurement_money_over_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat procurement_money_over_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat procurement_money_over_15000 ?Defendant ) ) ) ( make-instance ?oid of procurement_money_over_15000 ( defendant ?Defendant ) ) )")
   (derived-class procurement_money_over_15000))

([rule12-deductive] of ntm-deductive-rule
   (pos-name rule12-deductive-gen657)
   (depends-on lc:case lc:case lc:case procurement_money_over_15000_aggravating_circumstances)
   (implies procurement_money_over_15000_aggravating_circumstances)
   (deductive-rule "?gen254 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen255 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( > ?Amount 15000 ) ) ?gen257 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ( not ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ) => ( procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) )")
   (production-rule "( defrule rule12-deductive-gen657 ( declare ( salience ( calc-salience procurement_money_over_15000_aggravating_circumstances ) ) ) ( run-deductive-rules ) ( object ( name ?gen254 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( object ( name ?gen255 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( > ?Amount 15000 ) ) ( object ( name ?gen257 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ( not ( object ( is-a procurement_money_over_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat procurement_money_over_15000_aggravating_circumstances ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat procurement_money_over_15000_aggravating_circumstances ?Defendant ) ) ) ( make-instance ?oid of procurement_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) )")
   (derived-class procurement_money_over_15000_aggravating_circumstances))

([rule11_3-deductive] of ntm-deductive-rule
   (pos-name rule11_3-deductive-gen656)
   (depends-on procurement_money_under_15000_aggravating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (deductive-rule "?gen245 <- ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( procurement_money_under_15000 ( defendant ?Defendant ) ) ) => ( procurement_money_under_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule11_3-deductive-gen656 ( declare ( salience ( calc-salience procurement_money_under_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen245 ) ( is-a procurement_money_under_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a procurement_money_under_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat procurement_money_under_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat procurement_money_under_15000 ?Defendant ) ) ) ( make-instance ?oid of procurement_money_under_15000 ( defendant ?Defendant ) ) )")
   (derived-class procurement_money_under_15000))

([rule11-deductive] of ntm-deductive-rule
   (pos-name rule11-deductive-gen655)
   (depends-on lc:case lc:case lc:case procurement_money_under_15000_aggravating_circumstances)
   (implies procurement_money_under_15000_aggravating_circumstances)
   (deductive-rule "?gen229 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen230 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( <= ?Amount 15000 ) ) ?gen232 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ( not ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ) => ( procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) )")
   (production-rule "( defrule rule11-deductive-gen655 ( declare ( salience ( calc-salience procurement_money_under_15000_aggravating_circumstances ) ) ) ( run-deductive-rules ) ( object ( name ?gen229 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( object ( name ?gen230 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( <= ?Amount 15000 ) ) ( object ( name ?gen232 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ( not ( object ( is-a procurement_money_under_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat procurement_money_under_15000_aggravating_circumstances ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat procurement_money_under_15000_aggravating_circumstances ?Defendant ) ) ) ( make-instance ?oid of procurement_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) )")
   (derived-class procurement_money_under_15000_aggravating_circumstances))

([rule10_2-deductive] of ntm-deductive-rule
   (pos-name rule10_2-deductive-gen654)
   (depends-on counterfeiting_money_over_15000_aggravating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (deductive-rule "?gen220 <- ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ) ) => ( counterfeiting_money_over_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10_2-deductive-gen654 ( declare ( salience ( calc-salience counterfeiting_money_over_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen220 ) ( is-a counterfeiting_money_over_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a counterfeiting_money_over_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat counterfeiting_money_over_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat counterfeiting_money_over_15000 ?Defendant ) ) ) ( make-instance ?oid of counterfeiting_money_over_15000 ( defendant ?Defendant ) ) )")
   (derived-class counterfeiting_money_over_15000))

([rule10-deductive] of ntm-deductive-rule
   (pos-name rule10-deductive-gen653)
   (depends-on lc:case lc:case lc:case counterfeiting_money_over_15000_aggravating_circumstances)
   (implies counterfeiting_money_over_15000_aggravating_circumstances)
   (deductive-rule "?gen204 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( test ( > ?Amount 15000 ) ) ?gen206 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ?gen207 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ( not ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) ) => ( counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10-deductive-gen653 ( declare ( salience ( calc-salience counterfeiting_money_over_15000_aggravating_circumstances ) ) ) ( run-deductive-rules ) ( object ( name ?gen204 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( test ( > ?Amount 15000 ) ) ( object ( name ?gen206 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( object ( name ?gen207 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ( not ( object ( is-a counterfeiting_money_over_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat counterfeiting_money_over_15000_aggravating_circumstances ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat counterfeiting_money_over_15000_aggravating_circumstances ?Defendant ) ) ) ( make-instance ?oid of counterfeiting_money_over_15000_aggravating_circumstances ( defendant ?Defendant ) ) )")
   (derived-class counterfeiting_money_over_15000_aggravating_circumstances))

([rule9_1-deductive] of ntm-deductive-rule
   (pos-name rule9_1-deductive-gen652)
   (depends-on counterfeiting_money_under_15000_aggravating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (deductive-rule "?gen195 <- ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ( not ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ) ) => ( counterfeiting_money_under_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9_1-deductive-gen652 ( declare ( salience ( calc-salience counterfeiting_money_under_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen195 ) ( is-a counterfeiting_money_under_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a counterfeiting_money_under_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat counterfeiting_money_under_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat counterfeiting_money_under_15000 ?Defendant ) ) ) ( make-instance ?oid of counterfeiting_money_under_15000 ( defendant ?Defendant ) ) )")
   (derived-class counterfeiting_money_under_15000))

([rule9-deductive] of ntm-deductive-rule
   (pos-name rule9-deductive-gen651)
   (depends-on lc:case lc:case lc:case counterfeiting_money_under_15000_aggravating_circumstances)
   (implies counterfeiting_money_under_15000_aggravating_circumstances)
   (deductive-rule "?gen179 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen180 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( test ( <= ?Amount 15000 ) ) ?gen182 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ( not ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) ) => ( counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9-deductive-gen651 ( declare ( salience ( calc-salience counterfeiting_money_under_15000_aggravating_circumstances ) ) ) ( run-deductive-rules ) ( object ( name ?gen179 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( object ( name ?gen180 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( test ( <= ?Amount 15000 ) ) ( object ( name ?gen182 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"true\" ) ) ( not ( object ( is-a counterfeiting_money_under_15000_aggravating_circumstances ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat counterfeiting_money_under_15000_aggravating_circumstances ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat counterfeiting_money_under_15000_aggravating_circumstances ?Defendant ) ) ) ( make-instance ?oid of counterfeiting_money_under_15000_aggravating_circumstances ( defendant ?Defendant ) ) )")
   (derived-class counterfeiting_money_under_15000_aggravating_circumstances))

([rule8_4-deductive] of ntm-deductive-rule
   (pos-name rule8_4-deductive-gen650)
   (depends-on procurement_money_over_15000_mitigating_circumstances procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (deductive-rule "?gen170 <- ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( procurement_money_over_15000 ( defendant ?Defendant ) ) ) => ( procurement_money_over_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8_4-deductive-gen650 ( declare ( salience ( calc-salience procurement_money_over_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen170 ) ( is-a procurement_money_over_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a procurement_money_over_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat procurement_money_over_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat procurement_money_over_15000 ?Defendant ) ) ) ( make-instance ?oid of procurement_money_over_15000 ( defendant ?Defendant ) ) )")
   (derived-class procurement_money_over_15000))

([rule8-deductive] of ntm-deductive-rule
   (pos-name rule8-deductive-gen649)
   (depends-on lc:case lc:case lc:case lc:case procurement_money_over_15000_mitigating_circumstances)
   (implies procurement_money_over_15000_mitigating_circumstances)
   (deductive-rule "?gen151 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen152 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( > ?Amount 15000 ) ) ?gen154 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ?gen155 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ( not ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ) => ( procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8-deductive-gen649 ( declare ( salience ( calc-salience procurement_money_over_15000_mitigating_circumstances ) ) ) ( run-deductive-rules ) ( object ( name ?gen151 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( object ( name ?gen152 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( > ?Amount 15000 ) ) ( object ( name ?gen154 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ( object ( name ?gen155 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ( not ( object ( is-a procurement_money_over_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat procurement_money_over_15000_mitigating_circumstances ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat procurement_money_over_15000_mitigating_circumstances ?Defendant ) ) ) ( make-instance ?oid of procurement_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) )")
   (derived-class procurement_money_over_15000_mitigating_circumstances))

([rule7_3-deductive] of ntm-deductive-rule
   (pos-name rule7_3-deductive-gen648)
   (depends-on procurement_money_under_15000_mitigating_circumstances procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (deductive-rule "?gen142 <- ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( procurement_money_under_15000 ( defendant ?Defendant ) ) ) => ( procurement_money_under_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_3-deductive-gen648 ( declare ( salience ( calc-salience procurement_money_under_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen142 ) ( is-a procurement_money_under_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a procurement_money_under_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat procurement_money_under_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat procurement_money_under_15000 ?Defendant ) ) ) ( make-instance ?oid of procurement_money_under_15000 ( defendant ?Defendant ) ) )")
   (derived-class procurement_money_under_15000))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen647)
   (depends-on lc:case lc:case lc:case lc:case procurement_money_under_15000_mitigating_circumstances)
   (implies procurement_money_under_15000_mitigating_circumstances)
   (deductive-rule "?gen123 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen124 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( <= ?Amount 15000 ) ) ?gen126 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ?gen127 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ( not ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ) => ( procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen647 ( declare ( salience ( calc-salience procurement_money_under_15000_mitigating_circumstances ) ) ) ( run-deductive-rules ) ( object ( name ?gen123 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( object ( name ?gen124 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( <= ?Amount 15000 ) ) ( object ( name ?gen126 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ( object ( name ?gen127 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ( not ( object ( is-a procurement_money_under_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat procurement_money_under_15000_mitigating_circumstances ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat procurement_money_under_15000_mitigating_circumstances ?Defendant ) ) ) ( make-instance ?oid of procurement_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) )")
   (derived-class procurement_money_under_15000_mitigating_circumstances))

([rule6_2-deductive] of ntm-deductive-rule
   (pos-name rule6_2-deductive-gen646)
   (depends-on counterfeiting_money_over_15000_mitigating_circumstances counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (deductive-rule "?gen114 <- ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ) ) => ( counterfeiting_money_over_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_2-deductive-gen646 ( declare ( salience ( calc-salience counterfeiting_money_over_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen114 ) ( is-a counterfeiting_money_over_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a counterfeiting_money_over_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat counterfeiting_money_over_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat counterfeiting_money_over_15000 ?Defendant ) ) ) ( make-instance ?oid of counterfeiting_money_over_15000 ( defendant ?Defendant ) ) )")
   (derived-class counterfeiting_money_over_15000))

([rule6-deductive] of ntm-deductive-rule
   (pos-name rule6-deductive-gen645)
   (depends-on lc:case lc:case lc:case lc:case counterfeiting_money_over_15000_mitigating_circumstances)
   (implies counterfeiting_money_over_15000_mitigating_circumstances)
   (deductive-rule "?gen95 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( test ( > ?Amount 15000 ) ) ?gen97 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ?gen99 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ( not ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) ) => ( counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6-deductive-gen645 ( declare ( salience ( calc-salience counterfeiting_money_over_15000_mitigating_circumstances ) ) ) ( run-deductive-rules ) ( object ( name ?gen95 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( test ( > ?Amount 15000 ) ) ( object ( name ?gen97 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( object ( name ?gen98 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ( object ( name ?gen99 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ( not ( object ( is-a counterfeiting_money_over_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat counterfeiting_money_over_15000_mitigating_circumstances ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat counterfeiting_money_over_15000_mitigating_circumstances ?Defendant ) ) ) ( make-instance ?oid of counterfeiting_money_over_15000_mitigating_circumstances ( defendant ?Defendant ) ) )")
   (derived-class counterfeiting_money_over_15000_mitigating_circumstances))

([rule5_1-deductive] of ntm-deductive-rule
   (pos-name rule5_1-deductive-gen644)
   (depends-on counterfeiting_money_under_15000_mitigating_circumstances counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (deductive-rule "?gen86 <- ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ( not ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ) ) => ( counterfeiting_money_under_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_1-deductive-gen644 ( declare ( salience ( calc-salience counterfeiting_money_under_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen86 ) ( is-a counterfeiting_money_under_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ( not ( object ( is-a counterfeiting_money_under_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat counterfeiting_money_under_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat counterfeiting_money_under_15000 ?Defendant ) ) ) ( make-instance ?oid of counterfeiting_money_under_15000 ( defendant ?Defendant ) ) )")
   (derived-class counterfeiting_money_under_15000))

([rule5-deductive] of ntm-deductive-rule
   (pos-name rule5-deductive-gen643)
   (depends-on lc:case lc:case lc:case lc:case counterfeiting_money_under_15000_mitigating_circumstances)
   (implies counterfeiting_money_under_15000_mitigating_circumstances)
   (deductive-rule "?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( test ( <= ?Amount 15000 ) ) ?gen70 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ?gen71 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ( not ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) ) => ( counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5-deductive-gen643 ( declare ( salience ( calc-salience counterfeiting_money_under_15000_mitigating_circumstances ) ) ) ( run-deductive-rules ) ( object ( name ?gen67 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( object ( name ?gen68 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( test ( <= ?Amount 15000 ) ) ( object ( name ?gen70 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:financial_condition \"poor\" ) ) ( object ( name ?gen71 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:extended_criminal_activity \"false\" ) ) ( not ( object ( is-a counterfeiting_money_under_15000_mitigating_circumstances ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat counterfeiting_money_under_15000_mitigating_circumstances ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat counterfeiting_money_under_15000_mitigating_circumstances ?Defendant ) ) ) ( make-instance ?oid of counterfeiting_money_under_15000_mitigating_circumstances ( defendant ?Defendant ) ) )")
   (derived-class counterfeiting_money_under_15000_mitigating_circumstances))

([rule4-deductive] of ntm-deductive-rule
   (pos-name rule4-deductive-gen642)
   (depends-on lc:case lc:case procurement_money_over_15000)
   (implies procurement_money_over_15000)
   (deductive-rule "?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( > ?Amount 15000 ) ) ( not ( procurement_money_over_15000 ( defendant ?Defendant ) ) ) => ( procurement_money_over_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4-deductive-gen642 ( declare ( salience ( calc-salience procurement_money_over_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen54 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( object ( name ?gen55 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( > ?Amount 15000 ) ) ( not ( object ( is-a procurement_money_over_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat procurement_money_over_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat procurement_money_over_15000 ?Defendant ) ) ) ( make-instance ?oid of procurement_money_over_15000 ( defendant ?Defendant ) ) )")
   (derived-class procurement_money_over_15000))

([rule3-deductive] of ntm-deductive-rule
   (pos-name rule3-deductive-gen641)
   (depends-on lc:case lc:case procurement_money_under_15000)
   (implies procurement_money_under_15000)
   (deductive-rule "?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( <= ?Amount 15000 ) ) ( not ( procurement_money_under_15000 ( defendant ?Defendant ) ) ) => ( procurement_money_under_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3-deductive-gen641 ( declare ( salience ( calc-salience procurement_money_under_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen41 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( object ( name ?gen42 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"procurement_of_counterfeit_money\" ) ) ( test ( <= ?Amount 15000 ) ) ( not ( object ( is-a procurement_money_under_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat procurement_money_under_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat procurement_money_under_15000 ?Defendant ) ) ) ( make-instance ?oid of procurement_money_under_15000 ( defendant ?Defendant ) ) )")
   (derived-class procurement_money_under_15000))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen640)
   (depends-on lc:case lc:case counterfeiting_money_over_15000)
   (implies counterfeiting_money_over_15000)
   (deductive-rule "?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( test ( > ?Amount 15000 ) ) ?gen30 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( not ( counterfeiting_money_over_15000 ( defendant ?Defendant ) ) ) => ( counterfeiting_money_over_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen640 ( declare ( salience ( calc-salience counterfeiting_money_over_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( test ( > ?Amount 15000 ) ) ( object ( name ?gen30 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( not ( object ( is-a counterfeiting_money_over_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat counterfeiting_money_over_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat counterfeiting_money_over_15000 ?Defendant ) ) ) ( make-instance ?oid of counterfeiting_money_over_15000 ( defendant ?Defendant ) ) )")
   (derived-class counterfeiting_money_over_15000))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen639)
   (depends-on lc:case lc:case counterfeiting_money_under_15000)
   (implies counterfeiting_money_under_15000)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( test ( <= ?Amount 15000 ) ) ( not ( counterfeiting_money_under_15000 ( defendant ?Defendant ) ) ) => ( counterfeiting_money_under_15000 ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen639 ( declare ( salience ( calc-salience counterfeiting_money_under_15000 ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:amount ?Amount ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:crime_type \"counterfeiting_money\" ) ) ( test ( <= ?Amount 15000 ) ) ( not ( object ( is-a counterfeiting_money_under_15000 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat counterfeiting_money_under_15000 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat counterfeiting_money_under_15000 ?Defendant ) ) ) ( make-instance ?oid of counterfeiting_money_under_15000 ( defendant ?Defendant ) ) )")
   (derived-class counterfeiting_money_under_15000))

