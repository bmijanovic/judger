([pn_coercion_abuse_multiple_victims_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_victims_max-defeasibly-dot-gen689)
   (depends-on declare max_imprisonment coercion_abuse_multiple_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_multiple_victims_max] ) ) ) ?gen616 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_victims_max $? ) ) ( test ( eq ( class ?gen616 ) max_imprisonment ) ) ( not ( and ?gen623 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen622 & : ( >= ?gen622 1 ) ) ) ?gen616 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen618 & : ( not ( member$ pn_coercion_abuse_multiple_victims_max $?gen618 ) ) ) ) ) ) => ?gen616 <- ( max_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_multiple_victims_max-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_victims_max-defeasibly-gen691)
   (depends-on declare coercion_abuse_multiple_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_multiple_victims_max] ) ) ) ?gen623 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen622 & : ( >= ?gen622 1 ) ) ) ?gen616 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen618 & : ( not ( member$ pn_coercion_abuse_multiple_victims_max $?gen618 ) ) ) ) ( test ( eq ( class ?gen616 ) max_imprisonment ) ) => ?gen616 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_victims_max ?gen623 ) )"))

([pn_coercion_abuse_multiple_victims_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_victims_max-overruled-dot-gen693)
   (depends-on declare max_imprisonment coercion_abuse_multiple_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_multiple_victims_max] ) ) ) ?gen616 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen619 ) ( negative-overruled $?gen620 & : ( subseq-pos ( create$ pn_coercion_abuse_multiple_victims_max-overruled $?gen619 $$$ $?gen620 ) ) ) ) ( test ( eq ( class ?gen616 ) max_imprisonment ) ) ( not ( and ?gen623 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen622 & : ( >= ?gen622 1 ) ) ) ?gen616 <- ( max_imprisonment ( positive-defeated $?gen618 & : ( not ( member$ pn_coercion_abuse_multiple_victims_max $?gen618 ) ) ) ) ) ) => ( calc ( bind $?gen621 ( delete-member$ $?gen620 ( create$ pn_coercion_abuse_multiple_victims_max-overruled $?gen619 ) ) ) ) ?gen616 <- ( max_imprisonment ( negative-overruled $?gen621 ) )"))

([pn_coercion_abuse_multiple_victims_max-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_victims_max-overruled-gen695)
   (depends-on declare coercion_abuse_multiple_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_multiple_victims_max] ) ) ) ?gen623 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen622 & : ( >= ?gen622 1 ) ) ) ?gen616 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen619 ) ( negative-overruled $?gen620 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_victims_max-overruled $?gen619 $$$ $?gen620 ) ) ) ) ( positive-defeated $?gen618 & : ( not ( member$ pn_coercion_abuse_multiple_victims_max $?gen618 ) ) ) ) ( test ( eq ( class ?gen616 ) max_imprisonment ) ) => ( calc ( bind $?gen621 ( create$ pn_coercion_abuse_multiple_victims_max-overruled $?gen619 $?gen620 ) ) ) ?gen616 <- ( max_imprisonment ( negative-overruled $?gen621 ) )"))

([pn_coercion_abuse_multiple_victims_max-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_victims_max-support-gen697)
   (depends-on declare coercion_abuse_multiple_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_multiple_victims_max] ) ) ) ?gen615 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ?gen616 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen618 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_victims_max ?gen615 $$$ $?gen618 ) ) ) ) ) ( test ( eq ( class ?gen616 ) max_imprisonment ) ) => ( calc ( bind $?gen621 ( create$ pn_coercion_abuse_multiple_victims_max ?gen615 $?gen618 ) ) ) ?gen616 <- ( max_imprisonment ( positive-support $?gen621 ) )"))

([pn_coercion_abuse_multiple_victims_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_victims_min-defeasibly-dot-gen699)
   (depends-on declare min_imprisonment coercion_abuse_multiple_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_multiple_victims_min] ) ) ) ?gen607 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_victims_min $? ) ) ( test ( eq ( class ?gen607 ) min_imprisonment ) ) ( not ( and ?gen614 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen613 & : ( >= ?gen613 1 ) ) ) ?gen607 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen609 & : ( not ( member$ pn_coercion_abuse_multiple_victims_min $?gen609 ) ) ) ) ) ) => ?gen607 <- ( min_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_multiple_victims_min-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_victims_min-defeasibly-gen701)
   (depends-on declare coercion_abuse_multiple_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_multiple_victims_min] ) ) ) ?gen614 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen613 & : ( >= ?gen613 1 ) ) ) ?gen607 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen609 & : ( not ( member$ pn_coercion_abuse_multiple_victims_min $?gen609 ) ) ) ) ( test ( eq ( class ?gen607 ) min_imprisonment ) ) => ?gen607 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_victims_min ?gen614 ) )"))

([pn_coercion_abuse_multiple_victims_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_victims_min-overruled-dot-gen703)
   (depends-on declare min_imprisonment coercion_abuse_multiple_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_multiple_victims_min] ) ) ) ?gen607 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen610 ) ( negative-overruled $?gen611 & : ( subseq-pos ( create$ pn_coercion_abuse_multiple_victims_min-overruled $?gen610 $$$ $?gen611 ) ) ) ) ( test ( eq ( class ?gen607 ) min_imprisonment ) ) ( not ( and ?gen614 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen613 & : ( >= ?gen613 1 ) ) ) ?gen607 <- ( min_imprisonment ( positive-defeated $?gen609 & : ( not ( member$ pn_coercion_abuse_multiple_victims_min $?gen609 ) ) ) ) ) ) => ( calc ( bind $?gen612 ( delete-member$ $?gen611 ( create$ pn_coercion_abuse_multiple_victims_min-overruled $?gen610 ) ) ) ) ?gen607 <- ( min_imprisonment ( negative-overruled $?gen612 ) )"))

([pn_coercion_abuse_multiple_victims_min-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_victims_min-overruled-gen705)
   (depends-on declare coercion_abuse_multiple_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_multiple_victims_min] ) ) ) ?gen614 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen613 & : ( >= ?gen613 1 ) ) ) ?gen607 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen610 ) ( negative-overruled $?gen611 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_victims_min-overruled $?gen610 $$$ $?gen611 ) ) ) ) ( positive-defeated $?gen609 & : ( not ( member$ pn_coercion_abuse_multiple_victims_min $?gen609 ) ) ) ) ( test ( eq ( class ?gen607 ) min_imprisonment ) ) => ( calc ( bind $?gen612 ( create$ pn_coercion_abuse_multiple_victims_min-overruled $?gen610 $?gen611 ) ) ) ?gen607 <- ( min_imprisonment ( negative-overruled $?gen612 ) )"))

([pn_coercion_abuse_multiple_victims_min-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_victims_min-support-gen707)
   (depends-on declare coercion_abuse_multiple_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_multiple_victims_min] ) ) ) ?gen606 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ?gen607 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen609 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_victims_min ?gen606 $$$ $?gen609 ) ) ) ) ) ( test ( eq ( class ?gen607 ) min_imprisonment ) ) => ( calc ( bind $?gen612 ( create$ pn_coercion_abuse_multiple_victims_min ?gen606 $?gen609 ) ) ) ?gen607 <- ( min_imprisonment ( positive-support $?gen612 ) )"))

([pn_coercion_abuse_on_duty_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_on_duty_max-defeasibly-dot-gen709)
   (depends-on declare max_imprisonment coercion_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_on_duty_max] ) ) ) ?gen598 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_on_duty_max $? ) ) ( test ( eq ( class ?gen598 ) max_imprisonment ) ) ( not ( and ?gen605 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen604 & : ( >= ?gen604 1 ) ) ) ?gen598 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen600 & : ( not ( member$ pn_coercion_abuse_on_duty_max $?gen600 ) ) ) ) ) ) => ?gen598 <- ( max_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_on_duty_max-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_on_duty_max-defeasibly-gen711)
   (depends-on declare coercion_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_on_duty_max] ) ) ) ?gen605 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen604 & : ( >= ?gen604 1 ) ) ) ?gen598 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen600 & : ( not ( member$ pn_coercion_abuse_on_duty_max $?gen600 ) ) ) ) ( test ( eq ( class ?gen598 ) max_imprisonment ) ) => ?gen598 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_on_duty_max ?gen605 ) )"))

([pn_coercion_abuse_on_duty_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_on_duty_max-overruled-dot-gen713)
   (depends-on declare max_imprisonment coercion_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_on_duty_max] ) ) ) ?gen598 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen601 ) ( negative-overruled $?gen602 & : ( subseq-pos ( create$ pn_coercion_abuse_on_duty_max-overruled $?gen601 $$$ $?gen602 ) ) ) ) ( test ( eq ( class ?gen598 ) max_imprisonment ) ) ( not ( and ?gen605 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen604 & : ( >= ?gen604 1 ) ) ) ?gen598 <- ( max_imprisonment ( positive-defeated $?gen600 & : ( not ( member$ pn_coercion_abuse_on_duty_max $?gen600 ) ) ) ) ) ) => ( calc ( bind $?gen603 ( delete-member$ $?gen602 ( create$ pn_coercion_abuse_on_duty_max-overruled $?gen601 ) ) ) ) ?gen598 <- ( max_imprisonment ( negative-overruled $?gen603 ) )"))

([pn_coercion_abuse_on_duty_max-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_on_duty_max-overruled-gen715)
   (depends-on declare coercion_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_on_duty_max] ) ) ) ?gen605 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen604 & : ( >= ?gen604 1 ) ) ) ?gen598 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen601 ) ( negative-overruled $?gen602 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_on_duty_max-overruled $?gen601 $$$ $?gen602 ) ) ) ) ( positive-defeated $?gen600 & : ( not ( member$ pn_coercion_abuse_on_duty_max $?gen600 ) ) ) ) ( test ( eq ( class ?gen598 ) max_imprisonment ) ) => ( calc ( bind $?gen603 ( create$ pn_coercion_abuse_on_duty_max-overruled $?gen601 $?gen602 ) ) ) ?gen598 <- ( max_imprisonment ( negative-overruled $?gen603 ) )"))

([pn_coercion_abuse_on_duty_max-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_on_duty_max-support-gen717)
   (depends-on declare coercion_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_on_duty_max] ) ) ) ?gen597 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ?gen598 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen600 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_on_duty_max ?gen597 $$$ $?gen600 ) ) ) ) ) ( test ( eq ( class ?gen598 ) max_imprisonment ) ) => ( calc ( bind $?gen603 ( create$ pn_coercion_abuse_on_duty_max ?gen597 $?gen600 ) ) ) ?gen598 <- ( max_imprisonment ( positive-support $?gen603 ) )"))

([pn_coercion_abuse_on_duty_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_on_duty_min-defeasibly-dot-gen719)
   (depends-on declare min_imprisonment coercion_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_on_duty_min] ) ) ) ?gen589 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_on_duty_min $? ) ) ( test ( eq ( class ?gen589 ) min_imprisonment ) ) ( not ( and ?gen596 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen595 & : ( >= ?gen595 1 ) ) ) ?gen589 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen591 & : ( not ( member$ pn_coercion_abuse_on_duty_min $?gen591 ) ) ) ) ) ) => ?gen589 <- ( min_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_on_duty_min-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_on_duty_min-defeasibly-gen721)
   (depends-on declare coercion_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_on_duty_min] ) ) ) ?gen596 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen595 & : ( >= ?gen595 1 ) ) ) ?gen589 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen591 & : ( not ( member$ pn_coercion_abuse_on_duty_min $?gen591 ) ) ) ) ( test ( eq ( class ?gen589 ) min_imprisonment ) ) => ?gen589 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_on_duty_min ?gen596 ) )"))

([pn_coercion_abuse_on_duty_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_on_duty_min-overruled-dot-gen723)
   (depends-on declare min_imprisonment coercion_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_on_duty_min] ) ) ) ?gen589 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen592 ) ( negative-overruled $?gen593 & : ( subseq-pos ( create$ pn_coercion_abuse_on_duty_min-overruled $?gen592 $$$ $?gen593 ) ) ) ) ( test ( eq ( class ?gen589 ) min_imprisonment ) ) ( not ( and ?gen596 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen595 & : ( >= ?gen595 1 ) ) ) ?gen589 <- ( min_imprisonment ( positive-defeated $?gen591 & : ( not ( member$ pn_coercion_abuse_on_duty_min $?gen591 ) ) ) ) ) ) => ( calc ( bind $?gen594 ( delete-member$ $?gen593 ( create$ pn_coercion_abuse_on_duty_min-overruled $?gen592 ) ) ) ) ?gen589 <- ( min_imprisonment ( negative-overruled $?gen594 ) )"))

([pn_coercion_abuse_on_duty_min-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_on_duty_min-overruled-gen725)
   (depends-on declare coercion_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_on_duty_min] ) ) ) ?gen596 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen595 & : ( >= ?gen595 1 ) ) ) ?gen589 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen592 ) ( negative-overruled $?gen593 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_on_duty_min-overruled $?gen592 $$$ $?gen593 ) ) ) ) ( positive-defeated $?gen591 & : ( not ( member$ pn_coercion_abuse_on_duty_min $?gen591 ) ) ) ) ( test ( eq ( class ?gen589 ) min_imprisonment ) ) => ( calc ( bind $?gen594 ( create$ pn_coercion_abuse_on_duty_min-overruled $?gen592 $?gen593 ) ) ) ?gen589 <- ( min_imprisonment ( negative-overruled $?gen594 ) )"))

([pn_coercion_abuse_on_duty_min-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_on_duty_min-support-gen727)
   (depends-on declare coercion_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_on_duty_min] ) ) ) ?gen588 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ?gen589 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen591 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_on_duty_min ?gen588 $$$ $?gen591 ) ) ) ) ) ( test ( eq ( class ?gen589 ) min_imprisonment ) ) => ( calc ( bind $?gen594 ( create$ pn_coercion_abuse_on_duty_min ?gen588 $?gen591 ) ) ) ?gen589 <- ( min_imprisonment ( positive-support $?gen594 ) )"))

([pn_coercion_abuse_multiple_defendant_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-defeasibly-dot-gen729)
   (depends-on declare max_imprisonment coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_multiple_defendant_max] ) ) ) ?gen580 <- ( max_imprisonment ( value 12 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_defendant_max $? ) ) ( test ( eq ( class ?gen580 ) max_imprisonment ) ) ( not ( and ?gen587 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen586 & : ( >= ?gen586 1 ) ) ) ?gen580 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen582 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_max $?gen582 ) ) ) ) ) ) => ?gen580 <- ( max_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_multiple_defendant_max-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-defeasibly-gen731)
   (depends-on declare coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_multiple_defendant_max] ) ) ) ?gen587 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen586 & : ( >= ?gen586 1 ) ) ) ?gen580 <- ( max_imprisonment ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen582 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_max $?gen582 ) ) ) ) ( test ( eq ( class ?gen580 ) max_imprisonment ) ) => ?gen580 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_defendant_max ?gen587 ) )"))

([pn_coercion_abuse_multiple_defendant_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-overruled-dot-gen733)
   (depends-on declare max_imprisonment coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_multiple_defendant_max] ) ) ) ?gen580 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen583 ) ( negative-overruled $?gen584 & : ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_max-overruled $?gen583 $$$ $?gen584 ) ) ) ) ( test ( eq ( class ?gen580 ) max_imprisonment ) ) ( not ( and ?gen587 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen586 & : ( >= ?gen586 1 ) ) ) ?gen580 <- ( max_imprisonment ( positive-defeated $?gen582 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_max $?gen582 ) ) ) ) ) ) => ( calc ( bind $?gen585 ( delete-member$ $?gen584 ( create$ pn_coercion_abuse_multiple_defendant_max-overruled $?gen583 ) ) ) ) ?gen580 <- ( max_imprisonment ( negative-overruled $?gen585 ) )"))

([pn_coercion_abuse_multiple_defendant_max-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-overruled-gen735)
   (depends-on declare coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_multiple_defendant_max] ) ) ) ?gen587 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen586 & : ( >= ?gen586 1 ) ) ) ?gen580 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen583 ) ( negative-overruled $?gen584 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_max-overruled $?gen583 $$$ $?gen584 ) ) ) ) ( positive-defeated $?gen582 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_max $?gen582 ) ) ) ) ( test ( eq ( class ?gen580 ) max_imprisonment ) ) => ( calc ( bind $?gen585 ( create$ pn_coercion_abuse_multiple_defendant_max-overruled $?gen583 $?gen584 ) ) ) ?gen580 <- ( max_imprisonment ( negative-overruled $?gen585 ) )"))

([pn_coercion_abuse_multiple_defendant_max-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-support-gen737)
   (depends-on declare coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_multiple_defendant_max] ) ) ) ?gen579 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen580 <- ( max_imprisonment ( value 12 ) ( positive-support $?gen582 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_max ?gen579 $$$ $?gen582 ) ) ) ) ) ( test ( eq ( class ?gen580 ) max_imprisonment ) ) => ( calc ( bind $?gen585 ( create$ pn_coercion_abuse_multiple_defendant_max ?gen579 $?gen582 ) ) ) ?gen580 <- ( max_imprisonment ( positive-support $?gen585 ) )"))

([pn_coercion_abuse_multiple_defendant_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-defeasibly-dot-gen739)
   (depends-on declare min_imprisonment coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_multiple_defendant_min] ) ) ) ?gen571 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_defendant_min $? ) ) ( test ( eq ( class ?gen571 ) min_imprisonment ) ) ( not ( and ?gen578 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen577 & : ( >= ?gen577 1 ) ) ) ?gen571 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen573 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_min $?gen573 ) ) ) ) ) ) => ?gen571 <- ( min_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_multiple_defendant_min-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-defeasibly-gen741)
   (depends-on declare coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_multiple_defendant_min] ) ) ) ?gen578 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen577 & : ( >= ?gen577 1 ) ) ) ?gen571 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen573 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_min $?gen573 ) ) ) ) ( test ( eq ( class ?gen571 ) min_imprisonment ) ) => ?gen571 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_defendant_min ?gen578 ) )"))

([pn_coercion_abuse_multiple_defendant_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-overruled-dot-gen743)
   (depends-on declare min_imprisonment coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_multiple_defendant_min] ) ) ) ?gen571 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen574 ) ( negative-overruled $?gen575 & : ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_min-overruled $?gen574 $$$ $?gen575 ) ) ) ) ( test ( eq ( class ?gen571 ) min_imprisonment ) ) ( not ( and ?gen578 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen577 & : ( >= ?gen577 1 ) ) ) ?gen571 <- ( min_imprisonment ( positive-defeated $?gen573 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_min $?gen573 ) ) ) ) ) ) => ( calc ( bind $?gen576 ( delete-member$ $?gen575 ( create$ pn_coercion_abuse_multiple_defendant_min-overruled $?gen574 ) ) ) ) ?gen571 <- ( min_imprisonment ( negative-overruled $?gen576 ) )"))

([pn_coercion_abuse_multiple_defendant_min-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-overruled-gen745)
   (depends-on declare coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_multiple_defendant_min] ) ) ) ?gen578 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen577 & : ( >= ?gen577 1 ) ) ) ?gen571 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen574 ) ( negative-overruled $?gen575 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_min-overruled $?gen574 $$$ $?gen575 ) ) ) ) ( positive-defeated $?gen573 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_min $?gen573 ) ) ) ) ( test ( eq ( class ?gen571 ) min_imprisonment ) ) => ( calc ( bind $?gen576 ( create$ pn_coercion_abuse_multiple_defendant_min-overruled $?gen574 $?gen575 ) ) ) ?gen571 <- ( min_imprisonment ( negative-overruled $?gen576 ) )"))

([pn_coercion_abuse_multiple_defendant_min-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-support-gen747)
   (depends-on declare coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_multiple_defendant_min] ) ) ) ?gen570 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen571 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen573 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_min ?gen570 $$$ $?gen573 ) ) ) ) ) ( test ( eq ( class ?gen571 ) min_imprisonment ) ) => ( calc ( bind $?gen576 ( create$ pn_coercion_abuse_multiple_defendant_min ?gen570 $?gen573 ) ) ) ?gen571 <- ( min_imprisonment ( positive-support $?gen576 ) )"))

([pn_coercion_abuse_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_max-defeasibly-dot-gen749)
   (depends-on declare max_imprisonment coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_max] ) ) ) ?gen562 <- ( max_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_max $? ) ) ( test ( eq ( class ?gen562 ) max_imprisonment ) ) ( not ( and ?gen569 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen568 & : ( >= ?gen568 1 ) ) ) ?gen562 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen564 & : ( not ( member$ pn_coercion_abuse_max $?gen564 ) ) ) ) ) ) => ?gen562 <- ( max_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_max-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_max-defeasibly-gen751)
   (depends-on declare coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_max] ) ) ) ?gen569 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen568 & : ( >= ?gen568 1 ) ) ) ?gen562 <- ( max_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen564 & : ( not ( member$ pn_coercion_abuse_max $?gen564 ) ) ) ) ( test ( eq ( class ?gen562 ) max_imprisonment ) ) => ?gen562 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_max ?gen569 ) )"))

([pn_coercion_abuse_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_max-overruled-dot-gen753)
   (depends-on declare max_imprisonment coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_max] ) ) ) ?gen562 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen565 ) ( negative-overruled $?gen566 & : ( subseq-pos ( create$ pn_coercion_abuse_max-overruled $?gen565 $$$ $?gen566 ) ) ) ) ( test ( eq ( class ?gen562 ) max_imprisonment ) ) ( not ( and ?gen569 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen568 & : ( >= ?gen568 1 ) ) ) ?gen562 <- ( max_imprisonment ( positive-defeated $?gen564 & : ( not ( member$ pn_coercion_abuse_max $?gen564 ) ) ) ) ) ) => ( calc ( bind $?gen567 ( delete-member$ $?gen566 ( create$ pn_coercion_abuse_max-overruled $?gen565 ) ) ) ) ?gen562 <- ( max_imprisonment ( negative-overruled $?gen567 ) )"))

([pn_coercion_abuse_max-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_max-overruled-gen755)
   (depends-on declare coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_max] ) ) ) ?gen569 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen568 & : ( >= ?gen568 1 ) ) ) ?gen562 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen565 ) ( negative-overruled $?gen566 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_max-overruled $?gen565 $$$ $?gen566 ) ) ) ) ( positive-defeated $?gen564 & : ( not ( member$ pn_coercion_abuse_max $?gen564 ) ) ) ) ( test ( eq ( class ?gen562 ) max_imprisonment ) ) => ( calc ( bind $?gen567 ( create$ pn_coercion_abuse_max-overruled $?gen565 $?gen566 ) ) ) ?gen562 <- ( max_imprisonment ( negative-overruled $?gen567 ) )"))

([pn_coercion_abuse_max-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_max-support-gen757)
   (depends-on declare coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_max] ) ) ) ?gen561 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen562 <- ( max_imprisonment ( value 3 ) ( positive-support $?gen564 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_max ?gen561 $$$ $?gen564 ) ) ) ) ) ( test ( eq ( class ?gen562 ) max_imprisonment ) ) => ( calc ( bind $?gen567 ( create$ pn_coercion_abuse_max ?gen561 $?gen564 ) ) ) ?gen562 <- ( max_imprisonment ( positive-support $?gen567 ) )"))

([pn_coercion_abuse_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_min-defeasibly-dot-gen759)
   (depends-on declare min_imprisonment coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_min] ) ) ) ?gen553 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_min $? ) ) ( test ( eq ( class ?gen553 ) min_imprisonment ) ) ( not ( and ?gen560 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen559 & : ( >= ?gen559 1 ) ) ) ?gen553 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen555 & : ( not ( member$ pn_coercion_abuse_min $?gen555 ) ) ) ) ) ) => ?gen553 <- ( min_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_min-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_min-defeasibly-gen761)
   (depends-on declare coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_min] ) ) ) ?gen560 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen559 & : ( >= ?gen559 1 ) ) ) ?gen553 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen555 & : ( not ( member$ pn_coercion_abuse_min $?gen555 ) ) ) ) ( test ( eq ( class ?gen553 ) min_imprisonment ) ) => ?gen553 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_min ?gen560 ) )"))

([pn_coercion_abuse_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_min-overruled-dot-gen763)
   (depends-on declare min_imprisonment coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_min] ) ) ) ?gen553 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen556 ) ( negative-overruled $?gen557 & : ( subseq-pos ( create$ pn_coercion_abuse_min-overruled $?gen556 $$$ $?gen557 ) ) ) ) ( test ( eq ( class ?gen553 ) min_imprisonment ) ) ( not ( and ?gen560 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen559 & : ( >= ?gen559 1 ) ) ) ?gen553 <- ( min_imprisonment ( positive-defeated $?gen555 & : ( not ( member$ pn_coercion_abuse_min $?gen555 ) ) ) ) ) ) => ( calc ( bind $?gen558 ( delete-member$ $?gen557 ( create$ pn_coercion_abuse_min-overruled $?gen556 ) ) ) ) ?gen553 <- ( min_imprisonment ( negative-overruled $?gen558 ) )"))

([pn_coercion_abuse_min-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_min-overruled-gen765)
   (depends-on declare coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_min] ) ) ) ?gen560 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen559 & : ( >= ?gen559 1 ) ) ) ?gen553 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen556 ) ( negative-overruled $?gen557 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_min-overruled $?gen556 $$$ $?gen557 ) ) ) ) ( positive-defeated $?gen555 & : ( not ( member$ pn_coercion_abuse_min $?gen555 ) ) ) ) ( test ( eq ( class ?gen553 ) min_imprisonment ) ) => ( calc ( bind $?gen558 ( create$ pn_coercion_abuse_min-overruled $?gen556 $?gen557 ) ) ) ?gen553 <- ( min_imprisonment ( negative-overruled $?gen558 ) )"))

([pn_coercion_abuse_min-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_min-support-gen767)
   (depends-on declare coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_min] ) ) ) ?gen552 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen553 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen555 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_min ?gen552 $$$ $?gen555 ) ) ) ) ) ( test ( eq ( class ?gen553 ) min_imprisonment ) ) => ( calc ( bind $?gen558 ( create$ pn_coercion_abuse_min ?gen552 $?gen555 ) ) ) ?gen553 <- ( min_imprisonment ( positive-support $?gen558 ) )"))

([pn_movement_restrct_death_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-defeasibly-dot-gen769)
   (depends-on declare max_imprisonment movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_death_max] ) ) ) ?gen544 <- ( max_imprisonment ( value 12 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_death_max $? ) ) ( test ( eq ( class ?gen544 ) max_imprisonment ) ) ( not ( and ?gen551 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen550 & : ( >= ?gen550 1 ) ) ) ?gen544 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen546 & : ( not ( member$ pn_movement_restrct_death_max $?gen546 ) ) ) ) ) ) => ?gen544 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_death_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-defeasibly-gen771)
   (depends-on declare movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_death_max] ) ) ) ?gen551 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen550 & : ( >= ?gen550 1 ) ) ) ?gen544 <- ( max_imprisonment ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen546 & : ( not ( member$ pn_movement_restrct_death_max $?gen546 ) ) ) ) ( test ( eq ( class ?gen544 ) max_imprisonment ) ) => ?gen544 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_death_max ?gen551 ) )"))

([pn_movement_restrct_death_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-overruled-dot-gen773)
   (depends-on declare max_imprisonment movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_death_max] ) ) ) ?gen544 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen547 ) ( negative-overruled $?gen548 & : ( subseq-pos ( create$ pn_movement_restrct_death_max-overruled $?gen547 $$$ $?gen548 ) ) ) ) ( test ( eq ( class ?gen544 ) max_imprisonment ) ) ( not ( and ?gen551 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen550 & : ( >= ?gen550 1 ) ) ) ?gen544 <- ( max_imprisonment ( positive-defeated $?gen546 & : ( not ( member$ pn_movement_restrct_death_max $?gen546 ) ) ) ) ) ) => ( calc ( bind $?gen549 ( delete-member$ $?gen548 ( create$ pn_movement_restrct_death_max-overruled $?gen547 ) ) ) ) ?gen544 <- ( max_imprisonment ( negative-overruled $?gen549 ) )"))

([pn_movement_restrct_death_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-overruled-gen775)
   (depends-on declare movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_death_max] ) ) ) ?gen551 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen550 & : ( >= ?gen550 1 ) ) ) ?gen544 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen547 ) ( negative-overruled $?gen548 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_max-overruled $?gen547 $$$ $?gen548 ) ) ) ) ( positive-defeated $?gen546 & : ( not ( member$ pn_movement_restrct_death_max $?gen546 ) ) ) ) ( test ( eq ( class ?gen544 ) max_imprisonment ) ) => ( calc ( bind $?gen549 ( create$ pn_movement_restrct_death_max-overruled $?gen547 $?gen548 ) ) ) ?gen544 <- ( max_imprisonment ( negative-overruled $?gen549 ) )"))

