([pen11-defeasibly-dot] of derived-attribute-rule
   (pos-name pen11-defeasibly-dot-gen35)
   (depends-on declare to_increase_penalty not_previously_convicted to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen11] ) ) ) ?gen25 <- ( to_increase_penalty ( value true ) ( positive 1 ) ( positive-derivator pen11 $? ) ) ( test ( eq ( class ?gen25 ) to_increase_penalty ) ) ( not ( and ?gen32 <- ( not_previously_convicted ( defendant ?Defendant ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( to_increase_penalty ( negative ~ 2 ) ( positive-overruled $?gen27 & : ( not ( member$ pen11 $?gen27 ) ) ) ) ) ) => ?gen25 <- ( to_increase_penalty ( positive 0 ) )"))

([pen11-defeasibly] of derived-attribute-rule
   (pos-name pen11-defeasibly-gen37)
   (depends-on declare not_previously_convicted to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen11] ) ) ) ?gen32 <- ( not_previously_convicted ( defendant ?Defendant ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( to_increase_penalty ( value true ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen27 & : ( not ( member$ pen11 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) to_increase_penalty ) ) => ?gen25 <- ( to_increase_penalty ( positive 1 ) ( positive-derivator pen11 ?gen32 ) )"))

([pen11-overruled-dot] of derived-attribute-rule
   (pos-name pen11-overruled-dot-gen39)
   (depends-on declare to_increase_penalty not_previously_convicted to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen11] ) ) ) ?gen25 <- ( to_increase_penalty ( value true ) ( negative-support $?gen28 ) ( negative-overruled $?gen29 & : ( subseq-pos ( create$ pen11-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( test ( eq ( class ?gen25 ) to_increase_penalty ) ) ( not ( and ?gen32 <- ( not_previously_convicted ( defendant ?Defendant ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( to_increase_penalty ( positive-defeated $?gen27 & : ( not ( member$ pen11 $?gen27 ) ) ) ) ) ) => ( calc ( bind $?gen30 ( delete-member$ $?gen29 ( create$ pen11-overruled $?gen28 ) ) ) ) ?gen25 <- ( to_increase_penalty ( negative-overruled $?gen30 ) )"))

([pen11-overruled] of derived-attribute-rule
   (pos-name pen11-overruled-gen41)
   (depends-on declare not_previously_convicted to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen11] ) ) ) ?gen32 <- ( not_previously_convicted ( defendant ?Defendant ) ( positive ?gen31 & : ( >= ?gen31 1 ) ) ) ?gen25 <- ( to_increase_penalty ( value true ) ( negative-support $?gen28 ) ( negative-overruled $?gen29 & : ( not ( subseq-pos ( create$ pen11-overruled $?gen28 $$$ $?gen29 ) ) ) ) ( positive-defeated $?gen27 & : ( not ( member$ pen11 $?gen27 ) ) ) ) ( test ( eq ( class ?gen25 ) to_increase_penalty ) ) => ( calc ( bind $?gen30 ( create$ pen11-overruled $?gen28 $?gen29 ) ) ) ?gen25 <- ( to_increase_penalty ( negative-overruled $?gen30 ) )"))

([pen11-support] of derived-attribute-rule
   (pos-name pen11-support-gen43)
   (depends-on declare not_previously_convicted to_increase_penalty)
   (implies to_increase_penalty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen11] ) ) ) ?gen24 <- ( not_previously_convicted ( defendant ?Defendant ) ) ?gen25 <- ( to_increase_penalty ( value true ) ( positive-support $?gen27 & : ( not ( subseq-pos ( create$ pen11 ?gen24 $$$ $?gen27 ) ) ) ) ) ( test ( eq ( class ?gen25 ) to_increase_penalty ) ) => ( calc ( bind $?gen30 ( create$ pen11 ?gen24 $?gen27 ) ) ) ?gen25 <- ( to_increase_penalty ( positive-support $?gen30 ) )"))

([rule10-defeasibly-dot] of derived-attribute-rule
   (pos-name rule10-defeasibly-dot-gen45)
   (depends-on declare not_previously_convicted lc:case not_previously_convicted)
   (implies not_previously_convicted)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule10] ) ) ) ?gen16 <- ( not_previously_convicted ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule10 $? ) ) ( test ( eq ( class ?gen16 ) not_previously_convicted ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"true\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( not_previously_convicted ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule10 $?gen18 ) ) ) ) ) ) => ?gen16 <- ( not_previously_convicted ( positive 0 ) )"))