([pn_movement_restrct_death_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-support-gen777)
   (depends-on declare movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_death_max] ) ) ) ?gen543 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen544 <- ( max_imprisonment ( value 12 ) ( positive-support $?gen546 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_max ?gen543 $$$ $?gen546 ) ) ) ) ) ( test ( eq ( class ?gen544 ) max_imprisonment ) ) => ( calc ( bind $?gen549 ( create$ pn_movement_restrct_death_max ?gen543 $?gen546 ) ) ) ?gen544 <- ( max_imprisonment ( positive-support $?gen549 ) )"))

([pn_movement_restrct_death_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-defeasibly-dot-gen779)
   (depends-on declare min_imprisonment movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_death_min] ) ) ) ?gen535 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_death_min $? ) ) ( test ( eq ( class ?gen535 ) min_imprisonment ) ) ( not ( and ?gen542 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen541 & : ( >= ?gen541 1 ) ) ) ?gen535 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen537 & : ( not ( member$ pn_movement_restrct_death_min $?gen537 ) ) ) ) ) ) => ?gen535 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_death_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-defeasibly-gen781)
   (depends-on declare movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_death_min] ) ) ) ?gen542 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen541 & : ( >= ?gen541 1 ) ) ) ?gen535 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen537 & : ( not ( member$ pn_movement_restrct_death_min $?gen537 ) ) ) ) ( test ( eq ( class ?gen535 ) min_imprisonment ) ) => ?gen535 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_death_min ?gen542 ) )"))

([pn_movement_restrct_death_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-overruled-dot-gen783)
   (depends-on declare min_imprisonment movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_death_min] ) ) ) ?gen535 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen538 ) ( negative-overruled $?gen539 & : ( subseq-pos ( create$ pn_movement_restrct_death_min-overruled $?gen538 $$$ $?gen539 ) ) ) ) ( test ( eq ( class ?gen535 ) min_imprisonment ) ) ( not ( and ?gen542 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen541 & : ( >= ?gen541 1 ) ) ) ?gen535 <- ( min_imprisonment ( positive-defeated $?gen537 & : ( not ( member$ pn_movement_restrct_death_min $?gen537 ) ) ) ) ) ) => ( calc ( bind $?gen540 ( delete-member$ $?gen539 ( create$ pn_movement_restrct_death_min-overruled $?gen538 ) ) ) ) ?gen535 <- ( min_imprisonment ( negative-overruled $?gen540 ) )"))

([pn_movement_restrct_death_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-overruled-gen785)
   (depends-on declare movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_death_min] ) ) ) ?gen542 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen541 & : ( >= ?gen541 1 ) ) ) ?gen535 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen538 ) ( negative-overruled $?gen539 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_min-overruled $?gen538 $$$ $?gen539 ) ) ) ) ( positive-defeated $?gen537 & : ( not ( member$ pn_movement_restrct_death_min $?gen537 ) ) ) ) ( test ( eq ( class ?gen535 ) min_imprisonment ) ) => ( calc ( bind $?gen540 ( create$ pn_movement_restrct_death_min-overruled $?gen538 $?gen539 ) ) ) ?gen535 <- ( min_imprisonment ( negative-overruled $?gen540 ) )"))

([pn_movement_restrct_death_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-support-gen787)
   (depends-on declare movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_death_min] ) ) ) ?gen534 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen535 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen537 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_min ?gen534 $$$ $?gen537 ) ) ) ) ) ( test ( eq ( class ?gen535 ) min_imprisonment ) ) => ( calc ( bind $?gen540 ( create$ pn_movement_restrct_death_min ?gen534 $?gen537 ) ) ) ?gen535 <- ( min_imprisonment ( positive-support $?gen540 ) )"))

([pn_movement_restrct_life_threatening_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-defeasibly-dot-gen789)
   (depends-on declare max_imprisonment movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen526 <- ( max_imprisonment ( value 8 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_max $? ) ) ( test ( eq ( class ?gen526 ) max_imprisonment ) ) ( not ( and ?gen533 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen532 & : ( >= ?gen532 1 ) ) ) ?gen526 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen528 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen528 ) ) ) ) ) ) => ?gen526 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_life_threatening_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-defeasibly-gen791)
   (depends-on declare movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen533 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen532 & : ( >= ?gen532 1 ) ) ) ?gen526 <- ( max_imprisonment ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen528 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen528 ) ) ) ) ( test ( eq ( class ?gen526 ) max_imprisonment ) ) => ?gen526 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_max ?gen533 ) )"))

([pn_movement_restrct_life_threatening_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-overruled-dot-gen793)
   (depends-on declare max_imprisonment movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen526 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen529 ) ( negative-overruled $?gen530 & : ( subseq-pos ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen529 $$$ $?gen530 ) ) ) ) ( test ( eq ( class ?gen526 ) max_imprisonment ) ) ( not ( and ?gen533 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen532 & : ( >= ?gen532 1 ) ) ) ?gen526 <- ( max_imprisonment ( positive-defeated $?gen528 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen528 ) ) ) ) ) ) => ( calc ( bind $?gen531 ( delete-member$ $?gen530 ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen529 ) ) ) ) ?gen526 <- ( max_imprisonment ( negative-overruled $?gen531 ) )"))

([pn_movement_restrct_life_threatening_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-overruled-gen795)
   (depends-on declare movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen533 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen532 & : ( >= ?gen532 1 ) ) ) ?gen526 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen529 ) ( negative-overruled $?gen530 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen529 $$$ $?gen530 ) ) ) ) ( positive-defeated $?gen528 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen528 ) ) ) ) ( test ( eq ( class ?gen526 ) max_imprisonment ) ) => ( calc ( bind $?gen531 ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen529 $?gen530 ) ) ) ?gen526 <- ( max_imprisonment ( negative-overruled $?gen531 ) )"))

([pn_movement_restrct_life_threatening_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-support-gen797)
   (depends-on declare movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen525 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen526 <- ( max_imprisonment ( value 8 ) ( positive-support $?gen528 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_max ?gen525 $$$ $?gen528 ) ) ) ) ) ( test ( eq ( class ?gen526 ) max_imprisonment ) ) => ( calc ( bind $?gen531 ( create$ pn_movement_restrct_life_threatening_max ?gen525 $?gen528 ) ) ) ?gen526 <- ( max_imprisonment ( positive-support $?gen531 ) )"))

([pn_movement_restrct_life_threatening_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-defeasibly-dot-gen799)
   (depends-on declare min_imprisonment movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen517 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_min $? ) ) ( test ( eq ( class ?gen517 ) min_imprisonment ) ) ( not ( and ?gen524 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen523 & : ( >= ?gen523 1 ) ) ) ?gen517 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen519 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen519 ) ) ) ) ) ) => ?gen517 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_life_threatening_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-defeasibly-gen801)
   (depends-on declare movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen524 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen523 & : ( >= ?gen523 1 ) ) ) ?gen517 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen519 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen519 ) ) ) ) ( test ( eq ( class ?gen517 ) min_imprisonment ) ) => ?gen517 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_min ?gen524 ) )"))

([pn_movement_restrct_life_threatening_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-overruled-dot-gen803)
   (depends-on declare min_imprisonment movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen517 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen520 ) ( negative-overruled $?gen521 & : ( subseq-pos ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen520 $$$ $?gen521 ) ) ) ) ( test ( eq ( class ?gen517 ) min_imprisonment ) ) ( not ( and ?gen524 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen523 & : ( >= ?gen523 1 ) ) ) ?gen517 <- ( min_imprisonment ( positive-defeated $?gen519 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen519 ) ) ) ) ) ) => ( calc ( bind $?gen522 ( delete-member$ $?gen521 ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen520 ) ) ) ) ?gen517 <- ( min_imprisonment ( negative-overruled $?gen522 ) )"))

([pn_movement_restrct_life_threatening_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-overruled-gen805)
   (depends-on declare movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen524 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen523 & : ( >= ?gen523 1 ) ) ) ?gen517 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen520 ) ( negative-overruled $?gen521 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen520 $$$ $?gen521 ) ) ) ) ( positive-defeated $?gen519 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen519 ) ) ) ) ( test ( eq ( class ?gen517 ) min_imprisonment ) ) => ( calc ( bind $?gen522 ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen520 $?gen521 ) ) ) ?gen517 <- ( min_imprisonment ( negative-overruled $?gen522 ) )"))

([pn_movement_restrct_life_threatening_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-support-gen807)
   (depends-on declare movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen516 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen517 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen519 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_min ?gen516 $$$ $?gen519 ) ) ) ) ) ( test ( eq ( class ?gen517 ) min_imprisonment ) ) => ( calc ( bind $?gen522 ( create$ pn_movement_restrct_life_threatening_min ?gen516 $?gen519 ) ) ) ?gen517 <- ( min_imprisonment ( positive-support $?gen522 ) )"))

([pn_movement_restrct_on_duty_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-defeasibly-dot-gen809)
   (depends-on declare max_imprisonment movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_on_duty_max] ) ) ) ?gen508 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_max $? ) ) ( test ( eq ( class ?gen508 ) max_imprisonment ) ) ( not ( and ?gen515 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen514 & : ( >= ?gen514 1 ) ) ) ?gen508 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen510 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen510 ) ) ) ) ) ) => ?gen508 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_on_duty_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-defeasibly-gen811)
   (depends-on declare movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_on_duty_max] ) ) ) ?gen515 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen514 & : ( >= ?gen514 1 ) ) ) ?gen508 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen510 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen510 ) ) ) ) ( test ( eq ( class ?gen508 ) max_imprisonment ) ) => ?gen508 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_max ?gen515 ) )"))

([pn_movement_restrct_on_duty_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-overruled-dot-gen813)
   (depends-on declare max_imprisonment movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_on_duty_max] ) ) ) ?gen508 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen511 ) ( negative-overruled $?gen512 & : ( subseq-pos ( create$ pn_movement_restrct_on_duty_max-overruled $?gen511 $$$ $?gen512 ) ) ) ) ( test ( eq ( class ?gen508 ) max_imprisonment ) ) ( not ( and ?gen515 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen514 & : ( >= ?gen514 1 ) ) ) ?gen508 <- ( max_imprisonment ( positive-defeated $?gen510 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen510 ) ) ) ) ) ) => ( calc ( bind $?gen513 ( delete-member$ $?gen512 ( create$ pn_movement_restrct_on_duty_max-overruled $?gen511 ) ) ) ) ?gen508 <- ( max_imprisonment ( negative-overruled $?gen513 ) )"))

([pn_movement_restrct_on_duty_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-overruled-gen815)
   (depends-on declare movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_on_duty_max] ) ) ) ?gen515 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen514 & : ( >= ?gen514 1 ) ) ) ?gen508 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen511 ) ( negative-overruled $?gen512 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_max-overruled $?gen511 $$$ $?gen512 ) ) ) ) ( positive-defeated $?gen510 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen510 ) ) ) ) ( test ( eq ( class ?gen508 ) max_imprisonment ) ) => ( calc ( bind $?gen513 ( create$ pn_movement_restrct_on_duty_max-overruled $?gen511 $?gen512 ) ) ) ?gen508 <- ( max_imprisonment ( negative-overruled $?gen513 ) )"))

([pn_movement_restrct_on_duty_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-support-gen817)
   (depends-on declare movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_on_duty_max] ) ) ) ?gen507 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen508 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen510 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_max ?gen507 $$$ $?gen510 ) ) ) ) ) ( test ( eq ( class ?gen508 ) max_imprisonment ) ) => ( calc ( bind $?gen513 ( create$ pn_movement_restrct_on_duty_max ?gen507 $?gen510 ) ) ) ?gen508 <- ( max_imprisonment ( positive-support $?gen513 ) )"))

([pn_movement_restrct_on_duty_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-defeasibly-dot-gen819)
   (depends-on declare min_imprisonment movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_on_duty_min] ) ) ) ?gen499 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_min $? ) ) ( test ( eq ( class ?gen499 ) min_imprisonment ) ) ( not ( and ?gen506 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen505 & : ( >= ?gen505 1 ) ) ) ?gen499 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen501 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen501 ) ) ) ) ) ) => ?gen499 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_on_duty_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-defeasibly-gen821)
   (depends-on declare movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_on_duty_min] ) ) ) ?gen506 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen505 & : ( >= ?gen505 1 ) ) ) ?gen499 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen501 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen501 ) ) ) ) ( test ( eq ( class ?gen499 ) min_imprisonment ) ) => ?gen499 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_min ?gen506 ) )"))

([pn_movement_restrct_on_duty_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-overruled-dot-gen823)
   (depends-on declare min_imprisonment movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_on_duty_min] ) ) ) ?gen499 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen502 ) ( negative-overruled $?gen503 & : ( subseq-pos ( create$ pn_movement_restrct_on_duty_min-overruled $?gen502 $$$ $?gen503 ) ) ) ) ( test ( eq ( class ?gen499 ) min_imprisonment ) ) ( not ( and ?gen506 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen505 & : ( >= ?gen505 1 ) ) ) ?gen499 <- ( min_imprisonment ( positive-defeated $?gen501 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen501 ) ) ) ) ) ) => ( calc ( bind $?gen504 ( delete-member$ $?gen503 ( create$ pn_movement_restrct_on_duty_min-overruled $?gen502 ) ) ) ) ?gen499 <- ( min_imprisonment ( negative-overruled $?gen504 ) )"))

([pn_movement_restrct_on_duty_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-overruled-gen825)
   (depends-on declare movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_on_duty_min] ) ) ) ?gen506 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen505 & : ( >= ?gen505 1 ) ) ) ?gen499 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen502 ) ( negative-overruled $?gen503 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_min-overruled $?gen502 $$$ $?gen503 ) ) ) ) ( positive-defeated $?gen501 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen501 ) ) ) ) ( test ( eq ( class ?gen499 ) min_imprisonment ) ) => ( calc ( bind $?gen504 ( create$ pn_movement_restrct_on_duty_min-overruled $?gen502 $?gen503 ) ) ) ?gen499 <- ( min_imprisonment ( negative-overruled $?gen504 ) )"))

([pn_movement_restrct_on_duty_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-support-gen827)
   (depends-on declare movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_on_duty_min] ) ) ) ?gen498 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen499 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen501 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_min ?gen498 $$$ $?gen501 ) ) ) ) ) ( test ( eq ( class ?gen499 ) min_imprisonment ) ) => ( calc ( bind $?gen504 ( create$ pn_movement_restrct_on_duty_min ?gen498 $?gen501 ) ) ) ?gen499 <- ( min_imprisonment ( positive-support $?gen504 ) )"))

([pn_movement_restrct_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-defeasibly-dot-gen829)
   (depends-on declare max_imprisonment movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_max] ) ) ) ?gen490 <- ( max_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_max $? ) ) ( test ( eq ( class ?gen490 ) max_imprisonment ) ) ( not ( and ?gen497 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen496 & : ( >= ?gen496 1 ) ) ) ?gen490 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen492 & : ( not ( member$ pn_movement_restrct_max $?gen492 ) ) ) ) ) ) => ?gen490 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-defeasibly-gen831)
   (depends-on declare movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_max] ) ) ) ?gen497 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen496 & : ( >= ?gen496 1 ) ) ) ?gen490 <- ( max_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen492 & : ( not ( member$ pn_movement_restrct_max $?gen492 ) ) ) ) ( test ( eq ( class ?gen490 ) max_imprisonment ) ) => ?gen490 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_max ?gen497 ) )"))

([pn_movement_restrct_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-overruled-dot-gen833)
   (depends-on declare max_imprisonment movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_max] ) ) ) ?gen490 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen493 ) ( negative-overruled $?gen494 & : ( subseq-pos ( create$ pn_movement_restrct_max-overruled $?gen493 $$$ $?gen494 ) ) ) ) ( test ( eq ( class ?gen490 ) max_imprisonment ) ) ( not ( and ?gen497 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen496 & : ( >= ?gen496 1 ) ) ) ?gen490 <- ( max_imprisonment ( positive-defeated $?gen492 & : ( not ( member$ pn_movement_restrct_max $?gen492 ) ) ) ) ) ) => ( calc ( bind $?gen495 ( delete-member$ $?gen494 ( create$ pn_movement_restrct_max-overruled $?gen493 ) ) ) ) ?gen490 <- ( max_imprisonment ( negative-overruled $?gen495 ) )"))

([pn_movement_restrct_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-overruled-gen835)
   (depends-on declare movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_max] ) ) ) ?gen497 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen496 & : ( >= ?gen496 1 ) ) ) ?gen490 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen493 ) ( negative-overruled $?gen494 & : ( not ( subseq-pos ( create$ pn_movement_restrct_max-overruled $?gen493 $$$ $?gen494 ) ) ) ) ( positive-defeated $?gen492 & : ( not ( member$ pn_movement_restrct_max $?gen492 ) ) ) ) ( test ( eq ( class ?gen490 ) max_imprisonment ) ) => ( calc ( bind $?gen495 ( create$ pn_movement_restrct_max-overruled $?gen493 $?gen494 ) ) ) ?gen490 <- ( max_imprisonment ( negative-overruled $?gen495 ) )"))

([pn_movement_restrct_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-support-gen837)
   (depends-on declare movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_max] ) ) ) ?gen489 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen490 <- ( max_imprisonment ( value 1 ) ( positive-support $?gen492 & : ( not ( subseq-pos ( create$ pn_movement_restrct_max ?gen489 $$$ $?gen492 ) ) ) ) ) ( test ( eq ( class ?gen490 ) max_imprisonment ) ) => ( calc ( bind $?gen495 ( create$ pn_movement_restrct_max ?gen489 $?gen492 ) ) ) ?gen490 <- ( max_imprisonment ( positive-support $?gen495 ) )"))

([pn_movement_restrct_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-defeasibly-dot-gen839)
   (depends-on declare min_imprisonment movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_min] ) ) ) ?gen481 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_min $? ) ) ( test ( eq ( class ?gen481 ) min_imprisonment ) ) ( not ( and ?gen488 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen487 & : ( >= ?gen487 1 ) ) ) ?gen481 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen483 & : ( not ( member$ pn_movement_restrct_min $?gen483 ) ) ) ) ) ) => ?gen481 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-defeasibly-gen841)
   (depends-on declare movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_min] ) ) ) ?gen488 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen487 & : ( >= ?gen487 1 ) ) ) ?gen481 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen483 & : ( not ( member$ pn_movement_restrct_min $?gen483 ) ) ) ) ( test ( eq ( class ?gen481 ) min_imprisonment ) ) => ?gen481 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_min ?gen488 ) )"))

([pn_movement_restrct_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-overruled-dot-gen843)
   (depends-on declare min_imprisonment movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_min] ) ) ) ?gen481 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen484 ) ( negative-overruled $?gen485 & : ( subseq-pos ( create$ pn_movement_restrct_min-overruled $?gen484 $$$ $?gen485 ) ) ) ) ( test ( eq ( class ?gen481 ) min_imprisonment ) ) ( not ( and ?gen488 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen487 & : ( >= ?gen487 1 ) ) ) ?gen481 <- ( min_imprisonment ( positive-defeated $?gen483 & : ( not ( member$ pn_movement_restrct_min $?gen483 ) ) ) ) ) ) => ( calc ( bind $?gen486 ( delete-member$ $?gen485 ( create$ pn_movement_restrct_min-overruled $?gen484 ) ) ) ) ?gen481 <- ( min_imprisonment ( negative-overruled $?gen486 ) )"))

([pn_movement_restrct_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-overruled-gen845)
   (depends-on declare movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_min] ) ) ) ?gen488 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen487 & : ( >= ?gen487 1 ) ) ) ?gen481 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen484 ) ( negative-overruled $?gen485 & : ( not ( subseq-pos ( create$ pn_movement_restrct_min-overruled $?gen484 $$$ $?gen485 ) ) ) ) ( positive-defeated $?gen483 & : ( not ( member$ pn_movement_restrct_min $?gen483 ) ) ) ) ( test ( eq ( class ?gen481 ) min_imprisonment ) ) => ( calc ( bind $?gen486 ( create$ pn_movement_restrct_min-overruled $?gen484 $?gen485 ) ) ) ?gen481 <- ( min_imprisonment ( negative-overruled $?gen486 ) )"))

([pn_movement_restrct_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-support-gen847)
   (depends-on declare movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_min] ) ) ) ?gen480 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen481 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen483 & : ( not ( subseq-pos ( create$ pn_movement_restrct_min ?gen480 $$$ $?gen483 ) ) ) ) ) ( test ( eq ( class ?gen481 ) min_imprisonment ) ) => ( calc ( bind $?gen486 ( create$ pn_movement_restrct_min ?gen480 $?gen483 ) ) ) ?gen481 <- ( min_imprisonment ( positive-support $?gen486 ) )"))

([pn_psy_abuse_on_duty_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-defeasibly-dot-gen849)
   (depends-on declare max_imprisonment psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_on_duty_max] ) ) ) ?gen472 <- ( max_imprisonment ( value 8 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_max $? ) ) ( test ( eq ( class ?gen472 ) max_imprisonment ) ) ( not ( and ?gen479 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen478 & : ( >= ?gen478 1 ) ) ) ?gen472 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen474 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen474 ) ) ) ) ) ) => ?gen472 <- ( max_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_on_duty_max-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-defeasibly-gen851)
   (depends-on declare psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_on_duty_max] ) ) ) ?gen479 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen478 & : ( >= ?gen478 1 ) ) ) ?gen472 <- ( max_imprisonment ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen474 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen474 ) ) ) ) ( test ( eq ( class ?gen472 ) max_imprisonment ) ) => ?gen472 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_max ?gen479 ) )"))

([pn_psy_abuse_on_duty_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-overruled-dot-gen853)
   (depends-on declare max_imprisonment psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_on_duty_max] ) ) ) ?gen472 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen475 ) ( negative-overruled $?gen476 & : ( subseq-pos ( create$ pn_psy_abuse_on_duty_max-overruled $?gen475 $$$ $?gen476 ) ) ) ) ( test ( eq ( class ?gen472 ) max_imprisonment ) ) ( not ( and ?gen479 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen478 & : ( >= ?gen478 1 ) ) ) ?gen472 <- ( max_imprisonment ( positive-defeated $?gen474 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen474 ) ) ) ) ) ) => ( calc ( bind $?gen477 ( delete-member$ $?gen476 ( create$ pn_psy_abuse_on_duty_max-overruled $?gen475 ) ) ) ) ?gen472 <- ( max_imprisonment ( negative-overruled $?gen477 ) )"))

([pn_psy_abuse_on_duty_max-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-overruled-gen855)
   (depends-on declare psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_on_duty_max] ) ) ) ?gen479 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen478 & : ( >= ?gen478 1 ) ) ) ?gen472 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen475 ) ( negative-overruled $?gen476 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_max-overruled $?gen475 $$$ $?gen476 ) ) ) ) ( positive-defeated $?gen474 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen474 ) ) ) ) ( test ( eq ( class ?gen472 ) max_imprisonment ) ) => ( calc ( bind $?gen477 ( create$ pn_psy_abuse_on_duty_max-overruled $?gen475 $?gen476 ) ) ) ?gen472 <- ( max_imprisonment ( negative-overruled $?gen477 ) )"))

([pn_psy_abuse_on_duty_max-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-support-gen857)
   (depends-on declare psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_on_duty_max] ) ) ) ?gen471 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ?gen472 <- ( max_imprisonment ( value 8 ) ( positive-support $?gen474 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_max ?gen471 $$$ $?gen474 ) ) ) ) ) ( test ( eq ( class ?gen472 ) max_imprisonment ) ) => ( calc ( bind $?gen477 ( create$ pn_psy_abuse_on_duty_max ?gen471 $?gen474 ) ) ) ?gen472 <- ( max_imprisonment ( positive-support $?gen477 ) )"))

([pn_psy_abuse_on_duty_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-defeasibly-dot-gen859)
   (depends-on declare min_imprisonment psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_on_duty_min] ) ) ) ?gen463 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_min $? ) ) ( test ( eq ( class ?gen463 ) min_imprisonment ) ) ( not ( and ?gen470 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen469 & : ( >= ?gen469 1 ) ) ) ?gen463 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen465 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen465 ) ) ) ) ) ) => ?gen463 <- ( min_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_on_duty_min-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-defeasibly-gen861)
   (depends-on declare psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_on_duty_min] ) ) ) ?gen470 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen469 & : ( >= ?gen469 1 ) ) ) ?gen463 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen465 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen465 ) ) ) ) ( test ( eq ( class ?gen463 ) min_imprisonment ) ) => ?gen463 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_min ?gen470 ) )"))

([pn_psy_abuse_on_duty_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-overruled-dot-gen863)
   (depends-on declare min_imprisonment psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_on_duty_min] ) ) ) ?gen463 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen466 ) ( negative-overruled $?gen467 & : ( subseq-pos ( create$ pn_psy_abuse_on_duty_min-overruled $?gen466 $$$ $?gen467 ) ) ) ) ( test ( eq ( class ?gen463 ) min_imprisonment ) ) ( not ( and ?gen470 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen469 & : ( >= ?gen469 1 ) ) ) ?gen463 <- ( min_imprisonment ( positive-defeated $?gen465 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen465 ) ) ) ) ) ) => ( calc ( bind $?gen468 ( delete-member$ $?gen467 ( create$ pn_psy_abuse_on_duty_min-overruled $?gen466 ) ) ) ) ?gen463 <- ( min_imprisonment ( negative-overruled $?gen468 ) )"))

([pn_psy_abuse_on_duty_min-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-overruled-gen865)
   (depends-on declare psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_on_duty_min] ) ) ) ?gen470 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen469 & : ( >= ?gen469 1 ) ) ) ?gen463 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen466 ) ( negative-overruled $?gen467 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_min-overruled $?gen466 $$$ $?gen467 ) ) ) ) ( positive-defeated $?gen465 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen465 ) ) ) ) ( test ( eq ( class ?gen463 ) min_imprisonment ) ) => ( calc ( bind $?gen468 ( create$ pn_psy_abuse_on_duty_min-overruled $?gen466 $?gen467 ) ) ) ?gen463 <- ( min_imprisonment ( negative-overruled $?gen468 ) )"))

([pn_psy_abuse_on_duty_min-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-support-gen867)
   (depends-on declare psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_on_duty_min] ) ) ) ?gen462 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ?gen463 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen465 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_min ?gen462 $$$ $?gen465 ) ) ) ) ) ( test ( eq ( class ?gen463 ) min_imprisonment ) ) => ( calc ( bind $?gen468 ( create$ pn_psy_abuse_on_duty_min ?gen462 $?gen465 ) ) ) ?gen463 <- ( min_imprisonment ( positive-support $?gen468 ) )"))

([pn_psy_abuse_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-defeasibly-dot-gen869)
   (depends-on declare max_imprisonment psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_max] ) ) ) ?gen454 <- ( max_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_max $? ) ) ( test ( eq ( class ?gen454 ) max_imprisonment ) ) ( not ( and ?gen461 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen460 & : ( >= ?gen460 1 ) ) ) ?gen454 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen456 & : ( not ( member$ pn_psy_abuse_max $?gen456 ) ) ) ) ) ) => ?gen454 <- ( max_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_max-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-defeasibly-gen871)
   (depends-on declare psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_max] ) ) ) ?gen461 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen460 & : ( >= ?gen460 1 ) ) ) ?gen454 <- ( max_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen456 & : ( not ( member$ pn_psy_abuse_max $?gen456 ) ) ) ) ( test ( eq ( class ?gen454 ) max_imprisonment ) ) => ?gen454 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_max ?gen461 ) )"))

([pn_psy_abuse_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-overruled-dot-gen873)
   (depends-on declare max_imprisonment psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_max] ) ) ) ?gen454 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen457 ) ( negative-overruled $?gen458 & : ( subseq-pos ( create$ pn_psy_abuse_max-overruled $?gen457 $$$ $?gen458 ) ) ) ) ( test ( eq ( class ?gen454 ) max_imprisonment ) ) ( not ( and ?gen461 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen460 & : ( >= ?gen460 1 ) ) ) ?gen454 <- ( max_imprisonment ( positive-defeated $?gen456 & : ( not ( member$ pn_psy_abuse_max $?gen456 ) ) ) ) ) ) => ( calc ( bind $?gen459 ( delete-member$ $?gen458 ( create$ pn_psy_abuse_max-overruled $?gen457 ) ) ) ) ?gen454 <- ( max_imprisonment ( negative-overruled $?gen459 ) )"))

([pn_psy_abuse_max-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-overruled-gen875)
   (depends-on declare psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_max] ) ) ) ?gen461 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen460 & : ( >= ?gen460 1 ) ) ) ?gen454 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen457 ) ( negative-overruled $?gen458 & : ( not ( subseq-pos ( create$ pn_psy_abuse_max-overruled $?gen457 $$$ $?gen458 ) ) ) ) ( positive-defeated $?gen456 & : ( not ( member$ pn_psy_abuse_max $?gen456 ) ) ) ) ( test ( eq ( class ?gen454 ) max_imprisonment ) ) => ( calc ( bind $?gen459 ( create$ pn_psy_abuse_max-overruled $?gen457 $?gen458 ) ) ) ?gen454 <- ( max_imprisonment ( negative-overruled $?gen459 ) )"))

([pn_psy_abuse_max-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-support-gen877)
   (depends-on declare psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_max] ) ) ) ?gen453 <- ( psychological_abuse ( defendant ?Defendant ) ) ?gen454 <- ( max_imprisonment ( value 3 ) ( positive-support $?gen456 & : ( not ( subseq-pos ( create$ pn_psy_abuse_max ?gen453 $$$ $?gen456 ) ) ) ) ) ( test ( eq ( class ?gen454 ) max_imprisonment ) ) => ( calc ( bind $?gen459 ( create$ pn_psy_abuse_max ?gen453 $?gen456 ) ) ) ?gen454 <- ( max_imprisonment ( positive-support $?gen459 ) )"))

([pn_psy_abuse_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-defeasibly-dot-gen879)
   (depends-on declare min_imprisonment psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_min] ) ) ) ?gen445 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_min $? ) ) ( test ( eq ( class ?gen445 ) min_imprisonment ) ) ( not ( and ?gen452 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen447 & : ( not ( member$ pn_psy_abuse_min $?gen447 ) ) ) ) ) ) => ?gen445 <- ( min_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_min-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-defeasibly-gen881)
   (depends-on declare psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_min] ) ) ) ?gen452 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen447 & : ( not ( member$ pn_psy_abuse_min $?gen447 ) ) ) ) ( test ( eq ( class ?gen445 ) min_imprisonment ) ) => ?gen445 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_min ?gen452 ) )"))

([pn_psy_abuse_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-overruled-dot-gen883)
   (depends-on declare min_imprisonment psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_min] ) ) ) ?gen445 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen448 ) ( negative-overruled $?gen449 & : ( subseq-pos ( create$ pn_psy_abuse_min-overruled $?gen448 $$$ $?gen449 ) ) ) ) ( test ( eq ( class ?gen445 ) min_imprisonment ) ) ( not ( and ?gen452 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( min_imprisonment ( positive-defeated $?gen447 & : ( not ( member$ pn_psy_abuse_min $?gen447 ) ) ) ) ) ) => ( calc ( bind $?gen450 ( delete-member$ $?gen449 ( create$ pn_psy_abuse_min-overruled $?gen448 ) ) ) ) ?gen445 <- ( min_imprisonment ( negative-overruled $?gen450 ) )"))

([pn_psy_abuse_min-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-overruled-gen885)
   (depends-on declare psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_min] ) ) ) ?gen452 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen448 ) ( negative-overruled $?gen449 & : ( not ( subseq-pos ( create$ pn_psy_abuse_min-overruled $?gen448 $$$ $?gen449 ) ) ) ) ( positive-defeated $?gen447 & : ( not ( member$ pn_psy_abuse_min $?gen447 ) ) ) ) ( test ( eq ( class ?gen445 ) min_imprisonment ) ) => ( calc ( bind $?gen450 ( create$ pn_psy_abuse_min-overruled $?gen448 $?gen449 ) ) ) ?gen445 <- ( min_imprisonment ( negative-overruled $?gen450 ) )"))

([pn_psy_abuse_min-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-support-gen887)
   (depends-on declare psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_min] ) ) ) ?gen444 <- ( psychological_abuse ( defendant ?Defendant ) ) ?gen445 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen447 & : ( not ( subseq-pos ( create$ pn_psy_abuse_min ?gen444 $$$ $?gen447 ) ) ) ) ) ( test ( eq ( class ?gen445 ) min_imprisonment ) ) => ( calc ( bind $?gen450 ( create$ pn_psy_abuse_min ?gen444 $?gen447 ) ) ) ?gen445 <- ( min_imprisonment ( positive-support $?gen450 ) )"))

([rule10_9-defeated-dot] of derived-attribute-rule
   (pos-name rule10_9-defeated-dot-gen889)
   (depends-on declare coercion_abuse_on_duty coercion_abuse_multiple_victims)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule10_9] ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen439 & : ( subseq-pos ( create$ rule10_9-defeated rule9 $$$ $?gen439 ) ) ) ) ( test ( eq ( class ?gen436 ) coercion_abuse_on_duty ) ) ( not ?gen443 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ) => ( calc ( bind $?gen438 ( delete-member$ $?gen439 ( create$ rule10_9-defeated rule9 ) ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( positive-defeated $?gen438 ) )"))

([rule10_9-defeated] of derived-attribute-rule
   (pos-name rule10_9-defeated-gen891)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule10_9] ) ) ) ?gen443 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen439 & : ( not ( subseq-pos ( create$ rule10_9-defeated rule9 $$$ $?gen439 ) ) ) ) ) ( test ( eq ( class ?gen436 ) coercion_abuse_on_duty ) ) => ( calc ( bind $?gen438 ( create$ rule10_9-defeated rule9 $?gen439 ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( positive-defeated $?gen438 ) )"))

([rule10_9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10_9-defeasibly-dot-gen893)
   (depends-on declare coercion_abuse_on_duty coercion_abuse_multiple_victims coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10_9] ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule10_9 $? ) ) ( test ( eq ( class ?gen436 ) coercion_abuse_on_duty ) ) ( not ( and ?gen443 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen438 & : ( not ( member$ rule10_9 $?gen438 ) ) ) ) ) ) => ?gen436 <- ( coercion_abuse_on_duty ( negative 0 ) )"))

([rule10_9-defeasibly] of derived-attribute-rule
   (pos-name rule10_9-defeasibly-gen895)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10_9] ) ) ) ?gen443 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen438 & : ( not ( member$ rule10_9 $?gen438 ) ) ) ) ( test ( eq ( class ?gen436 ) coercion_abuse_on_duty ) ) => ?gen436 <- ( coercion_abuse_on_duty ( negative 1 ) ( negative-derivator rule10_9 ?gen443 ) )"))

([rule10_9-overruled-dot] of derived-attribute-rule
   (pos-name rule10_9-overruled-dot-gen897)
   (depends-on declare coercion_abuse_on_duty coercion_abuse_multiple_victims coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10_9] ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen439 ) ( positive-overruled $?gen440 & : ( subseq-pos ( create$ rule10_9-overruled $?gen439 $$$ $?gen440 ) ) ) ) ( test ( eq ( class ?gen436 ) coercion_abuse_on_duty ) ) ( not ( and ?gen443 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( negative-defeated $?gen438 & : ( not ( member$ rule10_9 $?gen438 ) ) ) ) ) ) => ( calc ( bind $?gen441 ( delete-member$ $?gen440 ( create$ rule10_9-overruled $?gen439 ) ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( positive-overruled $?gen441 ) )"))

([rule10_9-overruled] of derived-attribute-rule
   (pos-name rule10_9-overruled-gen899)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10_9] ) ) ) ?gen443 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen439 ) ( positive-overruled $?gen440 & : ( not ( subseq-pos ( create$ rule10_9-overruled $?gen439 $$$ $?gen440 ) ) ) ) ( negative-defeated $?gen438 & : ( not ( member$ rule10_9 $?gen438 ) ) ) ) ( test ( eq ( class ?gen436 ) coercion_abuse_on_duty ) ) => ( calc ( bind $?gen441 ( create$ rule10_9-overruled $?gen439 $?gen440 ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( positive-overruled $?gen441 ) )"))

([rule10_9-support] of derived-attribute-rule
   (pos-name rule10_9-support-gen901)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10_9] ) ) ) ?gen435 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ?gen436 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen438 & : ( not ( subseq-pos ( create$ rule10_9 ?gen435 $$$ $?gen438 ) ) ) ) ) ( test ( eq ( class ?gen436 ) coercion_abuse_on_duty ) ) => ( calc ( bind $?gen441 ( create$ rule10_9 ?gen435 $?gen438 ) ) ) ?gen436 <- ( coercion_abuse_on_duty ( negative-support $?gen441 ) )"))

([rule10_8-defeated-dot] of derived-attribute-rule
   (pos-name rule10_8-defeated-dot-gen903)
   (depends-on declare coercion_abuse_multiple_defendant coercion_abuse_multiple_victims)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule10_8] ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive-defeated $?gen430 & : ( subseq-pos ( create$ rule10_8-defeated rule8 $$$ $?gen430 ) ) ) ) ( test ( eq ( class ?gen427 ) coercion_abuse_multiple_defendant ) ) ( not ?gen434 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ) => ( calc ( bind $?gen429 ( delete-member$ $?gen430 ( create$ rule10_8-defeated rule8 ) ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( positive-defeated $?gen429 ) )"))

([rule10_8-defeated] of derived-attribute-rule
   (pos-name rule10_8-defeated-gen905)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule10_8] ) ) ) ?gen434 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive-defeated $?gen430 & : ( not ( subseq-pos ( create$ rule10_8-defeated rule8 $$$ $?gen430 ) ) ) ) ) ( test ( eq ( class ?gen427 ) coercion_abuse_multiple_defendant ) ) => ( calc ( bind $?gen429 ( create$ rule10_8-defeated rule8 $?gen430 ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( positive-defeated $?gen429 ) )"))

([rule10_8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10_8-defeasibly-dot-gen907)
   (depends-on declare coercion_abuse_multiple_defendant coercion_abuse_multiple_victims coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10_8] ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule10_8 $? ) ) ( test ( eq ( class ?gen427 ) coercion_abuse_multiple_defendant ) ) ( not ( and ?gen434 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( positive ~ 2 ) ( negative-overruled $?gen429 & : ( not ( member$ rule10_8 $?gen429 ) ) ) ) ) ) => ?gen427 <- ( coercion_abuse_multiple_defendant ( negative 0 ) )"))

([rule10_8-defeasibly] of derived-attribute-rule
   (pos-name rule10_8-defeasibly-gen909)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10_8] ) ) ) ?gen434 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen429 & : ( not ( member$ rule10_8 $?gen429 ) ) ) ) ( test ( eq ( class ?gen427 ) coercion_abuse_multiple_defendant ) ) => ?gen427 <- ( coercion_abuse_multiple_defendant ( negative 1 ) ( negative-derivator rule10_8 ?gen434 ) )"))

([rule10_8-overruled-dot] of derived-attribute-rule
   (pos-name rule10_8-overruled-dot-gen911)
   (depends-on declare coercion_abuse_multiple_defendant coercion_abuse_multiple_victims coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10_8] ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive-support $?gen430 ) ( positive-overruled $?gen431 & : ( subseq-pos ( create$ rule10_8-overruled $?gen430 $$$ $?gen431 ) ) ) ) ( test ( eq ( class ?gen427 ) coercion_abuse_multiple_defendant ) ) ( not ( and ?gen434 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( negative-defeated $?gen429 & : ( not ( member$ rule10_8 $?gen429 ) ) ) ) ) ) => ( calc ( bind $?gen432 ( delete-member$ $?gen431 ( create$ rule10_8-overruled $?gen430 ) ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( positive-overruled $?gen432 ) )"))

([rule10_8-overruled] of derived-attribute-rule
   (pos-name rule10_8-overruled-gen913)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10_8] ) ) ) ?gen434 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive-support $?gen430 ) ( positive-overruled $?gen431 & : ( not ( subseq-pos ( create$ rule10_8-overruled $?gen430 $$$ $?gen431 ) ) ) ) ( negative-defeated $?gen429 & : ( not ( member$ rule10_8 $?gen429 ) ) ) ) ( test ( eq ( class ?gen427 ) coercion_abuse_multiple_defendant ) ) => ( calc ( bind $?gen432 ( create$ rule10_8-overruled $?gen430 $?gen431 ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( positive-overruled $?gen432 ) )"))

([rule10_8-support] of derived-attribute-rule
   (pos-name rule10_8-support-gen915)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10_8] ) ) ) ?gen426 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( negative-support $?gen429 & : ( not ( subseq-pos ( create$ rule10_8 ?gen426 $$$ $?gen429 ) ) ) ) ) ( test ( eq ( class ?gen427 ) coercion_abuse_multiple_defendant ) ) => ( calc ( bind $?gen432 ( create$ rule10_8 ?gen426 $?gen429 ) ) ) ?gen427 <- ( coercion_abuse_multiple_defendant ( negative-support $?gen432 ) )"))

([rule10_7-defeated-dot] of derived-attribute-rule
   (pos-name rule10_7-defeated-dot-gen917)
   (depends-on declare coercion_abuse coercion_abuse_multiple_victims)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule10_7] ) ) ) ?gen418 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-defeated $?gen421 & : ( subseq-pos ( create$ rule10_7-defeated rule7 $$$ $?gen421 ) ) ) ) ( test ( eq ( class ?gen418 ) coercion_abuse ) ) ( not ?gen425 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ) => ( calc ( bind $?gen420 ( delete-member$ $?gen421 ( create$ rule10_7-defeated rule7 ) ) ) ) ?gen418 <- ( coercion_abuse ( positive-defeated $?gen420 ) )"))

([rule10_7-defeated] of derived-attribute-rule
   (pos-name rule10_7-defeated-gen919)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule10_7] ) ) ) ?gen425 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-defeated $?gen421 & : ( not ( subseq-pos ( create$ rule10_7-defeated rule7 $$$ $?gen421 ) ) ) ) ) ( test ( eq ( class ?gen418 ) coercion_abuse ) ) => ( calc ( bind $?gen420 ( create$ rule10_7-defeated rule7 $?gen421 ) ) ) ?gen418 <- ( coercion_abuse ( positive-defeated $?gen420 ) )"))

([rule10_7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10_7-defeasibly-dot-gen921)
   (depends-on declare coercion_abuse coercion_abuse_multiple_victims coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10_7] ) ) ) ?gen418 <- ( coercion_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule10_7 $? ) ) ( test ( eq ( class ?gen418 ) coercion_abuse ) ) ( not ( and ?gen425 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( coercion_abuse ( positive ~ 2 ) ( negative-overruled $?gen420 & : ( not ( member$ rule10_7 $?gen420 ) ) ) ) ) ) => ?gen418 <- ( coercion_abuse ( negative 0 ) )"))

([rule10_7-defeasibly] of derived-attribute-rule
   (pos-name rule10_7-defeasibly-gen923)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10_7] ) ) ) ?gen425 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( coercion_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen420 & : ( not ( member$ rule10_7 $?gen420 ) ) ) ) ( test ( eq ( class ?gen418 ) coercion_abuse ) ) => ?gen418 <- ( coercion_abuse ( negative 1 ) ( negative-derivator rule10_7 ?gen425 ) )"))

([rule10_7-overruled-dot] of derived-attribute-rule
   (pos-name rule10_7-overruled-dot-gen925)
   (depends-on declare coercion_abuse coercion_abuse_multiple_victims coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10_7] ) ) ) ?gen418 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-support $?gen421 ) ( positive-overruled $?gen422 & : ( subseq-pos ( create$ rule10_7-overruled $?gen421 $$$ $?gen422 ) ) ) ) ( test ( eq ( class ?gen418 ) coercion_abuse ) ) ( not ( and ?gen425 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( coercion_abuse ( negative-defeated $?gen420 & : ( not ( member$ rule10_7 $?gen420 ) ) ) ) ) ) => ( calc ( bind $?gen423 ( delete-member$ $?gen422 ( create$ rule10_7-overruled $?gen421 ) ) ) ) ?gen418 <- ( coercion_abuse ( positive-overruled $?gen423 ) )"))

([rule10_7-overruled] of derived-attribute-rule
   (pos-name rule10_7-overruled-gen927)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10_7] ) ) ) ?gen425 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-support $?gen421 ) ( positive-overruled $?gen422 & : ( not ( subseq-pos ( create$ rule10_7-overruled $?gen421 $$$ $?gen422 ) ) ) ) ( negative-defeated $?gen420 & : ( not ( member$ rule10_7 $?gen420 ) ) ) ) ( test ( eq ( class ?gen418 ) coercion_abuse ) ) => ( calc ( bind $?gen423 ( create$ rule10_7-overruled $?gen421 $?gen422 ) ) ) ?gen418 <- ( coercion_abuse ( positive-overruled $?gen423 ) )"))

([rule10_7-support] of derived-attribute-rule
   (pos-name rule10_7-support-gen929)
   (depends-on declare coercion_abuse_multiple_victims coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10_7] ) ) ) ?gen417 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ?gen418 <- ( coercion_abuse ( defendant ?Defendant ) ( negative-support $?gen420 & : ( not ( subseq-pos ( create$ rule10_7 ?gen417 $$$ $?gen420 ) ) ) ) ) ( test ( eq ( class ?gen418 ) coercion_abuse ) ) => ( calc ( bind $?gen423 ( create$ rule10_7 ?gen417 $?gen420 ) ) ) ?gen418 <- ( coercion_abuse ( negative-support $?gen423 ) )"))

([rule10_4-defeated-dot] of derived-attribute-rule
   (pos-name rule10_4-defeated-dot-gen931)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_multiple_victims)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule10_4] ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen412 & : ( subseq-pos ( create$ rule10_4-defeated rule4 $$$ $?gen412 ) ) ) ) ( test ( eq ( class ?gen409 ) movement_restrictions_on_duty ) ) ( not ?gen416 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ) => ( calc ( bind $?gen411 ( delete-member$ $?gen412 ( create$ rule10_4-defeated rule4 ) ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( positive-defeated $?gen411 ) )"))

([rule10_4-defeated] of derived-attribute-rule
   (pos-name rule10_4-defeated-gen933)
   (depends-on declare coercion_abuse_multiple_victims movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule10_4] ) ) ) ?gen416 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen412 & : ( not ( subseq-pos ( create$ rule10_4-defeated rule4 $$$ $?gen412 ) ) ) ) ) ( test ( eq ( class ?gen409 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen411 ( create$ rule10_4-defeated rule4 $?gen412 ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( positive-defeated $?gen411 ) )"))

([rule10_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10_4-defeasibly-dot-gen935)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_multiple_victims movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10_4] ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule10_4 $? ) ) ( test ( eq ( class ?gen409 ) movement_restrictions_on_duty ) ) ( not ( and ?gen416 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen411 & : ( not ( member$ rule10_4 $?gen411 ) ) ) ) ) ) => ?gen409 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule10_4-defeasibly] of derived-attribute-rule
   (pos-name rule10_4-defeasibly-gen937)
   (depends-on declare coercion_abuse_multiple_victims movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10_4] ) ) ) ?gen416 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen411 & : ( not ( member$ rule10_4 $?gen411 ) ) ) ) ( test ( eq ( class ?gen409 ) movement_restrictions_on_duty ) ) => ?gen409 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule10_4 ?gen416 ) )"))

([rule10_4-overruled-dot] of derived-attribute-rule
   (pos-name rule10_4-overruled-dot-gen939)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_multiple_victims movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10_4] ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen412 ) ( positive-overruled $?gen413 & : ( subseq-pos ( create$ rule10_4-overruled $?gen412 $$$ $?gen413 ) ) ) ) ( test ( eq ( class ?gen409 ) movement_restrictions_on_duty ) ) ( not ( and ?gen416 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( negative-defeated $?gen411 & : ( not ( member$ rule10_4 $?gen411 ) ) ) ) ) ) => ( calc ( bind $?gen414 ( delete-member$ $?gen413 ( create$ rule10_4-overruled $?gen412 ) ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( positive-overruled $?gen414 ) )"))

([rule10_4-overruled] of derived-attribute-rule
   (pos-name rule10_4-overruled-gen941)
   (depends-on declare coercion_abuse_multiple_victims movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10_4] ) ) ) ?gen416 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen412 ) ( positive-overruled $?gen413 & : ( not ( subseq-pos ( create$ rule10_4-overruled $?gen412 $$$ $?gen413 ) ) ) ) ( negative-defeated $?gen411 & : ( not ( member$ rule10_4 $?gen411 ) ) ) ) ( test ( eq ( class ?gen409 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen414 ( create$ rule10_4-overruled $?gen412 $?gen413 ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( positive-overruled $?gen414 ) )"))

([rule10_4-support] of derived-attribute-rule
   (pos-name rule10_4-support-gen943)
   (depends-on declare coercion_abuse_multiple_victims movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10_4] ) ) ) ?gen408 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ?gen409 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen411 & : ( not ( subseq-pos ( create$ rule10_4 ?gen408 $$$ $?gen411 ) ) ) ) ) ( test ( eq ( class ?gen409 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen414 ( create$ rule10_4 ?gen408 $?gen411 ) ) ) ?gen409 <- ( movement_restrictions_on_duty ( negative-support $?gen414 ) )"))

([rule10_3-defeated-dot] of derived-attribute-rule
   (pos-name rule10_3-defeated-dot-gen945)
   (depends-on declare movement_restrictions coercion_abuse_multiple_victims)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule10_3] ) ) ) ?gen400 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen403 & : ( subseq-pos ( create$ rule10_3-defeated rule3 $$$ $?gen403 ) ) ) ) ( test ( eq ( class ?gen400 ) movement_restrictions ) ) ( not ?gen407 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ) => ( calc ( bind $?gen402 ( delete-member$ $?gen403 ( create$ rule10_3-defeated rule3 ) ) ) ) ?gen400 <- ( movement_restrictions ( positive-defeated $?gen402 ) )"))

([rule10_3-defeated] of derived-attribute-rule
   (pos-name rule10_3-defeated-gen947)
   (depends-on declare coercion_abuse_multiple_victims movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule10_3] ) ) ) ?gen407 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen403 & : ( not ( subseq-pos ( create$ rule10_3-defeated rule3 $$$ $?gen403 ) ) ) ) ) ( test ( eq ( class ?gen400 ) movement_restrictions ) ) => ( calc ( bind $?gen402 ( create$ rule10_3-defeated rule3 $?gen403 ) ) ) ?gen400 <- ( movement_restrictions ( positive-defeated $?gen402 ) )"))

([rule10_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10_3-defeasibly-dot-gen949)
   (depends-on declare movement_restrictions coercion_abuse_multiple_victims movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10_3] ) ) ) ?gen400 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule10_3 $? ) ) ( test ( eq ( class ?gen400 ) movement_restrictions ) ) ( not ( and ?gen407 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen402 & : ( not ( member$ rule10_3 $?gen402 ) ) ) ) ) ) => ?gen400 <- ( movement_restrictions ( negative 0 ) )"))

([rule10_3-defeasibly] of derived-attribute-rule
   (pos-name rule10_3-defeasibly-gen951)
   (depends-on declare coercion_abuse_multiple_victims movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10_3] ) ) ) ?gen407 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen402 & : ( not ( member$ rule10_3 $?gen402 ) ) ) ) ( test ( eq ( class ?gen400 ) movement_restrictions ) ) => ?gen400 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule10_3 ?gen407 ) )"))

([rule10_3-overruled-dot] of derived-attribute-rule
   (pos-name rule10_3-overruled-dot-gen953)
   (depends-on declare movement_restrictions coercion_abuse_multiple_victims movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10_3] ) ) ) ?gen400 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen403 ) ( positive-overruled $?gen404 & : ( subseq-pos ( create$ rule10_3-overruled $?gen403 $$$ $?gen404 ) ) ) ) ( test ( eq ( class ?gen400 ) movement_restrictions ) ) ( not ( and ?gen407 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( movement_restrictions ( negative-defeated $?gen402 & : ( not ( member$ rule10_3 $?gen402 ) ) ) ) ) ) => ( calc ( bind $?gen405 ( delete-member$ $?gen404 ( create$ rule10_3-overruled $?gen403 ) ) ) ) ?gen400 <- ( movement_restrictions ( positive-overruled $?gen405 ) )"))

([rule10_3-overruled] of derived-attribute-rule
   (pos-name rule10_3-overruled-gen955)
   (depends-on declare coercion_abuse_multiple_victims movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10_3] ) ) ) ?gen407 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen403 ) ( positive-overruled $?gen404 & : ( not ( subseq-pos ( create$ rule10_3-overruled $?gen403 $$$ $?gen404 ) ) ) ) ( negative-defeated $?gen402 & : ( not ( member$ rule10_3 $?gen402 ) ) ) ) ( test ( eq ( class ?gen400 ) movement_restrictions ) ) => ( calc ( bind $?gen405 ( create$ rule10_3-overruled $?gen403 $?gen404 ) ) ) ?gen400 <- ( movement_restrictions ( positive-overruled $?gen405 ) )"))

([rule10_3-support] of derived-attribute-rule
   (pos-name rule10_3-support-gen957)
   (depends-on declare coercion_abuse_multiple_victims movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10_3] ) ) ) ?gen399 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ?gen400 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen402 & : ( not ( subseq-pos ( create$ rule10_3 ?gen399 $$$ $?gen402 ) ) ) ) ) ( test ( eq ( class ?gen400 ) movement_restrictions ) ) => ( calc ( bind $?gen405 ( create$ rule10_3 ?gen399 $?gen402 ) ) ) ?gen400 <- ( movement_restrictions ( negative-support $?gen405 ) )"))

([rule10_2-defeated-dot] of derived-attribute-rule
   (pos-name rule10_2-defeated-dot-gen959)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_multiple_victims)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule10_2] ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen394 & : ( subseq-pos ( create$ rule10_2-defeated rule2 $$$ $?gen394 ) ) ) ) ( test ( eq ( class ?gen391 ) psychological_abuse_on_duty ) ) ( not ?gen398 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ) => ( calc ( bind $?gen393 ( delete-member$ $?gen394 ( create$ rule10_2-defeated rule2 ) ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( positive-defeated $?gen393 ) )"))

([rule10_2-defeated] of derived-attribute-rule
   (pos-name rule10_2-defeated-gen961)
   (depends-on declare coercion_abuse_multiple_victims psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule10_2] ) ) ) ?gen398 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen394 & : ( not ( subseq-pos ( create$ rule10_2-defeated rule2 $$$ $?gen394 ) ) ) ) ) ( test ( eq ( class ?gen391 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen393 ( create$ rule10_2-defeated rule2 $?gen394 ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( positive-defeated $?gen393 ) )"))

([rule10_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10_2-defeasibly-dot-gen963)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_multiple_victims psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10_2] ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule10_2 $? ) ) ( test ( eq ( class ?gen391 ) psychological_abuse_on_duty ) ) ( not ( and ?gen398 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen393 & : ( not ( member$ rule10_2 $?gen393 ) ) ) ) ) ) => ?gen391 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule10_2-defeasibly] of derived-attribute-rule
   (pos-name rule10_2-defeasibly-gen965)
   (depends-on declare coercion_abuse_multiple_victims psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10_2] ) ) ) ?gen398 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen393 & : ( not ( member$ rule10_2 $?gen393 ) ) ) ) ( test ( eq ( class ?gen391 ) psychological_abuse_on_duty ) ) => ?gen391 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule10_2 ?gen398 ) )"))

([rule10_2-overruled-dot] of derived-attribute-rule
   (pos-name rule10_2-overruled-dot-gen967)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_multiple_victims psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10_2] ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen394 ) ( positive-overruled $?gen395 & : ( subseq-pos ( create$ rule10_2-overruled $?gen394 $$$ $?gen395 ) ) ) ) ( test ( eq ( class ?gen391 ) psychological_abuse_on_duty ) ) ( not ( and ?gen398 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( negative-defeated $?gen393 & : ( not ( member$ rule10_2 $?gen393 ) ) ) ) ) ) => ( calc ( bind $?gen396 ( delete-member$ $?gen395 ( create$ rule10_2-overruled $?gen394 ) ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( positive-overruled $?gen396 ) )"))

([rule10_2-overruled] of derived-attribute-rule
   (pos-name rule10_2-overruled-gen969)
   (depends-on declare coercion_abuse_multiple_victims psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10_2] ) ) ) ?gen398 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen394 ) ( positive-overruled $?gen395 & : ( not ( subseq-pos ( create$ rule10_2-overruled $?gen394 $$$ $?gen395 ) ) ) ) ( negative-defeated $?gen393 & : ( not ( member$ rule10_2 $?gen393 ) ) ) ) ( test ( eq ( class ?gen391 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen396 ( create$ rule10_2-overruled $?gen394 $?gen395 ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( positive-overruled $?gen396 ) )"))

([rule10_2-support] of derived-attribute-rule
   (pos-name rule10_2-support-gen971)
   (depends-on declare coercion_abuse_multiple_victims psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10_2] ) ) ) ?gen390 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ?gen391 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen393 & : ( not ( subseq-pos ( create$ rule10_2 ?gen390 $$$ $?gen393 ) ) ) ) ) ( test ( eq ( class ?gen391 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen396 ( create$ rule10_2 ?gen390 $?gen393 ) ) ) ?gen391 <- ( psychological_abuse_on_duty ( negative-support $?gen396 ) )"))

([rule10_1-defeated-dot] of derived-attribute-rule
   (pos-name rule10_1-defeated-dot-gen973)
   (depends-on declare psychological_abuse coercion_abuse_multiple_victims)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule10_1] ) ) ) ?gen382 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen385 & : ( subseq-pos ( create$ rule10_1-defeated rule1 $$$ $?gen385 ) ) ) ) ( test ( eq ( class ?gen382 ) psychological_abuse ) ) ( not ?gen389 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ) => ( calc ( bind $?gen384 ( delete-member$ $?gen385 ( create$ rule10_1-defeated rule1 ) ) ) ) ?gen382 <- ( psychological_abuse ( positive-defeated $?gen384 ) )"))