([rule10-defeasibly] of derived-attribute-rule
   (pos-name rule10-defeasibly-gen47)
   (depends-on declare lc:case not_previously_convicted)
   (implies not_previously_convicted)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule10] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"true\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( not_previously_convicted ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen18 & : ( not ( member$ rule10 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) not_previously_convicted ) ) => ?gen16 <- ( not_previously_convicted ( positive 1 ) ( positive-derivator rule10 ?gen23 ) )"))

([rule10-overruled-dot] of derived-attribute-rule
   (pos-name rule10-overruled-dot-gen49)
   (depends-on declare not_previously_convicted lc:case not_previously_convicted)
   (implies not_previously_convicted)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule10] ) ) ) ?gen16 <- ( not_previously_convicted ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( subseq-pos ( create$ rule10-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( test ( eq ( class ?gen16 ) not_previously_convicted ) ) ( not ( and ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"true\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( not_previously_convicted ( positive-defeated $?gen18 & : ( not ( member$ rule10 $?gen18 ) ) ) ) ) ) => ( calc ( bind $?gen21 ( delete-member$ $?gen20 ( create$ rule10-overruled $?gen19 ) ) ) ) ?gen16 <- ( not_previously_convicted ( negative-overruled $?gen21 ) )"))

([rule10-overruled] of derived-attribute-rule
   (pos-name rule10-overruled-gen51)
   (depends-on declare lc:case not_previously_convicted)
   (implies not_previously_convicted)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule10] ) ) ) ?gen23 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"true\" ) ( positive ?gen22 & : ( >= ?gen22 1 ) ) ) ?gen16 <- ( not_previously_convicted ( defendant ?Defendant ) ( negative-support $?gen19 ) ( negative-overruled $?gen20 & : ( not ( subseq-pos ( create$ rule10-overruled $?gen19 $$$ $?gen20 ) ) ) ) ( positive-defeated $?gen18 & : ( not ( member$ rule10 $?gen18 ) ) ) ) ( test ( eq ( class ?gen16 ) not_previously_convicted ) ) => ( calc ( bind $?gen21 ( create$ rule10-overruled $?gen19 $?gen20 ) ) ) ?gen16 <- ( not_previously_convicted ( negative-overruled $?gen21 ) )"))

([rule10-support] of derived-attribute-rule
   (pos-name rule10-support-gen53)
   (depends-on declare lc:case not_previously_convicted)
   (implies not_previously_convicted)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule10] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"true\" ) ) ?gen16 <- ( not_previously_convicted ( defendant ?Defendant ) ( positive-support $?gen18 & : ( not ( subseq-pos ( create$ rule10 ?gen15 $$$ $?gen18 ) ) ) ) ) ( test ( eq ( class ?gen16 ) not_previously_convicted ) ) => ( calc ( bind $?gen21 ( create$ rule10 ?gen15 $?gen18 ) ) ) ?gen16 <- ( not_previously_convicted ( positive-support $?gen21 ) )"))

([pen11-deductive] of ntm-deductive-rule
   (pos-name pen11-deductive-gen34)
   (depends-on not_previously_convicted to_increase_penalty)
   (implies to_increase_penalty)
   (deductive-rule "?gen24 <- ( not_previously_convicted ( defendant ?Defendant ) ) ( not ( to_increase_penalty ( value true ) ) ) => ( to_increase_penalty ( value true ) )")
   (production-rule "( defrule pen11-deductive-gen34 ( declare ( salience ( calc-salience to_increase_penalty ) ) ) ( run-deductive-rules ) ( object ( name ?gen24 ) ( is-a not_previously_convicted ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_increase_penalty ) ( value true ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_increase_penalty true ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_increase_penalty true ) ) ) ( make-instance ?oid of to_increase_penalty ( value true ) ) )")
   (derived-class to_increase_penalty))

([rule10-deductive] of ntm-deductive-rule
   (pos-name rule10-deductive-gen33)
   (depends-on lc:case not_previously_convicted)
   (implies not_previously_convicted)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:previously_convicted \"true\" ) ) ( not ( not_previously_convicted ( defendant ?Defendant ) ) ) => ( not_previously_convicted ( defendant ?Defendant ) )")
   (production-rule "( defrule rule10-deductive-gen33 ( declare ( salience ( calc-salience not_previously_convicted ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:previously_convicted \"true\" ) ) ( not ( object ( is-a not_previously_convicted ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat not_previously_convicted ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat not_previously_convicted ?Defendant ) ) ) ( make-instance ?oid of not_previously_convicted ( defendant ?Defendant ) ) )")
   (derived-class not_previously_convicted))