([rule10_1-defeated] of derived-attribute-rule
   (pos-name rule10_1-defeated-gen975)
   (depends-on declare coercion_abuse_multiple_victims psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule10_1] ) ) ) ?gen389 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen385 & : ( not ( subseq-pos ( create$ rule10_1-defeated rule1 $$$ $?gen385 ) ) ) ) ) ( test ( eq ( class ?gen382 ) psychological_abuse ) ) => ( calc ( bind $?gen384 ( create$ rule10_1-defeated rule1 $?gen385 ) ) ) ?gen382 <- ( psychological_abuse ( positive-defeated $?gen384 ) )"))

([rule10_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10_1-defeasibly-dot-gen977)
   (depends-on declare psychological_abuse coercion_abuse_multiple_victims psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10_1] ) ) ) ?gen382 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule10_1 $? ) ) ( test ( eq ( class ?gen382 ) psychological_abuse ) ) ( not ( and ?gen389 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen384 & : ( not ( member$ rule10_1 $?gen384 ) ) ) ) ) ) => ?gen382 <- ( psychological_abuse ( negative 0 ) )"))

([rule10_1-defeasibly] of derived-attribute-rule
   (pos-name rule10_1-defeasibly-gen979)
   (depends-on declare coercion_abuse_multiple_victims psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10_1] ) ) ) ?gen389 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen384 & : ( not ( member$ rule10_1 $?gen384 ) ) ) ) ( test ( eq ( class ?gen382 ) psychological_abuse ) ) => ?gen382 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule10_1 ?gen389 ) )"))

([rule10_1-overruled-dot] of derived-attribute-rule
   (pos-name rule10_1-overruled-dot-gen981)
   (depends-on declare psychological_abuse coercion_abuse_multiple_victims psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10_1] ) ) ) ?gen382 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen385 ) ( positive-overruled $?gen386 & : ( subseq-pos ( create$ rule10_1-overruled $?gen385 $$$ $?gen386 ) ) ) ) ( test ( eq ( class ?gen382 ) psychological_abuse ) ) ( not ( and ?gen389 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( psychological_abuse ( negative-defeated $?gen384 & : ( not ( member$ rule10_1 $?gen384 ) ) ) ) ) ) => ( calc ( bind $?gen387 ( delete-member$ $?gen386 ( create$ rule10_1-overruled $?gen385 ) ) ) ) ?gen382 <- ( psychological_abuse ( positive-overruled $?gen387 ) )"))

([rule10_1-overruled] of derived-attribute-rule
   (pos-name rule10_1-overruled-gen983)
   (depends-on declare coercion_abuse_multiple_victims psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10_1] ) ) ) ?gen389 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen385 ) ( positive-overruled $?gen386 & : ( not ( subseq-pos ( create$ rule10_1-overruled $?gen385 $$$ $?gen386 ) ) ) ) ( negative-defeated $?gen384 & : ( not ( member$ rule10_1 $?gen384 ) ) ) ) ( test ( eq ( class ?gen382 ) psychological_abuse ) ) => ( calc ( bind $?gen387 ( create$ rule10_1-overruled $?gen385 $?gen386 ) ) ) ?gen382 <- ( psychological_abuse ( positive-overruled $?gen387 ) )"))

([rule10_1-support] of derived-attribute-rule
   (pos-name rule10_1-support-gen985)
   (depends-on declare coercion_abuse_multiple_victims psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10_1] ) ) ) ?gen381 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ?gen382 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen384 & : ( not ( subseq-pos ( create$ rule10_1 ?gen381 $$$ $?gen384 ) ) ) ) ) ( test ( eq ( class ?gen382 ) psychological_abuse ) ) => ( calc ( bind $?gen387 ( create$ rule10_1 ?gen381 $?gen384 ) ) ) ?gen382 <- ( psychological_abuse ( negative-support $?gen387 ) )"))

([rule10-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10-defeasibly-dot-gen987)
   (depends-on declare coercion_abuse_multiple_victims lc:case lc:case coercion_abuse_multiple_victims)
   (implies coercion_abuse_multiple_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10] ) ) ) ?gen371 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule10 $? ) ) ( test ( eq ( class ?gen371 ) coercion_abuse_multiple_victims ) ) ( not ( and ?gen378 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen377 & : ( >= ?gen377 1 ) ) ) ( test ( >= ?num_of_victims 2 ) ) ?gen380 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen371 <- ( coercion_abuse_multiple_victims ( negative ~ 2 ) ( positive-overruled $?gen373 & : ( not ( member$ rule10 $?gen373 ) ) ) ) ) ) => ?gen371 <- ( coercion_abuse_multiple_victims ( positive 0 ) )"))

([rule10-defeasibly] of derived-attribute-rule
   (pos-name rule10-defeasibly-gen989)
   (depends-on declare lc:case lc:case coercion_abuse_multiple_victims)
   (implies coercion_abuse_multiple_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10] ) ) ) ?gen378 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen377 & : ( >= ?gen377 1 ) ) ) ( test ( >= ?num_of_victims 2 ) ) ?gen380 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen371 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen373 & : ( not ( member$ rule10 $?gen373 ) ) ) ) ( test ( eq ( class ?gen371 ) coercion_abuse_multiple_victims ) ) => ?gen371 <- ( coercion_abuse_multiple_victims ( positive 1 ) ( positive-derivator rule10 ?gen378 ?gen380 ) )"))

([rule10-overruled-dot] of derived-attribute-rule
   (pos-name rule10-overruled-dot-gen991)
   (depends-on declare coercion_abuse_multiple_victims lc:case lc:case coercion_abuse_multiple_victims)
   (implies coercion_abuse_multiple_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10] ) ) ) ?gen371 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( negative-support $?gen374 ) ( negative-overruled $?gen375 & : ( subseq-pos ( create$ rule10-overruled $?gen374 $$$ $?gen375 ) ) ) ) ( test ( eq ( class ?gen371 ) coercion_abuse_multiple_victims ) ) ( not ( and ?gen378 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen377 & : ( >= ?gen377 1 ) ) ) ( test ( >= ?num_of_victims 2 ) ) ?gen380 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen371 <- ( coercion_abuse_multiple_victims ( positive-defeated $?gen373 & : ( not ( member$ rule10 $?gen373 ) ) ) ) ) ) => ( calc ( bind $?gen376 ( delete-member$ $?gen375 ( create$ rule10-overruled $?gen374 ) ) ) ) ?gen371 <- ( coercion_abuse_multiple_victims ( negative-overruled $?gen376 ) )"))

([rule10-overruled] of derived-attribute-rule
   (pos-name rule10-overruled-gen993)
   (depends-on declare lc:case lc:case coercion_abuse_multiple_victims)
   (implies coercion_abuse_multiple_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10] ) ) ) ?gen378 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen377 & : ( >= ?gen377 1 ) ) ) ( test ( >= ?num_of_victims 2 ) ) ?gen380 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen371 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( negative-support $?gen374 ) ( negative-overruled $?gen375 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen374 $$$ $?gen375 ) ) ) ) ( positive-defeated $?gen373 & : ( not ( member$ rule10 $?gen373 ) ) ) ) ( test ( eq ( class ?gen371 ) coercion_abuse_multiple_victims ) ) => ( calc ( bind $?gen376 ( create$ rule10-overruled $?gen374 $?gen375 ) ) ) ?gen371 <- ( coercion_abuse_multiple_victims ( negative-overruled $?gen376 ) )"))

([rule10-support] of derived-attribute-rule
   (pos-name rule10-support-gen995)
   (depends-on declare lc:case lc:case coercion_abuse_multiple_victims)
   (implies coercion_abuse_multiple_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10] ) ) ) ?gen368 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( test ( >= ?num_of_victims 2 ) ) ?gen370 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ?gen371 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ( positive-support $?gen373 & : ( not ( subseq-pos ( create$ rule10 ?gen368 ?gen370 $$$ $?gen373 ) ) ) ) ) ( test ( eq ( class ?gen371 ) coercion_abuse_multiple_victims ) ) => ( calc ( bind $?gen376 ( create$ rule10 ?gen368 ?gen370 $?gen373 ) ) ) ?gen371 <- ( coercion_abuse_multiple_victims ( positive-support $?gen376 ) )"))

([rule9_8-defeated-dot] of derived-attribute-rule
   (pos-name rule9_8-defeated-dot-gen997)
   (depends-on declare coercion_abuse_multiple_defendant coercion_abuse_on_duty)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule9_8] ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive-defeated $?gen363 & : ( subseq-pos ( create$ rule9_8-defeated rule8 $$$ $?gen363 ) ) ) ) ( test ( eq ( class ?gen360 ) coercion_abuse_multiple_defendant ) ) ( not ?gen367 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen366 & : ( >= ?gen366 1 ) ) ) ) => ( calc ( bind $?gen362 ( delete-member$ $?gen363 ( create$ rule9_8-defeated rule8 ) ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( positive-defeated $?gen362 ) )"))

([rule9_8-defeated] of derived-attribute-rule
   (pos-name rule9_8-defeated-gen999)
   (depends-on declare coercion_abuse_on_duty coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule9_8] ) ) ) ?gen367 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen366 & : ( >= ?gen366 1 ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive-defeated $?gen363 & : ( not ( subseq-pos ( create$ rule9_8-defeated rule8 $$$ $?gen363 ) ) ) ) ) ( test ( eq ( class ?gen360 ) coercion_abuse_multiple_defendant ) ) => ( calc ( bind $?gen362 ( create$ rule9_8-defeated rule8 $?gen363 ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( positive-defeated $?gen362 ) )"))

([rule9_8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9_8-defeasibly-dot-gen1001)
   (depends-on declare coercion_abuse_multiple_defendant coercion_abuse_on_duty coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9_8] ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule9_8 $? ) ) ( test ( eq ( class ?gen360 ) coercion_abuse_multiple_defendant ) ) ( not ( and ?gen367 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen366 & : ( >= ?gen366 1 ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( positive ~ 2 ) ( negative-overruled $?gen362 & : ( not ( member$ rule9_8 $?gen362 ) ) ) ) ) ) => ?gen360 <- ( coercion_abuse_multiple_defendant ( negative 0 ) )"))

([rule9_8-defeasibly] of derived-attribute-rule
   (pos-name rule9_8-defeasibly-gen1003)
   (depends-on declare coercion_abuse_on_duty coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9_8] ) ) ) ?gen367 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen366 & : ( >= ?gen366 1 ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen362 & : ( not ( member$ rule9_8 $?gen362 ) ) ) ) ( test ( eq ( class ?gen360 ) coercion_abuse_multiple_defendant ) ) => ?gen360 <- ( coercion_abuse_multiple_defendant ( negative 1 ) ( negative-derivator rule9_8 ?gen367 ) )"))

([rule9_8-overruled-dot] of derived-attribute-rule
   (pos-name rule9_8-overruled-dot-gen1005)
   (depends-on declare coercion_abuse_multiple_defendant coercion_abuse_on_duty coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9_8] ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive-support $?gen363 ) ( positive-overruled $?gen364 & : ( subseq-pos ( create$ rule9_8-overruled $?gen363 $$$ $?gen364 ) ) ) ) ( test ( eq ( class ?gen360 ) coercion_abuse_multiple_defendant ) ) ( not ( and ?gen367 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen366 & : ( >= ?gen366 1 ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( negative-defeated $?gen362 & : ( not ( member$ rule9_8 $?gen362 ) ) ) ) ) ) => ( calc ( bind $?gen365 ( delete-member$ $?gen364 ( create$ rule9_8-overruled $?gen363 ) ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( positive-overruled $?gen365 ) )"))

([rule9_8-overruled] of derived-attribute-rule
   (pos-name rule9_8-overruled-gen1007)
   (depends-on declare coercion_abuse_on_duty coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9_8] ) ) ) ?gen367 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen366 & : ( >= ?gen366 1 ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive-support $?gen363 ) ( positive-overruled $?gen364 & : ( not ( subseq-pos ( create$ rule9_8-overruled $?gen363 $$$ $?gen364 ) ) ) ) ( negative-defeated $?gen362 & : ( not ( member$ rule9_8 $?gen362 ) ) ) ) ( test ( eq ( class ?gen360 ) coercion_abuse_multiple_defendant ) ) => ( calc ( bind $?gen365 ( create$ rule9_8-overruled $?gen363 $?gen364 ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( positive-overruled $?gen365 ) )"))

([rule9_8-support] of derived-attribute-rule
   (pos-name rule9_8-support-gen1009)
   (depends-on declare coercion_abuse_on_duty coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9_8] ) ) ) ?gen359 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( negative-support $?gen362 & : ( not ( subseq-pos ( create$ rule9_8 ?gen359 $$$ $?gen362 ) ) ) ) ) ( test ( eq ( class ?gen360 ) coercion_abuse_multiple_defendant ) ) => ( calc ( bind $?gen365 ( create$ rule9_8 ?gen359 $?gen362 ) ) ) ?gen360 <- ( coercion_abuse_multiple_defendant ( negative-support $?gen365 ) )"))

([rule9_7-defeated-dot] of derived-attribute-rule
   (pos-name rule9_7-defeated-dot-gen1011)
   (depends-on declare coercion_abuse coercion_abuse_on_duty)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule9_7] ) ) ) ?gen351 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-defeated $?gen354 & : ( subseq-pos ( create$ rule9_7-defeated rule7 $$$ $?gen354 ) ) ) ) ( test ( eq ( class ?gen351 ) coercion_abuse ) ) ( not ?gen358 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen357 & : ( >= ?gen357 1 ) ) ) ) => ( calc ( bind $?gen353 ( delete-member$ $?gen354 ( create$ rule9_7-defeated rule7 ) ) ) ) ?gen351 <- ( coercion_abuse ( positive-defeated $?gen353 ) )"))

([rule9_7-defeated] of derived-attribute-rule
   (pos-name rule9_7-defeated-gen1013)
   (depends-on declare coercion_abuse_on_duty coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule9_7] ) ) ) ?gen358 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen357 & : ( >= ?gen357 1 ) ) ) ?gen351 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-defeated $?gen354 & : ( not ( subseq-pos ( create$ rule9_7-defeated rule7 $$$ $?gen354 ) ) ) ) ) ( test ( eq ( class ?gen351 ) coercion_abuse ) ) => ( calc ( bind $?gen353 ( create$ rule9_7-defeated rule7 $?gen354 ) ) ) ?gen351 <- ( coercion_abuse ( positive-defeated $?gen353 ) )"))

([rule9_7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9_7-defeasibly-dot-gen1015)
   (depends-on declare coercion_abuse coercion_abuse_on_duty coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9_7] ) ) ) ?gen351 <- ( coercion_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule9_7 $? ) ) ( test ( eq ( class ?gen351 ) coercion_abuse ) ) ( not ( and ?gen358 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen357 & : ( >= ?gen357 1 ) ) ) ?gen351 <- ( coercion_abuse ( positive ~ 2 ) ( negative-overruled $?gen353 & : ( not ( member$ rule9_7 $?gen353 ) ) ) ) ) ) => ?gen351 <- ( coercion_abuse ( negative 0 ) )"))

([rule9_7-defeasibly] of derived-attribute-rule
   (pos-name rule9_7-defeasibly-gen1017)
   (depends-on declare coercion_abuse_on_duty coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9_7] ) ) ) ?gen358 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen357 & : ( >= ?gen357 1 ) ) ) ?gen351 <- ( coercion_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen353 & : ( not ( member$ rule9_7 $?gen353 ) ) ) ) ( test ( eq ( class ?gen351 ) coercion_abuse ) ) => ?gen351 <- ( coercion_abuse ( negative 1 ) ( negative-derivator rule9_7 ?gen358 ) )"))

([rule9_7-overruled-dot] of derived-attribute-rule
   (pos-name rule9_7-overruled-dot-gen1019)
   (depends-on declare coercion_abuse coercion_abuse_on_duty coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9_7] ) ) ) ?gen351 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-support $?gen354 ) ( positive-overruled $?gen355 & : ( subseq-pos ( create$ rule9_7-overruled $?gen354 $$$ $?gen355 ) ) ) ) ( test ( eq ( class ?gen351 ) coercion_abuse ) ) ( not ( and ?gen358 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen357 & : ( >= ?gen357 1 ) ) ) ?gen351 <- ( coercion_abuse ( negative-defeated $?gen353 & : ( not ( member$ rule9_7 $?gen353 ) ) ) ) ) ) => ( calc ( bind $?gen356 ( delete-member$ $?gen355 ( create$ rule9_7-overruled $?gen354 ) ) ) ) ?gen351 <- ( coercion_abuse ( positive-overruled $?gen356 ) )"))

([rule9_7-overruled] of derived-attribute-rule
   (pos-name rule9_7-overruled-gen1021)
   (depends-on declare coercion_abuse_on_duty coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9_7] ) ) ) ?gen358 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen357 & : ( >= ?gen357 1 ) ) ) ?gen351 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-support $?gen354 ) ( positive-overruled $?gen355 & : ( not ( subseq-pos ( create$ rule9_7-overruled $?gen354 $$$ $?gen355 ) ) ) ) ( negative-defeated $?gen353 & : ( not ( member$ rule9_7 $?gen353 ) ) ) ) ( test ( eq ( class ?gen351 ) coercion_abuse ) ) => ( calc ( bind $?gen356 ( create$ rule9_7-overruled $?gen354 $?gen355 ) ) ) ?gen351 <- ( coercion_abuse ( positive-overruled $?gen356 ) )"))

([rule9_7-support] of derived-attribute-rule
   (pos-name rule9_7-support-gen1023)
   (depends-on declare coercion_abuse_on_duty coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9_7] ) ) ) ?gen350 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ?gen351 <- ( coercion_abuse ( defendant ?Defendant ) ( negative-support $?gen353 & : ( not ( subseq-pos ( create$ rule9_7 ?gen350 $$$ $?gen353 ) ) ) ) ) ( test ( eq ( class ?gen351 ) coercion_abuse ) ) => ( calc ( bind $?gen356 ( create$ rule9_7 ?gen350 $?gen353 ) ) ) ?gen351 <- ( coercion_abuse ( negative-support $?gen356 ) )"))

([rule9_4-defeated-dot] of derived-attribute-rule
   (pos-name rule9_4-defeated-dot-gen1025)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule9_4] ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen345 & : ( subseq-pos ( create$ rule9_4-defeated rule4 $$$ $?gen345 ) ) ) ) ( test ( eq ( class ?gen342 ) movement_restrictions_on_duty ) ) ( not ?gen349 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen348 & : ( >= ?gen348 1 ) ) ) ) => ( calc ( bind $?gen344 ( delete-member$ $?gen345 ( create$ rule9_4-defeated rule4 ) ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( positive-defeated $?gen344 ) )"))

([rule9_4-defeated] of derived-attribute-rule
   (pos-name rule9_4-defeated-gen1027)
   (depends-on declare coercion_abuse_on_duty movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule9_4] ) ) ) ?gen349 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen348 & : ( >= ?gen348 1 ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen345 & : ( not ( subseq-pos ( create$ rule9_4-defeated rule4 $$$ $?gen345 ) ) ) ) ) ( test ( eq ( class ?gen342 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen344 ( create$ rule9_4-defeated rule4 $?gen345 ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( positive-defeated $?gen344 ) )"))

([rule9_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9_4-defeasibly-dot-gen1029)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_on_duty movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9_4] ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule9_4 $? ) ) ( test ( eq ( class ?gen342 ) movement_restrictions_on_duty ) ) ( not ( and ?gen349 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen348 & : ( >= ?gen348 1 ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen344 & : ( not ( member$ rule9_4 $?gen344 ) ) ) ) ) ) => ?gen342 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule9_4-defeasibly] of derived-attribute-rule
   (pos-name rule9_4-defeasibly-gen1031)
   (depends-on declare coercion_abuse_on_duty movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9_4] ) ) ) ?gen349 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen348 & : ( >= ?gen348 1 ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen344 & : ( not ( member$ rule9_4 $?gen344 ) ) ) ) ( test ( eq ( class ?gen342 ) movement_restrictions_on_duty ) ) => ?gen342 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule9_4 ?gen349 ) )"))

([rule9_4-overruled-dot] of derived-attribute-rule
   (pos-name rule9_4-overruled-dot-gen1033)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_on_duty movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9_4] ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen345 ) ( positive-overruled $?gen346 & : ( subseq-pos ( create$ rule9_4-overruled $?gen345 $$$ $?gen346 ) ) ) ) ( test ( eq ( class ?gen342 ) movement_restrictions_on_duty ) ) ( not ( and ?gen349 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen348 & : ( >= ?gen348 1 ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( negative-defeated $?gen344 & : ( not ( member$ rule9_4 $?gen344 ) ) ) ) ) ) => ( calc ( bind $?gen347 ( delete-member$ $?gen346 ( create$ rule9_4-overruled $?gen345 ) ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( positive-overruled $?gen347 ) )"))

([rule9_4-overruled] of derived-attribute-rule
   (pos-name rule9_4-overruled-gen1035)
   (depends-on declare coercion_abuse_on_duty movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9_4] ) ) ) ?gen349 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen348 & : ( >= ?gen348 1 ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen345 ) ( positive-overruled $?gen346 & : ( not ( subseq-pos ( create$ rule9_4-overruled $?gen345 $$$ $?gen346 ) ) ) ) ( negative-defeated $?gen344 & : ( not ( member$ rule9_4 $?gen344 ) ) ) ) ( test ( eq ( class ?gen342 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen347 ( create$ rule9_4-overruled $?gen345 $?gen346 ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( positive-overruled $?gen347 ) )"))

([rule9_4-support] of derived-attribute-rule
   (pos-name rule9_4-support-gen1037)
   (depends-on declare coercion_abuse_on_duty movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9_4] ) ) ) ?gen341 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ?gen342 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen344 & : ( not ( subseq-pos ( create$ rule9_4 ?gen341 $$$ $?gen344 ) ) ) ) ) ( test ( eq ( class ?gen342 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen347 ( create$ rule9_4 ?gen341 $?gen344 ) ) ) ?gen342 <- ( movement_restrictions_on_duty ( negative-support $?gen347 ) )"))

([rule9_3-defeated-dot] of derived-attribute-rule
   (pos-name rule9_3-defeated-dot-gen1039)
   (depends-on declare movement_restrictions coercion_abuse_on_duty)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule9_3] ) ) ) ?gen333 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen336 & : ( subseq-pos ( create$ rule9_3-defeated rule3 $$$ $?gen336 ) ) ) ) ( test ( eq ( class ?gen333 ) movement_restrictions ) ) ( not ?gen340 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen339 & : ( >= ?gen339 1 ) ) ) ) => ( calc ( bind $?gen335 ( delete-member$ $?gen336 ( create$ rule9_3-defeated rule3 ) ) ) ) ?gen333 <- ( movement_restrictions ( positive-defeated $?gen335 ) )"))

([rule9_3-defeated] of derived-attribute-rule
   (pos-name rule9_3-defeated-gen1041)
   (depends-on declare coercion_abuse_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule9_3] ) ) ) ?gen340 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen339 & : ( >= ?gen339 1 ) ) ) ?gen333 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen336 & : ( not ( subseq-pos ( create$ rule9_3-defeated rule3 $$$ $?gen336 ) ) ) ) ) ( test ( eq ( class ?gen333 ) movement_restrictions ) ) => ( calc ( bind $?gen335 ( create$ rule9_3-defeated rule3 $?gen336 ) ) ) ?gen333 <- ( movement_restrictions ( positive-defeated $?gen335 ) )"))

([rule9_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9_3-defeasibly-dot-gen1043)
   (depends-on declare movement_restrictions coercion_abuse_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9_3] ) ) ) ?gen333 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule9_3 $? ) ) ( test ( eq ( class ?gen333 ) movement_restrictions ) ) ( not ( and ?gen340 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen339 & : ( >= ?gen339 1 ) ) ) ?gen333 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen335 & : ( not ( member$ rule9_3 $?gen335 ) ) ) ) ) ) => ?gen333 <- ( movement_restrictions ( negative 0 ) )"))

([rule9_3-defeasibly] of derived-attribute-rule
   (pos-name rule9_3-defeasibly-gen1045)
   (depends-on declare coercion_abuse_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9_3] ) ) ) ?gen340 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen339 & : ( >= ?gen339 1 ) ) ) ?gen333 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen335 & : ( not ( member$ rule9_3 $?gen335 ) ) ) ) ( test ( eq ( class ?gen333 ) movement_restrictions ) ) => ?gen333 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule9_3 ?gen340 ) )"))

([rule9_3-overruled-dot] of derived-attribute-rule
   (pos-name rule9_3-overruled-dot-gen1047)
   (depends-on declare movement_restrictions coercion_abuse_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9_3] ) ) ) ?gen333 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen336 ) ( positive-overruled $?gen337 & : ( subseq-pos ( create$ rule9_3-overruled $?gen336 $$$ $?gen337 ) ) ) ) ( test ( eq ( class ?gen333 ) movement_restrictions ) ) ( not ( and ?gen340 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen339 & : ( >= ?gen339 1 ) ) ) ?gen333 <- ( movement_restrictions ( negative-defeated $?gen335 & : ( not ( member$ rule9_3 $?gen335 ) ) ) ) ) ) => ( calc ( bind $?gen338 ( delete-member$ $?gen337 ( create$ rule9_3-overruled $?gen336 ) ) ) ) ?gen333 <- ( movement_restrictions ( positive-overruled $?gen338 ) )"))

([rule9_3-overruled] of derived-attribute-rule
   (pos-name rule9_3-overruled-gen1049)
   (depends-on declare coercion_abuse_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9_3] ) ) ) ?gen340 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen339 & : ( >= ?gen339 1 ) ) ) ?gen333 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen336 ) ( positive-overruled $?gen337 & : ( not ( subseq-pos ( create$ rule9_3-overruled $?gen336 $$$ $?gen337 ) ) ) ) ( negative-defeated $?gen335 & : ( not ( member$ rule9_3 $?gen335 ) ) ) ) ( test ( eq ( class ?gen333 ) movement_restrictions ) ) => ( calc ( bind $?gen338 ( create$ rule9_3-overruled $?gen336 $?gen337 ) ) ) ?gen333 <- ( movement_restrictions ( positive-overruled $?gen338 ) )"))

([rule9_3-support] of derived-attribute-rule
   (pos-name rule9_3-support-gen1051)
   (depends-on declare coercion_abuse_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9_3] ) ) ) ?gen332 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ?gen333 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen335 & : ( not ( subseq-pos ( create$ rule9_3 ?gen332 $$$ $?gen335 ) ) ) ) ) ( test ( eq ( class ?gen333 ) movement_restrictions ) ) => ( calc ( bind $?gen338 ( create$ rule9_3 ?gen332 $?gen335 ) ) ) ?gen333 <- ( movement_restrictions ( negative-support $?gen338 ) )"))

([rule9_2-defeated-dot] of derived-attribute-rule
   (pos-name rule9_2-defeated-dot-gen1053)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule9_2] ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen327 & : ( subseq-pos ( create$ rule9_2-defeated rule2 $$$ $?gen327 ) ) ) ) ( test ( eq ( class ?gen324 ) psychological_abuse_on_duty ) ) ( not ?gen331 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen330 & : ( >= ?gen330 1 ) ) ) ) => ( calc ( bind $?gen326 ( delete-member$ $?gen327 ( create$ rule9_2-defeated rule2 ) ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( positive-defeated $?gen326 ) )"))

([rule9_2-defeated] of derived-attribute-rule
   (pos-name rule9_2-defeated-gen1055)
   (depends-on declare coercion_abuse_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule9_2] ) ) ) ?gen331 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen330 & : ( >= ?gen330 1 ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen327 & : ( not ( subseq-pos ( create$ rule9_2-defeated rule2 $$$ $?gen327 ) ) ) ) ) ( test ( eq ( class ?gen324 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen326 ( create$ rule9_2-defeated rule2 $?gen327 ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( positive-defeated $?gen326 ) )"))

([rule9_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9_2-defeasibly-dot-gen1057)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9_2] ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule9_2 $? ) ) ( test ( eq ( class ?gen324 ) psychological_abuse_on_duty ) ) ( not ( and ?gen331 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen330 & : ( >= ?gen330 1 ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen326 & : ( not ( member$ rule9_2 $?gen326 ) ) ) ) ) ) => ?gen324 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule9_2-defeasibly] of derived-attribute-rule
   (pos-name rule9_2-defeasibly-gen1059)
   (depends-on declare coercion_abuse_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9_2] ) ) ) ?gen331 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen330 & : ( >= ?gen330 1 ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen326 & : ( not ( member$ rule9_2 $?gen326 ) ) ) ) ( test ( eq ( class ?gen324 ) psychological_abuse_on_duty ) ) => ?gen324 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule9_2 ?gen331 ) )"))

([rule9_2-overruled-dot] of derived-attribute-rule
   (pos-name rule9_2-overruled-dot-gen1061)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9_2] ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen327 ) ( positive-overruled $?gen328 & : ( subseq-pos ( create$ rule9_2-overruled $?gen327 $$$ $?gen328 ) ) ) ) ( test ( eq ( class ?gen324 ) psychological_abuse_on_duty ) ) ( not ( and ?gen331 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen330 & : ( >= ?gen330 1 ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( negative-defeated $?gen326 & : ( not ( member$ rule9_2 $?gen326 ) ) ) ) ) ) => ( calc ( bind $?gen329 ( delete-member$ $?gen328 ( create$ rule9_2-overruled $?gen327 ) ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( positive-overruled $?gen329 ) )"))

([rule9_2-overruled] of derived-attribute-rule
   (pos-name rule9_2-overruled-gen1063)
   (depends-on declare coercion_abuse_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9_2] ) ) ) ?gen331 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen330 & : ( >= ?gen330 1 ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen327 ) ( positive-overruled $?gen328 & : ( not ( subseq-pos ( create$ rule9_2-overruled $?gen327 $$$ $?gen328 ) ) ) ) ( negative-defeated $?gen326 & : ( not ( member$ rule9_2 $?gen326 ) ) ) ) ( test ( eq ( class ?gen324 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen329 ( create$ rule9_2-overruled $?gen327 $?gen328 ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( positive-overruled $?gen329 ) )"))

([rule9_2-support] of derived-attribute-rule
   (pos-name rule9_2-support-gen1065)
   (depends-on declare coercion_abuse_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9_2] ) ) ) ?gen323 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ?gen324 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen326 & : ( not ( subseq-pos ( create$ rule9_2 ?gen323 $$$ $?gen326 ) ) ) ) ) ( test ( eq ( class ?gen324 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen329 ( create$ rule9_2 ?gen323 $?gen326 ) ) ) ?gen324 <- ( psychological_abuse_on_duty ( negative-support $?gen329 ) )"))

([rule9_1-defeated-dot] of derived-attribute-rule
   (pos-name rule9_1-defeated-dot-gen1067)
   (depends-on declare psychological_abuse coercion_abuse_on_duty)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule9_1] ) ) ) ?gen315 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen318 & : ( subseq-pos ( create$ rule9_1-defeated rule1 $$$ $?gen318 ) ) ) ) ( test ( eq ( class ?gen315 ) psychological_abuse ) ) ( not ?gen322 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen321 & : ( >= ?gen321 1 ) ) ) ) => ( calc ( bind $?gen317 ( delete-member$ $?gen318 ( create$ rule9_1-defeated rule1 ) ) ) ) ?gen315 <- ( psychological_abuse ( positive-defeated $?gen317 ) )"))

([rule9_1-defeated] of derived-attribute-rule
   (pos-name rule9_1-defeated-gen1069)
   (depends-on declare coercion_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule9_1] ) ) ) ?gen322 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen321 & : ( >= ?gen321 1 ) ) ) ?gen315 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen318 & : ( not ( subseq-pos ( create$ rule9_1-defeated rule1 $$$ $?gen318 ) ) ) ) ) ( test ( eq ( class ?gen315 ) psychological_abuse ) ) => ( calc ( bind $?gen317 ( create$ rule9_1-defeated rule1 $?gen318 ) ) ) ?gen315 <- ( psychological_abuse ( positive-defeated $?gen317 ) )"))

([rule9_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9_1-defeasibly-dot-gen1071)
   (depends-on declare psychological_abuse coercion_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9_1] ) ) ) ?gen315 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule9_1 $? ) ) ( test ( eq ( class ?gen315 ) psychological_abuse ) ) ( not ( and ?gen322 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen321 & : ( >= ?gen321 1 ) ) ) ?gen315 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen317 & : ( not ( member$ rule9_1 $?gen317 ) ) ) ) ) ) => ?gen315 <- ( psychological_abuse ( negative 0 ) )"))

([rule9_1-defeasibly] of derived-attribute-rule
   (pos-name rule9_1-defeasibly-gen1073)
   (depends-on declare coercion_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9_1] ) ) ) ?gen322 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen321 & : ( >= ?gen321 1 ) ) ) ?gen315 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen317 & : ( not ( member$ rule9_1 $?gen317 ) ) ) ) ( test ( eq ( class ?gen315 ) psychological_abuse ) ) => ?gen315 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule9_1 ?gen322 ) )"))

([rule9_1-overruled-dot] of derived-attribute-rule
   (pos-name rule9_1-overruled-dot-gen1075)
   (depends-on declare psychological_abuse coercion_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9_1] ) ) ) ?gen315 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen318 ) ( positive-overruled $?gen319 & : ( subseq-pos ( create$ rule9_1-overruled $?gen318 $$$ $?gen319 ) ) ) ) ( test ( eq ( class ?gen315 ) psychological_abuse ) ) ( not ( and ?gen322 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen321 & : ( >= ?gen321 1 ) ) ) ?gen315 <- ( psychological_abuse ( negative-defeated $?gen317 & : ( not ( member$ rule9_1 $?gen317 ) ) ) ) ) ) => ( calc ( bind $?gen320 ( delete-member$ $?gen319 ( create$ rule9_1-overruled $?gen318 ) ) ) ) ?gen315 <- ( psychological_abuse ( positive-overruled $?gen320 ) )"))

([rule9_1-overruled] of derived-attribute-rule
   (pos-name rule9_1-overruled-gen1077)
   (depends-on declare coercion_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9_1] ) ) ) ?gen322 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen321 & : ( >= ?gen321 1 ) ) ) ?gen315 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen318 ) ( positive-overruled $?gen319 & : ( not ( subseq-pos ( create$ rule9_1-overruled $?gen318 $$$ $?gen319 ) ) ) ) ( negative-defeated $?gen317 & : ( not ( member$ rule9_1 $?gen317 ) ) ) ) ( test ( eq ( class ?gen315 ) psychological_abuse ) ) => ( calc ( bind $?gen320 ( create$ rule9_1-overruled $?gen318 $?gen319 ) ) ) ?gen315 <- ( psychological_abuse ( positive-overruled $?gen320 ) )"))

([rule9_1-support] of derived-attribute-rule
   (pos-name rule9_1-support-gen1079)
   (depends-on declare coercion_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9_1] ) ) ) ?gen314 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ?gen315 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen317 & : ( not ( subseq-pos ( create$ rule9_1 ?gen314 $$$ $?gen317 ) ) ) ) ) ( test ( eq ( class ?gen315 ) psychological_abuse ) ) => ( calc ( bind $?gen320 ( create$ rule9_1 ?gen314 $?gen317 ) ) ) ?gen315 <- ( psychological_abuse ( negative-support $?gen320 ) )"))

([rule9-defeasibly-dot] of derived-attribute-rule
   (pos-name rule9-defeasibly-dot-gen1081)
   (depends-on declare coercion_abuse_on_duty lc:case lc:case coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule9] ) ) ) ?gen304 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule9 $? ) ) ( test ( eq ( class ?gen304 ) coercion_abuse_on_duty ) ) ( not ( and ?gen311 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen313 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen312 & : ( >= ?gen312 1 ) ) ) ?gen304 <- ( coercion_abuse_on_duty ( negative ~ 2 ) ( positive-overruled $?gen306 & : ( not ( member$ rule9 $?gen306 ) ) ) ) ) ) => ?gen304 <- ( coercion_abuse_on_duty ( positive 0 ) )"))

([rule9-defeasibly] of derived-attribute-rule
   (pos-name rule9-defeasibly-gen1083)
   (depends-on declare lc:case lc:case coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule9] ) ) ) ?gen311 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen313 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen312 & : ( >= ?gen312 1 ) ) ) ?gen304 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen306 & : ( not ( member$ rule9 $?gen306 ) ) ) ) ( test ( eq ( class ?gen304 ) coercion_abuse_on_duty ) ) => ?gen304 <- ( coercion_abuse_on_duty ( positive 1 ) ( positive-derivator rule9 ?gen311 ?gen313 ) )"))

([rule9-overruled-dot] of derived-attribute-rule
   (pos-name rule9-overruled-dot-gen1085)
   (depends-on declare coercion_abuse_on_duty lc:case lc:case coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule9] ) ) ) ?gen304 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen307 ) ( negative-overruled $?gen308 & : ( subseq-pos ( create$ rule9-overruled $?gen307 $$$ $?gen308 ) ) ) ) ( test ( eq ( class ?gen304 ) coercion_abuse_on_duty ) ) ( not ( and ?gen311 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen313 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen312 & : ( >= ?gen312 1 ) ) ) ?gen304 <- ( coercion_abuse_on_duty ( positive-defeated $?gen306 & : ( not ( member$ rule9 $?gen306 ) ) ) ) ) ) => ( calc ( bind $?gen309 ( delete-member$ $?gen308 ( create$ rule9-overruled $?gen307 ) ) ) ) ?gen304 <- ( coercion_abuse_on_duty ( negative-overruled $?gen309 ) )"))

([rule9-overruled] of derived-attribute-rule
   (pos-name rule9-overruled-gen1087)
   (depends-on declare lc:case lc:case coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule9] ) ) ) ?gen311 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen313 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen312 & : ( >= ?gen312 1 ) ) ) ?gen304 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen307 ) ( negative-overruled $?gen308 & : ( not ( subseq-pos ( create$ rule9-overruled $?gen307 $$$ $?gen308 ) ) ) ) ( positive-defeated $?gen306 & : ( not ( member$ rule9 $?gen306 ) ) ) ) ( test ( eq ( class ?gen304 ) coercion_abuse_on_duty ) ) => ( calc ( bind $?gen309 ( create$ rule9-overruled $?gen307 $?gen308 ) ) ) ?gen304 <- ( coercion_abuse_on_duty ( negative-overruled $?gen309 ) )"))

([rule9-support] of derived-attribute-rule
   (pos-name rule9-support-gen1089)
   (depends-on declare lc:case lc:case coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule9] ) ) ) ?gen302 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ?gen303 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ?gen304 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen306 & : ( not ( subseq-pos ( create$ rule9 ?gen302 ?gen303 $$$ $?gen306 ) ) ) ) ) ( test ( eq ( class ?gen304 ) coercion_abuse_on_duty ) ) => ( calc ( bind $?gen309 ( create$ rule9 ?gen302 ?gen303 $?gen306 ) ) ) ?gen304 <- ( coercion_abuse_on_duty ( positive-support $?gen309 ) )"))

([rule8_4-defeated-dot] of derived-attribute-rule
   (pos-name rule8_4-defeated-dot-gen1091)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_multiple_defendant)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule8_4] ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen297 & : ( subseq-pos ( create$ rule8_4-defeated rule4 $$$ $?gen297 ) ) ) ) ( test ( eq ( class ?gen294 ) movement_restrictions_on_duty ) ) ( not ?gen301 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen300 & : ( >= ?gen300 1 ) ) ) ) => ( calc ( bind $?gen296 ( delete-member$ $?gen297 ( create$ rule8_4-defeated rule4 ) ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( positive-defeated $?gen296 ) )"))

([rule8_4-defeated] of derived-attribute-rule
   (pos-name rule8_4-defeated-gen1093)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule8_4] ) ) ) ?gen301 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen300 & : ( >= ?gen300 1 ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen297 & : ( not ( subseq-pos ( create$ rule8_4-defeated rule4 $$$ $?gen297 ) ) ) ) ) ( test ( eq ( class ?gen294 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen296 ( create$ rule8_4-defeated rule4 $?gen297 ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( positive-defeated $?gen296 ) )"))

([rule8_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8_4-defeasibly-dot-gen1095)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8_4] ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8_4 $? ) ) ( test ( eq ( class ?gen294 ) movement_restrictions_on_duty ) ) ( not ( and ?gen301 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen300 & : ( >= ?gen300 1 ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen296 & : ( not ( member$ rule8_4 $?gen296 ) ) ) ) ) ) => ?gen294 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule8_4-defeasibly] of derived-attribute-rule
   (pos-name rule8_4-defeasibly-gen1097)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8_4] ) ) ) ?gen301 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen300 & : ( >= ?gen300 1 ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen296 & : ( not ( member$ rule8_4 $?gen296 ) ) ) ) ( test ( eq ( class ?gen294 ) movement_restrictions_on_duty ) ) => ?gen294 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule8_4 ?gen301 ) )"))

([rule8_4-overruled-dot] of derived-attribute-rule
   (pos-name rule8_4-overruled-dot-gen1099)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8_4] ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen297 ) ( positive-overruled $?gen298 & : ( subseq-pos ( create$ rule8_4-overruled $?gen297 $$$ $?gen298 ) ) ) ) ( test ( eq ( class ?gen294 ) movement_restrictions_on_duty ) ) ( not ( and ?gen301 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen300 & : ( >= ?gen300 1 ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( negative-defeated $?gen296 & : ( not ( member$ rule8_4 $?gen296 ) ) ) ) ) ) => ( calc ( bind $?gen299 ( delete-member$ $?gen298 ( create$ rule8_4-overruled $?gen297 ) ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( positive-overruled $?gen299 ) )"))

([rule8_4-overruled] of derived-attribute-rule
   (pos-name rule8_4-overruled-gen1101)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8_4] ) ) ) ?gen301 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen300 & : ( >= ?gen300 1 ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen297 ) ( positive-overruled $?gen298 & : ( not ( subseq-pos ( create$ rule8_4-overruled $?gen297 $$$ $?gen298 ) ) ) ) ( negative-defeated $?gen296 & : ( not ( member$ rule8_4 $?gen296 ) ) ) ) ( test ( eq ( class ?gen294 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen299 ( create$ rule8_4-overruled $?gen297 $?gen298 ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( positive-overruled $?gen299 ) )"))

([rule8_4-support] of derived-attribute-rule
   (pos-name rule8_4-support-gen1103)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8_4] ) ) ) ?gen293 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen294 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen296 & : ( not ( subseq-pos ( create$ rule8_4 ?gen293 $$$ $?gen296 ) ) ) ) ) ( test ( eq ( class ?gen294 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen299 ( create$ rule8_4 ?gen293 $?gen296 ) ) ) ?gen294 <- ( movement_restrictions_on_duty ( negative-support $?gen299 ) )"))

([rule8_3-defeated-dot] of derived-attribute-rule
   (pos-name rule8_3-defeated-dot-gen1105)
   (depends-on declare movement_restrictions coercion_abuse_multiple_defendant)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule8_3] ) ) ) ?gen285 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen288 & : ( subseq-pos ( create$ rule8_3-defeated rule3 $$$ $?gen288 ) ) ) ) ( test ( eq ( class ?gen285 ) movement_restrictions ) ) ( not ?gen292 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen291 & : ( >= ?gen291 1 ) ) ) ) => ( calc ( bind $?gen287 ( delete-member$ $?gen288 ( create$ rule8_3-defeated rule3 ) ) ) ) ?gen285 <- ( movement_restrictions ( positive-defeated $?gen287 ) )"))

([rule8_3-defeated] of derived-attribute-rule
   (pos-name rule8_3-defeated-gen1107)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule8_3] ) ) ) ?gen292 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen291 & : ( >= ?gen291 1 ) ) ) ?gen285 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen288 & : ( not ( subseq-pos ( create$ rule8_3-defeated rule3 $$$ $?gen288 ) ) ) ) ) ( test ( eq ( class ?gen285 ) movement_restrictions ) ) => ( calc ( bind $?gen287 ( create$ rule8_3-defeated rule3 $?gen288 ) ) ) ?gen285 <- ( movement_restrictions ( positive-defeated $?gen287 ) )"))

([rule8_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8_3-defeasibly-dot-gen1109)
   (depends-on declare movement_restrictions coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8_3] ) ) ) ?gen285 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8_3 $? ) ) ( test ( eq ( class ?gen285 ) movement_restrictions ) ) ( not ( and ?gen292 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen291 & : ( >= ?gen291 1 ) ) ) ?gen285 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen287 & : ( not ( member$ rule8_3 $?gen287 ) ) ) ) ) ) => ?gen285 <- ( movement_restrictions ( negative 0 ) )"))

([rule8_3-defeasibly] of derived-attribute-rule
   (pos-name rule8_3-defeasibly-gen1111)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8_3] ) ) ) ?gen292 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen291 & : ( >= ?gen291 1 ) ) ) ?gen285 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen287 & : ( not ( member$ rule8_3 $?gen287 ) ) ) ) ( test ( eq ( class ?gen285 ) movement_restrictions ) ) => ?gen285 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule8_3 ?gen292 ) )"))

([rule8_3-overruled-dot] of derived-attribute-rule
   (pos-name rule8_3-overruled-dot-gen1113)
   (depends-on declare movement_restrictions coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8_3] ) ) ) ?gen285 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen288 ) ( positive-overruled $?gen289 & : ( subseq-pos ( create$ rule8_3-overruled $?gen288 $$$ $?gen289 ) ) ) ) ( test ( eq ( class ?gen285 ) movement_restrictions ) ) ( not ( and ?gen292 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen291 & : ( >= ?gen291 1 ) ) ) ?gen285 <- ( movement_restrictions ( negative-defeated $?gen287 & : ( not ( member$ rule8_3 $?gen287 ) ) ) ) ) ) => ( calc ( bind $?gen290 ( delete-member$ $?gen289 ( create$ rule8_3-overruled $?gen288 ) ) ) ) ?gen285 <- ( movement_restrictions ( positive-overruled $?gen290 ) )"))

([rule8_3-overruled] of derived-attribute-rule
   (pos-name rule8_3-overruled-gen1115)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8_3] ) ) ) ?gen292 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen291 & : ( >= ?gen291 1 ) ) ) ?gen285 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen288 ) ( positive-overruled $?gen289 & : ( not ( subseq-pos ( create$ rule8_3-overruled $?gen288 $$$ $?gen289 ) ) ) ) ( negative-defeated $?gen287 & : ( not ( member$ rule8_3 $?gen287 ) ) ) ) ( test ( eq ( class ?gen285 ) movement_restrictions ) ) => ( calc ( bind $?gen290 ( create$ rule8_3-overruled $?gen288 $?gen289 ) ) ) ?gen285 <- ( movement_restrictions ( positive-overruled $?gen290 ) )"))

([rule8_3-support] of derived-attribute-rule
   (pos-name rule8_3-support-gen1117)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8_3] ) ) ) ?gen284 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen285 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen287 & : ( not ( subseq-pos ( create$ rule8_3 ?gen284 $$$ $?gen287 ) ) ) ) ) ( test ( eq ( class ?gen285 ) movement_restrictions ) ) => ( calc ( bind $?gen290 ( create$ rule8_3 ?gen284 $?gen287 ) ) ) ?gen285 <- ( movement_restrictions ( negative-support $?gen290 ) )"))

([rule8_2-defeated-dot] of derived-attribute-rule
   (pos-name rule8_2-defeated-dot-gen1119)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_multiple_defendant)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule8_2] ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen279 & : ( subseq-pos ( create$ rule8_2-defeated rule2 $$$ $?gen279 ) ) ) ) ( test ( eq ( class ?gen276 ) psychological_abuse_on_duty ) ) ( not ?gen283 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen282 & : ( >= ?gen282 1 ) ) ) ) => ( calc ( bind $?gen278 ( delete-member$ $?gen279 ( create$ rule8_2-defeated rule2 ) ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( positive-defeated $?gen278 ) )"))

([rule8_2-defeated] of derived-attribute-rule
   (pos-name rule8_2-defeated-gen1121)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule8_2] ) ) ) ?gen283 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen282 & : ( >= ?gen282 1 ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen279 & : ( not ( subseq-pos ( create$ rule8_2-defeated rule2 $$$ $?gen279 ) ) ) ) ) ( test ( eq ( class ?gen276 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen278 ( create$ rule8_2-defeated rule2 $?gen279 ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( positive-defeated $?gen278 ) )"))

([rule8_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8_2-defeasibly-dot-gen1123)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8_2] ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8_2 $? ) ) ( test ( eq ( class ?gen276 ) psychological_abuse_on_duty ) ) ( not ( and ?gen283 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen282 & : ( >= ?gen282 1 ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen278 & : ( not ( member$ rule8_2 $?gen278 ) ) ) ) ) ) => ?gen276 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule8_2-defeasibly] of derived-attribute-rule
   (pos-name rule8_2-defeasibly-gen1125)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8_2] ) ) ) ?gen283 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen282 & : ( >= ?gen282 1 ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen278 & : ( not ( member$ rule8_2 $?gen278 ) ) ) ) ( test ( eq ( class ?gen276 ) psychological_abuse_on_duty ) ) => ?gen276 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule8_2 ?gen283 ) )"))

([rule8_2-overruled-dot] of derived-attribute-rule
   (pos-name rule8_2-overruled-dot-gen1127)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8_2] ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen279 ) ( positive-overruled $?gen280 & : ( subseq-pos ( create$ rule8_2-overruled $?gen279 $$$ $?gen280 ) ) ) ) ( test ( eq ( class ?gen276 ) psychological_abuse_on_duty ) ) ( not ( and ?gen283 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen282 & : ( >= ?gen282 1 ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( negative-defeated $?gen278 & : ( not ( member$ rule8_2 $?gen278 ) ) ) ) ) ) => ( calc ( bind $?gen281 ( delete-member$ $?gen280 ( create$ rule8_2-overruled $?gen279 ) ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( positive-overruled $?gen281 ) )"))

([rule8_2-overruled] of derived-attribute-rule
   (pos-name rule8_2-overruled-gen1129)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8_2] ) ) ) ?gen283 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen282 & : ( >= ?gen282 1 ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen279 ) ( positive-overruled $?gen280 & : ( not ( subseq-pos ( create$ rule8_2-overruled $?gen279 $$$ $?gen280 ) ) ) ) ( negative-defeated $?gen278 & : ( not ( member$ rule8_2 $?gen278 ) ) ) ) ( test ( eq ( class ?gen276 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen281 ( create$ rule8_2-overruled $?gen279 $?gen280 ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( positive-overruled $?gen281 ) )"))

([rule8_2-support] of derived-attribute-rule
   (pos-name rule8_2-support-gen1131)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8_2] ) ) ) ?gen275 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen276 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen278 & : ( not ( subseq-pos ( create$ rule8_2 ?gen275 $$$ $?gen278 ) ) ) ) ) ( test ( eq ( class ?gen276 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen281 ( create$ rule8_2 ?gen275 $?gen278 ) ) ) ?gen276 <- ( psychological_abuse_on_duty ( negative-support $?gen281 ) )"))

([rule8_1-defeated-dot] of derived-attribute-rule
   (pos-name rule8_1-defeated-dot-gen1133)
   (depends-on declare psychological_abuse coercion_abuse_multiple_defendant)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule8_1] ) ) ) ?gen267 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen270 & : ( subseq-pos ( create$ rule8_1-defeated rule1 $$$ $?gen270 ) ) ) ) ( test ( eq ( class ?gen267 ) psychological_abuse ) ) ( not ?gen274 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen273 & : ( >= ?gen273 1 ) ) ) ) => ( calc ( bind $?gen269 ( delete-member$ $?gen270 ( create$ rule8_1-defeated rule1 ) ) ) ) ?gen267 <- ( psychological_abuse ( positive-defeated $?gen269 ) )"))

([rule8_1-defeated] of derived-attribute-rule
   (pos-name rule8_1-defeated-gen1135)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule8_1] ) ) ) ?gen274 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen273 & : ( >= ?gen273 1 ) ) ) ?gen267 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen270 & : ( not ( subseq-pos ( create$ rule8_1-defeated rule1 $$$ $?gen270 ) ) ) ) ) ( test ( eq ( class ?gen267 ) psychological_abuse ) ) => ( calc ( bind $?gen269 ( create$ rule8_1-defeated rule1 $?gen270 ) ) ) ?gen267 <- ( psychological_abuse ( positive-defeated $?gen269 ) )"))

([rule8_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8_1-defeasibly-dot-gen1137)
   (depends-on declare psychological_abuse coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8_1] ) ) ) ?gen267 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8_1 $? ) ) ( test ( eq ( class ?gen267 ) psychological_abuse ) ) ( not ( and ?gen274 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen273 & : ( >= ?gen273 1 ) ) ) ?gen267 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen269 & : ( not ( member$ rule8_1 $?gen269 ) ) ) ) ) ) => ?gen267 <- ( psychological_abuse ( negative 0 ) )"))

([rule8_1-defeasibly] of derived-attribute-rule
   (pos-name rule8_1-defeasibly-gen1139)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8_1] ) ) ) ?gen274 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen273 & : ( >= ?gen273 1 ) ) ) ?gen267 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen269 & : ( not ( member$ rule8_1 $?gen269 ) ) ) ) ( test ( eq ( class ?gen267 ) psychological_abuse ) ) => ?gen267 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule8_1 ?gen274 ) )"))

([rule8_1-overruled-dot] of derived-attribute-rule
   (pos-name rule8_1-overruled-dot-gen1141)
   (depends-on declare psychological_abuse coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8_1] ) ) ) ?gen267 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen270 ) ( positive-overruled $?gen271 & : ( subseq-pos ( create$ rule8_1-overruled $?gen270 $$$ $?gen271 ) ) ) ) ( test ( eq ( class ?gen267 ) psychological_abuse ) ) ( not ( and ?gen274 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen273 & : ( >= ?gen273 1 ) ) ) ?gen267 <- ( psychological_abuse ( negative-defeated $?gen269 & : ( not ( member$ rule8_1 $?gen269 ) ) ) ) ) ) => ( calc ( bind $?gen272 ( delete-member$ $?gen271 ( create$ rule8_1-overruled $?gen270 ) ) ) ) ?gen267 <- ( psychological_abuse ( positive-overruled $?gen272 ) )"))

([rule8_1-overruled] of derived-attribute-rule
   (pos-name rule8_1-overruled-gen1143)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8_1] ) ) ) ?gen274 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen273 & : ( >= ?gen273 1 ) ) ) ?gen267 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen270 ) ( positive-overruled $?gen271 & : ( not ( subseq-pos ( create$ rule8_1-overruled $?gen270 $$$ $?gen271 ) ) ) ) ( negative-defeated $?gen269 & : ( not ( member$ rule8_1 $?gen269 ) ) ) ) ( test ( eq ( class ?gen267 ) psychological_abuse ) ) => ( calc ( bind $?gen272 ( create$ rule8_1-overruled $?gen270 $?gen271 ) ) ) ?gen267 <- ( psychological_abuse ( positive-overruled $?gen272 ) )"))

([rule8_1-support] of derived-attribute-rule
   (pos-name rule8_1-support-gen1145)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8_1] ) ) ) ?gen266 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen267 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen269 & : ( not ( subseq-pos ( create$ rule8_1 ?gen266 $$$ $?gen269 ) ) ) ) ) ( test ( eq ( class ?gen267 ) psychological_abuse ) ) => ( calc ( bind $?gen272 ( create$ rule8_1 ?gen266 $?gen269 ) ) ) ?gen267 <- ( psychological_abuse ( negative-support $?gen272 ) )"))

([rule8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8-defeasibly-dot-gen1147)
   (depends-on declare coercion_abuse_multiple_defendant lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8] ) ) ) ?gen256 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule8 $? ) ) ( test ( eq ( class ?gen256 ) coercion_abuse_multiple_defendant ) ) ( not ( and ?gen263 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ( test ( >= ?num_of_defendants 2 ) ) ?gen265 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen264 & : ( >= ?gen264 1 ) ) ) ?gen256 <- ( coercion_abuse_multiple_defendant ( negative ~ 2 ) ( positive-overruled $?gen258 & : ( not ( member$ rule8 $?gen258 ) ) ) ) ) ) => ?gen256 <- ( coercion_abuse_multiple_defendant ( positive 0 ) )"))

([rule8-defeasibly] of derived-attribute-rule
   (pos-name rule8-defeasibly-gen1149)
   (depends-on declare lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8] ) ) ) ?gen263 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ( test ( >= ?num_of_defendants 2 ) ) ?gen265 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen264 & : ( >= ?gen264 1 ) ) ) ?gen256 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen258 & : ( not ( member$ rule8 $?gen258 ) ) ) ) ( test ( eq ( class ?gen256 ) coercion_abuse_multiple_defendant ) ) => ?gen256 <- ( coercion_abuse_multiple_defendant ( positive 1 ) ( positive-derivator rule8 ?gen263 ?gen265 ) )"))

([rule8-overruled-dot] of derived-attribute-rule
   (pos-name rule8-overruled-dot-gen1151)
   (depends-on declare coercion_abuse_multiple_defendant lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8] ) ) ) ?gen256 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( negative-support $?gen259 ) ( negative-overruled $?gen260 & : ( subseq-pos ( create$ rule8-overruled $?gen259 $$$ $?gen260 ) ) ) ) ( test ( eq ( class ?gen256 ) coercion_abuse_multiple_defendant ) ) ( not ( and ?gen263 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ( test ( >= ?num_of_defendants 2 ) ) ?gen265 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen264 & : ( >= ?gen264 1 ) ) ) ?gen256 <- ( coercion_abuse_multiple_defendant ( positive-defeated $?gen258 & : ( not ( member$ rule8 $?gen258 ) ) ) ) ) ) => ( calc ( bind $?gen261 ( delete-member$ $?gen260 ( create$ rule8-overruled $?gen259 ) ) ) ) ?gen256 <- ( coercion_abuse_multiple_defendant ( negative-overruled $?gen261 ) )"))

([rule8-overruled] of derived-attribute-rule
   (pos-name rule8-overruled-gen1153)
   (depends-on declare lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8] ) ) ) ?gen263 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ( test ( >= ?num_of_defendants 2 ) ) ?gen265 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen264 & : ( >= ?gen264 1 ) ) ) ?gen256 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( negative-support $?gen259 ) ( negative-overruled $?gen260 & : ( not ( subseq-pos ( create$ rule8-overruled $?gen259 $$$ $?gen260 ) ) ) ) ( positive-defeated $?gen258 & : ( not ( member$ rule8 $?gen258 ) ) ) ) ( test ( eq ( class ?gen256 ) coercion_abuse_multiple_defendant ) ) => ( calc ( bind $?gen261 ( create$ rule8-overruled $?gen259 $?gen260 ) ) ) ?gen256 <- ( coercion_abuse_multiple_defendant ( negative-overruled $?gen261 ) )"))

([rule8-support] of derived-attribute-rule
   (pos-name rule8-support-gen1155)
   (depends-on declare lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8] ) ) ) ?gen253 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( test ( >= ?num_of_defendants 2 ) ) ?gen255 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ?gen256 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive-support $?gen258 & : ( not ( subseq-pos ( create$ rule8 ?gen253 ?gen255 $$$ $?gen258 ) ) ) ) ) ( test ( eq ( class ?gen256 ) coercion_abuse_multiple_defendant ) ) => ( calc ( bind $?gen261 ( create$ rule8 ?gen253 ?gen255 $?gen258 ) ) ) ?gen256 <- ( coercion_abuse_multiple_defendant ( positive-support $?gen261 ) )"))

([rule7_4-defeated-dot] of derived-attribute-rule
   (pos-name rule7_4-defeated-dot-gen1157)
   (depends-on declare movement_restrictions_on_duty coercion_abuse)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_4] ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen248 & : ( subseq-pos ( create$ rule7_4-defeated rule4 $$$ $?gen248 ) ) ) ) ( test ( eq ( class ?gen245 ) movement_restrictions_on_duty ) ) ( not ?gen252 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen251 & : ( >= ?gen251 1 ) ) ) ) => ( calc ( bind $?gen247 ( delete-member$ $?gen248 ( create$ rule7_4-defeated rule4 ) ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( positive-defeated $?gen247 ) )"))

([rule7_4-defeated] of derived-attribute-rule
   (pos-name rule7_4-defeated-gen1159)
   (depends-on declare coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_4] ) ) ) ?gen252 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen251 & : ( >= ?gen251 1 ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen248 & : ( not ( subseq-pos ( create$ rule7_4-defeated rule4 $$$ $?gen248 ) ) ) ) ) ( test ( eq ( class ?gen245 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen247 ( create$ rule7_4-defeated rule4 $?gen248 ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( positive-defeated $?gen247 ) )"))

([rule7_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_4-defeasibly-dot-gen1161)
   (depends-on declare movement_restrictions_on_duty coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_4] ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_4 $? ) ) ( test ( eq ( class ?gen245 ) movement_restrictions_on_duty ) ) ( not ( and ?gen252 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen251 & : ( >= ?gen251 1 ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen247 & : ( not ( member$ rule7_4 $?gen247 ) ) ) ) ) ) => ?gen245 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule7_4-defeasibly] of derived-attribute-rule
   (pos-name rule7_4-defeasibly-gen1163)
   (depends-on declare coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_4] ) ) ) ?gen252 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen251 & : ( >= ?gen251 1 ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen247 & : ( not ( member$ rule7_4 $?gen247 ) ) ) ) ( test ( eq ( class ?gen245 ) movement_restrictions_on_duty ) ) => ?gen245 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule7_4 ?gen252 ) )"))

([rule7_4-overruled-dot] of derived-attribute-rule
   (pos-name rule7_4-overruled-dot-gen1165)
   (depends-on declare movement_restrictions_on_duty coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_4] ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen248 ) ( positive-overruled $?gen249 & : ( subseq-pos ( create$ rule7_4-overruled $?gen248 $$$ $?gen249 ) ) ) ) ( test ( eq ( class ?gen245 ) movement_restrictions_on_duty ) ) ( not ( and ?gen252 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen251 & : ( >= ?gen251 1 ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( negative-defeated $?gen247 & : ( not ( member$ rule7_4 $?gen247 ) ) ) ) ) ) => ( calc ( bind $?gen250 ( delete-member$ $?gen249 ( create$ rule7_4-overruled $?gen248 ) ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( positive-overruled $?gen250 ) )"))

([rule7_4-overruled] of derived-attribute-rule
   (pos-name rule7_4-overruled-gen1167)
   (depends-on declare coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_4] ) ) ) ?gen252 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen251 & : ( >= ?gen251 1 ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen248 ) ( positive-overruled $?gen249 & : ( not ( subseq-pos ( create$ rule7_4-overruled $?gen248 $$$ $?gen249 ) ) ) ) ( negative-defeated $?gen247 & : ( not ( member$ rule7_4 $?gen247 ) ) ) ) ( test ( eq ( class ?gen245 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen250 ( create$ rule7_4-overruled $?gen248 $?gen249 ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( positive-overruled $?gen250 ) )"))

([rule7_4-support] of derived-attribute-rule
   (pos-name rule7_4-support-gen1169)
   (depends-on declare coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_4] ) ) ) ?gen244 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen245 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen247 & : ( not ( subseq-pos ( create$ rule7_4 ?gen244 $$$ $?gen247 ) ) ) ) ) ( test ( eq ( class ?gen245 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen250 ( create$ rule7_4 ?gen244 $?gen247 ) ) ) ?gen245 <- ( movement_restrictions_on_duty ( negative-support $?gen250 ) )"))

([rule7_3-defeated-dot] of derived-attribute-rule
   (pos-name rule7_3-defeated-dot-gen1171)
   (depends-on declare movement_restrictions coercion_abuse)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_3] ) ) ) ?gen236 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen239 & : ( subseq-pos ( create$ rule7_3-defeated rule3 $$$ $?gen239 ) ) ) ) ( test ( eq ( class ?gen236 ) movement_restrictions ) ) ( not ?gen243 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen242 & : ( >= ?gen242 1 ) ) ) ) => ( calc ( bind $?gen238 ( delete-member$ $?gen239 ( create$ rule7_3-defeated rule3 ) ) ) ) ?gen236 <- ( movement_restrictions ( positive-defeated $?gen238 ) )"))

([rule7_3-defeated] of derived-attribute-rule
   (pos-name rule7_3-defeated-gen1173)
   (depends-on declare coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_3] ) ) ) ?gen243 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen242 & : ( >= ?gen242 1 ) ) ) ?gen236 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen239 & : ( not ( subseq-pos ( create$ rule7_3-defeated rule3 $$$ $?gen239 ) ) ) ) ) ( test ( eq ( class ?gen236 ) movement_restrictions ) ) => ( calc ( bind $?gen238 ( create$ rule7_3-defeated rule3 $?gen239 ) ) ) ?gen236 <- ( movement_restrictions ( positive-defeated $?gen238 ) )"))

([rule7_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_3-defeasibly-dot-gen1175)
   (depends-on declare movement_restrictions coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_3] ) ) ) ?gen236 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_3 $? ) ) ( test ( eq ( class ?gen236 ) movement_restrictions ) ) ( not ( and ?gen243 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen242 & : ( >= ?gen242 1 ) ) ) ?gen236 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen238 & : ( not ( member$ rule7_3 $?gen238 ) ) ) ) ) ) => ?gen236 <- ( movement_restrictions ( negative 0 ) )"))

([rule7_3-defeasibly] of derived-attribute-rule
   (pos-name rule7_3-defeasibly-gen1177)
   (depends-on declare coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_3] ) ) ) ?gen243 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen242 & : ( >= ?gen242 1 ) ) ) ?gen236 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen238 & : ( not ( member$ rule7_3 $?gen238 ) ) ) ) ( test ( eq ( class ?gen236 ) movement_restrictions ) ) => ?gen236 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule7_3 ?gen243 ) )"))

([rule7_3-overruled-dot] of derived-attribute-rule
   (pos-name rule7_3-overruled-dot-gen1179)
   (depends-on declare movement_restrictions coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_3] ) ) ) ?gen236 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen239 ) ( positive-overruled $?gen240 & : ( subseq-pos ( create$ rule7_3-overruled $?gen239 $$$ $?gen240 ) ) ) ) ( test ( eq ( class ?gen236 ) movement_restrictions ) ) ( not ( and ?gen243 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen242 & : ( >= ?gen242 1 ) ) ) ?gen236 <- ( movement_restrictions ( negative-defeated $?gen238 & : ( not ( member$ rule7_3 $?gen238 ) ) ) ) ) ) => ( calc ( bind $?gen241 ( delete-member$ $?gen240 ( create$ rule7_3-overruled $?gen239 ) ) ) ) ?gen236 <- ( movement_restrictions ( positive-overruled $?gen241 ) )"))

([rule7_3-overruled] of derived-attribute-rule
   (pos-name rule7_3-overruled-gen1181)
   (depends-on declare coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_3] ) ) ) ?gen243 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen242 & : ( >= ?gen242 1 ) ) ) ?gen236 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen239 ) ( positive-overruled $?gen240 & : ( not ( subseq-pos ( create$ rule7_3-overruled $?gen239 $$$ $?gen240 ) ) ) ) ( negative-defeated $?gen238 & : ( not ( member$ rule7_3 $?gen238 ) ) ) ) ( test ( eq ( class ?gen236 ) movement_restrictions ) ) => ( calc ( bind $?gen241 ( create$ rule7_3-overruled $?gen239 $?gen240 ) ) ) ?gen236 <- ( movement_restrictions ( positive-overruled $?gen241 ) )"))

([rule7_3-support] of derived-attribute-rule
   (pos-name rule7_3-support-gen1183)
   (depends-on declare coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_3] ) ) ) ?gen235 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen236 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen238 & : ( not ( subseq-pos ( create$ rule7_3 ?gen235 $$$ $?gen238 ) ) ) ) ) ( test ( eq ( class ?gen236 ) movement_restrictions ) ) => ( calc ( bind $?gen241 ( create$ rule7_3 ?gen235 $?gen238 ) ) ) ?gen236 <- ( movement_restrictions ( negative-support $?gen241 ) )"))

([rule7_2-defeated-dot] of derived-attribute-rule
   (pos-name rule7_2-defeated-dot-gen1185)
   (depends-on declare psychological_abuse_on_duty coercion_abuse)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_2] ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen230 & : ( subseq-pos ( create$ rule7_2-defeated rule2 $$$ $?gen230 ) ) ) ) ( test ( eq ( class ?gen227 ) psychological_abuse_on_duty ) ) ( not ?gen234 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ) => ( calc ( bind $?gen229 ( delete-member$ $?gen230 ( create$ rule7_2-defeated rule2 ) ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( positive-defeated $?gen229 ) )"))

([rule7_2-defeated] of derived-attribute-rule
   (pos-name rule7_2-defeated-gen1187)
   (depends-on declare coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_2] ) ) ) ?gen234 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen230 & : ( not ( subseq-pos ( create$ rule7_2-defeated rule2 $$$ $?gen230 ) ) ) ) ) ( test ( eq ( class ?gen227 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen229 ( create$ rule7_2-defeated rule2 $?gen230 ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( positive-defeated $?gen229 ) )"))

([rule7_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_2-defeasibly-dot-gen1189)
   (depends-on declare psychological_abuse_on_duty coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_2] ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_2 $? ) ) ( test ( eq ( class ?gen227 ) psychological_abuse_on_duty ) ) ( not ( and ?gen234 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen229 & : ( not ( member$ rule7_2 $?gen229 ) ) ) ) ) ) => ?gen227 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule7_2-defeasibly] of derived-attribute-rule
   (pos-name rule7_2-defeasibly-gen1191)
   (depends-on declare coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_2] ) ) ) ?gen234 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen229 & : ( not ( member$ rule7_2 $?gen229 ) ) ) ) ( test ( eq ( class ?gen227 ) psychological_abuse_on_duty ) ) => ?gen227 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule7_2 ?gen234 ) )"))

([rule7_2-overruled-dot] of derived-attribute-rule
   (pos-name rule7_2-overruled-dot-gen1193)
   (depends-on declare psychological_abuse_on_duty coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_2] ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen230 ) ( positive-overruled $?gen231 & : ( subseq-pos ( create$ rule7_2-overruled $?gen230 $$$ $?gen231 ) ) ) ) ( test ( eq ( class ?gen227 ) psychological_abuse_on_duty ) ) ( not ( and ?gen234 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( negative-defeated $?gen229 & : ( not ( member$ rule7_2 $?gen229 ) ) ) ) ) ) => ( calc ( bind $?gen232 ( delete-member$ $?gen231 ( create$ rule7_2-overruled $?gen230 ) ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( positive-overruled $?gen232 ) )"))

([rule7_2-overruled] of derived-attribute-rule
   (pos-name rule7_2-overruled-gen1195)
   (depends-on declare coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_2] ) ) ) ?gen234 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen233 & : ( >= ?gen233 1 ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen230 ) ( positive-overruled $?gen231 & : ( not ( subseq-pos ( create$ rule7_2-overruled $?gen230 $$$ $?gen231 ) ) ) ) ( negative-defeated $?gen229 & : ( not ( member$ rule7_2 $?gen229 ) ) ) ) ( test ( eq ( class ?gen227 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen232 ( create$ rule7_2-overruled $?gen230 $?gen231 ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( positive-overruled $?gen232 ) )"))

([rule7_2-support] of derived-attribute-rule
   (pos-name rule7_2-support-gen1197)
   (depends-on declare coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_2] ) ) ) ?gen226 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen227 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen229 & : ( not ( subseq-pos ( create$ rule7_2 ?gen226 $$$ $?gen229 ) ) ) ) ) ( test ( eq ( class ?gen227 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen232 ( create$ rule7_2 ?gen226 $?gen229 ) ) ) ?gen227 <- ( psychological_abuse_on_duty ( negative-support $?gen232 ) )"))

([rule7_1-defeated-dot] of derived-attribute-rule
   (pos-name rule7_1-defeated-dot-gen1199)
   (depends-on declare psychological_abuse coercion_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_1] ) ) ) ?gen218 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen221 & : ( subseq-pos ( create$ rule7_1-defeated rule1 $$$ $?gen221 ) ) ) ) ( test ( eq ( class ?gen218 ) psychological_abuse ) ) ( not ?gen225 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ) => ( calc ( bind $?gen220 ( delete-member$ $?gen221 ( create$ rule7_1-defeated rule1 ) ) ) ) ?gen218 <- ( psychological_abuse ( positive-defeated $?gen220 ) )"))

([rule7_1-defeated] of derived-attribute-rule
   (pos-name rule7_1-defeated-gen1201)
   (depends-on declare coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_1] ) ) ) ?gen225 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen218 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen221 & : ( not ( subseq-pos ( create$ rule7_1-defeated rule1 $$$ $?gen221 ) ) ) ) ) ( test ( eq ( class ?gen218 ) psychological_abuse ) ) => ( calc ( bind $?gen220 ( create$ rule7_1-defeated rule1 $?gen221 ) ) ) ?gen218 <- ( psychological_abuse ( positive-defeated $?gen220 ) )"))

([rule7_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_1-defeasibly-dot-gen1203)
   (depends-on declare psychological_abuse coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_1] ) ) ) ?gen218 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_1 $? ) ) ( test ( eq ( class ?gen218 ) psychological_abuse ) ) ( not ( and ?gen225 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen218 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen220 & : ( not ( member$ rule7_1 $?gen220 ) ) ) ) ) ) => ?gen218 <- ( psychological_abuse ( negative 0 ) )"))

([rule7_1-defeasibly] of derived-attribute-rule
   (pos-name rule7_1-defeasibly-gen1205)
   (depends-on declare coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_1] ) ) ) ?gen225 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen218 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen220 & : ( not ( member$ rule7_1 $?gen220 ) ) ) ) ( test ( eq ( class ?gen218 ) psychological_abuse ) ) => ?gen218 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule7_1 ?gen225 ) )"))

([rule7_1-overruled-dot] of derived-attribute-rule
   (pos-name rule7_1-overruled-dot-gen1207)
   (depends-on declare psychological_abuse coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_1] ) ) ) ?gen218 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen221 ) ( positive-overruled $?gen222 & : ( subseq-pos ( create$ rule7_1-overruled $?gen221 $$$ $?gen222 ) ) ) ) ( test ( eq ( class ?gen218 ) psychological_abuse ) ) ( not ( and ?gen225 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen218 <- ( psychological_abuse ( negative-defeated $?gen220 & : ( not ( member$ rule7_1 $?gen220 ) ) ) ) ) ) => ( calc ( bind $?gen223 ( delete-member$ $?gen222 ( create$ rule7_1-overruled $?gen221 ) ) ) ) ?gen218 <- ( psychological_abuse ( positive-overruled $?gen223 ) )"))

([rule7_1-overruled] of derived-attribute-rule
   (pos-name rule7_1-overruled-gen1209)
   (depends-on declare coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_1] ) ) ) ?gen225 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen224 & : ( >= ?gen224 1 ) ) ) ?gen218 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen221 ) ( positive-overruled $?gen222 & : ( not ( subseq-pos ( create$ rule7_1-overruled $?gen221 $$$ $?gen222 ) ) ) ) ( negative-defeated $?gen220 & : ( not ( member$ rule7_1 $?gen220 ) ) ) ) ( test ( eq ( class ?gen218 ) psychological_abuse ) ) => ( calc ( bind $?gen223 ( create$ rule7_1-overruled $?gen221 $?gen222 ) ) ) ?gen218 <- ( psychological_abuse ( positive-overruled $?gen223 ) )"))

([rule7_1-support] of derived-attribute-rule
   (pos-name rule7_1-support-gen1211)
   (depends-on declare coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_1] ) ) ) ?gen217 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen218 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen220 & : ( not ( subseq-pos ( create$ rule7_1 ?gen217 $$$ $?gen220 ) ) ) ) ) ( test ( eq ( class ?gen218 ) psychological_abuse ) ) => ( calc ( bind $?gen223 ( create$ rule7_1 ?gen217 $?gen220 ) ) ) ?gen218 <- ( psychological_abuse ( negative-support $?gen223 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen1213)
   (depends-on declare coercion_abuse lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen207 <- ( coercion_abuse ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen207 ) coercion_abuse ) ) ( not ( and ?gen214 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen213 & : ( >= ?gen213 1 ) ) ) ( test ( <= ?num_of_defendants 1 ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ?gen207 <- ( coercion_abuse ( negative ~ 2 ) ( positive-overruled $?gen209 & : ( not ( member$ rule7 $?gen209 ) ) ) ) ) ) => ?gen207 <- ( coercion_abuse ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen1215)
   (depends-on declare lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen214 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen213 & : ( >= ?gen213 1 ) ) ) ( test ( <= ?num_of_defendants 1 ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ?gen207 <- ( coercion_abuse ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen209 & : ( not ( member$ rule7 $?gen209 ) ) ) ) ( test ( eq ( class ?gen207 ) coercion_abuse ) ) => ?gen207 <- ( coercion_abuse ( positive 1 ) ( positive-derivator rule7 ?gen214 ?gen216 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen1217)
   (depends-on declare coercion_abuse lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen207 <- ( coercion_abuse ( defendant ?Defendant ) ( negative-support $?gen210 ) ( negative-overruled $?gen211 & : ( subseq-pos ( create$ rule7-overruled $?gen210 $$$ $?gen211 ) ) ) ) ( test ( eq ( class ?gen207 ) coercion_abuse ) ) ( not ( and ?gen214 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen213 & : ( >= ?gen213 1 ) ) ) ( test ( <= ?num_of_defendants 1 ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ?gen207 <- ( coercion_abuse ( positive-defeated $?gen209 & : ( not ( member$ rule7 $?gen209 ) ) ) ) ) ) => ( calc ( bind $?gen212 ( delete-member$ $?gen211 ( create$ rule7-overruled $?gen210 ) ) ) ) ?gen207 <- ( coercion_abuse ( negative-overruled $?gen212 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen1219)
   (depends-on declare lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen214 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen213 & : ( >= ?gen213 1 ) ) ) ( test ( <= ?num_of_defendants 1 ) ) ?gen216 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen215 & : ( >= ?gen215 1 ) ) ) ?gen207 <- ( coercion_abuse ( defendant ?Defendant ) ( negative-support $?gen210 ) ( negative-overruled $?gen211 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen210 $$$ $?gen211 ) ) ) ) ( positive-defeated $?gen209 & : ( not ( member$ rule7 $?gen209 ) ) ) ) ( test ( eq ( class ?gen207 ) coercion_abuse ) ) => ( calc ( bind $?gen212 ( create$ rule7-overruled $?gen210 $?gen211 ) ) ) ?gen207 <- ( coercion_abuse ( negative-overruled $?gen212 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen1221)
   (depends-on declare lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen204 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( test ( <= ?num_of_defendants 1 ) ) ?gen206 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ?gen207 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-support $?gen209 & : ( not ( subseq-pos ( create$ rule7 ?gen204 ?gen206 $$$ $?gen209 ) ) ) ) ) ( test ( eq ( class ?gen207 ) coercion_abuse ) ) => ( calc ( bind $?gen212 ( create$ rule7 ?gen204 ?gen206 $?gen209 ) ) ) ?gen207 <- ( coercion_abuse ( positive-support $?gen212 ) )"))

([rule6_4-defeated-dot] of derived-attribute-rule
   (pos-name rule6_4-defeated-dot-gen1223)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_death)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_4] ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen199 & : ( subseq-pos ( create$ rule6_4-defeated rule4 $$$ $?gen199 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) ( not ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ) => ( calc ( bind $?gen198 ( delete-member$ $?gen199 ( create$ rule6_4-defeated rule4 ) ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-defeated $?gen198 ) )"))

([rule6_4-defeated] of derived-attribute-rule
   (pos-name rule6_4-defeated-gen1225)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_4] ) ) ) ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen199 & : ( not ( subseq-pos ( create$ rule6_4-defeated rule4 $$$ $?gen199 ) ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen198 ( create$ rule6_4-defeated rule4 $?gen199 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-defeated $?gen198 ) )"))

([rule6_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_4-defeasibly-dot-gen1227)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_4] ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_4 $? ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) ( not ( and ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ) ) => ?gen196 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule6_4-defeasibly] of derived-attribute-rule
   (pos-name rule6_4-defeasibly-gen1229)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_4] ) ) ) ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ?gen196 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule6_4 ?gen203 ) )"))

([rule6_4-overruled-dot] of derived-attribute-rule
   (pos-name rule6_4-overruled-dot-gen1231)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_4] ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen199 ) ( positive-overruled $?gen200 & : ( subseq-pos ( create$ rule6_4-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) ( not ( and ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( negative-defeated $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ) ) => ( calc ( bind $?gen201 ( delete-member$ $?gen200 ( create$ rule6_4-overruled $?gen199 ) ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-overruled $?gen201 ) )"))

([rule6_4-overruled] of derived-attribute-rule
   (pos-name rule6_4-overruled-gen1233)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_4] ) ) ) ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen199 ) ( positive-overruled $?gen200 & : ( not ( subseq-pos ( create$ rule6_4-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( negative-defeated $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen201 ( create$ rule6_4-overruled $?gen199 $?gen200 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-overruled $?gen201 ) )"))

([rule6_4-support] of derived-attribute-rule
   (pos-name rule6_4-support-gen1235)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_4] ) ) ) ?gen195 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen198 & : ( not ( subseq-pos ( create$ rule6_4 ?gen195 $$$ $?gen198 ) ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen201 ( create$ rule6_4 ?gen195 $?gen198 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( negative-support $?gen201 ) )"))

([rule6_3-defeated-dot] of derived-attribute-rule
   (pos-name rule6_3-defeated-dot-gen1237)
   (depends-on declare movement_restrictions movement_restrictions_death)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_3] ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen190 & : ( subseq-pos ( create$ rule6_3-defeated rule3 $$$ $?gen190 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) ( not ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ) => ( calc ( bind $?gen189 ( delete-member$ $?gen190 ( create$ rule6_3-defeated rule3 ) ) ) ) ?gen187 <- ( movement_restrictions ( positive-defeated $?gen189 ) )"))

([rule6_3-defeated] of derived-attribute-rule
   (pos-name rule6_3-defeated-gen1239)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_3] ) ) ) ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen190 & : ( not ( subseq-pos ( create$ rule6_3-defeated rule3 $$$ $?gen190 ) ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ( calc ( bind $?gen189 ( create$ rule6_3-defeated rule3 $?gen190 ) ) ) ?gen187 <- ( movement_restrictions ( positive-defeated $?gen189 ) )"))

([rule6_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_3-defeasibly-dot-gen1241)
   (depends-on declare movement_restrictions movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_3] ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_3 $? ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) ( not ( and ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ) ) => ?gen187 <- ( movement_restrictions ( negative 0 ) )"))

([rule6_3-defeasibly] of derived-attribute-rule
   (pos-name rule6_3-defeasibly-gen1243)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_3] ) ) ) ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ?gen187 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule6_3 ?gen194 ) )"))

([rule6_3-overruled-dot] of derived-attribute-rule
   (pos-name rule6_3-overruled-dot-gen1245)
   (depends-on declare movement_restrictions movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_3] ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen190 ) ( positive-overruled $?gen191 & : ( subseq-pos ( create$ rule6_3-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) ( not ( and ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( negative-defeated $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ) ) => ( calc ( bind $?gen192 ( delete-member$ $?gen191 ( create$ rule6_3-overruled $?gen190 ) ) ) ) ?gen187 <- ( movement_restrictions ( positive-overruled $?gen192 ) )"))

([rule6_3-overruled] of derived-attribute-rule
   (pos-name rule6_3-overruled-gen1247)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_3] ) ) ) ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen190 ) ( positive-overruled $?gen191 & : ( not ( subseq-pos ( create$ rule6_3-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( negative-defeated $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ( calc ( bind $?gen192 ( create$ rule6_3-overruled $?gen190 $?gen191 ) ) ) ?gen187 <- ( movement_restrictions ( positive-overruled $?gen192 ) )"))

([rule6_3-support] of derived-attribute-rule
   (pos-name rule6_3-support-gen1249)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_3] ) ) ) ?gen186 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen189 & : ( not ( subseq-pos ( create$ rule6_3 ?gen186 $$$ $?gen189 ) ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ( calc ( bind $?gen192 ( create$ rule6_3 ?gen186 $?gen189 ) ) ) ?gen187 <- ( movement_restrictions ( negative-support $?gen192 ) )"))

([rule6_2-defeated-dot] of derived-attribute-rule
   (pos-name rule6_2-defeated-dot-gen1251)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_death)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_2] ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen181 & : ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen181 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) ( not ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ) => ( calc ( bind $?gen180 ( delete-member$ $?gen181 ( create$ rule6_2-defeated rule2 ) ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-defeated $?gen180 ) )"))

([rule6_2-defeated] of derived-attribute-rule
   (pos-name rule6_2-defeated-gen1253)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_2] ) ) ) ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen181 & : ( not ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen181 ) ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen180 ( create$ rule6_2-defeated rule2 $?gen181 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-defeated $?gen180 ) )"))

([rule6_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-dot-gen1255)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_2] ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_2 $? ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) ( not ( and ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ) ) => ?gen178 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule6_2-defeasibly] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-gen1257)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_2] ) ) ) ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ?gen178 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule6_2 ?gen185 ) )"))

([rule6_2-overruled-dot] of derived-attribute-rule
   (pos-name rule6_2-overruled-dot-gen1259)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_2] ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen181 ) ( positive-overruled $?gen182 & : ( subseq-pos ( create$ rule6_2-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) ( not ( and ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( negative-defeated $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ) ) => ( calc ( bind $?gen183 ( delete-member$ $?gen182 ( create$ rule6_2-overruled $?gen181 ) ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-overruled $?gen183 ) )"))

([rule6_2-overruled] of derived-attribute-rule
   (pos-name rule6_2-overruled-gen1261)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_2] ) ) ) ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen181 ) ( positive-overruled $?gen182 & : ( not ( subseq-pos ( create$ rule6_2-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( negative-defeated $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen183 ( create$ rule6_2-overruled $?gen181 $?gen182 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-overruled $?gen183 ) )"))

([rule6_2-support] of derived-attribute-rule
   (pos-name rule6_2-support-gen1263)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_2] ) ) ) ?gen177 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen180 & : ( not ( subseq-pos ( create$ rule6_2 ?gen177 $$$ $?gen180 ) ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen183 ( create$ rule6_2 ?gen177 $?gen180 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( negative-support $?gen183 ) )"))

([rule6_1-defeated-dot] of derived-attribute-rule
   (pos-name rule6_1-defeated-dot-gen1265)
   (depends-on declare psychological_abuse movement_restrictions_death)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_1] ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen172 & : ( subseq-pos ( create$ rule6_1-defeated rule1 $$$ $?gen172 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) ( not ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ) => ( calc ( bind $?gen171 ( delete-member$ $?gen172 ( create$ rule6_1-defeated rule1 ) ) ) ) ?gen169 <- ( psychological_abuse ( positive-defeated $?gen171 ) )"))

([rule6_1-defeated] of derived-attribute-rule
   (pos-name rule6_1-defeated-gen1267)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_1] ) ) ) ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen172 & : ( not ( subseq-pos ( create$ rule6_1-defeated rule1 $$$ $?gen172 ) ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ( calc ( bind $?gen171 ( create$ rule6_1-defeated rule1 $?gen172 ) ) ) ?gen169 <- ( psychological_abuse ( positive-defeated $?gen171 ) )"))

([rule6_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_1-defeasibly-dot-gen1269)
   (depends-on declare psychological_abuse movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_1] ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_1 $? ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) ( not ( and ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ) ) => ?gen169 <- ( psychological_abuse ( negative 0 ) )"))

([rule6_1-defeasibly] of derived-attribute-rule
   (pos-name rule6_1-defeasibly-gen1271)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_1] ) ) ) ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ?gen169 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule6_1 ?gen176 ) )"))

([rule6_1-overruled-dot] of derived-attribute-rule
   (pos-name rule6_1-overruled-dot-gen1273)
   (depends-on declare psychological_abuse movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_1] ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen172 ) ( positive-overruled $?gen173 & : ( subseq-pos ( create$ rule6_1-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) ( not ( and ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( negative-defeated $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ) ) => ( calc ( bind $?gen174 ( delete-member$ $?gen173 ( create$ rule6_1-overruled $?gen172 ) ) ) ) ?gen169 <- ( psychological_abuse ( positive-overruled $?gen174 ) )"))

([rule6_1-overruled] of derived-attribute-rule
   (pos-name rule6_1-overruled-gen1275)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_1] ) ) ) ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen172 ) ( positive-overruled $?gen173 & : ( not ( subseq-pos ( create$ rule6_1-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( negative-defeated $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ( calc ( bind $?gen174 ( create$ rule6_1-overruled $?gen172 $?gen173 ) ) ) ?gen169 <- ( psychological_abuse ( positive-overruled $?gen174 ) )"))

([rule6_1-support] of derived-attribute-rule
   (pos-name rule6_1-support-gen1277)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_1] ) ) ) ?gen168 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen171 & : ( not ( subseq-pos ( create$ rule6_1 ?gen168 $$$ $?gen171 ) ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ( calc ( bind $?gen174 ( create$ rule6_1 ?gen168 $?gen171 ) ) ) ?gen169 <- ( psychological_abuse ( negative-support $?gen174 ) )"))

([rule6-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6-defeasibly-dot-gen1279)
   (depends-on declare movement_restrictions_death lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6] ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule6 $? ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) ( not ( and ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ) ) => ?gen160 <- ( movement_restrictions_death ( positive 0 ) )"))

([rule6-defeasibly] of derived-attribute-rule
   (pos-name rule6-defeasibly-gen1281)
   (depends-on declare lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6] ) ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) => ?gen160 <- ( movement_restrictions_death ( positive 1 ) ( positive-derivator rule6 ?gen167 ) )"))

([rule6-overruled-dot] of derived-attribute-rule
   (pos-name rule6-overruled-dot-gen1283)
   (depends-on declare movement_restrictions_death lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6] ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( subseq-pos ( create$ rule6-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) ( not ( and ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( positive-defeated $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ) ) => ( calc ( bind $?gen165 ( delete-member$ $?gen164 ( create$ rule6-overruled $?gen163 ) ) ) ) ?gen160 <- ( movement_restrictions_death ( negative-overruled $?gen165 ) )"))

([rule6-overruled] of derived-attribute-rule
   (pos-name rule6-overruled-gen1285)
   (depends-on declare lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6] ) ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( not ( subseq-pos ( create$ rule6-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( positive-defeated $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) => ( calc ( bind $?gen165 ( create$ rule6-overruled $?gen163 $?gen164 ) ) ) ?gen160 <- ( movement_restrictions_death ( negative-overruled $?gen165 ) )"))

([rule6-support] of derived-attribute-rule
   (pos-name rule6-support-gen1287)
   (depends-on declare lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6] ) ) ) ?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive-support $?gen162 & : ( not ( subseq-pos ( create$ rule6 ?gen159 $$$ $?gen162 ) ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) => ( calc ( bind $?gen165 ( create$ rule6 ?gen159 $?gen162 ) ) ) ?gen160 <- ( movement_restrictions_death ( positive-support $?gen165 ) )"))

([rule5_4-defeated-dot] of derived-attribute-rule
   (pos-name rule5_4-defeated-dot-gen1289)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_life_threatening)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_4] ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen154 & : ( subseq-pos ( create$ rule5_4-defeated rule4 $$$ $?gen154 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) ( not ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ) => ( calc ( bind $?gen153 ( delete-member$ $?gen154 ( create$ rule5_4-defeated rule4 ) ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-defeated $?gen153 ) )"))

([rule5_4-defeated] of derived-attribute-rule
   (pos-name rule5_4-defeated-gen1291)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_4] ) ) ) ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen154 & : ( not ( subseq-pos ( create$ rule5_4-defeated rule4 $$$ $?gen154 ) ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen153 ( create$ rule5_4-defeated rule4 $?gen154 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-defeated $?gen153 ) )"))

([rule5_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_4-defeasibly-dot-gen1293)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_4] ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_4 $? ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) ( not ( and ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ) ) => ?gen151 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule5_4-defeasibly] of derived-attribute-rule
   (pos-name rule5_4-defeasibly-gen1295)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_4] ) ) ) ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ?gen151 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule5_4 ?gen158 ) )"))

([rule5_4-overruled-dot] of derived-attribute-rule
   (pos-name rule5_4-overruled-dot-gen1297)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_4] ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen154 ) ( positive-overruled $?gen155 & : ( subseq-pos ( create$ rule5_4-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) ( not ( and ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( negative-defeated $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ) ) => ( calc ( bind $?gen156 ( delete-member$ $?gen155 ( create$ rule5_4-overruled $?gen154 ) ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-overruled $?gen156 ) )"))

([rule5_4-overruled] of derived-attribute-rule
   (pos-name rule5_4-overruled-gen1299)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_4] ) ) ) ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen154 ) ( positive-overruled $?gen155 & : ( not ( subseq-pos ( create$ rule5_4-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( negative-defeated $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen156 ( create$ rule5_4-overruled $?gen154 $?gen155 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-overruled $?gen156 ) )"))

([rule5_4-support] of derived-attribute-rule
   (pos-name rule5_4-support-gen1301)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_4] ) ) ) ?gen150 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen153 & : ( not ( subseq-pos ( create$ rule5_4 ?gen150 $$$ $?gen153 ) ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen156 ( create$ rule5_4 ?gen150 $?gen153 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( negative-support $?gen156 ) )"))

([rule5_3-defeated-dot] of derived-attribute-rule
   (pos-name rule5_3-defeated-dot-gen1303)
   (depends-on declare movement_restrictions movement_restrictions_life_threatening)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_3] ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen145 & : ( subseq-pos ( create$ rule5_3-defeated rule3 $$$ $?gen145 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) ( not ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ) => ( calc ( bind $?gen144 ( delete-member$ $?gen145 ( create$ rule5_3-defeated rule3 ) ) ) ) ?gen142 <- ( movement_restrictions ( positive-defeated $?gen144 ) )"))

([rule5_3-defeated] of derived-attribute-rule
   (pos-name rule5_3-defeated-gen1305)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_3] ) ) ) ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen145 & : ( not ( subseq-pos ( create$ rule5_3-defeated rule3 $$$ $?gen145 ) ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ( calc ( bind $?gen144 ( create$ rule5_3-defeated rule3 $?gen145 ) ) ) ?gen142 <- ( movement_restrictions ( positive-defeated $?gen144 ) )"))

([rule5_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_3-defeasibly-dot-gen1307)
   (depends-on declare movement_restrictions movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_3] ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_3 $? ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) ( not ( and ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ) ) => ?gen142 <- ( movement_restrictions ( negative 0 ) )"))

([rule5_3-defeasibly] of derived-attribute-rule
   (pos-name rule5_3-defeasibly-gen1309)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_3] ) ) ) ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ?gen142 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule5_3 ?gen149 ) )"))

([rule5_3-overruled-dot] of derived-attribute-rule
   (pos-name rule5_3-overruled-dot-gen1311)
   (depends-on declare movement_restrictions movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_3] ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen145 ) ( positive-overruled $?gen146 & : ( subseq-pos ( create$ rule5_3-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) ( not ( and ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( negative-defeated $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ) ) => ( calc ( bind $?gen147 ( delete-member$ $?gen146 ( create$ rule5_3-overruled $?gen145 ) ) ) ) ?gen142 <- ( movement_restrictions ( positive-overruled $?gen147 ) )"))

([rule5_3-overruled] of derived-attribute-rule
   (pos-name rule5_3-overruled-gen1313)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_3] ) ) ) ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen145 ) ( positive-overruled $?gen146 & : ( not ( subseq-pos ( create$ rule5_3-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( negative-defeated $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ( calc ( bind $?gen147 ( create$ rule5_3-overruled $?gen145 $?gen146 ) ) ) ?gen142 <- ( movement_restrictions ( positive-overruled $?gen147 ) )"))

([rule5_3-support] of derived-attribute-rule
   (pos-name rule5_3-support-gen1315)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_3] ) ) ) ?gen141 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen144 & : ( not ( subseq-pos ( create$ rule5_3 ?gen141 $$$ $?gen144 ) ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ( calc ( bind $?gen147 ( create$ rule5_3 ?gen141 $?gen144 ) ) ) ?gen142 <- ( movement_restrictions ( negative-support $?gen147 ) )"))

([rule5_2-defeated-dot] of derived-attribute-rule
   (pos-name rule5_2-defeated-dot-gen1317)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_life_threatening)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_2] ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen136 & : ( subseq-pos ( create$ rule5_2-defeated rule2 $$$ $?gen136 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) ( not ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ) => ( calc ( bind $?gen135 ( delete-member$ $?gen136 ( create$ rule5_2-defeated rule2 ) ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-defeated $?gen135 ) )"))

([rule5_2-defeated] of derived-attribute-rule
   (pos-name rule5_2-defeated-gen1319)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_2] ) ) ) ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen136 & : ( not ( subseq-pos ( create$ rule5_2-defeated rule2 $$$ $?gen136 ) ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen135 ( create$ rule5_2-defeated rule2 $?gen136 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-defeated $?gen135 ) )"))

([rule5_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_2-defeasibly-dot-gen1321)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_2] ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_2 $? ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) ( not ( and ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ) ) => ?gen133 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule5_2-defeasibly] of derived-attribute-rule
   (pos-name rule5_2-defeasibly-gen1323)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_2] ) ) ) ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ?gen133 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule5_2 ?gen140 ) )"))

([rule5_2-overruled-dot] of derived-attribute-rule
   (pos-name rule5_2-overruled-dot-gen1325)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_2] ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen136 ) ( positive-overruled $?gen137 & : ( subseq-pos ( create$ rule5_2-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) ( not ( and ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( negative-defeated $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ) ) => ( calc ( bind $?gen138 ( delete-member$ $?gen137 ( create$ rule5_2-overruled $?gen136 ) ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-overruled $?gen138 ) )"))

([rule5_2-overruled] of derived-attribute-rule
   (pos-name rule5_2-overruled-gen1327)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_2] ) ) ) ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen136 ) ( positive-overruled $?gen137 & : ( not ( subseq-pos ( create$ rule5_2-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( negative-defeated $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen138 ( create$ rule5_2-overruled $?gen136 $?gen137 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-overruled $?gen138 ) )"))

([rule5_2-support] of derived-attribute-rule
   (pos-name rule5_2-support-gen1329)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_2] ) ) ) ?gen132 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen135 & : ( not ( subseq-pos ( create$ rule5_2 ?gen132 $$$ $?gen135 ) ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen138 ( create$ rule5_2 ?gen132 $?gen135 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( negative-support $?gen138 ) )"))

([rule5_1-defeated-dot] of derived-attribute-rule
   (pos-name rule5_1-defeated-dot-gen1331)
   (depends-on declare psychological_abuse movement_restrictions_life_threatening)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_1] ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen127 & : ( subseq-pos ( create$ rule5_1-defeated rule1 $$$ $?gen127 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) ( not ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ) => ( calc ( bind $?gen126 ( delete-member$ $?gen127 ( create$ rule5_1-defeated rule1 ) ) ) ) ?gen124 <- ( psychological_abuse ( positive-defeated $?gen126 ) )"))

([rule5_1-defeated] of derived-attribute-rule
   (pos-name rule5_1-defeated-gen1333)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_1] ) ) ) ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen127 & : ( not ( subseq-pos ( create$ rule5_1-defeated rule1 $$$ $?gen127 ) ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ( calc ( bind $?gen126 ( create$ rule5_1-defeated rule1 $?gen127 ) ) ) ?gen124 <- ( psychological_abuse ( positive-defeated $?gen126 ) )"))

([rule5_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-dot-gen1335)
   (depends-on declare psychological_abuse movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_1] ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_1 $? ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) ( not ( and ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ) ) => ?gen124 <- ( psychological_abuse ( negative 0 ) )"))

([rule5_1-defeasibly] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-gen1337)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_1] ) ) ) ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ?gen124 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule5_1 ?gen131 ) )"))

([rule5_1-overruled-dot] of derived-attribute-rule
   (pos-name rule5_1-overruled-dot-gen1339)
   (depends-on declare psychological_abuse movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_1] ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen127 ) ( positive-overruled $?gen128 & : ( subseq-pos ( create$ rule5_1-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) ( not ( and ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( negative-defeated $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ) ) => ( calc ( bind $?gen129 ( delete-member$ $?gen128 ( create$ rule5_1-overruled $?gen127 ) ) ) ) ?gen124 <- ( psychological_abuse ( positive-overruled $?gen129 ) )"))

([rule5_1-overruled] of derived-attribute-rule
   (pos-name rule5_1-overruled-gen1341)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_1] ) ) ) ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen127 ) ( positive-overruled $?gen128 & : ( not ( subseq-pos ( create$ rule5_1-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( negative-defeated $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ( calc ( bind $?gen129 ( create$ rule5_1-overruled $?gen127 $?gen128 ) ) ) ?gen124 <- ( psychological_abuse ( positive-overruled $?gen129 ) )"))

([rule5_1-support] of derived-attribute-rule
   (pos-name rule5_1-support-gen1343)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_1] ) ) ) ?gen123 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen126 & : ( not ( subseq-pos ( create$ rule5_1 ?gen123 $$$ $?gen126 ) ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ( calc ( bind $?gen129 ( create$ rule5_1 ?gen123 $?gen126 ) ) ) ?gen124 <- ( psychological_abuse ( negative-support $?gen129 ) )"))

([rule5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5-defeasibly-dot-gen1345)
   (depends-on declare movement_restrictions_life_threatening lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5] ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule5 $? ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) ( not ( and ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( negative ~ 2 ) ( positive-overruled $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ) ) => ?gen115 <- ( movement_restrictions_life_threatening ( positive 0 ) )"))

([rule5-defeasibly] of derived-attribute-rule
   (pos-name rule5-defeasibly-gen1347)
   (depends-on declare lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5] ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) => ?gen115 <- ( movement_restrictions_life_threatening ( positive 1 ) ( positive-derivator rule5 ?gen122 ) )"))

([rule5-overruled-dot] of derived-attribute-rule
   (pos-name rule5-overruled-dot-gen1349)
   (depends-on declare movement_restrictions_life_threatening lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5] ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( negative-support $?gen118 ) ( negative-overruled $?gen119 & : ( subseq-pos ( create$ rule5-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) ( not ( and ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( positive-defeated $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ) ) => ( calc ( bind $?gen120 ( delete-member$ $?gen119 ( create$ rule5-overruled $?gen118 ) ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( negative-overruled $?gen120 ) )"))

([rule5-overruled] of derived-attribute-rule
   (pos-name rule5-overruled-gen1351)
   (depends-on declare lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5] ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( negative-support $?gen118 ) ( negative-overruled $?gen119 & : ( not ( subseq-pos ( create$ rule5-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( positive-defeated $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) => ( calc ( bind $?gen120 ( create$ rule5-overruled $?gen118 $?gen119 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( negative-overruled $?gen120 ) )"))

([rule5-support] of derived-attribute-rule
   (pos-name rule5-support-gen1353)
   (depends-on declare lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5] ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive-support $?gen117 & : ( not ( subseq-pos ( create$ rule5 ?gen114 $$$ $?gen117 ) ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) => ( calc ( bind $?gen120 ( create$ rule5 ?gen114 $?gen117 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( positive-support $?gen120 ) )"))

([rule4_3-defeated-dot] of derived-attribute-rule
   (pos-name rule4_3-defeated-dot-gen1355)
   (depends-on declare movement_restrictions movement_restrictions_on_duty)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4_3] ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen109 & : ( subseq-pos ( create$ rule4_3-defeated rule3 $$$ $?gen109 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) ( not ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ) => ( calc ( bind $?gen108 ( delete-member$ $?gen109 ( create$ rule4_3-defeated rule3 ) ) ) ) ?gen106 <- ( movement_restrictions ( positive-defeated $?gen108 ) )"))

([rule4_3-defeated] of derived-attribute-rule
   (pos-name rule4_3-defeated-gen1357)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4_3] ) ) ) ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen109 & : ( not ( subseq-pos ( create$ rule4_3-defeated rule3 $$$ $?gen109 ) ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ( calc ( bind $?gen108 ( create$ rule4_3-defeated rule3 $?gen109 ) ) ) ?gen106 <- ( movement_restrictions ( positive-defeated $?gen108 ) )"))

([rule4_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4_3-defeasibly-dot-gen1359)
   (depends-on declare movement_restrictions movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4_3] ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule4_3 $? ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) ( not ( and ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ) ) => ?gen106 <- ( movement_restrictions ( negative 0 ) )"))

([rule4_3-defeasibly] of derived-attribute-rule
   (pos-name rule4_3-defeasibly-gen1361)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4_3] ) ) ) ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ?gen106 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule4_3 ?gen113 ) )"))

([rule4_3-overruled-dot] of derived-attribute-rule
   (pos-name rule4_3-overruled-dot-gen1363)
   (depends-on declare movement_restrictions movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4_3] ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen109 ) ( positive-overruled $?gen110 & : ( subseq-pos ( create$ rule4_3-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) ( not ( and ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( negative-defeated $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ) ) => ( calc ( bind $?gen111 ( delete-member$ $?gen110 ( create$ rule4_3-overruled $?gen109 ) ) ) ) ?gen106 <- ( movement_restrictions ( positive-overruled $?gen111 ) )"))

([rule4_3-overruled] of derived-attribute-rule
   (pos-name rule4_3-overruled-gen1365)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4_3] ) ) ) ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen109 ) ( positive-overruled $?gen110 & : ( not ( subseq-pos ( create$ rule4_3-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( negative-defeated $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ( calc ( bind $?gen111 ( create$ rule4_3-overruled $?gen109 $?gen110 ) ) ) ?gen106 <- ( movement_restrictions ( positive-overruled $?gen111 ) )"))

([rule4_3-support] of derived-attribute-rule
   (pos-name rule4_3-support-gen1367)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4_3] ) ) ) ?gen105 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen108 & : ( not ( subseq-pos ( create$ rule4_3 ?gen105 $$$ $?gen108 ) ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ( calc ( bind $?gen111 ( create$ rule4_3 ?gen105 $?gen108 ) ) ) ?gen106 <- ( movement_restrictions ( negative-support $?gen111 ) )"))

([rule4_2-defeated-dot] of derived-attribute-rule
   (pos-name rule4_2-defeated-dot-gen1369)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4_2] ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen100 & : ( subseq-pos ( create$ rule4_2-defeated rule2 $$$ $?gen100 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) ( not ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ) => ( calc ( bind $?gen99 ( delete-member$ $?gen100 ( create$ rule4_2-defeated rule2 ) ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-defeated $?gen99 ) )"))

([rule4_2-defeated] of derived-attribute-rule
   (pos-name rule4_2-defeated-gen1371)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4_2] ) ) ) ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen100 & : ( not ( subseq-pos ( create$ rule4_2-defeated rule2 $$$ $?gen100 ) ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen99 ( create$ rule4_2-defeated rule2 $?gen100 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-defeated $?gen99 ) )"))

([rule4_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4_2-defeasibly-dot-gen1373)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4_2] ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule4_2 $? ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) ( not ( and ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ) ) => ?gen97 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule4_2-defeasibly] of derived-attribute-rule
   (pos-name rule4_2-defeasibly-gen1375)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4_2] ) ) ) ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ?gen97 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule4_2 ?gen104 ) )"))

([rule4_2-overruled-dot] of derived-attribute-rule
   (pos-name rule4_2-overruled-dot-gen1377)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4_2] ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen100 ) ( positive-overruled $?gen101 & : ( subseq-pos ( create$ rule4_2-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) ( not ( and ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( negative-defeated $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ) ) => ( calc ( bind $?gen102 ( delete-member$ $?gen101 ( create$ rule4_2-overruled $?gen100 ) ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-overruled $?gen102 ) )"))

([rule4_2-overruled] of derived-attribute-rule
   (pos-name rule4_2-overruled-gen1379)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4_2] ) ) ) ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen100 ) ( positive-overruled $?gen101 & : ( not ( subseq-pos ( create$ rule4_2-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( negative-defeated $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen102 ( create$ rule4_2-overruled $?gen100 $?gen101 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-overruled $?gen102 ) )"))

([rule4_2-support] of derived-attribute-rule
   (pos-name rule4_2-support-gen1381)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4_2] ) ) ) ?gen96 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen99 & : ( not ( subseq-pos ( create$ rule4_2 ?gen96 $$$ $?gen99 ) ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen102 ( create$ rule4_2 ?gen96 $?gen99 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( negative-support $?gen102 ) )"))

([rule4_1-defeated-dot] of derived-attribute-rule
   (pos-name rule4_1-defeated-dot-gen1383)
   (depends-on declare psychological_abuse movement_restrictions_on_duty)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4_1] ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen91 & : ( subseq-pos ( create$ rule4_1-defeated rule1 $$$ $?gen91 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) ( not ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ) => ( calc ( bind $?gen90 ( delete-member$ $?gen91 ( create$ rule4_1-defeated rule1 ) ) ) ) ?gen88 <- ( psychological_abuse ( positive-defeated $?gen90 ) )"))

([rule4_1-defeated] of derived-attribute-rule
   (pos-name rule4_1-defeated-gen1385)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4_1] ) ) ) ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen91 & : ( not ( subseq-pos ( create$ rule4_1-defeated rule1 $$$ $?gen91 ) ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ( calc ( bind $?gen90 ( create$ rule4_1-defeated rule1 $?gen91 ) ) ) ?gen88 <- ( psychological_abuse ( positive-defeated $?gen90 ) )"))

([rule4_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4_1-defeasibly-dot-gen1387)
   (depends-on declare psychological_abuse movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4_1] ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule4_1 $? ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) ( not ( and ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ) ) => ?gen88 <- ( psychological_abuse ( negative 0 ) )"))

([rule4_1-defeasibly] of derived-attribute-rule
   (pos-name rule4_1-defeasibly-gen1389)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4_1] ) ) ) ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ?gen88 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule4_1 ?gen95 ) )"))

([rule4_1-overruled-dot] of derived-attribute-rule
   (pos-name rule4_1-overruled-dot-gen1391)
   (depends-on declare psychological_abuse movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4_1] ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen91 ) ( positive-overruled $?gen92 & : ( subseq-pos ( create$ rule4_1-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) ( not ( and ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( negative-defeated $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ) ) => ( calc ( bind $?gen93 ( delete-member$ $?gen92 ( create$ rule4_1-overruled $?gen91 ) ) ) ) ?gen88 <- ( psychological_abuse ( positive-overruled $?gen93 ) )"))

([rule4_1-overruled] of derived-attribute-rule
   (pos-name rule4_1-overruled-gen1393)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4_1] ) ) ) ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen91 ) ( positive-overruled $?gen92 & : ( not ( subseq-pos ( create$ rule4_1-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( negative-defeated $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ( calc ( bind $?gen93 ( create$ rule4_1-overruled $?gen91 $?gen92 ) ) ) ?gen88 <- ( psychological_abuse ( positive-overruled $?gen93 ) )"))

([rule4_1-support] of derived-attribute-rule
   (pos-name rule4_1-support-gen1395)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4_1] ) ) ) ?gen87 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen90 & : ( not ( subseq-pos ( create$ rule4_1 ?gen87 $$$ $?gen90 ) ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ( calc ( bind $?gen93 ( create$ rule4_1 ?gen87 $?gen90 ) ) ) ?gen88 <- ( psychological_abuse ( negative-support $?gen93 ) )"))

([rule4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4-defeasibly-dot-gen1397)
   (depends-on declare movement_restrictions_on_duty lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4] ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule4 $? ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) ( not ( and ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( negative ~ 2 ) ( positive-overruled $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ) ) => ?gen79 <- ( movement_restrictions_on_duty ( positive 0 ) )"))

([rule4-defeasibly] of derived-attribute-rule
   (pos-name rule4-defeasibly-gen1399)
   (depends-on declare lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4] ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) => ?gen79 <- ( movement_restrictions_on_duty ( positive 1 ) ( positive-derivator rule4 ?gen86 ) )"))

([rule4-overruled-dot] of derived-attribute-rule
   (pos-name rule4-overruled-dot-gen1401)
   (depends-on declare movement_restrictions_on_duty lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4] ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen82 ) ( negative-overruled $?gen83 & : ( subseq-pos ( create$ rule4-overruled $?gen82 $$$ $?gen83 ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) ( not ( and ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( positive-defeated $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ) ) => ( calc ( bind $?gen84 ( delete-member$ $?gen83 ( create$ rule4-overruled $?gen82 ) ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( negative-overruled $?gen84 ) )"))

([rule4-overruled] of derived-attribute-rule
   (pos-name rule4-overruled-gen1403)
   (depends-on declare lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4] ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen82 ) ( negative-overruled $?gen83 & : ( not ( subseq-pos ( create$ rule4-overruled $?gen82 $$$ $?gen83 ) ) ) ) ( positive-defeated $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen84 ( create$ rule4-overruled $?gen82 $?gen83 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( negative-overruled $?gen84 ) )"))

([rule4-support] of derived-attribute-rule
   (pos-name rule4-support-gen1405)
   (depends-on declare lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen81 & : ( not ( subseq-pos ( create$ rule4 ?gen78 $$$ $?gen81 ) ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen84 ( create$ rule4 ?gen78 $?gen81 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( positive-support $?gen84 ) )"))

([rule3_2-defeated-dot] of derived-attribute-rule
   (pos-name rule3_2-defeated-dot-gen1407)
   (depends-on declare psychological_abuse_on_duty movement_restrictions)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule3_2] ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen73 & : ( subseq-pos ( create$ rule3_2-defeated rule2 $$$ $?gen73 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) ( not ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ) => ( calc ( bind $?gen72 ( delete-member$ $?gen73 ( create$ rule3_2-defeated rule2 ) ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-defeated $?gen72 ) )"))

([rule3_2-defeated] of derived-attribute-rule
   (pos-name rule3_2-defeated-gen1409)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule3_2] ) ) ) ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen73 & : ( not ( subseq-pos ( create$ rule3_2-defeated rule2 $$$ $?gen73 ) ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen72 ( create$ rule3_2-defeated rule2 $?gen73 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-defeated $?gen72 ) )"))

([rule3_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3_2-defeasibly-dot-gen1411)
   (depends-on declare psychological_abuse_on_duty movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3_2] ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule3_2 $? ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) ( not ( and ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ) ) => ?gen70 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule3_2-defeasibly] of derived-attribute-rule
   (pos-name rule3_2-defeasibly-gen1413)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3_2] ) ) ) ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ?gen70 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule3_2 ?gen77 ) )"))

([rule3_2-overruled-dot] of derived-attribute-rule
   (pos-name rule3_2-overruled-dot-gen1415)
   (depends-on declare psychological_abuse_on_duty movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3_2] ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen73 ) ( positive-overruled $?gen74 & : ( subseq-pos ( create$ rule3_2-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) ( not ( and ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( negative-defeated $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ) ) => ( calc ( bind $?gen75 ( delete-member$ $?gen74 ( create$ rule3_2-overruled $?gen73 ) ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-overruled $?gen75 ) )"))

([rule3_2-overruled] of derived-attribute-rule
   (pos-name rule3_2-overruled-gen1417)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3_2] ) ) ) ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen73 ) ( positive-overruled $?gen74 & : ( not ( subseq-pos ( create$ rule3_2-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( negative-defeated $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen75 ( create$ rule3_2-overruled $?gen73 $?gen74 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-overruled $?gen75 ) )"))

([rule3_2-support] of derived-attribute-rule
   (pos-name rule3_2-support-gen1419)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3_2] ) ) ) ?gen69 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen72 & : ( not ( subseq-pos ( create$ rule3_2 ?gen69 $$$ $?gen72 ) ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen75 ( create$ rule3_2 ?gen69 $?gen72 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( negative-support $?gen75 ) )"))

([rule3_1-defeated-dot] of derived-attribute-rule
   (pos-name rule3_1-defeated-dot-gen1421)
   (depends-on declare psychological_abuse movement_restrictions)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule3_1] ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen64 & : ( subseq-pos ( create$ rule3_1-defeated rule1 $$$ $?gen64 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) ( not ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ) => ( calc ( bind $?gen63 ( delete-member$ $?gen64 ( create$ rule3_1-defeated rule1 ) ) ) ) ?gen61 <- ( psychological_abuse ( positive-defeated $?gen63 ) )"))

([rule3_1-defeated] of derived-attribute-rule
   (pos-name rule3_1-defeated-gen1423)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule3_1] ) ) ) ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen64 & : ( not ( subseq-pos ( create$ rule3_1-defeated rule1 $$$ $?gen64 ) ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ( calc ( bind $?gen63 ( create$ rule3_1-defeated rule1 $?gen64 ) ) ) ?gen61 <- ( psychological_abuse ( positive-defeated $?gen63 ) )"))

([rule3_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3_1-defeasibly-dot-gen1425)
   (depends-on declare psychological_abuse movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3_1] ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule3_1 $? ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) ( not ( and ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ) ) => ?gen61 <- ( psychological_abuse ( negative 0 ) )"))

([rule3_1-defeasibly] of derived-attribute-rule
   (pos-name rule3_1-defeasibly-gen1427)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3_1] ) ) ) ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ?gen61 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule3_1 ?gen68 ) )"))

([rule3_1-overruled-dot] of derived-attribute-rule
   (pos-name rule3_1-overruled-dot-gen1429)
   (depends-on declare psychological_abuse movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3_1] ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen64 ) ( positive-overruled $?gen65 & : ( subseq-pos ( create$ rule3_1-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) ( not ( and ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( negative-defeated $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ) ) => ( calc ( bind $?gen66 ( delete-member$ $?gen65 ( create$ rule3_1-overruled $?gen64 ) ) ) ) ?gen61 <- ( psychological_abuse ( positive-overruled $?gen66 ) )"))

([rule3_1-overruled] of derived-attribute-rule
   (pos-name rule3_1-overruled-gen1431)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3_1] ) ) ) ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen64 ) ( positive-overruled $?gen65 & : ( not ( subseq-pos ( create$ rule3_1-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( negative-defeated $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ( calc ( bind $?gen66 ( create$ rule3_1-overruled $?gen64 $?gen65 ) ) ) ?gen61 <- ( psychological_abuse ( positive-overruled $?gen66 ) )"))

([rule3_1-support] of derived-attribute-rule
   (pos-name rule3_1-support-gen1433)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3_1] ) ) ) ?gen60 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen63 & : ( not ( subseq-pos ( create$ rule3_1 ?gen60 $$$ $?gen63 ) ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ( calc ( bind $?gen66 ( create$ rule3_1 ?gen60 $?gen63 ) ) ) ?gen61 <- ( psychological_abuse ( negative-support $?gen66 ) )"))

([rule3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3-defeasibly-dot-gen1435)
   (depends-on declare movement_restrictions lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3] ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule3 $? ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) ( not ( and ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ) ) => ?gen52 <- ( movement_restrictions ( positive 0 ) )"))

([rule3-defeasibly] of derived-attribute-rule
   (pos-name rule3-defeasibly-gen1437)
   (depends-on declare lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3] ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) => ?gen52 <- ( movement_restrictions ( positive 1 ) ( positive-derivator rule3 ?gen59 ) )"))

([rule3-overruled-dot] of derived-attribute-rule
   (pos-name rule3-overruled-dot-gen1439)
   (depends-on declare movement_restrictions lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3] ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( subseq-pos ( create$ rule3-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) ( not ( and ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( positive-defeated $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ) ) => ( calc ( bind $?gen57 ( delete-member$ $?gen56 ( create$ rule3-overruled $?gen55 ) ) ) ) ?gen52 <- ( movement_restrictions ( negative-overruled $?gen57 ) )"))

([rule3-overruled] of derived-attribute-rule
   (pos-name rule3-overruled-gen1441)
   (depends-on declare lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3] ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( not ( subseq-pos ( create$ rule3-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( positive-defeated $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) => ( calc ( bind $?gen57 ( create$ rule3-overruled $?gen55 $?gen56 ) ) ) ?gen52 <- ( movement_restrictions ( negative-overruled $?gen57 ) )"))

([rule3-support] of derived-attribute-rule
   (pos-name rule3-support-gen1443)
   (depends-on declare lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen54 & : ( not ( subseq-pos ( create$ rule3 ?gen51 $$$ $?gen54 ) ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) => ( calc ( bind $?gen57 ( create$ rule3 ?gen51 $?gen54 ) ) ) ?gen52 <- ( movement_restrictions ( positive-support $?gen57 ) )"))

([rule2_1-defeated-dot] of derived-attribute-rule
   (pos-name rule2_1-defeated-dot-gen1445)
   (depends-on declare psychological_abuse psychological_abuse_on_duty)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule2_1] ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen46 & : ( subseq-pos ( create$ rule2_1-defeated rule1 $$$ $?gen46 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) ( not ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ) => ( calc ( bind $?gen45 ( delete-member$ $?gen46 ( create$ rule2_1-defeated rule1 ) ) ) ) ?gen43 <- ( psychological_abuse ( positive-defeated $?gen45 ) )"))

([rule2_1-defeated] of derived-attribute-rule
   (pos-name rule2_1-defeated-gen1447)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule2_1] ) ) ) ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen46 & : ( not ( subseq-pos ( create$ rule2_1-defeated rule1 $$$ $?gen46 ) ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ( calc ( bind $?gen45 ( create$ rule2_1-defeated rule1 $?gen46 ) ) ) ?gen43 <- ( psychological_abuse ( positive-defeated $?gen45 ) )"))

([rule2_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2_1-defeasibly-dot-gen1449)
   (depends-on declare psychological_abuse psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2_1] ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule2_1 $? ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) ( not ( and ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ) ) => ?gen43 <- ( psychological_abuse ( negative 0 ) )"))

([rule2_1-defeasibly] of derived-attribute-rule
   (pos-name rule2_1-defeasibly-gen1451)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2_1] ) ) ) ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ?gen43 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule2_1 ?gen50 ) )"))

([rule2_1-overruled-dot] of derived-attribute-rule
   (pos-name rule2_1-overruled-dot-gen1453)
   (depends-on declare psychological_abuse psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2_1] ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen46 ) ( positive-overruled $?gen47 & : ( subseq-pos ( create$ rule2_1-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) ( not ( and ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( negative-defeated $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ) ) => ( calc ( bind $?gen48 ( delete-member$ $?gen47 ( create$ rule2_1-overruled $?gen46 ) ) ) ) ?gen43 <- ( psychological_abuse ( positive-overruled $?gen48 ) )"))

([rule2_1-overruled] of derived-attribute-rule
   (pos-name rule2_1-overruled-gen1455)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2_1] ) ) ) ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen46 ) ( positive-overruled $?gen47 & : ( not ( subseq-pos ( create$ rule2_1-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( negative-defeated $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ( calc ( bind $?gen48 ( create$ rule2_1-overruled $?gen46 $?gen47 ) ) ) ?gen43 <- ( psychological_abuse ( positive-overruled $?gen48 ) )"))

([rule2_1-support] of derived-attribute-rule
   (pos-name rule2_1-support-gen1457)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2_1] ) ) ) ?gen42 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen45 & : ( not ( subseq-pos ( create$ rule2_1 ?gen42 $$$ $?gen45 ) ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ( calc ( bind $?gen48 ( create$ rule2_1 ?gen42 $?gen45 ) ) ) ?gen43 <- ( psychological_abuse ( negative-support $?gen48 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen1459)
   (depends-on declare psychological_abuse_on_duty lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ) ) => ?gen30 <- ( psychological_abuse_on_duty ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen1461)
   (depends-on declare lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) => ?gen30 <- ( psychological_abuse_on_duty ( positive 1 ) ( positive-derivator rule2 ?gen37 ?gen39 ?gen41 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen1463)
   (depends-on declare psychological_abuse_on_duty lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( subseq-pos ( create$ rule2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( positive-defeated $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ) ) => ( calc ( bind $?gen35 ( delete-member$ $?gen34 ( create$ rule2-overruled $?gen33 ) ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( negative-overruled $?gen35 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen1465)
   (depends-on declare lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( positive-defeated $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen35 ( create$ rule2-overruled $?gen33 $?gen34 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( negative-overruled $?gen35 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen1467)
   (depends-on declare lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen32 & : ( not ( subseq-pos ( create$ rule2 ?gen27 ?gen28 ?gen29 $$$ $?gen32 ) ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen35 ( create$ rule2 ?gen27 ?gen28 ?gen29 $?gen32 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( positive-support $?gen35 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen1469)
   (depends-on declare psychological_abuse lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( psychological_abuse ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen1471)
   (depends-on declare lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) => ?gen17 <- ( psychological_abuse ( positive 1 ) ( positive-derivator rule1 ?gen24 ?gen26 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen1473)
   (depends-on declare psychological_abuse lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( positive-defeated $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule1-overruled $?gen20 ) ) ) ) ?gen17 <- ( psychological_abuse ( negative-overruled $?gen22 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen1475)
   (depends-on declare lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) => ( calc ( bind $?gen22 ( create$ rule1-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( psychological_abuse ( negative-overruled $?gen22 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen1477)
   (depends-on declare lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule1 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) => ( calc ( bind $?gen22 ( create$ rule1 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( psychological_abuse ( positive-support $?gen22 ) )"))

([pn_coercion_abuse_multiple_victims_max-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_multiple_victims_max-deductive-gen688)
   (depends-on coercion_abuse_multiple_victims max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen615 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_coercion_abuse_multiple_victims_max-deductive-gen688 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen615 ) ( is-a coercion_abuse_multiple_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pn_coercion_abuse_multiple_victims_min-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_multiple_victims_min-deductive-gen687)
   (depends-on coercion_abuse_multiple_victims min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen606 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_coercion_abuse_multiple_victims_min-deductive-gen687 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen606 ) ( is-a coercion_abuse_multiple_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_coercion_abuse_on_duty_max-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_on_duty_max-deductive-gen686)
   (depends-on coercion_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen597 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_coercion_abuse_on_duty_max-deductive-gen686 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen597 ) ( is-a coercion_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pn_coercion_abuse_on_duty_min-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_on_duty_min-deductive-gen685)
   (depends-on coercion_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen588 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_coercion_abuse_on_duty_min-deductive-gen685 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen588 ) ( is-a coercion_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_coercion_abuse_multiple_defendant_max-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-deductive-gen684)
   (depends-on coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen579 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 12 ) ) ) => ( max_imprisonment ( value 12 ) )")
   (production-rule "( defrule pn_coercion_abuse_multiple_defendant_max-deductive-gen684 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen579 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ( make-instance ?oid of max_imprisonment ( value 12 ) ) )")
   (derived-class max_imprisonment))

([pn_coercion_abuse_multiple_defendant_min-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-deductive-gen683)
   (depends-on coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen570 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_coercion_abuse_multiple_defendant_min-deductive-gen683 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen570 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([pn_coercion_abuse_max-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_max-deductive-gen682)
   (depends-on coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen561 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 3 ) ) ) => ( max_imprisonment ( value 3 ) )")
   (production-rule "( defrule pn_coercion_abuse_max-deductive-gen682 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen561 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ( make-instance ?oid of max_imprisonment ( value 3 ) ) )")
   (derived-class max_imprisonment))

([pn_coercion_abuse_min-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_min-deductive-gen681)
   (depends-on coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen552 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_coercion_abuse_min-deductive-gen681 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen552 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_movement_restrct_death_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_death_max-deductive-gen680)
   (depends-on movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen543 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 12 ) ) ) => ( max_imprisonment ( value 12 ) )")
   (production-rule "( defrule pn_movement_restrct_death_max-deductive-gen680 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen543 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ( make-instance ?oid of max_imprisonment ( value 12 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_death_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_death_min-deductive-gen679)
   (depends-on movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen534 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_movement_restrct_death_min-deductive-gen679 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen534 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([pn_movement_restrct_life_threatening_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_life_threatening_max-deductive-gen678)
   (depends-on movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen525 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 8 ) ) ) => ( max_imprisonment ( value 8 ) )")
   (production-rule "( defrule pn_movement_restrct_life_threatening_max-deductive-gen678 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen525 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ( make-instance ?oid of max_imprisonment ( value 8 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_life_threatening_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_life_threatening_min-deductive-gen677)
   (depends-on movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen516 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_movement_restrct_life_threatening_min-deductive-gen677 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen516 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_movement_restrct_on_duty_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_on_duty_max-deductive-gen676)
   (depends-on movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen507 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_movement_restrct_on_duty_max-deductive-gen676 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen507 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_on_duty_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_on_duty_min-deductive-gen675)
   (depends-on movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen498 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_movement_restrct_on_duty_min-deductive-gen675 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen498 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_movement_restrct_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_max-deductive-gen674)
   (depends-on movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen489 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1 ) ) ) => ( max_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_movement_restrct_max-deductive-gen674 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen489 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_min-deductive-gen673)
   (depends-on movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen480 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_movement_restrct_min-deductive-gen673 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen480 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_psy_abuse_on_duty_max-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_on_duty_max-deductive-gen672)
   (depends-on psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen471 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 8 ) ) ) => ( max_imprisonment ( value 8 ) )")
   (production-rule "( defrule pn_psy_abuse_on_duty_max-deductive-gen672 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen471 ) ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ( make-instance ?oid of max_imprisonment ( value 8 ) ) )")
   (derived-class max_imprisonment))

([pn_psy_abuse_on_duty_min-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_on_duty_min-deductive-gen671)
   (depends-on psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen462 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_psy_abuse_on_duty_min-deductive-gen671 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen462 ) ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_psy_abuse_max-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_max-deductive-gen670)
   (depends-on psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen453 <- ( psychological_abuse ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 3 ) ) ) => ( max_imprisonment ( value 3 ) )")
   (production-rule "( defrule pn_psy_abuse_max-deductive-gen670 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen453 ) ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ( make-instance ?oid of max_imprisonment ( value 3 ) ) )")
   (derived-class max_imprisonment))

([pn_psy_abuse_min-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_min-deductive-gen669)
   (depends-on psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen444 <- ( psychological_abuse ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_psy_abuse_min-deductive-gen669 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen444 ) ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([rule10_9-deductive] of ntm-deductive-rule
   (pos-name rule10_9-deductive-gen668)
   (depends-on coercion_abuse_multiple_victims coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (deductive-rule "?gen435 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ( not ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ) => ( coercion_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10_9-deductive-gen668 ( declare ( salience ( calc-salience coercion_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen435 ) ( is-a coercion_abuse_multiple_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a coercion_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse_on_duty))

([rule10_8-deductive] of ntm-deductive-rule
   (pos-name rule10_8-deductive-gen667)
   (depends-on coercion_abuse_multiple_victims coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (deductive-rule "?gen426 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ( not ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ) => ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10_8-deductive-gen667 ( declare ( salience ( calc-salience coercion_abuse_multiple_defendant ) ) ) ( run-deductive-rules ) ( object ( name ?gen426 ) ( is-a coercion_abuse_multiple_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse_multiple_defendant ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse_multiple_defendant ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse_multiple_defendant))

([rule10_7-deductive] of ntm-deductive-rule
   (pos-name rule10_7-deductive-gen666)
   (depends-on coercion_abuse_multiple_victims coercion_abuse)
   (implies coercion_abuse)
   (deductive-rule "?gen417 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ( not ( coercion_abuse ( defendant ?Defendant ) ) ) => ( coercion_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10_7-deductive-gen666 ( declare ( salience ( calc-salience coercion_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen417 ) ( is-a coercion_abuse_multiple_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse))

([rule10_4-deductive] of ntm-deductive-rule
   (pos-name rule10_4-deductive-gen665)
   (depends-on coercion_abuse_multiple_victims movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen408 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10_4-deductive-gen665 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen408 ) ( is-a coercion_abuse_multiple_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule10_3-deductive] of ntm-deductive-rule
   (pos-name rule10_3-deductive-gen664)
   (depends-on coercion_abuse_multiple_victims movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen399 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10_3-deductive-gen664 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen399 ) ( is-a coercion_abuse_multiple_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule10_2-deductive] of ntm-deductive-rule
   (pos-name rule10_2-deductive-gen663)
   (depends-on coercion_abuse_multiple_victims psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen390 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10_2-deductive-gen663 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen390 ) ( is-a coercion_abuse_multiple_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule10_1-deductive] of ntm-deductive-rule
   (pos-name rule10_1-deductive-gen662)
   (depends-on coercion_abuse_multiple_victims psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen381 <- ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10_1-deductive-gen662 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen381 ) ( is-a coercion_abuse_multiple_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule10-deductive] of ntm-deductive-rule
   (pos-name rule10-deductive-gen661)
   (depends-on lc:case lc:case coercion_abuse_multiple_victims)
   (implies coercion_abuse_multiple_victims)
   (deductive-rule "?gen368 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( test ( >= ?num_of_victims 2 ) ) ?gen370 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ( not ( coercion_abuse_multiple_victims ( defendant ?Defendant ) ) ) => ( coercion_abuse_multiple_victims ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10-deductive-gen661 ( declare ( salience ( calc-salience coercion_abuse_multiple_victims ) ) ) ( run-deductive-rules ) ( object ( name ?gen368 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( test ( >= ?num_of_victims 2 ) ) ( object ( name ?gen370 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ( not ( object ( is-a coercion_abuse_multiple_victims ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse_multiple_victims ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse_multiple_victims ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse_multiple_victims ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse_multiple_victims))

([rule9_8-deductive] of ntm-deductive-rule
   (pos-name rule9_8-deductive-gen660)
   (depends-on coercion_abuse_on_duty coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (deductive-rule "?gen359 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ( not ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ) => ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9_8-deductive-gen660 ( declare ( salience ( calc-salience coercion_abuse_multiple_defendant ) ) ) ( run-deductive-rules ) ( object ( name ?gen359 ) ( is-a coercion_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse_multiple_defendant ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse_multiple_defendant ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse_multiple_defendant))

([rule9_7-deductive] of ntm-deductive-rule
   (pos-name rule9_7-deductive-gen659)
   (depends-on coercion_abuse_on_duty coercion_abuse)
   (implies coercion_abuse)
   (deductive-rule "?gen350 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ( not ( coercion_abuse ( defendant ?Defendant ) ) ) => ( coercion_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9_7-deductive-gen659 ( declare ( salience ( calc-salience coercion_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen350 ) ( is-a coercion_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse))

([rule9_4-deductive] of ntm-deductive-rule
   (pos-name rule9_4-deductive-gen658)
   (depends-on coercion_abuse_on_duty movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen341 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9_4-deductive-gen658 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen341 ) ( is-a coercion_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule9_3-deductive] of ntm-deductive-rule
   (pos-name rule9_3-deductive-gen657)
   (depends-on coercion_abuse_on_duty movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen332 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9_3-deductive-gen657 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen332 ) ( is-a coercion_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule9_2-deductive] of ntm-deductive-rule
   (pos-name rule9_2-deductive-gen656)
   (depends-on coercion_abuse_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen323 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9_2-deductive-gen656 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen323 ) ( is-a coercion_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule9_1-deductive] of ntm-deductive-rule
   (pos-name rule9_1-deductive-gen655)
   (depends-on coercion_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen314 <- ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9_1-deductive-gen655 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen314 ) ( is-a coercion_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule9-deductive] of ntm-deductive-rule
   (pos-name rule9-deductive-gen654)
   (depends-on lc:case lc:case coercion_abuse_on_duty)
   (implies coercion_abuse_on_duty)
   (deductive-rule "?gen302 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ?gen303 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( coercion_abuse_on_duty ( defendant ?Defendant ) ) ) => ( coercion_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule9-deductive-gen654 ( declare ( salience ( calc-salience coercion_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen302 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ( object ( name ?gen303 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( object ( is-a coercion_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse_on_duty))

([rule8_4-deductive] of ntm-deductive-rule
   (pos-name rule8_4-deductive-gen653)
   (depends-on coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen293 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8_4-deductive-gen653 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen293 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule8_3-deductive] of ntm-deductive-rule
   (pos-name rule8_3-deductive-gen652)
   (depends-on coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen284 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8_3-deductive-gen652 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen284 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule8_2-deductive] of ntm-deductive-rule
   (pos-name rule8_2-deductive-gen651)
   (depends-on coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen275 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8_2-deductive-gen651 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen275 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule8_1-deductive] of ntm-deductive-rule
   (pos-name rule8_1-deductive-gen650)
   (depends-on coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen266 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8_1-deductive-gen650 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen266 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule8-deductive] of ntm-deductive-rule
   (pos-name rule8-deductive-gen649)
   (depends-on lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (deductive-rule "?gen253 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( test ( >= ?num_of_defendants 2 ) ) ?gen255 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ( not ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ) => ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8-deductive-gen649 ( declare ( salience ( calc-salience coercion_abuse_multiple_defendant ) ) ) ( run-deductive-rules ) ( object ( name ?gen253 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( test ( >= ?num_of_defendants 2 ) ) ( object ( name ?gen255 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ( not ( object ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse_multiple_defendant ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse_multiple_defendant ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse_multiple_defendant))

([rule7_4-deductive] of ntm-deductive-rule
   (pos-name rule7_4-deductive-gen648)
   (depends-on coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen244 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_4-deductive-gen648 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen244 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule7_3-deductive] of ntm-deductive-rule
   (pos-name rule7_3-deductive-gen647)
   (depends-on coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen235 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_3-deductive-gen647 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen235 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule7_2-deductive] of ntm-deductive-rule
   (pos-name rule7_2-deductive-gen646)
   (depends-on coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen226 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_2-deductive-gen646 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen226 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule7_1-deductive] of ntm-deductive-rule
   (pos-name rule7_1-deductive-gen645)
   (depends-on coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen217 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_1-deductive-gen645 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen217 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen644)
   (depends-on lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (deductive-rule "?gen204 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( test ( <= ?num_of_defendants 1 ) ) ?gen206 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ( not ( coercion_abuse ( defendant ?Defendant ) ) ) => ( coercion_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen644 ( declare ( salience ( calc-salience coercion_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen204 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( test ( <= ?num_of_defendants 1 ) ) ( object ( name ?gen206 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ( not ( object ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse))

([rule6_4-deductive] of ntm-deductive-rule
   (pos-name rule6_4-deductive-gen643)
   (depends-on movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen195 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_4-deductive-gen643 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen195 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule6_3-deductive] of ntm-deductive-rule
   (pos-name rule6_3-deductive-gen642)
   (depends-on movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen186 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_3-deductive-gen642 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen186 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule6_2-deductive] of ntm-deductive-rule
   (pos-name rule6_2-deductive-gen641)
   (depends-on movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen177 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_2-deductive-gen641 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen177 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule6_1-deductive] of ntm-deductive-rule
   (pos-name rule6_1-deductive-gen640)
   (depends-on movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen168 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_1-deductive-gen640 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen168 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule6-deductive] of ntm-deductive-rule
   (pos-name rule6-deductive-gen639)
   (depends-on lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (deductive-rule "?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ) ( not ( movement_restrictions_death ( defendant ?Defendant ) ) ) => ( movement_restrictions_death ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6-deductive-gen639 ( declare ( salience ( calc-salience movement_restrictions_death ) ) ) ( run-deductive-rules ) ( object ( name ?gen159 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ) ( not ( object ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_death ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_death ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_death ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_death))

([rule5_4-deductive] of ntm-deductive-rule
   (pos-name rule5_4-deductive-gen638)
   (depends-on movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen150 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_4-deductive-gen638 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen150 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule5_3-deductive] of ntm-deductive-rule
   (pos-name rule5_3-deductive-gen637)
   (depends-on movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen141 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_3-deductive-gen637 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen141 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule5_2-deductive] of ntm-deductive-rule
   (pos-name rule5_2-deductive-gen636)
   (depends-on movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen132 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_2-deductive-gen636 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen132 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule5_1-deductive] of ntm-deductive-rule
   (pos-name rule5_1-deductive-gen635)
   (depends-on movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen123 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_1-deductive-gen635 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen123 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule5-deductive] of ntm-deductive-rule
   (pos-name rule5-deductive-gen634)
   (depends-on lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (deductive-rule "?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ( not ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ) => ( movement_restrictions_life_threatening ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5-deductive-gen634 ( declare ( salience ( calc-salience movement_restrictions_life_threatening ) ) ) ( run-deductive-rules ) ( object ( name ?gen114 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ( not ( object ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_life_threatening ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_life_threatening ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_life_threatening ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_life_threatening))

([rule4_3-deductive] of ntm-deductive-rule
   (pos-name rule4_3-deductive-gen633)
   (depends-on movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen105 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4_3-deductive-gen633 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen105 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule4_2-deductive] of ntm-deductive-rule
   (pos-name rule4_2-deductive-gen632)
   (depends-on movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen96 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4_2-deductive-gen632 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen96 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule4_1-deductive] of ntm-deductive-rule
   (pos-name rule4_1-deductive-gen631)
   (depends-on movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen87 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4_1-deductive-gen631 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen87 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule4-deductive] of ntm-deductive-rule
   (pos-name rule4-deductive-gen630)
   (depends-on lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4-deductive-gen630 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen78 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule3_2-deductive] of ntm-deductive-rule
   (pos-name rule3_2-deductive-gen629)
   (depends-on movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen69 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3_2-deductive-gen629 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule3_1-deductive] of ntm-deductive-rule
   (pos-name rule3_1-deductive-gen628)
   (depends-on movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen60 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3_1-deductive-gen628 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen60 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule3-deductive] of ntm-deductive-rule
   (pos-name rule3-deductive-gen627)
   (depends-on lc:case movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3-deductive-gen627 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen51 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule2_1-deductive] of ntm-deductive-rule
   (pos-name rule2_1-deductive-gen626)
   (depends-on psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen42 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2_1-deductive-gen626 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen625)
   (depends-on lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen625 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ( object ( name ?gen29 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen624)
   (depends-on lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen624 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

