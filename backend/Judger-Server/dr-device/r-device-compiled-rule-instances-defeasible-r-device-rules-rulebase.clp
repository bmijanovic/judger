([pn_coercion_abuse_multiple_defendant_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-defeasibly-dot-gen500)
   (depends-on declare max_imprisonment coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_multiple_defendant_max] ) ) ) ?gen445 <- ( max_imprisonment ( value 12 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_defendant_max $? ) ) ( test ( eq ( class ?gen445 ) max_imprisonment ) ) ( not ( and ?gen452 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen447 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_max $?gen447 ) ) ) ) ) ) => ?gen445 <- ( max_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_multiple_defendant_max-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-defeasibly-gen502)
   (depends-on declare coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_multiple_defendant_max] ) ) ) ?gen452 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( max_imprisonment ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen447 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_max $?gen447 ) ) ) ) ( test ( eq ( class ?gen445 ) max_imprisonment ) ) => ?gen445 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_defendant_max ?gen452 ) )"))

([pn_coercion_abuse_multiple_defendant_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-overruled-dot-gen504)
   (depends-on declare max_imprisonment coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_multiple_defendant_max] ) ) ) ?gen445 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen448 ) ( negative-overruled $?gen449 & : ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_max-overruled $?gen448 $$$ $?gen449 ) ) ) ) ( test ( eq ( class ?gen445 ) max_imprisonment ) ) ( not ( and ?gen452 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( max_imprisonment ( positive-defeated $?gen447 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_max $?gen447 ) ) ) ) ) ) => ( calc ( bind $?gen450 ( delete-member$ $?gen449 ( create$ pn_coercion_abuse_multiple_defendant_max-overruled $?gen448 ) ) ) ) ?gen445 <- ( max_imprisonment ( negative-overruled $?gen450 ) )"))

([pn_coercion_abuse_multiple_defendant_max-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-overruled-gen506)
   (depends-on declare coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_multiple_defendant_max] ) ) ) ?gen452 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen451 & : ( >= ?gen451 1 ) ) ) ?gen445 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen448 ) ( negative-overruled $?gen449 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_max-overruled $?gen448 $$$ $?gen449 ) ) ) ) ( positive-defeated $?gen447 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_max $?gen447 ) ) ) ) ( test ( eq ( class ?gen445 ) max_imprisonment ) ) => ( calc ( bind $?gen450 ( create$ pn_coercion_abuse_multiple_defendant_max-overruled $?gen448 $?gen449 ) ) ) ?gen445 <- ( max_imprisonment ( negative-overruled $?gen450 ) )"))

([pn_coercion_abuse_multiple_defendant_max-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-support-gen508)
   (depends-on declare coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_multiple_defendant_max] ) ) ) ?gen444 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen445 <- ( max_imprisonment ( value 12 ) ( positive-support $?gen447 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_max ?gen444 $$$ $?gen447 ) ) ) ) ) ( test ( eq ( class ?gen445 ) max_imprisonment ) ) => ( calc ( bind $?gen450 ( create$ pn_coercion_abuse_multiple_defendant_max ?gen444 $?gen447 ) ) ) ?gen445 <- ( max_imprisonment ( positive-support $?gen450 ) )"))

([pn_coercion_abuse_multiple_defendant_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-defeasibly-dot-gen510)
   (depends-on declare min_imprisonment coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_multiple_defendant_min] ) ) ) ?gen436 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_defendant_min $? ) ) ( test ( eq ( class ?gen436 ) min_imprisonment ) ) ( not ( and ?gen443 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen438 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_min $?gen438 ) ) ) ) ) ) => ?gen436 <- ( min_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_multiple_defendant_min-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-defeasibly-gen512)
   (depends-on declare coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_multiple_defendant_min] ) ) ) ?gen443 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen438 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_min $?gen438 ) ) ) ) ( test ( eq ( class ?gen436 ) min_imprisonment ) ) => ?gen436 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_multiple_defendant_min ?gen443 ) )"))

([pn_coercion_abuse_multiple_defendant_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-overruled-dot-gen514)
   (depends-on declare min_imprisonment coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_multiple_defendant_min] ) ) ) ?gen436 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen439 ) ( negative-overruled $?gen440 & : ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_min-overruled $?gen439 $$$ $?gen440 ) ) ) ) ( test ( eq ( class ?gen436 ) min_imprisonment ) ) ( not ( and ?gen443 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( min_imprisonment ( positive-defeated $?gen438 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_min $?gen438 ) ) ) ) ) ) => ( calc ( bind $?gen441 ( delete-member$ $?gen440 ( create$ pn_coercion_abuse_multiple_defendant_min-overruled $?gen439 ) ) ) ) ?gen436 <- ( min_imprisonment ( negative-overruled $?gen441 ) )"))

([pn_coercion_abuse_multiple_defendant_min-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-overruled-gen516)
   (depends-on declare coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_multiple_defendant_min] ) ) ) ?gen443 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen442 & : ( >= ?gen442 1 ) ) ) ?gen436 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen439 ) ( negative-overruled $?gen440 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_min-overruled $?gen439 $$$ $?gen440 ) ) ) ) ( positive-defeated $?gen438 & : ( not ( member$ pn_coercion_abuse_multiple_defendant_min $?gen438 ) ) ) ) ( test ( eq ( class ?gen436 ) min_imprisonment ) ) => ( calc ( bind $?gen441 ( create$ pn_coercion_abuse_multiple_defendant_min-overruled $?gen439 $?gen440 ) ) ) ?gen436 <- ( min_imprisonment ( negative-overruled $?gen441 ) )"))

([pn_coercion_abuse_multiple_defendant_min-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-support-gen518)
   (depends-on declare coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_multiple_defendant_min] ) ) ) ?gen435 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen436 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen438 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_multiple_defendant_min ?gen435 $$$ $?gen438 ) ) ) ) ) ( test ( eq ( class ?gen436 ) min_imprisonment ) ) => ( calc ( bind $?gen441 ( create$ pn_coercion_abuse_multiple_defendant_min ?gen435 $?gen438 ) ) ) ?gen436 <- ( min_imprisonment ( positive-support $?gen441 ) )"))

([pn_coercion_abuse_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_max-defeasibly-dot-gen520)
   (depends-on declare max_imprisonment coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_max] ) ) ) ?gen427 <- ( max_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_max $? ) ) ( test ( eq ( class ?gen427 ) max_imprisonment ) ) ( not ( and ?gen434 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen429 & : ( not ( member$ pn_coercion_abuse_max $?gen429 ) ) ) ) ) ) => ?gen427 <- ( max_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_max-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_max-defeasibly-gen522)
   (depends-on declare coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_max] ) ) ) ?gen434 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( max_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen429 & : ( not ( member$ pn_coercion_abuse_max $?gen429 ) ) ) ) ( test ( eq ( class ?gen427 ) max_imprisonment ) ) => ?gen427 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_max ?gen434 ) )"))

([pn_coercion_abuse_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_max-overruled-dot-gen524)
   (depends-on declare max_imprisonment coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_max] ) ) ) ?gen427 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen430 ) ( negative-overruled $?gen431 & : ( subseq-pos ( create$ pn_coercion_abuse_max-overruled $?gen430 $$$ $?gen431 ) ) ) ) ( test ( eq ( class ?gen427 ) max_imprisonment ) ) ( not ( and ?gen434 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( max_imprisonment ( positive-defeated $?gen429 & : ( not ( member$ pn_coercion_abuse_max $?gen429 ) ) ) ) ) ) => ( calc ( bind $?gen432 ( delete-member$ $?gen431 ( create$ pn_coercion_abuse_max-overruled $?gen430 ) ) ) ) ?gen427 <- ( max_imprisonment ( negative-overruled $?gen432 ) )"))

([pn_coercion_abuse_max-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_max-overruled-gen526)
   (depends-on declare coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_max] ) ) ) ?gen434 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen433 & : ( >= ?gen433 1 ) ) ) ?gen427 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen430 ) ( negative-overruled $?gen431 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_max-overruled $?gen430 $$$ $?gen431 ) ) ) ) ( positive-defeated $?gen429 & : ( not ( member$ pn_coercion_abuse_max $?gen429 ) ) ) ) ( test ( eq ( class ?gen427 ) max_imprisonment ) ) => ( calc ( bind $?gen432 ( create$ pn_coercion_abuse_max-overruled $?gen430 $?gen431 ) ) ) ?gen427 <- ( max_imprisonment ( negative-overruled $?gen432 ) )"))

([pn_coercion_abuse_max-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_max-support-gen528)
   (depends-on declare coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_max] ) ) ) ?gen426 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen427 <- ( max_imprisonment ( value 3 ) ( positive-support $?gen429 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_max ?gen426 $$$ $?gen429 ) ) ) ) ) ( test ( eq ( class ?gen427 ) max_imprisonment ) ) => ( calc ( bind $?gen432 ( create$ pn_coercion_abuse_max ?gen426 $?gen429 ) ) ) ?gen427 <- ( max_imprisonment ( positive-support $?gen432 ) )"))

([pn_coercion_abuse_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_min-defeasibly-dot-gen530)
   (depends-on declare min_imprisonment coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_coercion_abuse_min] ) ) ) ?gen418 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_coercion_abuse_min $? ) ) ( test ( eq ( class ?gen418 ) min_imprisonment ) ) ( not ( and ?gen425 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen420 & : ( not ( member$ pn_coercion_abuse_min $?gen420 ) ) ) ) ) ) => ?gen418 <- ( min_imprisonment ( positive 0 ) )"))

([pn_coercion_abuse_min-defeasibly] of derived-attribute-rule
   (pos-name pn_coercion_abuse_min-defeasibly-gen532)
   (depends-on declare coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_coercion_abuse_min] ) ) ) ?gen425 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen420 & : ( not ( member$ pn_coercion_abuse_min $?gen420 ) ) ) ) ( test ( eq ( class ?gen418 ) min_imprisonment ) ) => ?gen418 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_coercion_abuse_min ?gen425 ) )"))

([pn_coercion_abuse_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_coercion_abuse_min-overruled-dot-gen534)
   (depends-on declare min_imprisonment coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_coercion_abuse_min] ) ) ) ?gen418 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen421 ) ( negative-overruled $?gen422 & : ( subseq-pos ( create$ pn_coercion_abuse_min-overruled $?gen421 $$$ $?gen422 ) ) ) ) ( test ( eq ( class ?gen418 ) min_imprisonment ) ) ( not ( and ?gen425 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( min_imprisonment ( positive-defeated $?gen420 & : ( not ( member$ pn_coercion_abuse_min $?gen420 ) ) ) ) ) ) => ( calc ( bind $?gen423 ( delete-member$ $?gen422 ( create$ pn_coercion_abuse_min-overruled $?gen421 ) ) ) ) ?gen418 <- ( min_imprisonment ( negative-overruled $?gen423 ) )"))

([pn_coercion_abuse_min-overruled] of derived-attribute-rule
   (pos-name pn_coercion_abuse_min-overruled-gen536)
   (depends-on declare coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_coercion_abuse_min] ) ) ) ?gen425 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen424 & : ( >= ?gen424 1 ) ) ) ?gen418 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen421 ) ( negative-overruled $?gen422 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_min-overruled $?gen421 $$$ $?gen422 ) ) ) ) ( positive-defeated $?gen420 & : ( not ( member$ pn_coercion_abuse_min $?gen420 ) ) ) ) ( test ( eq ( class ?gen418 ) min_imprisonment ) ) => ( calc ( bind $?gen423 ( create$ pn_coercion_abuse_min-overruled $?gen421 $?gen422 ) ) ) ?gen418 <- ( min_imprisonment ( negative-overruled $?gen423 ) )"))

([pn_coercion_abuse_min-support] of derived-attribute-rule
   (pos-name pn_coercion_abuse_min-support-gen538)
   (depends-on declare coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_coercion_abuse_min] ) ) ) ?gen417 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen418 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen420 & : ( not ( subseq-pos ( create$ pn_coercion_abuse_min ?gen417 $$$ $?gen420 ) ) ) ) ) ( test ( eq ( class ?gen418 ) min_imprisonment ) ) => ( calc ( bind $?gen423 ( create$ pn_coercion_abuse_min ?gen417 $?gen420 ) ) ) ?gen418 <- ( min_imprisonment ( positive-support $?gen423 ) )"))

([pn_movement_restrct_death_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-defeasibly-dot-gen540)
   (depends-on declare max_imprisonment movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_death_max] ) ) ) ?gen409 <- ( max_imprisonment ( value 12 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_death_max $? ) ) ( test ( eq ( class ?gen409 ) max_imprisonment ) ) ( not ( and ?gen416 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen411 & : ( not ( member$ pn_movement_restrct_death_max $?gen411 ) ) ) ) ) ) => ?gen409 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_death_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-defeasibly-gen542)
   (depends-on declare movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_death_max] ) ) ) ?gen416 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_imprisonment ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen411 & : ( not ( member$ pn_movement_restrct_death_max $?gen411 ) ) ) ) ( test ( eq ( class ?gen409 ) max_imprisonment ) ) => ?gen409 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_death_max ?gen416 ) )"))

([pn_movement_restrct_death_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-overruled-dot-gen544)
   (depends-on declare max_imprisonment movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_death_max] ) ) ) ?gen409 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen412 ) ( negative-overruled $?gen413 & : ( subseq-pos ( create$ pn_movement_restrct_death_max-overruled $?gen412 $$$ $?gen413 ) ) ) ) ( test ( eq ( class ?gen409 ) max_imprisonment ) ) ( not ( and ?gen416 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_imprisonment ( positive-defeated $?gen411 & : ( not ( member$ pn_movement_restrct_death_max $?gen411 ) ) ) ) ) ) => ( calc ( bind $?gen414 ( delete-member$ $?gen413 ( create$ pn_movement_restrct_death_max-overruled $?gen412 ) ) ) ) ?gen409 <- ( max_imprisonment ( negative-overruled $?gen414 ) )"))

([pn_movement_restrct_death_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-overruled-gen546)
   (depends-on declare movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_death_max] ) ) ) ?gen416 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen415 & : ( >= ?gen415 1 ) ) ) ?gen409 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen412 ) ( negative-overruled $?gen413 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_max-overruled $?gen412 $$$ $?gen413 ) ) ) ) ( positive-defeated $?gen411 & : ( not ( member$ pn_movement_restrct_death_max $?gen411 ) ) ) ) ( test ( eq ( class ?gen409 ) max_imprisonment ) ) => ( calc ( bind $?gen414 ( create$ pn_movement_restrct_death_max-overruled $?gen412 $?gen413 ) ) ) ?gen409 <- ( max_imprisonment ( negative-overruled $?gen414 ) )"))

([pn_movement_restrct_death_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-support-gen548)
   (depends-on declare movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_death_max] ) ) ) ?gen408 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen409 <- ( max_imprisonment ( value 12 ) ( positive-support $?gen411 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_max ?gen408 $$$ $?gen411 ) ) ) ) ) ( test ( eq ( class ?gen409 ) max_imprisonment ) ) => ( calc ( bind $?gen414 ( create$ pn_movement_restrct_death_max ?gen408 $?gen411 ) ) ) ?gen409 <- ( max_imprisonment ( positive-support $?gen414 ) )"))

([pn_movement_restrct_death_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-defeasibly-dot-gen550)
   (depends-on declare min_imprisonment movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_death_min] ) ) ) ?gen400 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_death_min $? ) ) ( test ( eq ( class ?gen400 ) min_imprisonment ) ) ( not ( and ?gen407 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen402 & : ( not ( member$ pn_movement_restrct_death_min $?gen402 ) ) ) ) ) ) => ?gen400 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_death_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-defeasibly-gen552)
   (depends-on declare movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_death_min] ) ) ) ?gen407 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen402 & : ( not ( member$ pn_movement_restrct_death_min $?gen402 ) ) ) ) ( test ( eq ( class ?gen400 ) min_imprisonment ) ) => ?gen400 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_death_min ?gen407 ) )"))

([pn_movement_restrct_death_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-overruled-dot-gen554)
   (depends-on declare min_imprisonment movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_death_min] ) ) ) ?gen400 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen403 ) ( negative-overruled $?gen404 & : ( subseq-pos ( create$ pn_movement_restrct_death_min-overruled $?gen403 $$$ $?gen404 ) ) ) ) ( test ( eq ( class ?gen400 ) min_imprisonment ) ) ( not ( and ?gen407 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( min_imprisonment ( positive-defeated $?gen402 & : ( not ( member$ pn_movement_restrct_death_min $?gen402 ) ) ) ) ) ) => ( calc ( bind $?gen405 ( delete-member$ $?gen404 ( create$ pn_movement_restrct_death_min-overruled $?gen403 ) ) ) ) ?gen400 <- ( min_imprisonment ( negative-overruled $?gen405 ) )"))

([pn_movement_restrct_death_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-overruled-gen556)
   (depends-on declare movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_death_min] ) ) ) ?gen407 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen406 & : ( >= ?gen406 1 ) ) ) ?gen400 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen403 ) ( negative-overruled $?gen404 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_min-overruled $?gen403 $$$ $?gen404 ) ) ) ) ( positive-defeated $?gen402 & : ( not ( member$ pn_movement_restrct_death_min $?gen402 ) ) ) ) ( test ( eq ( class ?gen400 ) min_imprisonment ) ) => ( calc ( bind $?gen405 ( create$ pn_movement_restrct_death_min-overruled $?gen403 $?gen404 ) ) ) ?gen400 <- ( min_imprisonment ( negative-overruled $?gen405 ) )"))

([pn_movement_restrct_death_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-support-gen558)
   (depends-on declare movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_death_min] ) ) ) ?gen399 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen400 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen402 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_min ?gen399 $$$ $?gen402 ) ) ) ) ) ( test ( eq ( class ?gen400 ) min_imprisonment ) ) => ( calc ( bind $?gen405 ( create$ pn_movement_restrct_death_min ?gen399 $?gen402 ) ) ) ?gen400 <- ( min_imprisonment ( positive-support $?gen405 ) )"))

([pn_movement_restrct_life_threatening_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-defeasibly-dot-gen560)
   (depends-on declare max_imprisonment movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen391 <- ( max_imprisonment ( value 8 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_max $? ) ) ( test ( eq ( class ?gen391 ) max_imprisonment ) ) ( not ( and ?gen398 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen393 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen393 ) ) ) ) ) ) => ?gen391 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_life_threatening_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-defeasibly-gen562)
   (depends-on declare movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen398 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( max_imprisonment ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen393 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen393 ) ) ) ) ( test ( eq ( class ?gen391 ) max_imprisonment ) ) => ?gen391 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_max ?gen398 ) )"))

([pn_movement_restrct_life_threatening_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-overruled-dot-gen564)
   (depends-on declare max_imprisonment movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen391 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen394 ) ( negative-overruled $?gen395 & : ( subseq-pos ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen394 $$$ $?gen395 ) ) ) ) ( test ( eq ( class ?gen391 ) max_imprisonment ) ) ( not ( and ?gen398 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( max_imprisonment ( positive-defeated $?gen393 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen393 ) ) ) ) ) ) => ( calc ( bind $?gen396 ( delete-member$ $?gen395 ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen394 ) ) ) ) ?gen391 <- ( max_imprisonment ( negative-overruled $?gen396 ) )"))

([pn_movement_restrct_life_threatening_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-overruled-gen566)
   (depends-on declare movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen398 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen397 & : ( >= ?gen397 1 ) ) ) ?gen391 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen394 ) ( negative-overruled $?gen395 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen394 $$$ $?gen395 ) ) ) ) ( positive-defeated $?gen393 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen393 ) ) ) ) ( test ( eq ( class ?gen391 ) max_imprisonment ) ) => ( calc ( bind $?gen396 ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen394 $?gen395 ) ) ) ?gen391 <- ( max_imprisonment ( negative-overruled $?gen396 ) )"))

([pn_movement_restrct_life_threatening_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-support-gen568)
   (depends-on declare movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen390 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen391 <- ( max_imprisonment ( value 8 ) ( positive-support $?gen393 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_max ?gen390 $$$ $?gen393 ) ) ) ) ) ( test ( eq ( class ?gen391 ) max_imprisonment ) ) => ( calc ( bind $?gen396 ( create$ pn_movement_restrct_life_threatening_max ?gen390 $?gen393 ) ) ) ?gen391 <- ( max_imprisonment ( positive-support $?gen396 ) )"))

([pn_movement_restrct_life_threatening_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-defeasibly-dot-gen570)
   (depends-on declare min_imprisonment movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen382 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_min $? ) ) ( test ( eq ( class ?gen382 ) min_imprisonment ) ) ( not ( and ?gen389 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen384 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen384 ) ) ) ) ) ) => ?gen382 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_life_threatening_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-defeasibly-gen572)
   (depends-on declare movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen389 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen384 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen384 ) ) ) ) ( test ( eq ( class ?gen382 ) min_imprisonment ) ) => ?gen382 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_min ?gen389 ) )"))

([pn_movement_restrct_life_threatening_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-overruled-dot-gen574)
   (depends-on declare min_imprisonment movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen382 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen385 ) ( negative-overruled $?gen386 & : ( subseq-pos ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen385 $$$ $?gen386 ) ) ) ) ( test ( eq ( class ?gen382 ) min_imprisonment ) ) ( not ( and ?gen389 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( min_imprisonment ( positive-defeated $?gen384 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen384 ) ) ) ) ) ) => ( calc ( bind $?gen387 ( delete-member$ $?gen386 ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen385 ) ) ) ) ?gen382 <- ( min_imprisonment ( negative-overruled $?gen387 ) )"))

([pn_movement_restrct_life_threatening_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-overruled-gen576)
   (depends-on declare movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen389 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen388 & : ( >= ?gen388 1 ) ) ) ?gen382 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen385 ) ( negative-overruled $?gen386 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen385 $$$ $?gen386 ) ) ) ) ( positive-defeated $?gen384 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen384 ) ) ) ) ( test ( eq ( class ?gen382 ) min_imprisonment ) ) => ( calc ( bind $?gen387 ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen385 $?gen386 ) ) ) ?gen382 <- ( min_imprisonment ( negative-overruled $?gen387 ) )"))

([pn_movement_restrct_life_threatening_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-support-gen578)
   (depends-on declare movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen381 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen382 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen384 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_min ?gen381 $$$ $?gen384 ) ) ) ) ) ( test ( eq ( class ?gen382 ) min_imprisonment ) ) => ( calc ( bind $?gen387 ( create$ pn_movement_restrct_life_threatening_min ?gen381 $?gen384 ) ) ) ?gen382 <- ( min_imprisonment ( positive-support $?gen387 ) )"))

([pn_movement_restrct_on_duty_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-defeasibly-dot-gen580)
   (depends-on declare max_imprisonment movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_on_duty_max] ) ) ) ?gen373 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_max $? ) ) ( test ( eq ( class ?gen373 ) max_imprisonment ) ) ( not ( and ?gen380 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen375 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen375 ) ) ) ) ) ) => ?gen373 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_on_duty_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-defeasibly-gen582)
   (depends-on declare movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_on_duty_max] ) ) ) ?gen380 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen375 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen375 ) ) ) ) ( test ( eq ( class ?gen373 ) max_imprisonment ) ) => ?gen373 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_max ?gen380 ) )"))

([pn_movement_restrct_on_duty_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-overruled-dot-gen584)
   (depends-on declare max_imprisonment movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_on_duty_max] ) ) ) ?gen373 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen376 ) ( negative-overruled $?gen377 & : ( subseq-pos ( create$ pn_movement_restrct_on_duty_max-overruled $?gen376 $$$ $?gen377 ) ) ) ) ( test ( eq ( class ?gen373 ) max_imprisonment ) ) ( not ( and ?gen380 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( max_imprisonment ( positive-defeated $?gen375 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen375 ) ) ) ) ) ) => ( calc ( bind $?gen378 ( delete-member$ $?gen377 ( create$ pn_movement_restrct_on_duty_max-overruled $?gen376 ) ) ) ) ?gen373 <- ( max_imprisonment ( negative-overruled $?gen378 ) )"))

([pn_movement_restrct_on_duty_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-overruled-gen586)
   (depends-on declare movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_on_duty_max] ) ) ) ?gen380 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen379 & : ( >= ?gen379 1 ) ) ) ?gen373 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen376 ) ( negative-overruled $?gen377 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_max-overruled $?gen376 $$$ $?gen377 ) ) ) ) ( positive-defeated $?gen375 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen375 ) ) ) ) ( test ( eq ( class ?gen373 ) max_imprisonment ) ) => ( calc ( bind $?gen378 ( create$ pn_movement_restrct_on_duty_max-overruled $?gen376 $?gen377 ) ) ) ?gen373 <- ( max_imprisonment ( negative-overruled $?gen378 ) )"))

([pn_movement_restrct_on_duty_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-support-gen588)
   (depends-on declare movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_on_duty_max] ) ) ) ?gen372 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen373 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen375 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_max ?gen372 $$$ $?gen375 ) ) ) ) ) ( test ( eq ( class ?gen373 ) max_imprisonment ) ) => ( calc ( bind $?gen378 ( create$ pn_movement_restrct_on_duty_max ?gen372 $?gen375 ) ) ) ?gen373 <- ( max_imprisonment ( positive-support $?gen378 ) )"))

([pn_movement_restrct_on_duty_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-defeasibly-dot-gen590)
   (depends-on declare min_imprisonment movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_on_duty_min] ) ) ) ?gen364 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_min $? ) ) ( test ( eq ( class ?gen364 ) min_imprisonment ) ) ( not ( and ?gen371 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen366 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen366 ) ) ) ) ) ) => ?gen364 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_on_duty_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-defeasibly-gen592)
   (depends-on declare movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_on_duty_min] ) ) ) ?gen371 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen366 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen366 ) ) ) ) ( test ( eq ( class ?gen364 ) min_imprisonment ) ) => ?gen364 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_min ?gen371 ) )"))

([pn_movement_restrct_on_duty_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-overruled-dot-gen594)
   (depends-on declare min_imprisonment movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_on_duty_min] ) ) ) ?gen364 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen367 ) ( negative-overruled $?gen368 & : ( subseq-pos ( create$ pn_movement_restrct_on_duty_min-overruled $?gen367 $$$ $?gen368 ) ) ) ) ( test ( eq ( class ?gen364 ) min_imprisonment ) ) ( not ( and ?gen371 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( min_imprisonment ( positive-defeated $?gen366 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen366 ) ) ) ) ) ) => ( calc ( bind $?gen369 ( delete-member$ $?gen368 ( create$ pn_movement_restrct_on_duty_min-overruled $?gen367 ) ) ) ) ?gen364 <- ( min_imprisonment ( negative-overruled $?gen369 ) )"))

([pn_movement_restrct_on_duty_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-overruled-gen596)
   (depends-on declare movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_on_duty_min] ) ) ) ?gen371 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen370 & : ( >= ?gen370 1 ) ) ) ?gen364 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen367 ) ( negative-overruled $?gen368 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_min-overruled $?gen367 $$$ $?gen368 ) ) ) ) ( positive-defeated $?gen366 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen366 ) ) ) ) ( test ( eq ( class ?gen364 ) min_imprisonment ) ) => ( calc ( bind $?gen369 ( create$ pn_movement_restrct_on_duty_min-overruled $?gen367 $?gen368 ) ) ) ?gen364 <- ( min_imprisonment ( negative-overruled $?gen369 ) )"))

([pn_movement_restrct_on_duty_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-support-gen598)
   (depends-on declare movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_on_duty_min] ) ) ) ?gen363 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen364 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen366 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_min ?gen363 $$$ $?gen366 ) ) ) ) ) ( test ( eq ( class ?gen364 ) min_imprisonment ) ) => ( calc ( bind $?gen369 ( create$ pn_movement_restrct_on_duty_min ?gen363 $?gen366 ) ) ) ?gen364 <- ( min_imprisonment ( positive-support $?gen369 ) )"))

([pn_movement_restrct_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-defeasibly-dot-gen600)
   (depends-on declare max_imprisonment movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_max] ) ) ) ?gen355 <- ( max_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_max $? ) ) ( test ( eq ( class ?gen355 ) max_imprisonment ) ) ( not ( and ?gen362 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen357 & : ( not ( member$ pn_movement_restrct_max $?gen357 ) ) ) ) ) ) => ?gen355 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-defeasibly-gen602)
   (depends-on declare movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_max] ) ) ) ?gen362 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( max_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen357 & : ( not ( member$ pn_movement_restrct_max $?gen357 ) ) ) ) ( test ( eq ( class ?gen355 ) max_imprisonment ) ) => ?gen355 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_max ?gen362 ) )"))

([pn_movement_restrct_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-overruled-dot-gen604)
   (depends-on declare max_imprisonment movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_max] ) ) ) ?gen355 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen358 ) ( negative-overruled $?gen359 & : ( subseq-pos ( create$ pn_movement_restrct_max-overruled $?gen358 $$$ $?gen359 ) ) ) ) ( test ( eq ( class ?gen355 ) max_imprisonment ) ) ( not ( and ?gen362 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( max_imprisonment ( positive-defeated $?gen357 & : ( not ( member$ pn_movement_restrct_max $?gen357 ) ) ) ) ) ) => ( calc ( bind $?gen360 ( delete-member$ $?gen359 ( create$ pn_movement_restrct_max-overruled $?gen358 ) ) ) ) ?gen355 <- ( max_imprisonment ( negative-overruled $?gen360 ) )"))

([pn_movement_restrct_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-overruled-gen606)
   (depends-on declare movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_max] ) ) ) ?gen362 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen361 & : ( >= ?gen361 1 ) ) ) ?gen355 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen358 ) ( negative-overruled $?gen359 & : ( not ( subseq-pos ( create$ pn_movement_restrct_max-overruled $?gen358 $$$ $?gen359 ) ) ) ) ( positive-defeated $?gen357 & : ( not ( member$ pn_movement_restrct_max $?gen357 ) ) ) ) ( test ( eq ( class ?gen355 ) max_imprisonment ) ) => ( calc ( bind $?gen360 ( create$ pn_movement_restrct_max-overruled $?gen358 $?gen359 ) ) ) ?gen355 <- ( max_imprisonment ( negative-overruled $?gen360 ) )"))

([pn_movement_restrct_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-support-gen608)
   (depends-on declare movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_max] ) ) ) ?gen354 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen355 <- ( max_imprisonment ( value 1 ) ( positive-support $?gen357 & : ( not ( subseq-pos ( create$ pn_movement_restrct_max ?gen354 $$$ $?gen357 ) ) ) ) ) ( test ( eq ( class ?gen355 ) max_imprisonment ) ) => ( calc ( bind $?gen360 ( create$ pn_movement_restrct_max ?gen354 $?gen357 ) ) ) ?gen355 <- ( max_imprisonment ( positive-support $?gen360 ) )"))

([pn_movement_restrct_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-defeasibly-dot-gen610)
   (depends-on declare min_imprisonment movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_min] ) ) ) ?gen346 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_min $? ) ) ( test ( eq ( class ?gen346 ) min_imprisonment ) ) ( not ( and ?gen353 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen348 & : ( not ( member$ pn_movement_restrct_min $?gen348 ) ) ) ) ) ) => ?gen346 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-defeasibly-gen612)
   (depends-on declare movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_min] ) ) ) ?gen353 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen348 & : ( not ( member$ pn_movement_restrct_min $?gen348 ) ) ) ) ( test ( eq ( class ?gen346 ) min_imprisonment ) ) => ?gen346 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_min ?gen353 ) )"))

([pn_movement_restrct_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-overruled-dot-gen614)
   (depends-on declare min_imprisonment movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_min] ) ) ) ?gen346 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen349 ) ( negative-overruled $?gen350 & : ( subseq-pos ( create$ pn_movement_restrct_min-overruled $?gen349 $$$ $?gen350 ) ) ) ) ( test ( eq ( class ?gen346 ) min_imprisonment ) ) ( not ( and ?gen353 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( min_imprisonment ( positive-defeated $?gen348 & : ( not ( member$ pn_movement_restrct_min $?gen348 ) ) ) ) ) ) => ( calc ( bind $?gen351 ( delete-member$ $?gen350 ( create$ pn_movement_restrct_min-overruled $?gen349 ) ) ) ) ?gen346 <- ( min_imprisonment ( negative-overruled $?gen351 ) )"))

([pn_movement_restrct_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-overruled-gen616)
   (depends-on declare movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_min] ) ) ) ?gen353 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen352 & : ( >= ?gen352 1 ) ) ) ?gen346 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen349 ) ( negative-overruled $?gen350 & : ( not ( subseq-pos ( create$ pn_movement_restrct_min-overruled $?gen349 $$$ $?gen350 ) ) ) ) ( positive-defeated $?gen348 & : ( not ( member$ pn_movement_restrct_min $?gen348 ) ) ) ) ( test ( eq ( class ?gen346 ) min_imprisonment ) ) => ( calc ( bind $?gen351 ( create$ pn_movement_restrct_min-overruled $?gen349 $?gen350 ) ) ) ?gen346 <- ( min_imprisonment ( negative-overruled $?gen351 ) )"))

([pn_movement_restrct_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-support-gen618)
   (depends-on declare movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_min] ) ) ) ?gen345 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen346 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen348 & : ( not ( subseq-pos ( create$ pn_movement_restrct_min ?gen345 $$$ $?gen348 ) ) ) ) ) ( test ( eq ( class ?gen346 ) min_imprisonment ) ) => ( calc ( bind $?gen351 ( create$ pn_movement_restrct_min ?gen345 $?gen348 ) ) ) ?gen346 <- ( min_imprisonment ( positive-support $?gen351 ) )"))

([pn_psy_abuse_on_duty_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-defeasibly-dot-gen620)
   (depends-on declare max_imprisonment psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_on_duty_max] ) ) ) ?gen337 <- ( max_imprisonment ( value 8 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_max $? ) ) ( test ( eq ( class ?gen337 ) max_imprisonment ) ) ( not ( and ?gen344 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen339 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen339 ) ) ) ) ) ) => ?gen337 <- ( max_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_on_duty_max-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-defeasibly-gen622)
   (depends-on declare psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_on_duty_max] ) ) ) ?gen344 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( max_imprisonment ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen339 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen339 ) ) ) ) ( test ( eq ( class ?gen337 ) max_imprisonment ) ) => ?gen337 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_max ?gen344 ) )"))

([pn_psy_abuse_on_duty_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-overruled-dot-gen624)
   (depends-on declare max_imprisonment psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_on_duty_max] ) ) ) ?gen337 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen340 ) ( negative-overruled $?gen341 & : ( subseq-pos ( create$ pn_psy_abuse_on_duty_max-overruled $?gen340 $$$ $?gen341 ) ) ) ) ( test ( eq ( class ?gen337 ) max_imprisonment ) ) ( not ( and ?gen344 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( max_imprisonment ( positive-defeated $?gen339 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen339 ) ) ) ) ) ) => ( calc ( bind $?gen342 ( delete-member$ $?gen341 ( create$ pn_psy_abuse_on_duty_max-overruled $?gen340 ) ) ) ) ?gen337 <- ( max_imprisonment ( negative-overruled $?gen342 ) )"))

([pn_psy_abuse_on_duty_max-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-overruled-gen626)
   (depends-on declare psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_on_duty_max] ) ) ) ?gen344 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen343 & : ( >= ?gen343 1 ) ) ) ?gen337 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen340 ) ( negative-overruled $?gen341 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_max-overruled $?gen340 $$$ $?gen341 ) ) ) ) ( positive-defeated $?gen339 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen339 ) ) ) ) ( test ( eq ( class ?gen337 ) max_imprisonment ) ) => ( calc ( bind $?gen342 ( create$ pn_psy_abuse_on_duty_max-overruled $?gen340 $?gen341 ) ) ) ?gen337 <- ( max_imprisonment ( negative-overruled $?gen342 ) )"))

([pn_psy_abuse_on_duty_max-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-support-gen628)
   (depends-on declare psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_on_duty_max] ) ) ) ?gen336 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ?gen337 <- ( max_imprisonment ( value 8 ) ( positive-support $?gen339 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_max ?gen336 $$$ $?gen339 ) ) ) ) ) ( test ( eq ( class ?gen337 ) max_imprisonment ) ) => ( calc ( bind $?gen342 ( create$ pn_psy_abuse_on_duty_max ?gen336 $?gen339 ) ) ) ?gen337 <- ( max_imprisonment ( positive-support $?gen342 ) )"))

([pn_psy_abuse_on_duty_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-defeasibly-dot-gen630)
   (depends-on declare min_imprisonment psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_on_duty_min] ) ) ) ?gen328 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_min $? ) ) ( test ( eq ( class ?gen328 ) min_imprisonment ) ) ( not ( and ?gen335 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen330 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen330 ) ) ) ) ) ) => ?gen328 <- ( min_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_on_duty_min-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-defeasibly-gen632)
   (depends-on declare psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_on_duty_min] ) ) ) ?gen335 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen330 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen330 ) ) ) ) ( test ( eq ( class ?gen328 ) min_imprisonment ) ) => ?gen328 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_min ?gen335 ) )"))

([pn_psy_abuse_on_duty_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-overruled-dot-gen634)
   (depends-on declare min_imprisonment psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_on_duty_min] ) ) ) ?gen328 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen331 ) ( negative-overruled $?gen332 & : ( subseq-pos ( create$ pn_psy_abuse_on_duty_min-overruled $?gen331 $$$ $?gen332 ) ) ) ) ( test ( eq ( class ?gen328 ) min_imprisonment ) ) ( not ( and ?gen335 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( min_imprisonment ( positive-defeated $?gen330 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen330 ) ) ) ) ) ) => ( calc ( bind $?gen333 ( delete-member$ $?gen332 ( create$ pn_psy_abuse_on_duty_min-overruled $?gen331 ) ) ) ) ?gen328 <- ( min_imprisonment ( negative-overruled $?gen333 ) )"))

([pn_psy_abuse_on_duty_min-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-overruled-gen636)
   (depends-on declare psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_on_duty_min] ) ) ) ?gen335 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen334 & : ( >= ?gen334 1 ) ) ) ?gen328 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen331 ) ( negative-overruled $?gen332 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_min-overruled $?gen331 $$$ $?gen332 ) ) ) ) ( positive-defeated $?gen330 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen330 ) ) ) ) ( test ( eq ( class ?gen328 ) min_imprisonment ) ) => ( calc ( bind $?gen333 ( create$ pn_psy_abuse_on_duty_min-overruled $?gen331 $?gen332 ) ) ) ?gen328 <- ( min_imprisonment ( negative-overruled $?gen333 ) )"))

([pn_psy_abuse_on_duty_min-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-support-gen638)
   (depends-on declare psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_on_duty_min] ) ) ) ?gen327 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ?gen328 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen330 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_min ?gen327 $$$ $?gen330 ) ) ) ) ) ( test ( eq ( class ?gen328 ) min_imprisonment ) ) => ( calc ( bind $?gen333 ( create$ pn_psy_abuse_on_duty_min ?gen327 $?gen330 ) ) ) ?gen328 <- ( min_imprisonment ( positive-support $?gen333 ) )"))

([pn_psy_abuse_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-defeasibly-dot-gen640)
   (depends-on declare max_imprisonment psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_max] ) ) ) ?gen319 <- ( max_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_max $? ) ) ( test ( eq ( class ?gen319 ) max_imprisonment ) ) ( not ( and ?gen326 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen321 & : ( not ( member$ pn_psy_abuse_max $?gen321 ) ) ) ) ) ) => ?gen319 <- ( max_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_max-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-defeasibly-gen642)
   (depends-on declare psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_max] ) ) ) ?gen326 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( max_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen321 & : ( not ( member$ pn_psy_abuse_max $?gen321 ) ) ) ) ( test ( eq ( class ?gen319 ) max_imprisonment ) ) => ?gen319 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_max ?gen326 ) )"))

([pn_psy_abuse_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-overruled-dot-gen644)
   (depends-on declare max_imprisonment psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_max] ) ) ) ?gen319 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen322 ) ( negative-overruled $?gen323 & : ( subseq-pos ( create$ pn_psy_abuse_max-overruled $?gen322 $$$ $?gen323 ) ) ) ) ( test ( eq ( class ?gen319 ) max_imprisonment ) ) ( not ( and ?gen326 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( max_imprisonment ( positive-defeated $?gen321 & : ( not ( member$ pn_psy_abuse_max $?gen321 ) ) ) ) ) ) => ( calc ( bind $?gen324 ( delete-member$ $?gen323 ( create$ pn_psy_abuse_max-overruled $?gen322 ) ) ) ) ?gen319 <- ( max_imprisonment ( negative-overruled $?gen324 ) )"))

([pn_psy_abuse_max-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-overruled-gen646)
   (depends-on declare psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_max] ) ) ) ?gen326 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen325 & : ( >= ?gen325 1 ) ) ) ?gen319 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen322 ) ( negative-overruled $?gen323 & : ( not ( subseq-pos ( create$ pn_psy_abuse_max-overruled $?gen322 $$$ $?gen323 ) ) ) ) ( positive-defeated $?gen321 & : ( not ( member$ pn_psy_abuse_max $?gen321 ) ) ) ) ( test ( eq ( class ?gen319 ) max_imprisonment ) ) => ( calc ( bind $?gen324 ( create$ pn_psy_abuse_max-overruled $?gen322 $?gen323 ) ) ) ?gen319 <- ( max_imprisonment ( negative-overruled $?gen324 ) )"))

([pn_psy_abuse_max-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-support-gen648)
   (depends-on declare psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_max] ) ) ) ?gen318 <- ( psychological_abuse ( defendant ?Defendant ) ) ?gen319 <- ( max_imprisonment ( value 3 ) ( positive-support $?gen321 & : ( not ( subseq-pos ( create$ pn_psy_abuse_max ?gen318 $$$ $?gen321 ) ) ) ) ) ( test ( eq ( class ?gen319 ) max_imprisonment ) ) => ( calc ( bind $?gen324 ( create$ pn_psy_abuse_max ?gen318 $?gen321 ) ) ) ?gen319 <- ( max_imprisonment ( positive-support $?gen324 ) )"))

([pn_psy_abuse_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-defeasibly-dot-gen650)
   (depends-on declare min_imprisonment psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_min] ) ) ) ?gen310 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_min $? ) ) ( test ( eq ( class ?gen310 ) min_imprisonment ) ) ( not ( and ?gen317 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen312 & : ( not ( member$ pn_psy_abuse_min $?gen312 ) ) ) ) ) ) => ?gen310 <- ( min_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_min-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-defeasibly-gen652)
   (depends-on declare psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_min] ) ) ) ?gen317 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen312 & : ( not ( member$ pn_psy_abuse_min $?gen312 ) ) ) ) ( test ( eq ( class ?gen310 ) min_imprisonment ) ) => ?gen310 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_min ?gen317 ) )"))

([pn_psy_abuse_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-overruled-dot-gen654)
   (depends-on declare min_imprisonment psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_min] ) ) ) ?gen310 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen313 ) ( negative-overruled $?gen314 & : ( subseq-pos ( create$ pn_psy_abuse_min-overruled $?gen313 $$$ $?gen314 ) ) ) ) ( test ( eq ( class ?gen310 ) min_imprisonment ) ) ( not ( and ?gen317 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( min_imprisonment ( positive-defeated $?gen312 & : ( not ( member$ pn_psy_abuse_min $?gen312 ) ) ) ) ) ) => ( calc ( bind $?gen315 ( delete-member$ $?gen314 ( create$ pn_psy_abuse_min-overruled $?gen313 ) ) ) ) ?gen310 <- ( min_imprisonment ( negative-overruled $?gen315 ) )"))

([pn_psy_abuse_min-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-overruled-gen656)
   (depends-on declare psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_min] ) ) ) ?gen317 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen316 & : ( >= ?gen316 1 ) ) ) ?gen310 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen313 ) ( negative-overruled $?gen314 & : ( not ( subseq-pos ( create$ pn_psy_abuse_min-overruled $?gen313 $$$ $?gen314 ) ) ) ) ( positive-defeated $?gen312 & : ( not ( member$ pn_psy_abuse_min $?gen312 ) ) ) ) ( test ( eq ( class ?gen310 ) min_imprisonment ) ) => ( calc ( bind $?gen315 ( create$ pn_psy_abuse_min-overruled $?gen313 $?gen314 ) ) ) ?gen310 <- ( min_imprisonment ( negative-overruled $?gen315 ) )"))

([pn_psy_abuse_min-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-support-gen658)
   (depends-on declare psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_min] ) ) ) ?gen309 <- ( psychological_abuse ( defendant ?Defendant ) ) ?gen310 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen312 & : ( not ( subseq-pos ( create$ pn_psy_abuse_min ?gen309 $$$ $?gen312 ) ) ) ) ) ( test ( eq ( class ?gen310 ) min_imprisonment ) ) => ( calc ( bind $?gen315 ( create$ pn_psy_abuse_min ?gen309 $?gen312 ) ) ) ?gen310 <- ( min_imprisonment ( positive-support $?gen315 ) )"))

([rule8_7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8_7-defeasibly-dot-gen660)
   (depends-on declare coercion_abuse coercion_abuse_multiple_defendant coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8_7] ) ) ) ?gen301 <- ( coercion_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8_7 $? ) ) ( test ( eq ( class ?gen301 ) coercion_abuse ) ) ( not ( and ?gen308 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( coercion_abuse ( positive ~ 2 ) ( negative-overruled $?gen303 & : ( not ( member$ rule8_7 $?gen303 ) ) ) ) ) ) => ?gen301 <- ( coercion_abuse ( negative 0 ) )"))

([rule8_7-defeasibly] of derived-attribute-rule
   (pos-name rule8_7-defeasibly-gen662)
   (depends-on declare coercion_abuse_multiple_defendant coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8_7] ) ) ) ?gen308 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( coercion_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen303 & : ( not ( member$ rule8_7 $?gen303 ) ) ) ) ( test ( eq ( class ?gen301 ) coercion_abuse ) ) => ?gen301 <- ( coercion_abuse ( negative 1 ) ( negative-derivator rule8_7 ?gen308 ) )"))

([rule8_7-overruled-dot] of derived-attribute-rule
   (pos-name rule8_7-overruled-dot-gen664)
   (depends-on declare coercion_abuse coercion_abuse_multiple_defendant coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8_7] ) ) ) ?gen301 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-support $?gen304 ) ( positive-overruled $?gen305 & : ( subseq-pos ( create$ rule8_7-overruled $?gen304 $$$ $?gen305 ) ) ) ) ( test ( eq ( class ?gen301 ) coercion_abuse ) ) ( not ( and ?gen308 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( coercion_abuse ( negative-defeated $?gen303 & : ( not ( member$ rule8_7 $?gen303 ) ) ) ) ) ) => ( calc ( bind $?gen306 ( delete-member$ $?gen305 ( create$ rule8_7-overruled $?gen304 ) ) ) ) ?gen301 <- ( coercion_abuse ( positive-overruled $?gen306 ) )"))

([rule8_7-overruled] of derived-attribute-rule
   (pos-name rule8_7-overruled-gen666)
   (depends-on declare coercion_abuse_multiple_defendant coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8_7] ) ) ) ?gen308 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen307 & : ( >= ?gen307 1 ) ) ) ?gen301 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-support $?gen304 ) ( positive-overruled $?gen305 & : ( not ( subseq-pos ( create$ rule8_7-overruled $?gen304 $$$ $?gen305 ) ) ) ) ( negative-defeated $?gen303 & : ( not ( member$ rule8_7 $?gen303 ) ) ) ) ( test ( eq ( class ?gen301 ) coercion_abuse ) ) => ( calc ( bind $?gen306 ( create$ rule8_7-overruled $?gen304 $?gen305 ) ) ) ?gen301 <- ( coercion_abuse ( positive-overruled $?gen306 ) )"))

([rule8_7-support] of derived-attribute-rule
   (pos-name rule8_7-support-gen668)
   (depends-on declare coercion_abuse_multiple_defendant coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8_7] ) ) ) ?gen300 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen301 <- ( coercion_abuse ( defendant ?Defendant ) ( negative-support $?gen303 & : ( not ( subseq-pos ( create$ rule8_7 ?gen300 $$$ $?gen303 ) ) ) ) ) ( test ( eq ( class ?gen301 ) coercion_abuse ) ) => ( calc ( bind $?gen306 ( create$ rule8_7 ?gen300 $?gen303 ) ) ) ?gen301 <- ( coercion_abuse ( negative-support $?gen306 ) )"))

([rule8_4-defeated-dot] of derived-attribute-rule
   (pos-name rule8_4-defeated-dot-gen670)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_multiple_defendant)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule8_4] ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen295 & : ( subseq-pos ( create$ rule8_4-defeated rule4 $$$ $?gen295 ) ) ) ) ( test ( eq ( class ?gen292 ) movement_restrictions_on_duty ) ) ( not ?gen299 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ) => ( calc ( bind $?gen294 ( delete-member$ $?gen295 ( create$ rule8_4-defeated rule4 ) ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( positive-defeated $?gen294 ) )"))

([rule8_4-defeated] of derived-attribute-rule
   (pos-name rule8_4-defeated-gen672)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule8_4] ) ) ) ?gen299 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen295 & : ( not ( subseq-pos ( create$ rule8_4-defeated rule4 $$$ $?gen295 ) ) ) ) ) ( test ( eq ( class ?gen292 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen294 ( create$ rule8_4-defeated rule4 $?gen295 ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( positive-defeated $?gen294 ) )"))

([rule8_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8_4-defeasibly-dot-gen674)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8_4] ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8_4 $? ) ) ( test ( eq ( class ?gen292 ) movement_restrictions_on_duty ) ) ( not ( and ?gen299 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen294 & : ( not ( member$ rule8_4 $?gen294 ) ) ) ) ) ) => ?gen292 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule8_4-defeasibly] of derived-attribute-rule
   (pos-name rule8_4-defeasibly-gen676)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8_4] ) ) ) ?gen299 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen294 & : ( not ( member$ rule8_4 $?gen294 ) ) ) ) ( test ( eq ( class ?gen292 ) movement_restrictions_on_duty ) ) => ?gen292 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule8_4 ?gen299 ) )"))

([rule8_4-overruled-dot] of derived-attribute-rule
   (pos-name rule8_4-overruled-dot-gen678)
   (depends-on declare movement_restrictions_on_duty coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8_4] ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen295 ) ( positive-overruled $?gen296 & : ( subseq-pos ( create$ rule8_4-overruled $?gen295 $$$ $?gen296 ) ) ) ) ( test ( eq ( class ?gen292 ) movement_restrictions_on_duty ) ) ( not ( and ?gen299 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( negative-defeated $?gen294 & : ( not ( member$ rule8_4 $?gen294 ) ) ) ) ) ) => ( calc ( bind $?gen297 ( delete-member$ $?gen296 ( create$ rule8_4-overruled $?gen295 ) ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( positive-overruled $?gen297 ) )"))

([rule8_4-overruled] of derived-attribute-rule
   (pos-name rule8_4-overruled-gen680)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8_4] ) ) ) ?gen299 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen298 & : ( >= ?gen298 1 ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen295 ) ( positive-overruled $?gen296 & : ( not ( subseq-pos ( create$ rule8_4-overruled $?gen295 $$$ $?gen296 ) ) ) ) ( negative-defeated $?gen294 & : ( not ( member$ rule8_4 $?gen294 ) ) ) ) ( test ( eq ( class ?gen292 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen297 ( create$ rule8_4-overruled $?gen295 $?gen296 ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( positive-overruled $?gen297 ) )"))

([rule8_4-support] of derived-attribute-rule
   (pos-name rule8_4-support-gen682)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8_4] ) ) ) ?gen291 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen292 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen294 & : ( not ( subseq-pos ( create$ rule8_4 ?gen291 $$$ $?gen294 ) ) ) ) ) ( test ( eq ( class ?gen292 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen297 ( create$ rule8_4 ?gen291 $?gen294 ) ) ) ?gen292 <- ( movement_restrictions_on_duty ( negative-support $?gen297 ) )"))

([rule8_3-defeated-dot] of derived-attribute-rule
   (pos-name rule8_3-defeated-dot-gen684)
   (depends-on declare movement_restrictions coercion_abuse_multiple_defendant)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule8_3] ) ) ) ?gen283 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen286 & : ( subseq-pos ( create$ rule8_3-defeated rule3 $$$ $?gen286 ) ) ) ) ( test ( eq ( class ?gen283 ) movement_restrictions ) ) ( not ?gen290 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ) => ( calc ( bind $?gen285 ( delete-member$ $?gen286 ( create$ rule8_3-defeated rule3 ) ) ) ) ?gen283 <- ( movement_restrictions ( positive-defeated $?gen285 ) )"))

([rule8_3-defeated] of derived-attribute-rule
   (pos-name rule8_3-defeated-gen686)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule8_3] ) ) ) ?gen290 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen286 & : ( not ( subseq-pos ( create$ rule8_3-defeated rule3 $$$ $?gen286 ) ) ) ) ) ( test ( eq ( class ?gen283 ) movement_restrictions ) ) => ( calc ( bind $?gen285 ( create$ rule8_3-defeated rule3 $?gen286 ) ) ) ?gen283 <- ( movement_restrictions ( positive-defeated $?gen285 ) )"))

([rule8_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8_3-defeasibly-dot-gen688)
   (depends-on declare movement_restrictions coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8_3] ) ) ) ?gen283 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8_3 $? ) ) ( test ( eq ( class ?gen283 ) movement_restrictions ) ) ( not ( and ?gen290 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen285 & : ( not ( member$ rule8_3 $?gen285 ) ) ) ) ) ) => ?gen283 <- ( movement_restrictions ( negative 0 ) )"))

([rule8_3-defeasibly] of derived-attribute-rule
   (pos-name rule8_3-defeasibly-gen690)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8_3] ) ) ) ?gen290 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen285 & : ( not ( member$ rule8_3 $?gen285 ) ) ) ) ( test ( eq ( class ?gen283 ) movement_restrictions ) ) => ?gen283 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule8_3 ?gen290 ) )"))

([rule8_3-overruled-dot] of derived-attribute-rule
   (pos-name rule8_3-overruled-dot-gen692)
   (depends-on declare movement_restrictions coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8_3] ) ) ) ?gen283 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen286 ) ( positive-overruled $?gen287 & : ( subseq-pos ( create$ rule8_3-overruled $?gen286 $$$ $?gen287 ) ) ) ) ( test ( eq ( class ?gen283 ) movement_restrictions ) ) ( not ( and ?gen290 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( movement_restrictions ( negative-defeated $?gen285 & : ( not ( member$ rule8_3 $?gen285 ) ) ) ) ) ) => ( calc ( bind $?gen288 ( delete-member$ $?gen287 ( create$ rule8_3-overruled $?gen286 ) ) ) ) ?gen283 <- ( movement_restrictions ( positive-overruled $?gen288 ) )"))

([rule8_3-overruled] of derived-attribute-rule
   (pos-name rule8_3-overruled-gen694)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8_3] ) ) ) ?gen290 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen289 & : ( >= ?gen289 1 ) ) ) ?gen283 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen286 ) ( positive-overruled $?gen287 & : ( not ( subseq-pos ( create$ rule8_3-overruled $?gen286 $$$ $?gen287 ) ) ) ) ( negative-defeated $?gen285 & : ( not ( member$ rule8_3 $?gen285 ) ) ) ) ( test ( eq ( class ?gen283 ) movement_restrictions ) ) => ( calc ( bind $?gen288 ( create$ rule8_3-overruled $?gen286 $?gen287 ) ) ) ?gen283 <- ( movement_restrictions ( positive-overruled $?gen288 ) )"))

([rule8_3-support] of derived-attribute-rule
   (pos-name rule8_3-support-gen696)
   (depends-on declare coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8_3] ) ) ) ?gen282 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen283 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen285 & : ( not ( subseq-pos ( create$ rule8_3 ?gen282 $$$ $?gen285 ) ) ) ) ) ( test ( eq ( class ?gen283 ) movement_restrictions ) ) => ( calc ( bind $?gen288 ( create$ rule8_3 ?gen282 $?gen285 ) ) ) ?gen283 <- ( movement_restrictions ( negative-support $?gen288 ) )"))

([rule8_2-defeated-dot] of derived-attribute-rule
   (pos-name rule8_2-defeated-dot-gen698)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_multiple_defendant)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule8_2] ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen277 & : ( subseq-pos ( create$ rule8_2-defeated rule2 $$$ $?gen277 ) ) ) ) ( test ( eq ( class ?gen274 ) psychological_abuse_on_duty ) ) ( not ?gen281 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ) => ( calc ( bind $?gen276 ( delete-member$ $?gen277 ( create$ rule8_2-defeated rule2 ) ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( positive-defeated $?gen276 ) )"))

([rule8_2-defeated] of derived-attribute-rule
   (pos-name rule8_2-defeated-gen700)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule8_2] ) ) ) ?gen281 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen277 & : ( not ( subseq-pos ( create$ rule8_2-defeated rule2 $$$ $?gen277 ) ) ) ) ) ( test ( eq ( class ?gen274 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen276 ( create$ rule8_2-defeated rule2 $?gen277 ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( positive-defeated $?gen276 ) )"))

([rule8_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8_2-defeasibly-dot-gen702)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8_2] ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8_2 $? ) ) ( test ( eq ( class ?gen274 ) psychological_abuse_on_duty ) ) ( not ( and ?gen281 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen276 & : ( not ( member$ rule8_2 $?gen276 ) ) ) ) ) ) => ?gen274 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule8_2-defeasibly] of derived-attribute-rule
   (pos-name rule8_2-defeasibly-gen704)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8_2] ) ) ) ?gen281 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen276 & : ( not ( member$ rule8_2 $?gen276 ) ) ) ) ( test ( eq ( class ?gen274 ) psychological_abuse_on_duty ) ) => ?gen274 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule8_2 ?gen281 ) )"))

([rule8_2-overruled-dot] of derived-attribute-rule
   (pos-name rule8_2-overruled-dot-gen706)
   (depends-on declare psychological_abuse_on_duty coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8_2] ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen277 ) ( positive-overruled $?gen278 & : ( subseq-pos ( create$ rule8_2-overruled $?gen277 $$$ $?gen278 ) ) ) ) ( test ( eq ( class ?gen274 ) psychological_abuse_on_duty ) ) ( not ( and ?gen281 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( negative-defeated $?gen276 & : ( not ( member$ rule8_2 $?gen276 ) ) ) ) ) ) => ( calc ( bind $?gen279 ( delete-member$ $?gen278 ( create$ rule8_2-overruled $?gen277 ) ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( positive-overruled $?gen279 ) )"))

([rule8_2-overruled] of derived-attribute-rule
   (pos-name rule8_2-overruled-gen708)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8_2] ) ) ) ?gen281 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen280 & : ( >= ?gen280 1 ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen277 ) ( positive-overruled $?gen278 & : ( not ( subseq-pos ( create$ rule8_2-overruled $?gen277 $$$ $?gen278 ) ) ) ) ( negative-defeated $?gen276 & : ( not ( member$ rule8_2 $?gen276 ) ) ) ) ( test ( eq ( class ?gen274 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen279 ( create$ rule8_2-overruled $?gen277 $?gen278 ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( positive-overruled $?gen279 ) )"))

([rule8_2-support] of derived-attribute-rule
   (pos-name rule8_2-support-gen710)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8_2] ) ) ) ?gen273 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen274 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen276 & : ( not ( subseq-pos ( create$ rule8_2 ?gen273 $$$ $?gen276 ) ) ) ) ) ( test ( eq ( class ?gen274 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen279 ( create$ rule8_2 ?gen273 $?gen276 ) ) ) ?gen274 <- ( psychological_abuse_on_duty ( negative-support $?gen279 ) )"))

([rule8_1-defeated-dot] of derived-attribute-rule
   (pos-name rule8_1-defeated-dot-gen712)
   (depends-on declare psychological_abuse coercion_abuse_multiple_defendant)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule8_1] ) ) ) ?gen265 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen268 & : ( subseq-pos ( create$ rule8_1-defeated rule1 $$$ $?gen268 ) ) ) ) ( test ( eq ( class ?gen265 ) psychological_abuse ) ) ( not ?gen272 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ) => ( calc ( bind $?gen267 ( delete-member$ $?gen268 ( create$ rule8_1-defeated rule1 ) ) ) ) ?gen265 <- ( psychological_abuse ( positive-defeated $?gen267 ) )"))

([rule8_1-defeated] of derived-attribute-rule
   (pos-name rule8_1-defeated-gen714)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule8_1] ) ) ) ?gen272 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen268 & : ( not ( subseq-pos ( create$ rule8_1-defeated rule1 $$$ $?gen268 ) ) ) ) ) ( test ( eq ( class ?gen265 ) psychological_abuse ) ) => ( calc ( bind $?gen267 ( create$ rule8_1-defeated rule1 $?gen268 ) ) ) ?gen265 <- ( psychological_abuse ( positive-defeated $?gen267 ) )"))

([rule8_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8_1-defeasibly-dot-gen716)
   (depends-on declare psychological_abuse coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8_1] ) ) ) ?gen265 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule8_1 $? ) ) ( test ( eq ( class ?gen265 ) psychological_abuse ) ) ( not ( and ?gen272 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen267 & : ( not ( member$ rule8_1 $?gen267 ) ) ) ) ) ) => ?gen265 <- ( psychological_abuse ( negative 0 ) )"))

([rule8_1-defeasibly] of derived-attribute-rule
   (pos-name rule8_1-defeasibly-gen718)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8_1] ) ) ) ?gen272 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen267 & : ( not ( member$ rule8_1 $?gen267 ) ) ) ) ( test ( eq ( class ?gen265 ) psychological_abuse ) ) => ?gen265 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule8_1 ?gen272 ) )"))

([rule8_1-overruled-dot] of derived-attribute-rule
   (pos-name rule8_1-overruled-dot-gen720)
   (depends-on declare psychological_abuse coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8_1] ) ) ) ?gen265 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen268 ) ( positive-overruled $?gen269 & : ( subseq-pos ( create$ rule8_1-overruled $?gen268 $$$ $?gen269 ) ) ) ) ( test ( eq ( class ?gen265 ) psychological_abuse ) ) ( not ( and ?gen272 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( psychological_abuse ( negative-defeated $?gen267 & : ( not ( member$ rule8_1 $?gen267 ) ) ) ) ) ) => ( calc ( bind $?gen270 ( delete-member$ $?gen269 ( create$ rule8_1-overruled $?gen268 ) ) ) ) ?gen265 <- ( psychological_abuse ( positive-overruled $?gen270 ) )"))

([rule8_1-overruled] of derived-attribute-rule
   (pos-name rule8_1-overruled-gen722)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8_1] ) ) ) ?gen272 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive ?gen271 & : ( >= ?gen271 1 ) ) ) ?gen265 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen268 ) ( positive-overruled $?gen269 & : ( not ( subseq-pos ( create$ rule8_1-overruled $?gen268 $$$ $?gen269 ) ) ) ) ( negative-defeated $?gen267 & : ( not ( member$ rule8_1 $?gen267 ) ) ) ) ( test ( eq ( class ?gen265 ) psychological_abuse ) ) => ( calc ( bind $?gen270 ( create$ rule8_1-overruled $?gen268 $?gen269 ) ) ) ?gen265 <- ( psychological_abuse ( positive-overruled $?gen270 ) )"))

([rule8_1-support] of derived-attribute-rule
   (pos-name rule8_1-support-gen724)
   (depends-on declare coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8_1] ) ) ) ?gen264 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ?gen265 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen267 & : ( not ( subseq-pos ( create$ rule8_1 ?gen264 $$$ $?gen267 ) ) ) ) ) ( test ( eq ( class ?gen265 ) psychological_abuse ) ) => ( calc ( bind $?gen270 ( create$ rule8_1 ?gen264 $?gen267 ) ) ) ?gen265 <- ( psychological_abuse ( negative-support $?gen270 ) )"))

([rule8-defeasibly-dot] of derived-attribute-rule
   (pos-name rule8-defeasibly-dot-gen726)
   (depends-on declare coercion_abuse_multiple_defendant lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule8] ) ) ) ?gen254 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule8 $? ) ) ( test ( eq ( class ?gen254 ) coercion_abuse_multiple_defendant ) ) ( not ( and ?gen261 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen260 & : ( >= ?gen260 1 ) ) ) ?gen263 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen254 <- ( coercion_abuse_multiple_defendant ( negative ~ 2 ) ( positive-overruled $?gen256 & : ( not ( member$ rule8 $?gen256 ) ) ) ) ) ) => ?gen254 <- ( coercion_abuse_multiple_defendant ( positive 0 ) )"))

([rule8-defeasibly] of derived-attribute-rule
   (pos-name rule8-defeasibly-gen728)
   (depends-on declare lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule8] ) ) ) ?gen261 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen260 & : ( >= ?gen260 1 ) ) ) ?gen263 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen254 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen256 & : ( not ( member$ rule8 $?gen256 ) ) ) ) ( test ( eq ( class ?gen254 ) coercion_abuse_multiple_defendant ) ) => ?gen254 <- ( coercion_abuse_multiple_defendant ( positive 1 ) ( positive-derivator rule8 ?gen261 ?gen263 ) )"))

([rule8-overruled-dot] of derived-attribute-rule
   (pos-name rule8-overruled-dot-gen730)
   (depends-on declare coercion_abuse_multiple_defendant lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule8] ) ) ) ?gen254 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( negative-support $?gen257 ) ( negative-overruled $?gen258 & : ( subseq-pos ( create$ rule8-overruled $?gen257 $$$ $?gen258 ) ) ) ) ( test ( eq ( class ?gen254 ) coercion_abuse_multiple_defendant ) ) ( not ( and ?gen261 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen260 & : ( >= ?gen260 1 ) ) ) ?gen263 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen254 <- ( coercion_abuse_multiple_defendant ( positive-defeated $?gen256 & : ( not ( member$ rule8 $?gen256 ) ) ) ) ) ) => ( calc ( bind $?gen259 ( delete-member$ $?gen258 ( create$ rule8-overruled $?gen257 ) ) ) ) ?gen254 <- ( coercion_abuse_multiple_defendant ( negative-overruled $?gen259 ) )"))

([rule8-overruled] of derived-attribute-rule
   (pos-name rule8-overruled-gen732)
   (depends-on declare lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule8] ) ) ) ?gen261 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen260 & : ( >= ?gen260 1 ) ) ) ?gen263 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen262 & : ( >= ?gen262 1 ) ) ) ?gen254 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( negative-support $?gen257 ) ( negative-overruled $?gen258 & : ( not ( subseq-pos ( create$ rule8-overruled $?gen257 $$$ $?gen258 ) ) ) ) ( positive-defeated $?gen256 & : ( not ( member$ rule8 $?gen256 ) ) ) ) ( test ( eq ( class ?gen254 ) coercion_abuse_multiple_defendant ) ) => ( calc ( bind $?gen259 ( create$ rule8-overruled $?gen257 $?gen258 ) ) ) ?gen254 <- ( coercion_abuse_multiple_defendant ( negative-overruled $?gen259 ) )"))

([rule8-support] of derived-attribute-rule
   (pos-name rule8-support-gen734)
   (depends-on declare lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule8] ) ) ) ?gen252 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ?gen253 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ?gen254 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ( positive-support $?gen256 & : ( not ( subseq-pos ( create$ rule8 ?gen252 ?gen253 $$$ $?gen256 ) ) ) ) ) ( test ( eq ( class ?gen254 ) coercion_abuse_multiple_defendant ) ) => ( calc ( bind $?gen259 ( create$ rule8 ?gen252 ?gen253 $?gen256 ) ) ) ?gen254 <- ( coercion_abuse_multiple_defendant ( positive-support $?gen259 ) )"))

([rule7_4-defeated-dot] of derived-attribute-rule
   (pos-name rule7_4-defeated-dot-gen736)
   (depends-on declare movement_restrictions_on_duty coercion_abuse)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_4] ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen247 & : ( subseq-pos ( create$ rule7_4-defeated rule4 $$$ $?gen247 ) ) ) ) ( test ( eq ( class ?gen244 ) movement_restrictions_on_duty ) ) ( not ?gen251 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ) => ( calc ( bind $?gen246 ( delete-member$ $?gen247 ( create$ rule7_4-defeated rule4 ) ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( positive-defeated $?gen246 ) )"))

([rule7_4-defeated] of derived-attribute-rule
   (pos-name rule7_4-defeated-gen738)
   (depends-on declare coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_4] ) ) ) ?gen251 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen247 & : ( not ( subseq-pos ( create$ rule7_4-defeated rule4 $$$ $?gen247 ) ) ) ) ) ( test ( eq ( class ?gen244 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen246 ( create$ rule7_4-defeated rule4 $?gen247 ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( positive-defeated $?gen246 ) )"))

([rule7_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_4-defeasibly-dot-gen740)
   (depends-on declare movement_restrictions_on_duty coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_4] ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_4 $? ) ) ( test ( eq ( class ?gen244 ) movement_restrictions_on_duty ) ) ( not ( and ?gen251 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen246 & : ( not ( member$ rule7_4 $?gen246 ) ) ) ) ) ) => ?gen244 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule7_4-defeasibly] of derived-attribute-rule
   (pos-name rule7_4-defeasibly-gen742)
   (depends-on declare coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_4] ) ) ) ?gen251 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen246 & : ( not ( member$ rule7_4 $?gen246 ) ) ) ) ( test ( eq ( class ?gen244 ) movement_restrictions_on_duty ) ) => ?gen244 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule7_4 ?gen251 ) )"))

([rule7_4-overruled-dot] of derived-attribute-rule
   (pos-name rule7_4-overruled-dot-gen744)
   (depends-on declare movement_restrictions_on_duty coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_4] ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen247 ) ( positive-overruled $?gen248 & : ( subseq-pos ( create$ rule7_4-overruled $?gen247 $$$ $?gen248 ) ) ) ) ( test ( eq ( class ?gen244 ) movement_restrictions_on_duty ) ) ( not ( and ?gen251 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( negative-defeated $?gen246 & : ( not ( member$ rule7_4 $?gen246 ) ) ) ) ) ) => ( calc ( bind $?gen249 ( delete-member$ $?gen248 ( create$ rule7_4-overruled $?gen247 ) ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( positive-overruled $?gen249 ) )"))

([rule7_4-overruled] of derived-attribute-rule
   (pos-name rule7_4-overruled-gen746)
   (depends-on declare coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_4] ) ) ) ?gen251 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen247 ) ( positive-overruled $?gen248 & : ( not ( subseq-pos ( create$ rule7_4-overruled $?gen247 $$$ $?gen248 ) ) ) ) ( negative-defeated $?gen246 & : ( not ( member$ rule7_4 $?gen246 ) ) ) ) ( test ( eq ( class ?gen244 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen249 ( create$ rule7_4-overruled $?gen247 $?gen248 ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( positive-overruled $?gen249 ) )"))

([rule7_4-support] of derived-attribute-rule
   (pos-name rule7_4-support-gen748)
   (depends-on declare coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_4] ) ) ) ?gen243 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen244 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen246 & : ( not ( subseq-pos ( create$ rule7_4 ?gen243 $$$ $?gen246 ) ) ) ) ) ( test ( eq ( class ?gen244 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen249 ( create$ rule7_4 ?gen243 $?gen246 ) ) ) ?gen244 <- ( movement_restrictions_on_duty ( negative-support $?gen249 ) )"))

([rule7_3-defeated-dot] of derived-attribute-rule
   (pos-name rule7_3-defeated-dot-gen750)
   (depends-on declare movement_restrictions coercion_abuse)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_3] ) ) ) ?gen235 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen238 & : ( subseq-pos ( create$ rule7_3-defeated rule3 $$$ $?gen238 ) ) ) ) ( test ( eq ( class ?gen235 ) movement_restrictions ) ) ( not ?gen242 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ) => ( calc ( bind $?gen237 ( delete-member$ $?gen238 ( create$ rule7_3-defeated rule3 ) ) ) ) ?gen235 <- ( movement_restrictions ( positive-defeated $?gen237 ) )"))

([rule7_3-defeated] of derived-attribute-rule
   (pos-name rule7_3-defeated-gen752)
   (depends-on declare coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_3] ) ) ) ?gen242 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen238 & : ( not ( subseq-pos ( create$ rule7_3-defeated rule3 $$$ $?gen238 ) ) ) ) ) ( test ( eq ( class ?gen235 ) movement_restrictions ) ) => ( calc ( bind $?gen237 ( create$ rule7_3-defeated rule3 $?gen238 ) ) ) ?gen235 <- ( movement_restrictions ( positive-defeated $?gen237 ) )"))

([rule7_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_3-defeasibly-dot-gen754)
   (depends-on declare movement_restrictions coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_3] ) ) ) ?gen235 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_3 $? ) ) ( test ( eq ( class ?gen235 ) movement_restrictions ) ) ( not ( and ?gen242 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen237 & : ( not ( member$ rule7_3 $?gen237 ) ) ) ) ) ) => ?gen235 <- ( movement_restrictions ( negative 0 ) )"))

([rule7_3-defeasibly] of derived-attribute-rule
   (pos-name rule7_3-defeasibly-gen756)
   (depends-on declare coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_3] ) ) ) ?gen242 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen237 & : ( not ( member$ rule7_3 $?gen237 ) ) ) ) ( test ( eq ( class ?gen235 ) movement_restrictions ) ) => ?gen235 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule7_3 ?gen242 ) )"))

([rule7_3-overruled-dot] of derived-attribute-rule
   (pos-name rule7_3-overruled-dot-gen758)
   (depends-on declare movement_restrictions coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_3] ) ) ) ?gen235 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen238 ) ( positive-overruled $?gen239 & : ( subseq-pos ( create$ rule7_3-overruled $?gen238 $$$ $?gen239 ) ) ) ) ( test ( eq ( class ?gen235 ) movement_restrictions ) ) ( not ( and ?gen242 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( movement_restrictions ( negative-defeated $?gen237 & : ( not ( member$ rule7_3 $?gen237 ) ) ) ) ) ) => ( calc ( bind $?gen240 ( delete-member$ $?gen239 ( create$ rule7_3-overruled $?gen238 ) ) ) ) ?gen235 <- ( movement_restrictions ( positive-overruled $?gen240 ) )"))

([rule7_3-overruled] of derived-attribute-rule
   (pos-name rule7_3-overruled-gen760)
   (depends-on declare coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_3] ) ) ) ?gen242 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen238 ) ( positive-overruled $?gen239 & : ( not ( subseq-pos ( create$ rule7_3-overruled $?gen238 $$$ $?gen239 ) ) ) ) ( negative-defeated $?gen237 & : ( not ( member$ rule7_3 $?gen237 ) ) ) ) ( test ( eq ( class ?gen235 ) movement_restrictions ) ) => ( calc ( bind $?gen240 ( create$ rule7_3-overruled $?gen238 $?gen239 ) ) ) ?gen235 <- ( movement_restrictions ( positive-overruled $?gen240 ) )"))

([rule7_3-support] of derived-attribute-rule
   (pos-name rule7_3-support-gen762)
   (depends-on declare coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_3] ) ) ) ?gen234 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen235 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen237 & : ( not ( subseq-pos ( create$ rule7_3 ?gen234 $$$ $?gen237 ) ) ) ) ) ( test ( eq ( class ?gen235 ) movement_restrictions ) ) => ( calc ( bind $?gen240 ( create$ rule7_3 ?gen234 $?gen237 ) ) ) ?gen235 <- ( movement_restrictions ( negative-support $?gen240 ) )"))

([rule7_2-defeated-dot] of derived-attribute-rule
   (pos-name rule7_2-defeated-dot-gen764)
   (depends-on declare psychological_abuse_on_duty coercion_abuse)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_2] ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen229 & : ( subseq-pos ( create$ rule7_2-defeated rule2 $$$ $?gen229 ) ) ) ) ( test ( eq ( class ?gen226 ) psychological_abuse_on_duty ) ) ( not ?gen233 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ) => ( calc ( bind $?gen228 ( delete-member$ $?gen229 ( create$ rule7_2-defeated rule2 ) ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( positive-defeated $?gen228 ) )"))

([rule7_2-defeated] of derived-attribute-rule
   (pos-name rule7_2-defeated-gen766)
   (depends-on declare coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_2] ) ) ) ?gen233 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen229 & : ( not ( subseq-pos ( create$ rule7_2-defeated rule2 $$$ $?gen229 ) ) ) ) ) ( test ( eq ( class ?gen226 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen228 ( create$ rule7_2-defeated rule2 $?gen229 ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( positive-defeated $?gen228 ) )"))

([rule7_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_2-defeasibly-dot-gen768)
   (depends-on declare psychological_abuse_on_duty coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_2] ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_2 $? ) ) ( test ( eq ( class ?gen226 ) psychological_abuse_on_duty ) ) ( not ( and ?gen233 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen228 & : ( not ( member$ rule7_2 $?gen228 ) ) ) ) ) ) => ?gen226 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule7_2-defeasibly] of derived-attribute-rule
   (pos-name rule7_2-defeasibly-gen770)
   (depends-on declare coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_2] ) ) ) ?gen233 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen228 & : ( not ( member$ rule7_2 $?gen228 ) ) ) ) ( test ( eq ( class ?gen226 ) psychological_abuse_on_duty ) ) => ?gen226 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule7_2 ?gen233 ) )"))

([rule7_2-overruled-dot] of derived-attribute-rule
   (pos-name rule7_2-overruled-dot-gen772)
   (depends-on declare psychological_abuse_on_duty coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_2] ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen229 ) ( positive-overruled $?gen230 & : ( subseq-pos ( create$ rule7_2-overruled $?gen229 $$$ $?gen230 ) ) ) ) ( test ( eq ( class ?gen226 ) psychological_abuse_on_duty ) ) ( not ( and ?gen233 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( negative-defeated $?gen228 & : ( not ( member$ rule7_2 $?gen228 ) ) ) ) ) ) => ( calc ( bind $?gen231 ( delete-member$ $?gen230 ( create$ rule7_2-overruled $?gen229 ) ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( positive-overruled $?gen231 ) )"))

([rule7_2-overruled] of derived-attribute-rule
   (pos-name rule7_2-overruled-gen774)
   (depends-on declare coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_2] ) ) ) ?gen233 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen229 ) ( positive-overruled $?gen230 & : ( not ( subseq-pos ( create$ rule7_2-overruled $?gen229 $$$ $?gen230 ) ) ) ) ( negative-defeated $?gen228 & : ( not ( member$ rule7_2 $?gen228 ) ) ) ) ( test ( eq ( class ?gen226 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen231 ( create$ rule7_2-overruled $?gen229 $?gen230 ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( positive-overruled $?gen231 ) )"))

([rule7_2-support] of derived-attribute-rule
   (pos-name rule7_2-support-gen776)
   (depends-on declare coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_2] ) ) ) ?gen225 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen226 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen228 & : ( not ( subseq-pos ( create$ rule7_2 ?gen225 $$$ $?gen228 ) ) ) ) ) ( test ( eq ( class ?gen226 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen231 ( create$ rule7_2 ?gen225 $?gen228 ) ) ) ?gen226 <- ( psychological_abuse_on_duty ( negative-support $?gen231 ) )"))

([rule7_1-defeated-dot] of derived-attribute-rule
   (pos-name rule7_1-defeated-dot-gen778)
   (depends-on declare psychological_abuse coercion_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_1] ) ) ) ?gen217 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen220 & : ( subseq-pos ( create$ rule7_1-defeated rule1 $$$ $?gen220 ) ) ) ) ( test ( eq ( class ?gen217 ) psychological_abuse ) ) ( not ?gen224 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ) => ( calc ( bind $?gen219 ( delete-member$ $?gen220 ( create$ rule7_1-defeated rule1 ) ) ) ) ?gen217 <- ( psychological_abuse ( positive-defeated $?gen219 ) )"))

([rule7_1-defeated] of derived-attribute-rule
   (pos-name rule7_1-defeated-gen780)
   (depends-on declare coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_1] ) ) ) ?gen224 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen220 & : ( not ( subseq-pos ( create$ rule7_1-defeated rule1 $$$ $?gen220 ) ) ) ) ) ( test ( eq ( class ?gen217 ) psychological_abuse ) ) => ( calc ( bind $?gen219 ( create$ rule7_1-defeated rule1 $?gen220 ) ) ) ?gen217 <- ( psychological_abuse ( positive-defeated $?gen219 ) )"))

([rule7_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_1-defeasibly-dot-gen782)
   (depends-on declare psychological_abuse coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_1] ) ) ) ?gen217 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_1 $? ) ) ( test ( eq ( class ?gen217 ) psychological_abuse ) ) ( not ( and ?gen224 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen219 & : ( not ( member$ rule7_1 $?gen219 ) ) ) ) ) ) => ?gen217 <- ( psychological_abuse ( negative 0 ) )"))

([rule7_1-defeasibly] of derived-attribute-rule
   (pos-name rule7_1-defeasibly-gen784)
   (depends-on declare coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_1] ) ) ) ?gen224 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen219 & : ( not ( member$ rule7_1 $?gen219 ) ) ) ) ( test ( eq ( class ?gen217 ) psychological_abuse ) ) => ?gen217 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule7_1 ?gen224 ) )"))

([rule7_1-overruled-dot] of derived-attribute-rule
   (pos-name rule7_1-overruled-dot-gen786)
   (depends-on declare psychological_abuse coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_1] ) ) ) ?gen217 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen220 ) ( positive-overruled $?gen221 & : ( subseq-pos ( create$ rule7_1-overruled $?gen220 $$$ $?gen221 ) ) ) ) ( test ( eq ( class ?gen217 ) psychological_abuse ) ) ( not ( and ?gen224 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( psychological_abuse ( negative-defeated $?gen219 & : ( not ( member$ rule7_1 $?gen219 ) ) ) ) ) ) => ( calc ( bind $?gen222 ( delete-member$ $?gen221 ( create$ rule7_1-overruled $?gen220 ) ) ) ) ?gen217 <- ( psychological_abuse ( positive-overruled $?gen222 ) )"))

([rule7_1-overruled] of derived-attribute-rule
   (pos-name rule7_1-overruled-gen788)
   (depends-on declare coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_1] ) ) ) ?gen224 <- ( coercion_abuse ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen220 ) ( positive-overruled $?gen221 & : ( not ( subseq-pos ( create$ rule7_1-overruled $?gen220 $$$ $?gen221 ) ) ) ) ( negative-defeated $?gen219 & : ( not ( member$ rule7_1 $?gen219 ) ) ) ) ( test ( eq ( class ?gen217 ) psychological_abuse ) ) => ( calc ( bind $?gen222 ( create$ rule7_1-overruled $?gen220 $?gen221 ) ) ) ?gen217 <- ( psychological_abuse ( positive-overruled $?gen222 ) )"))

([rule7_1-support] of derived-attribute-rule
   (pos-name rule7_1-support-gen790)
   (depends-on declare coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_1] ) ) ) ?gen216 <- ( coercion_abuse ( defendant ?Defendant ) ) ?gen217 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen219 & : ( not ( subseq-pos ( create$ rule7_1 ?gen216 $$$ $?gen219 ) ) ) ) ) ( test ( eq ( class ?gen217 ) psychological_abuse ) ) => ( calc ( bind $?gen222 ( create$ rule7_1 ?gen216 $?gen219 ) ) ) ?gen217 <- ( psychological_abuse ( negative-support $?gen222 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen792)
   (depends-on declare coercion_abuse lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen206 <- ( coercion_abuse ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen206 ) coercion_abuse ) ) ( not ( and ?gen213 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen212 & : ( >= ?gen212 1 ) ) ) ?gen215 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen206 <- ( coercion_abuse ( negative ~ 2 ) ( positive-overruled $?gen208 & : ( not ( member$ rule7 $?gen208 ) ) ) ) ) ) => ?gen206 <- ( coercion_abuse ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen794)
   (depends-on declare lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen213 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen212 & : ( >= ?gen212 1 ) ) ) ?gen215 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen206 <- ( coercion_abuse ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen208 & : ( not ( member$ rule7 $?gen208 ) ) ) ) ( test ( eq ( class ?gen206 ) coercion_abuse ) ) => ?gen206 <- ( coercion_abuse ( positive 1 ) ( positive-derivator rule7 ?gen213 ?gen215 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen796)
   (depends-on declare coercion_abuse lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen206 <- ( coercion_abuse ( defendant ?Defendant ) ( negative-support $?gen209 ) ( negative-overruled $?gen210 & : ( subseq-pos ( create$ rule7-overruled $?gen209 $$$ $?gen210 ) ) ) ) ( test ( eq ( class ?gen206 ) coercion_abuse ) ) ( not ( and ?gen213 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen212 & : ( >= ?gen212 1 ) ) ) ?gen215 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen206 <- ( coercion_abuse ( positive-defeated $?gen208 & : ( not ( member$ rule7 $?gen208 ) ) ) ) ) ) => ( calc ( bind $?gen211 ( delete-member$ $?gen210 ( create$ rule7-overruled $?gen209 ) ) ) ) ?gen206 <- ( coercion_abuse ( negative-overruled $?gen211 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen798)
   (depends-on declare lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen213 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen212 & : ( >= ?gen212 1 ) ) ) ?gen215 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen206 <- ( coercion_abuse ( defendant ?Defendant ) ( negative-support $?gen209 ) ( negative-overruled $?gen210 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen209 $$$ $?gen210 ) ) ) ) ( positive-defeated $?gen208 & : ( not ( member$ rule7 $?gen208 ) ) ) ) ( test ( eq ( class ?gen206 ) coercion_abuse ) ) => ( calc ( bind $?gen211 ( create$ rule7-overruled $?gen209 $?gen210 ) ) ) ?gen206 <- ( coercion_abuse ( negative-overruled $?gen211 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen800)
   (depends-on declare lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen204 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ?gen205 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ?gen206 <- ( coercion_abuse ( defendant ?Defendant ) ( positive-support $?gen208 & : ( not ( subseq-pos ( create$ rule7 ?gen204 ?gen205 $$$ $?gen208 ) ) ) ) ) ( test ( eq ( class ?gen206 ) coercion_abuse ) ) => ( calc ( bind $?gen211 ( create$ rule7 ?gen204 ?gen205 $?gen208 ) ) ) ?gen206 <- ( coercion_abuse ( positive-support $?gen211 ) )"))

([rule6_4-defeated-dot] of derived-attribute-rule
   (pos-name rule6_4-defeated-dot-gen802)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_death)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_4] ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen199 & : ( subseq-pos ( create$ rule6_4-defeated rule4 $$$ $?gen199 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) ( not ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ) => ( calc ( bind $?gen198 ( delete-member$ $?gen199 ( create$ rule6_4-defeated rule4 ) ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-defeated $?gen198 ) )"))

([rule6_4-defeated] of derived-attribute-rule
   (pos-name rule6_4-defeated-gen804)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_4] ) ) ) ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen199 & : ( not ( subseq-pos ( create$ rule6_4-defeated rule4 $$$ $?gen199 ) ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen198 ( create$ rule6_4-defeated rule4 $?gen199 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-defeated $?gen198 ) )"))

([rule6_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_4-defeasibly-dot-gen806)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_4] ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_4 $? ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) ( not ( and ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ) ) => ?gen196 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule6_4-defeasibly] of derived-attribute-rule
   (pos-name rule6_4-defeasibly-gen808)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_4] ) ) ) ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ?gen196 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule6_4 ?gen203 ) )"))

([rule6_4-overruled-dot] of derived-attribute-rule
   (pos-name rule6_4-overruled-dot-gen810)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_4] ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen199 ) ( positive-overruled $?gen200 & : ( subseq-pos ( create$ rule6_4-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) ( not ( and ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( negative-defeated $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ) ) => ( calc ( bind $?gen201 ( delete-member$ $?gen200 ( create$ rule6_4-overruled $?gen199 ) ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-overruled $?gen201 ) )"))

([rule6_4-overruled] of derived-attribute-rule
   (pos-name rule6_4-overruled-gen812)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_4] ) ) ) ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen199 ) ( positive-overruled $?gen200 & : ( not ( subseq-pos ( create$ rule6_4-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( negative-defeated $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen201 ( create$ rule6_4-overruled $?gen199 $?gen200 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-overruled $?gen201 ) )"))

([rule6_4-support] of derived-attribute-rule
   (pos-name rule6_4-support-gen814)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_4] ) ) ) ?gen195 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen198 & : ( not ( subseq-pos ( create$ rule6_4 ?gen195 $$$ $?gen198 ) ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen201 ( create$ rule6_4 ?gen195 $?gen198 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( negative-support $?gen201 ) )"))

([rule6_3-defeated-dot] of derived-attribute-rule
   (pos-name rule6_3-defeated-dot-gen816)
   (depends-on declare movement_restrictions movement_restrictions_death)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_3] ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen190 & : ( subseq-pos ( create$ rule6_3-defeated rule3 $$$ $?gen190 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) ( not ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ) => ( calc ( bind $?gen189 ( delete-member$ $?gen190 ( create$ rule6_3-defeated rule3 ) ) ) ) ?gen187 <- ( movement_restrictions ( positive-defeated $?gen189 ) )"))

([rule6_3-defeated] of derived-attribute-rule
   (pos-name rule6_3-defeated-gen818)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_3] ) ) ) ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen190 & : ( not ( subseq-pos ( create$ rule6_3-defeated rule3 $$$ $?gen190 ) ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ( calc ( bind $?gen189 ( create$ rule6_3-defeated rule3 $?gen190 ) ) ) ?gen187 <- ( movement_restrictions ( positive-defeated $?gen189 ) )"))

([rule6_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_3-defeasibly-dot-gen820)
   (depends-on declare movement_restrictions movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_3] ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_3 $? ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) ( not ( and ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ) ) => ?gen187 <- ( movement_restrictions ( negative 0 ) )"))

([rule6_3-defeasibly] of derived-attribute-rule
   (pos-name rule6_3-defeasibly-gen822)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_3] ) ) ) ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ?gen187 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule6_3 ?gen194 ) )"))

([rule6_3-overruled-dot] of derived-attribute-rule
   (pos-name rule6_3-overruled-dot-gen824)
   (depends-on declare movement_restrictions movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_3] ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen190 ) ( positive-overruled $?gen191 & : ( subseq-pos ( create$ rule6_3-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) ( not ( and ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( negative-defeated $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ) ) => ( calc ( bind $?gen192 ( delete-member$ $?gen191 ( create$ rule6_3-overruled $?gen190 ) ) ) ) ?gen187 <- ( movement_restrictions ( positive-overruled $?gen192 ) )"))

([rule6_3-overruled] of derived-attribute-rule
   (pos-name rule6_3-overruled-gen826)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_3] ) ) ) ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen190 ) ( positive-overruled $?gen191 & : ( not ( subseq-pos ( create$ rule6_3-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( negative-defeated $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ( calc ( bind $?gen192 ( create$ rule6_3-overruled $?gen190 $?gen191 ) ) ) ?gen187 <- ( movement_restrictions ( positive-overruled $?gen192 ) )"))

([rule6_3-support] of derived-attribute-rule
   (pos-name rule6_3-support-gen828)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_3] ) ) ) ?gen186 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen189 & : ( not ( subseq-pos ( create$ rule6_3 ?gen186 $$$ $?gen189 ) ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ( calc ( bind $?gen192 ( create$ rule6_3 ?gen186 $?gen189 ) ) ) ?gen187 <- ( movement_restrictions ( negative-support $?gen192 ) )"))

([rule6_2-defeated-dot] of derived-attribute-rule
   (pos-name rule6_2-defeated-dot-gen830)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_death)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_2] ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen181 & : ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen181 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) ( not ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ) => ( calc ( bind $?gen180 ( delete-member$ $?gen181 ( create$ rule6_2-defeated rule2 ) ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-defeated $?gen180 ) )"))

([rule6_2-defeated] of derived-attribute-rule
   (pos-name rule6_2-defeated-gen832)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_2] ) ) ) ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen181 & : ( not ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen181 ) ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen180 ( create$ rule6_2-defeated rule2 $?gen181 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-defeated $?gen180 ) )"))

([rule6_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-dot-gen834)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_2] ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_2 $? ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) ( not ( and ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ) ) => ?gen178 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule6_2-defeasibly] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-gen836)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_2] ) ) ) ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ?gen178 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule6_2 ?gen185 ) )"))

([rule6_2-overruled-dot] of derived-attribute-rule
   (pos-name rule6_2-overruled-dot-gen838)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_2] ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen181 ) ( positive-overruled $?gen182 & : ( subseq-pos ( create$ rule6_2-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) ( not ( and ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( negative-defeated $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ) ) => ( calc ( bind $?gen183 ( delete-member$ $?gen182 ( create$ rule6_2-overruled $?gen181 ) ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-overruled $?gen183 ) )"))

([rule6_2-overruled] of derived-attribute-rule
   (pos-name rule6_2-overruled-gen840)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_2] ) ) ) ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen181 ) ( positive-overruled $?gen182 & : ( not ( subseq-pos ( create$ rule6_2-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( negative-defeated $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen183 ( create$ rule6_2-overruled $?gen181 $?gen182 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-overruled $?gen183 ) )"))

([rule6_2-support] of derived-attribute-rule
   (pos-name rule6_2-support-gen842)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_2] ) ) ) ?gen177 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen180 & : ( not ( subseq-pos ( create$ rule6_2 ?gen177 $$$ $?gen180 ) ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen183 ( create$ rule6_2 ?gen177 $?gen180 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( negative-support $?gen183 ) )"))

([rule6_1-defeated-dot] of derived-attribute-rule
   (pos-name rule6_1-defeated-dot-gen844)
   (depends-on declare psychological_abuse movement_restrictions_death)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_1] ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen172 & : ( subseq-pos ( create$ rule6_1-defeated rule1 $$$ $?gen172 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) ( not ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ) => ( calc ( bind $?gen171 ( delete-member$ $?gen172 ( create$ rule6_1-defeated rule1 ) ) ) ) ?gen169 <- ( psychological_abuse ( positive-defeated $?gen171 ) )"))

([rule6_1-defeated] of derived-attribute-rule
   (pos-name rule6_1-defeated-gen846)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_1] ) ) ) ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen172 & : ( not ( subseq-pos ( create$ rule6_1-defeated rule1 $$$ $?gen172 ) ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ( calc ( bind $?gen171 ( create$ rule6_1-defeated rule1 $?gen172 ) ) ) ?gen169 <- ( psychological_abuse ( positive-defeated $?gen171 ) )"))

([rule6_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_1-defeasibly-dot-gen848)
   (depends-on declare psychological_abuse movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_1] ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_1 $? ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) ( not ( and ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ) ) => ?gen169 <- ( psychological_abuse ( negative 0 ) )"))

([rule6_1-defeasibly] of derived-attribute-rule
   (pos-name rule6_1-defeasibly-gen850)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_1] ) ) ) ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ?gen169 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule6_1 ?gen176 ) )"))

([rule6_1-overruled-dot] of derived-attribute-rule
   (pos-name rule6_1-overruled-dot-gen852)
   (depends-on declare psychological_abuse movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_1] ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen172 ) ( positive-overruled $?gen173 & : ( subseq-pos ( create$ rule6_1-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) ( not ( and ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( negative-defeated $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ) ) => ( calc ( bind $?gen174 ( delete-member$ $?gen173 ( create$ rule6_1-overruled $?gen172 ) ) ) ) ?gen169 <- ( psychological_abuse ( positive-overruled $?gen174 ) )"))

([rule6_1-overruled] of derived-attribute-rule
   (pos-name rule6_1-overruled-gen854)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_1] ) ) ) ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen172 ) ( positive-overruled $?gen173 & : ( not ( subseq-pos ( create$ rule6_1-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( negative-defeated $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ( calc ( bind $?gen174 ( create$ rule6_1-overruled $?gen172 $?gen173 ) ) ) ?gen169 <- ( psychological_abuse ( positive-overruled $?gen174 ) )"))

([rule6_1-support] of derived-attribute-rule
   (pos-name rule6_1-support-gen856)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_1] ) ) ) ?gen168 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen171 & : ( not ( subseq-pos ( create$ rule6_1 ?gen168 $$$ $?gen171 ) ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ( calc ( bind $?gen174 ( create$ rule6_1 ?gen168 $?gen171 ) ) ) ?gen169 <- ( psychological_abuse ( negative-support $?gen174 ) )"))

([rule6-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6-defeasibly-dot-gen858)
   (depends-on declare movement_restrictions_death lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6] ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule6 $? ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) ( not ( and ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ) ) => ?gen160 <- ( movement_restrictions_death ( positive 0 ) )"))

([rule6-defeasibly] of derived-attribute-rule
   (pos-name rule6-defeasibly-gen860)
   (depends-on declare lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6] ) ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) => ?gen160 <- ( movement_restrictions_death ( positive 1 ) ( positive-derivator rule6 ?gen167 ) )"))

([rule6-overruled-dot] of derived-attribute-rule
   (pos-name rule6-overruled-dot-gen862)
   (depends-on declare movement_restrictions_death lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6] ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( subseq-pos ( create$ rule6-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) ( not ( and ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( positive-defeated $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ) ) => ( calc ( bind $?gen165 ( delete-member$ $?gen164 ( create$ rule6-overruled $?gen163 ) ) ) ) ?gen160 <- ( movement_restrictions_death ( negative-overruled $?gen165 ) )"))

([rule6-overruled] of derived-attribute-rule
   (pos-name rule6-overruled-gen864)
   (depends-on declare lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6] ) ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( not ( subseq-pos ( create$ rule6-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( positive-defeated $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) => ( calc ( bind $?gen165 ( create$ rule6-overruled $?gen163 $?gen164 ) ) ) ?gen160 <- ( movement_restrictions_death ( negative-overruled $?gen165 ) )"))

([rule6-support] of derived-attribute-rule
   (pos-name rule6-support-gen866)
   (depends-on declare lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6] ) ) ) ?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive-support $?gen162 & : ( not ( subseq-pos ( create$ rule6 ?gen159 $$$ $?gen162 ) ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) => ( calc ( bind $?gen165 ( create$ rule6 ?gen159 $?gen162 ) ) ) ?gen160 <- ( movement_restrictions_death ( positive-support $?gen165 ) )"))

([rule5_4-defeated-dot] of derived-attribute-rule
   (pos-name rule5_4-defeated-dot-gen868)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_life_threatening)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_4] ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen154 & : ( subseq-pos ( create$ rule5_4-defeated rule4 $$$ $?gen154 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) ( not ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ) => ( calc ( bind $?gen153 ( delete-member$ $?gen154 ( create$ rule5_4-defeated rule4 ) ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-defeated $?gen153 ) )"))

([rule5_4-defeated] of derived-attribute-rule
   (pos-name rule5_4-defeated-gen870)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_4] ) ) ) ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen154 & : ( not ( subseq-pos ( create$ rule5_4-defeated rule4 $$$ $?gen154 ) ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen153 ( create$ rule5_4-defeated rule4 $?gen154 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-defeated $?gen153 ) )"))

([rule5_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_4-defeasibly-dot-gen872)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_4] ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_4 $? ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) ( not ( and ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ) ) => ?gen151 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule5_4-defeasibly] of derived-attribute-rule
   (pos-name rule5_4-defeasibly-gen874)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_4] ) ) ) ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ?gen151 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule5_4 ?gen158 ) )"))

([rule5_4-overruled-dot] of derived-attribute-rule
   (pos-name rule5_4-overruled-dot-gen876)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_4] ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen154 ) ( positive-overruled $?gen155 & : ( subseq-pos ( create$ rule5_4-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) ( not ( and ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( negative-defeated $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ) ) => ( calc ( bind $?gen156 ( delete-member$ $?gen155 ( create$ rule5_4-overruled $?gen154 ) ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-overruled $?gen156 ) )"))

([rule5_4-overruled] of derived-attribute-rule
   (pos-name rule5_4-overruled-gen878)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_4] ) ) ) ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen154 ) ( positive-overruled $?gen155 & : ( not ( subseq-pos ( create$ rule5_4-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( negative-defeated $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen156 ( create$ rule5_4-overruled $?gen154 $?gen155 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-overruled $?gen156 ) )"))

([rule5_4-support] of derived-attribute-rule
   (pos-name rule5_4-support-gen880)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_4] ) ) ) ?gen150 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen153 & : ( not ( subseq-pos ( create$ rule5_4 ?gen150 $$$ $?gen153 ) ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen156 ( create$ rule5_4 ?gen150 $?gen153 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( negative-support $?gen156 ) )"))

([rule5_3-defeated-dot] of derived-attribute-rule
   (pos-name rule5_3-defeated-dot-gen882)
   (depends-on declare movement_restrictions movement_restrictions_life_threatening)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_3] ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen145 & : ( subseq-pos ( create$ rule5_3-defeated rule3 $$$ $?gen145 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) ( not ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ) => ( calc ( bind $?gen144 ( delete-member$ $?gen145 ( create$ rule5_3-defeated rule3 ) ) ) ) ?gen142 <- ( movement_restrictions ( positive-defeated $?gen144 ) )"))

([rule5_3-defeated] of derived-attribute-rule
   (pos-name rule5_3-defeated-gen884)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_3] ) ) ) ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen145 & : ( not ( subseq-pos ( create$ rule5_3-defeated rule3 $$$ $?gen145 ) ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ( calc ( bind $?gen144 ( create$ rule5_3-defeated rule3 $?gen145 ) ) ) ?gen142 <- ( movement_restrictions ( positive-defeated $?gen144 ) )"))

([rule5_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_3-defeasibly-dot-gen886)
   (depends-on declare movement_restrictions movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_3] ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_3 $? ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) ( not ( and ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ) ) => ?gen142 <- ( movement_restrictions ( negative 0 ) )"))

([rule5_3-defeasibly] of derived-attribute-rule
   (pos-name rule5_3-defeasibly-gen888)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_3] ) ) ) ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ?gen142 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule5_3 ?gen149 ) )"))

([rule5_3-overruled-dot] of derived-attribute-rule
   (pos-name rule5_3-overruled-dot-gen890)
   (depends-on declare movement_restrictions movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_3] ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen145 ) ( positive-overruled $?gen146 & : ( subseq-pos ( create$ rule5_3-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) ( not ( and ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( negative-defeated $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ) ) => ( calc ( bind $?gen147 ( delete-member$ $?gen146 ( create$ rule5_3-overruled $?gen145 ) ) ) ) ?gen142 <- ( movement_restrictions ( positive-overruled $?gen147 ) )"))

([rule5_3-overruled] of derived-attribute-rule
   (pos-name rule5_3-overruled-gen892)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_3] ) ) ) ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen145 ) ( positive-overruled $?gen146 & : ( not ( subseq-pos ( create$ rule5_3-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( negative-defeated $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ( calc ( bind $?gen147 ( create$ rule5_3-overruled $?gen145 $?gen146 ) ) ) ?gen142 <- ( movement_restrictions ( positive-overruled $?gen147 ) )"))

([rule5_3-support] of derived-attribute-rule
   (pos-name rule5_3-support-gen894)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_3] ) ) ) ?gen141 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen144 & : ( not ( subseq-pos ( create$ rule5_3 ?gen141 $$$ $?gen144 ) ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ( calc ( bind $?gen147 ( create$ rule5_3 ?gen141 $?gen144 ) ) ) ?gen142 <- ( movement_restrictions ( negative-support $?gen147 ) )"))

([rule5_2-defeated-dot] of derived-attribute-rule
   (pos-name rule5_2-defeated-dot-gen896)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_life_threatening)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_2] ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen136 & : ( subseq-pos ( create$ rule5_2-defeated rule2 $$$ $?gen136 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) ( not ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ) => ( calc ( bind $?gen135 ( delete-member$ $?gen136 ( create$ rule5_2-defeated rule2 ) ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-defeated $?gen135 ) )"))

([rule5_2-defeated] of derived-attribute-rule
   (pos-name rule5_2-defeated-gen898)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_2] ) ) ) ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen136 & : ( not ( subseq-pos ( create$ rule5_2-defeated rule2 $$$ $?gen136 ) ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen135 ( create$ rule5_2-defeated rule2 $?gen136 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-defeated $?gen135 ) )"))

([rule5_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_2-defeasibly-dot-gen900)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_2] ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_2 $? ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) ( not ( and ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ) ) => ?gen133 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule5_2-defeasibly] of derived-attribute-rule
   (pos-name rule5_2-defeasibly-gen902)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_2] ) ) ) ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ?gen133 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule5_2 ?gen140 ) )"))

([rule5_2-overruled-dot] of derived-attribute-rule
   (pos-name rule5_2-overruled-dot-gen904)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_2] ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen136 ) ( positive-overruled $?gen137 & : ( subseq-pos ( create$ rule5_2-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) ( not ( and ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( negative-defeated $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ) ) => ( calc ( bind $?gen138 ( delete-member$ $?gen137 ( create$ rule5_2-overruled $?gen136 ) ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-overruled $?gen138 ) )"))

([rule5_2-overruled] of derived-attribute-rule
   (pos-name rule5_2-overruled-gen906)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_2] ) ) ) ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen136 ) ( positive-overruled $?gen137 & : ( not ( subseq-pos ( create$ rule5_2-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( negative-defeated $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen138 ( create$ rule5_2-overruled $?gen136 $?gen137 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-overruled $?gen138 ) )"))

([rule5_2-support] of derived-attribute-rule
   (pos-name rule5_2-support-gen908)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_2] ) ) ) ?gen132 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen135 & : ( not ( subseq-pos ( create$ rule5_2 ?gen132 $$$ $?gen135 ) ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen138 ( create$ rule5_2 ?gen132 $?gen135 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( negative-support $?gen138 ) )"))

([rule5_1-defeated-dot] of derived-attribute-rule
   (pos-name rule5_1-defeated-dot-gen910)
   (depends-on declare psychological_abuse movement_restrictions_life_threatening)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_1] ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen127 & : ( subseq-pos ( create$ rule5_1-defeated rule1 $$$ $?gen127 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) ( not ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ) => ( calc ( bind $?gen126 ( delete-member$ $?gen127 ( create$ rule5_1-defeated rule1 ) ) ) ) ?gen124 <- ( psychological_abuse ( positive-defeated $?gen126 ) )"))

([rule5_1-defeated] of derived-attribute-rule
   (pos-name rule5_1-defeated-gen912)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_1] ) ) ) ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen127 & : ( not ( subseq-pos ( create$ rule5_1-defeated rule1 $$$ $?gen127 ) ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ( calc ( bind $?gen126 ( create$ rule5_1-defeated rule1 $?gen127 ) ) ) ?gen124 <- ( psychological_abuse ( positive-defeated $?gen126 ) )"))

([rule5_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-dot-gen914)
   (depends-on declare psychological_abuse movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_1] ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_1 $? ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) ( not ( and ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ) ) => ?gen124 <- ( psychological_abuse ( negative 0 ) )"))

([rule5_1-defeasibly] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-gen916)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_1] ) ) ) ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ?gen124 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule5_1 ?gen131 ) )"))

([rule5_1-overruled-dot] of derived-attribute-rule
   (pos-name rule5_1-overruled-dot-gen918)
   (depends-on declare psychological_abuse movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_1] ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen127 ) ( positive-overruled $?gen128 & : ( subseq-pos ( create$ rule5_1-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) ( not ( and ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( negative-defeated $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ) ) => ( calc ( bind $?gen129 ( delete-member$ $?gen128 ( create$ rule5_1-overruled $?gen127 ) ) ) ) ?gen124 <- ( psychological_abuse ( positive-overruled $?gen129 ) )"))

([rule5_1-overruled] of derived-attribute-rule
   (pos-name rule5_1-overruled-gen920)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_1] ) ) ) ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen127 ) ( positive-overruled $?gen128 & : ( not ( subseq-pos ( create$ rule5_1-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( negative-defeated $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ( calc ( bind $?gen129 ( create$ rule5_1-overruled $?gen127 $?gen128 ) ) ) ?gen124 <- ( psychological_abuse ( positive-overruled $?gen129 ) )"))

([rule5_1-support] of derived-attribute-rule
   (pos-name rule5_1-support-gen922)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_1] ) ) ) ?gen123 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen126 & : ( not ( subseq-pos ( create$ rule5_1 ?gen123 $$$ $?gen126 ) ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ( calc ( bind $?gen129 ( create$ rule5_1 ?gen123 $?gen126 ) ) ) ?gen124 <- ( psychological_abuse ( negative-support $?gen129 ) )"))

([rule5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5-defeasibly-dot-gen924)
   (depends-on declare movement_restrictions_life_threatening lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5] ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule5 $? ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) ( not ( and ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( negative ~ 2 ) ( positive-overruled $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ) ) => ?gen115 <- ( movement_restrictions_life_threatening ( positive 0 ) )"))

([rule5-defeasibly] of derived-attribute-rule
   (pos-name rule5-defeasibly-gen926)
   (depends-on declare lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5] ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) => ?gen115 <- ( movement_restrictions_life_threatening ( positive 1 ) ( positive-derivator rule5 ?gen122 ) )"))

([rule5-overruled-dot] of derived-attribute-rule
   (pos-name rule5-overruled-dot-gen928)
   (depends-on declare movement_restrictions_life_threatening lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5] ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( negative-support $?gen118 ) ( negative-overruled $?gen119 & : ( subseq-pos ( create$ rule5-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) ( not ( and ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( positive-defeated $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ) ) => ( calc ( bind $?gen120 ( delete-member$ $?gen119 ( create$ rule5-overruled $?gen118 ) ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( negative-overruled $?gen120 ) )"))

([rule5-overruled] of derived-attribute-rule
   (pos-name rule5-overruled-gen930)
   (depends-on declare lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5] ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( negative-support $?gen118 ) ( negative-overruled $?gen119 & : ( not ( subseq-pos ( create$ rule5-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( positive-defeated $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) => ( calc ( bind $?gen120 ( create$ rule5-overruled $?gen118 $?gen119 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( negative-overruled $?gen120 ) )"))

([rule5-support] of derived-attribute-rule
   (pos-name rule5-support-gen932)
   (depends-on declare lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5] ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive-support $?gen117 & : ( not ( subseq-pos ( create$ rule5 ?gen114 $$$ $?gen117 ) ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) => ( calc ( bind $?gen120 ( create$ rule5 ?gen114 $?gen117 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( positive-support $?gen120 ) )"))

([rule4_3-defeated-dot] of derived-attribute-rule
   (pos-name rule4_3-defeated-dot-gen934)
   (depends-on declare movement_restrictions movement_restrictions_on_duty)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4_3] ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen109 & : ( subseq-pos ( create$ rule4_3-defeated rule3 $$$ $?gen109 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) ( not ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ) => ( calc ( bind $?gen108 ( delete-member$ $?gen109 ( create$ rule4_3-defeated rule3 ) ) ) ) ?gen106 <- ( movement_restrictions ( positive-defeated $?gen108 ) )"))

([rule4_3-defeated] of derived-attribute-rule
   (pos-name rule4_3-defeated-gen936)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4_3] ) ) ) ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen109 & : ( not ( subseq-pos ( create$ rule4_3-defeated rule3 $$$ $?gen109 ) ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ( calc ( bind $?gen108 ( create$ rule4_3-defeated rule3 $?gen109 ) ) ) ?gen106 <- ( movement_restrictions ( positive-defeated $?gen108 ) )"))

([rule4_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4_3-defeasibly-dot-gen938)
   (depends-on declare movement_restrictions movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4_3] ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule4_3 $? ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) ( not ( and ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ) ) => ?gen106 <- ( movement_restrictions ( negative 0 ) )"))

([rule4_3-defeasibly] of derived-attribute-rule
   (pos-name rule4_3-defeasibly-gen940)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4_3] ) ) ) ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ?gen106 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule4_3 ?gen113 ) )"))

([rule4_3-overruled-dot] of derived-attribute-rule
   (pos-name rule4_3-overruled-dot-gen942)
   (depends-on declare movement_restrictions movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4_3] ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen109 ) ( positive-overruled $?gen110 & : ( subseq-pos ( create$ rule4_3-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) ( not ( and ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( negative-defeated $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ) ) => ( calc ( bind $?gen111 ( delete-member$ $?gen110 ( create$ rule4_3-overruled $?gen109 ) ) ) ) ?gen106 <- ( movement_restrictions ( positive-overruled $?gen111 ) )"))

([rule4_3-overruled] of derived-attribute-rule
   (pos-name rule4_3-overruled-gen944)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4_3] ) ) ) ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen109 ) ( positive-overruled $?gen110 & : ( not ( subseq-pos ( create$ rule4_3-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( negative-defeated $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ( calc ( bind $?gen111 ( create$ rule4_3-overruled $?gen109 $?gen110 ) ) ) ?gen106 <- ( movement_restrictions ( positive-overruled $?gen111 ) )"))

([rule4_3-support] of derived-attribute-rule
   (pos-name rule4_3-support-gen946)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4_3] ) ) ) ?gen105 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen108 & : ( not ( subseq-pos ( create$ rule4_3 ?gen105 $$$ $?gen108 ) ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ( calc ( bind $?gen111 ( create$ rule4_3 ?gen105 $?gen108 ) ) ) ?gen106 <- ( movement_restrictions ( negative-support $?gen111 ) )"))

([rule4_2-defeated-dot] of derived-attribute-rule
   (pos-name rule4_2-defeated-dot-gen948)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4_2] ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen100 & : ( subseq-pos ( create$ rule4_2-defeated rule2 $$$ $?gen100 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) ( not ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ) => ( calc ( bind $?gen99 ( delete-member$ $?gen100 ( create$ rule4_2-defeated rule2 ) ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-defeated $?gen99 ) )"))

([rule4_2-defeated] of derived-attribute-rule
   (pos-name rule4_2-defeated-gen950)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4_2] ) ) ) ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen100 & : ( not ( subseq-pos ( create$ rule4_2-defeated rule2 $$$ $?gen100 ) ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen99 ( create$ rule4_2-defeated rule2 $?gen100 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-defeated $?gen99 ) )"))

([rule4_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4_2-defeasibly-dot-gen952)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4_2] ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule4_2 $? ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) ( not ( and ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ) ) => ?gen97 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule4_2-defeasibly] of derived-attribute-rule
   (pos-name rule4_2-defeasibly-gen954)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4_2] ) ) ) ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ?gen97 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule4_2 ?gen104 ) )"))

([rule4_2-overruled-dot] of derived-attribute-rule
   (pos-name rule4_2-overruled-dot-gen956)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4_2] ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen100 ) ( positive-overruled $?gen101 & : ( subseq-pos ( create$ rule4_2-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) ( not ( and ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( negative-defeated $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ) ) => ( calc ( bind $?gen102 ( delete-member$ $?gen101 ( create$ rule4_2-overruled $?gen100 ) ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-overruled $?gen102 ) )"))

([rule4_2-overruled] of derived-attribute-rule
   (pos-name rule4_2-overruled-gen958)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4_2] ) ) ) ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen100 ) ( positive-overruled $?gen101 & : ( not ( subseq-pos ( create$ rule4_2-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( negative-defeated $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen102 ( create$ rule4_2-overruled $?gen100 $?gen101 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-overruled $?gen102 ) )"))

([rule4_2-support] of derived-attribute-rule
   (pos-name rule4_2-support-gen960)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4_2] ) ) ) ?gen96 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen99 & : ( not ( subseq-pos ( create$ rule4_2 ?gen96 $$$ $?gen99 ) ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen102 ( create$ rule4_2 ?gen96 $?gen99 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( negative-support $?gen102 ) )"))

([rule4_1-defeated-dot] of derived-attribute-rule
   (pos-name rule4_1-defeated-dot-gen962)
   (depends-on declare psychological_abuse movement_restrictions_on_duty)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4_1] ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen91 & : ( subseq-pos ( create$ rule4_1-defeated rule1 $$$ $?gen91 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) ( not ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ) => ( calc ( bind $?gen90 ( delete-member$ $?gen91 ( create$ rule4_1-defeated rule1 ) ) ) ) ?gen88 <- ( psychological_abuse ( positive-defeated $?gen90 ) )"))

([rule4_1-defeated] of derived-attribute-rule
   (pos-name rule4_1-defeated-gen964)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4_1] ) ) ) ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen91 & : ( not ( subseq-pos ( create$ rule4_1-defeated rule1 $$$ $?gen91 ) ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ( calc ( bind $?gen90 ( create$ rule4_1-defeated rule1 $?gen91 ) ) ) ?gen88 <- ( psychological_abuse ( positive-defeated $?gen90 ) )"))

([rule4_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4_1-defeasibly-dot-gen966)
   (depends-on declare psychological_abuse movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4_1] ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule4_1 $? ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) ( not ( and ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ) ) => ?gen88 <- ( psychological_abuse ( negative 0 ) )"))

([rule4_1-defeasibly] of derived-attribute-rule
   (pos-name rule4_1-defeasibly-gen968)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4_1] ) ) ) ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ?gen88 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule4_1 ?gen95 ) )"))

([rule4_1-overruled-dot] of derived-attribute-rule
   (pos-name rule4_1-overruled-dot-gen970)
   (depends-on declare psychological_abuse movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4_1] ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen91 ) ( positive-overruled $?gen92 & : ( subseq-pos ( create$ rule4_1-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) ( not ( and ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( negative-defeated $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ) ) => ( calc ( bind $?gen93 ( delete-member$ $?gen92 ( create$ rule4_1-overruled $?gen91 ) ) ) ) ?gen88 <- ( psychological_abuse ( positive-overruled $?gen93 ) )"))

([rule4_1-overruled] of derived-attribute-rule
   (pos-name rule4_1-overruled-gen972)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4_1] ) ) ) ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen91 ) ( positive-overruled $?gen92 & : ( not ( subseq-pos ( create$ rule4_1-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( negative-defeated $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ( calc ( bind $?gen93 ( create$ rule4_1-overruled $?gen91 $?gen92 ) ) ) ?gen88 <- ( psychological_abuse ( positive-overruled $?gen93 ) )"))

([rule4_1-support] of derived-attribute-rule
   (pos-name rule4_1-support-gen974)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4_1] ) ) ) ?gen87 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen90 & : ( not ( subseq-pos ( create$ rule4_1 ?gen87 $$$ $?gen90 ) ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ( calc ( bind $?gen93 ( create$ rule4_1 ?gen87 $?gen90 ) ) ) ?gen88 <- ( psychological_abuse ( negative-support $?gen93 ) )"))

([rule4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4-defeasibly-dot-gen976)
   (depends-on declare movement_restrictions_on_duty lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4] ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule4 $? ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) ( not ( and ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( negative ~ 2 ) ( positive-overruled $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ) ) => ?gen79 <- ( movement_restrictions_on_duty ( positive 0 ) )"))

([rule4-defeasibly] of derived-attribute-rule
   (pos-name rule4-defeasibly-gen978)
   (depends-on declare lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4] ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) => ?gen79 <- ( movement_restrictions_on_duty ( positive 1 ) ( positive-derivator rule4 ?gen86 ) )"))

([rule4-overruled-dot] of derived-attribute-rule
   (pos-name rule4-overruled-dot-gen980)
   (depends-on declare movement_restrictions_on_duty lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4] ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen82 ) ( negative-overruled $?gen83 & : ( subseq-pos ( create$ rule4-overruled $?gen82 $$$ $?gen83 ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) ( not ( and ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( positive-defeated $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ) ) => ( calc ( bind $?gen84 ( delete-member$ $?gen83 ( create$ rule4-overruled $?gen82 ) ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( negative-overruled $?gen84 ) )"))

([rule4-overruled] of derived-attribute-rule
   (pos-name rule4-overruled-gen982)
   (depends-on declare lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4] ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen82 ) ( negative-overruled $?gen83 & : ( not ( subseq-pos ( create$ rule4-overruled $?gen82 $$$ $?gen83 ) ) ) ) ( positive-defeated $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen84 ( create$ rule4-overruled $?gen82 $?gen83 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( negative-overruled $?gen84 ) )"))

([rule4-support] of derived-attribute-rule
   (pos-name rule4-support-gen984)
   (depends-on declare lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen81 & : ( not ( subseq-pos ( create$ rule4 ?gen78 $$$ $?gen81 ) ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen84 ( create$ rule4 ?gen78 $?gen81 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( positive-support $?gen84 ) )"))

([rule3_2-defeated-dot] of derived-attribute-rule
   (pos-name rule3_2-defeated-dot-gen986)
   (depends-on declare psychological_abuse_on_duty movement_restrictions)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule3_2] ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen73 & : ( subseq-pos ( create$ rule3_2-defeated rule2 $$$ $?gen73 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) ( not ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ) => ( calc ( bind $?gen72 ( delete-member$ $?gen73 ( create$ rule3_2-defeated rule2 ) ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-defeated $?gen72 ) )"))

([rule3_2-defeated] of derived-attribute-rule
   (pos-name rule3_2-defeated-gen988)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule3_2] ) ) ) ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen73 & : ( not ( subseq-pos ( create$ rule3_2-defeated rule2 $$$ $?gen73 ) ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen72 ( create$ rule3_2-defeated rule2 $?gen73 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-defeated $?gen72 ) )"))

([rule3_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3_2-defeasibly-dot-gen990)
   (depends-on declare psychological_abuse_on_duty movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3_2] ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule3_2 $? ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) ( not ( and ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ) ) => ?gen70 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule3_2-defeasibly] of derived-attribute-rule
   (pos-name rule3_2-defeasibly-gen992)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3_2] ) ) ) ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ?gen70 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule3_2 ?gen77 ) )"))

([rule3_2-overruled-dot] of derived-attribute-rule
   (pos-name rule3_2-overruled-dot-gen994)
   (depends-on declare psychological_abuse_on_duty movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3_2] ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen73 ) ( positive-overruled $?gen74 & : ( subseq-pos ( create$ rule3_2-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) ( not ( and ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( negative-defeated $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ) ) => ( calc ( bind $?gen75 ( delete-member$ $?gen74 ( create$ rule3_2-overruled $?gen73 ) ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-overruled $?gen75 ) )"))

([rule3_2-overruled] of derived-attribute-rule
   (pos-name rule3_2-overruled-gen996)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3_2] ) ) ) ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen73 ) ( positive-overruled $?gen74 & : ( not ( subseq-pos ( create$ rule3_2-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( negative-defeated $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen75 ( create$ rule3_2-overruled $?gen73 $?gen74 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-overruled $?gen75 ) )"))

([rule3_2-support] of derived-attribute-rule
   (pos-name rule3_2-support-gen998)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3_2] ) ) ) ?gen69 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen72 & : ( not ( subseq-pos ( create$ rule3_2 ?gen69 $$$ $?gen72 ) ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen75 ( create$ rule3_2 ?gen69 $?gen72 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( negative-support $?gen75 ) )"))

([rule3_1-defeated-dot] of derived-attribute-rule
   (pos-name rule3_1-defeated-dot-gen1000)
   (depends-on declare psychological_abuse movement_restrictions)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule3_1] ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen64 & : ( subseq-pos ( create$ rule3_1-defeated rule1 $$$ $?gen64 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) ( not ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ) => ( calc ( bind $?gen63 ( delete-member$ $?gen64 ( create$ rule3_1-defeated rule1 ) ) ) ) ?gen61 <- ( psychological_abuse ( positive-defeated $?gen63 ) )"))

([rule3_1-defeated] of derived-attribute-rule
   (pos-name rule3_1-defeated-gen1002)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule3_1] ) ) ) ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen64 & : ( not ( subseq-pos ( create$ rule3_1-defeated rule1 $$$ $?gen64 ) ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ( calc ( bind $?gen63 ( create$ rule3_1-defeated rule1 $?gen64 ) ) ) ?gen61 <- ( psychological_abuse ( positive-defeated $?gen63 ) )"))

([rule3_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3_1-defeasibly-dot-gen1004)
   (depends-on declare psychological_abuse movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3_1] ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule3_1 $? ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) ( not ( and ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ) ) => ?gen61 <- ( psychological_abuse ( negative 0 ) )"))

([rule3_1-defeasibly] of derived-attribute-rule
   (pos-name rule3_1-defeasibly-gen1006)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3_1] ) ) ) ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ?gen61 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule3_1 ?gen68 ) )"))

([rule3_1-overruled-dot] of derived-attribute-rule
   (pos-name rule3_1-overruled-dot-gen1008)
   (depends-on declare psychological_abuse movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3_1] ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen64 ) ( positive-overruled $?gen65 & : ( subseq-pos ( create$ rule3_1-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) ( not ( and ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( negative-defeated $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ) ) => ( calc ( bind $?gen66 ( delete-member$ $?gen65 ( create$ rule3_1-overruled $?gen64 ) ) ) ) ?gen61 <- ( psychological_abuse ( positive-overruled $?gen66 ) )"))

([rule3_1-overruled] of derived-attribute-rule
   (pos-name rule3_1-overruled-gen1010)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3_1] ) ) ) ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen64 ) ( positive-overruled $?gen65 & : ( not ( subseq-pos ( create$ rule3_1-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( negative-defeated $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ( calc ( bind $?gen66 ( create$ rule3_1-overruled $?gen64 $?gen65 ) ) ) ?gen61 <- ( psychological_abuse ( positive-overruled $?gen66 ) )"))

([rule3_1-support] of derived-attribute-rule
   (pos-name rule3_1-support-gen1012)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3_1] ) ) ) ?gen60 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen63 & : ( not ( subseq-pos ( create$ rule3_1 ?gen60 $$$ $?gen63 ) ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ( calc ( bind $?gen66 ( create$ rule3_1 ?gen60 $?gen63 ) ) ) ?gen61 <- ( psychological_abuse ( negative-support $?gen66 ) )"))

([rule3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3-defeasibly-dot-gen1014)
   (depends-on declare movement_restrictions lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3] ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule3 $? ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) ( not ( and ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ) ) => ?gen52 <- ( movement_restrictions ( positive 0 ) )"))

([rule3-defeasibly] of derived-attribute-rule
   (pos-name rule3-defeasibly-gen1016)
   (depends-on declare lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3] ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) => ?gen52 <- ( movement_restrictions ( positive 1 ) ( positive-derivator rule3 ?gen59 ) )"))

([rule3-overruled-dot] of derived-attribute-rule
   (pos-name rule3-overruled-dot-gen1018)
   (depends-on declare movement_restrictions lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3] ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( subseq-pos ( create$ rule3-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) ( not ( and ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( positive-defeated $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ) ) => ( calc ( bind $?gen57 ( delete-member$ $?gen56 ( create$ rule3-overruled $?gen55 ) ) ) ) ?gen52 <- ( movement_restrictions ( negative-overruled $?gen57 ) )"))

([rule3-overruled] of derived-attribute-rule
   (pos-name rule3-overruled-gen1020)
   (depends-on declare lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3] ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( not ( subseq-pos ( create$ rule3-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( positive-defeated $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) => ( calc ( bind $?gen57 ( create$ rule3-overruled $?gen55 $?gen56 ) ) ) ?gen52 <- ( movement_restrictions ( negative-overruled $?gen57 ) )"))

([rule3-support] of derived-attribute-rule
   (pos-name rule3-support-gen1022)
   (depends-on declare lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen54 & : ( not ( subseq-pos ( create$ rule3 ?gen51 $$$ $?gen54 ) ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) => ( calc ( bind $?gen57 ( create$ rule3 ?gen51 $?gen54 ) ) ) ?gen52 <- ( movement_restrictions ( positive-support $?gen57 ) )"))

([rule2_1-defeated-dot] of derived-attribute-rule
   (pos-name rule2_1-defeated-dot-gen1024)
   (depends-on declare psychological_abuse psychological_abuse_on_duty)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule2_1] ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen46 & : ( subseq-pos ( create$ rule2_1-defeated rule1 $$$ $?gen46 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) ( not ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ) => ( calc ( bind $?gen45 ( delete-member$ $?gen46 ( create$ rule2_1-defeated rule1 ) ) ) ) ?gen43 <- ( psychological_abuse ( positive-defeated $?gen45 ) )"))

([rule2_1-defeated] of derived-attribute-rule
   (pos-name rule2_1-defeated-gen1026)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule2_1] ) ) ) ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen46 & : ( not ( subseq-pos ( create$ rule2_1-defeated rule1 $$$ $?gen46 ) ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ( calc ( bind $?gen45 ( create$ rule2_1-defeated rule1 $?gen46 ) ) ) ?gen43 <- ( psychological_abuse ( positive-defeated $?gen45 ) )"))

([rule2_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2_1-defeasibly-dot-gen1028)
   (depends-on declare psychological_abuse psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2_1] ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule2_1 $? ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) ( not ( and ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ) ) => ?gen43 <- ( psychological_abuse ( negative 0 ) )"))

([rule2_1-defeasibly] of derived-attribute-rule
   (pos-name rule2_1-defeasibly-gen1030)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2_1] ) ) ) ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ?gen43 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule2_1 ?gen50 ) )"))

([rule2_1-overruled-dot] of derived-attribute-rule
   (pos-name rule2_1-overruled-dot-gen1032)
   (depends-on declare psychological_abuse psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2_1] ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen46 ) ( positive-overruled $?gen47 & : ( subseq-pos ( create$ rule2_1-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) ( not ( and ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( negative-defeated $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ) ) => ( calc ( bind $?gen48 ( delete-member$ $?gen47 ( create$ rule2_1-overruled $?gen46 ) ) ) ) ?gen43 <- ( psychological_abuse ( positive-overruled $?gen48 ) )"))

([rule2_1-overruled] of derived-attribute-rule
   (pos-name rule2_1-overruled-gen1034)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2_1] ) ) ) ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen46 ) ( positive-overruled $?gen47 & : ( not ( subseq-pos ( create$ rule2_1-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( negative-defeated $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ( calc ( bind $?gen48 ( create$ rule2_1-overruled $?gen46 $?gen47 ) ) ) ?gen43 <- ( psychological_abuse ( positive-overruled $?gen48 ) )"))

([rule2_1-support] of derived-attribute-rule
   (pos-name rule2_1-support-gen1036)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2_1] ) ) ) ?gen42 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen45 & : ( not ( subseq-pos ( create$ rule2_1 ?gen42 $$$ $?gen45 ) ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ( calc ( bind $?gen48 ( create$ rule2_1 ?gen42 $?gen45 ) ) ) ?gen43 <- ( psychological_abuse ( negative-support $?gen48 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen1038)
   (depends-on declare psychological_abuse_on_duty lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ) ) => ?gen30 <- ( psychological_abuse_on_duty ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen1040)
   (depends-on declare lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) => ?gen30 <- ( psychological_abuse_on_duty ( positive 1 ) ( positive-derivator rule2 ?gen37 ?gen39 ?gen41 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen1042)
   (depends-on declare psychological_abuse_on_duty lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( subseq-pos ( create$ rule2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( positive-defeated $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ) ) => ( calc ( bind $?gen35 ( delete-member$ $?gen34 ( create$ rule2-overruled $?gen33 ) ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( negative-overruled $?gen35 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen1044)
   (depends-on declare lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( positive-defeated $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen35 ( create$ rule2-overruled $?gen33 $?gen34 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( negative-overruled $?gen35 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen1046)
   (depends-on declare lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen32 & : ( not ( subseq-pos ( create$ rule2 ?gen27 ?gen28 ?gen29 $$$ $?gen32 ) ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen35 ( create$ rule2 ?gen27 ?gen28 ?gen29 $?gen32 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( positive-support $?gen35 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen1048)
   (depends-on declare psychological_abuse lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( psychological_abuse ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen1050)
   (depends-on declare lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) => ?gen17 <- ( psychological_abuse ( positive 1 ) ( positive-derivator rule1 ?gen24 ?gen26 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen1052)
   (depends-on declare psychological_abuse lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( positive-defeated $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule1-overruled $?gen20 ) ) ) ) ?gen17 <- ( psychological_abuse ( negative-overruled $?gen22 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen1054)
   (depends-on declare lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) => ( calc ( bind $?gen22 ( create$ rule1-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( psychological_abuse ( negative-overruled $?gen22 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen1056)
   (depends-on declare lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule1 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) => ( calc ( bind $?gen22 ( create$ rule1 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( psychological_abuse ( positive-support $?gen22 ) )"))

([pn_coercion_abuse_multiple_defendant_max-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_multiple_defendant_max-deductive-gen499)
   (depends-on coercion_abuse_multiple_defendant max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen444 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 12 ) ) ) => ( max_imprisonment ( value 12 ) )")
   (production-rule "( defrule pn_coercion_abuse_multiple_defendant_max-deductive-gen499 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen444 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ( make-instance ?oid of max_imprisonment ( value 12 ) ) )")
   (derived-class max_imprisonment))

([pn_coercion_abuse_multiple_defendant_min-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_multiple_defendant_min-deductive-gen498)
   (depends-on coercion_abuse_multiple_defendant min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen435 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_coercion_abuse_multiple_defendant_min-deductive-gen498 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen435 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([pn_coercion_abuse_max-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_max-deductive-gen497)
   (depends-on coercion_abuse max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen426 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 3 ) ) ) => ( max_imprisonment ( value 3 ) )")
   (production-rule "( defrule pn_coercion_abuse_max-deductive-gen497 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen426 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ( make-instance ?oid of max_imprisonment ( value 3 ) ) )")
   (derived-class max_imprisonment))

([pn_coercion_abuse_min-deductive] of ntm-deductive-rule
   (pos-name pn_coercion_abuse_min-deductive-gen496)
   (depends-on coercion_abuse min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen417 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_coercion_abuse_min-deductive-gen496 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen417 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_movement_restrct_death_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_death_max-deductive-gen495)
   (depends-on movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen408 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 12 ) ) ) => ( max_imprisonment ( value 12 ) )")
   (production-rule "( defrule pn_movement_restrct_death_max-deductive-gen495 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen408 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ( make-instance ?oid of max_imprisonment ( value 12 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_death_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_death_min-deductive-gen494)
   (depends-on movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen399 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_movement_restrct_death_min-deductive-gen494 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen399 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([pn_movement_restrct_life_threatening_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_life_threatening_max-deductive-gen493)
   (depends-on movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen390 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 8 ) ) ) => ( max_imprisonment ( value 8 ) )")
   (production-rule "( defrule pn_movement_restrct_life_threatening_max-deductive-gen493 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen390 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ( make-instance ?oid of max_imprisonment ( value 8 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_life_threatening_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_life_threatening_min-deductive-gen492)
   (depends-on movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen381 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_movement_restrct_life_threatening_min-deductive-gen492 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen381 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_movement_restrct_on_duty_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_on_duty_max-deductive-gen491)
   (depends-on movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen372 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_movement_restrct_on_duty_max-deductive-gen491 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen372 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_on_duty_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_on_duty_min-deductive-gen490)
   (depends-on movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen363 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_movement_restrct_on_duty_min-deductive-gen490 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen363 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_movement_restrct_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_max-deductive-gen489)
   (depends-on movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen354 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1 ) ) ) => ( max_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_movement_restrct_max-deductive-gen489 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen354 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_min-deductive-gen488)
   (depends-on movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen345 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_movement_restrct_min-deductive-gen488 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen345 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_psy_abuse_on_duty_max-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_on_duty_max-deductive-gen487)
   (depends-on psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen336 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 8 ) ) ) => ( max_imprisonment ( value 8 ) )")
   (production-rule "( defrule pn_psy_abuse_on_duty_max-deductive-gen487 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen336 ) ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ( make-instance ?oid of max_imprisonment ( value 8 ) ) )")
   (derived-class max_imprisonment))

([pn_psy_abuse_on_duty_min-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_on_duty_min-deductive-gen486)
   (depends-on psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen327 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_psy_abuse_on_duty_min-deductive-gen486 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen327 ) ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_psy_abuse_max-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_max-deductive-gen485)
   (depends-on psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen318 <- ( psychological_abuse ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 3 ) ) ) => ( max_imprisonment ( value 3 ) )")
   (production-rule "( defrule pn_psy_abuse_max-deductive-gen485 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen318 ) ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ( make-instance ?oid of max_imprisonment ( value 3 ) ) )")
   (derived-class max_imprisonment))

([pn_psy_abuse_min-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_min-deductive-gen484)
   (depends-on psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen309 <- ( psychological_abuse ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_psy_abuse_min-deductive-gen484 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen309 ) ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([rule8_7-deductive] of ntm-deductive-rule
   (pos-name rule8_7-deductive-gen483)
   (depends-on coercion_abuse_multiple_defendant coercion_abuse)
   (implies coercion_abuse)
   (deductive-rule "?gen300 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( coercion_abuse ( defendant ?Defendant ) ) ) => ( coercion_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8_7-deductive-gen483 ( declare ( salience ( calc-salience coercion_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen300 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse))

([rule8_4-deductive] of ntm-deductive-rule
   (pos-name rule8_4-deductive-gen482)
   (depends-on coercion_abuse_multiple_defendant movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen291 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8_4-deductive-gen482 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen291 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule8_3-deductive] of ntm-deductive-rule
   (pos-name rule8_3-deductive-gen481)
   (depends-on coercion_abuse_multiple_defendant movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen282 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8_3-deductive-gen481 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen282 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule8_2-deductive] of ntm-deductive-rule
   (pos-name rule8_2-deductive-gen480)
   (depends-on coercion_abuse_multiple_defendant psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen273 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8_2-deductive-gen480 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen273 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule8_1-deductive] of ntm-deductive-rule
   (pos-name rule8_1-deductive-gen479)
   (depends-on coercion_abuse_multiple_defendant psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen264 <- ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8_1-deductive-gen479 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen264 ) ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule8-deductive] of ntm-deductive-rule
   (pos-name rule8-deductive-gen478)
   (depends-on lc:case lc:case coercion_abuse_multiple_defendant)
   (implies coercion_abuse_multiple_defendant)
   (deductive-rule "?gen252 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ?gen253 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ( not ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) ) => ( coercion_abuse_multiple_defendant ( defendant ?Defendant ) )")
   (production-rule "( defrule rule8-deductive-gen478 ( declare ( salience ( calc-salience coercion_abuse_multiple_defendant ) ) ) ( run-deductive-rules ) ( object ( name ?gen252 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( object ( name ?gen253 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ( not ( object ( is-a coercion_abuse_multiple_defendant ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse_multiple_defendant ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse_multiple_defendant ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse_multiple_defendant ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse_multiple_defendant))

([rule7_4-deductive] of ntm-deductive-rule
   (pos-name rule7_4-deductive-gen477)
   (depends-on coercion_abuse movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen243 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_4-deductive-gen477 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen243 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule7_3-deductive] of ntm-deductive-rule
   (pos-name rule7_3-deductive-gen476)
   (depends-on coercion_abuse movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen234 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_3-deductive-gen476 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen234 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule7_2-deductive] of ntm-deductive-rule
   (pos-name rule7_2-deductive-gen475)
   (depends-on coercion_abuse psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen225 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_2-deductive-gen475 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen225 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule7_1-deductive] of ntm-deductive-rule
   (pos-name rule7_1-deductive-gen474)
   (depends-on coercion_abuse psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen216 <- ( coercion_abuse ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_1-deductive-gen474 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen216 ) ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen473)
   (depends-on lc:case lc:case coercion_abuse)
   (implies coercion_abuse)
   (deductive-rule "?gen204 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ?gen205 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ( not ( coercion_abuse ( defendant ?Defendant ) ) ) => ( coercion_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen473 ( declare ( salience ( calc-salience coercion_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen204 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( object ( name ?gen205 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"BLACKMAIL\" ) ) ( not ( object ( is-a coercion_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat coercion_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat coercion_abuse ?Defendant ) ) ) ( make-instance ?oid of coercion_abuse ( defendant ?Defendant ) ) )")
   (derived-class coercion_abuse))

([rule6_4-deductive] of ntm-deductive-rule
   (pos-name rule6_4-deductive-gen472)
   (depends-on movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen195 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_4-deductive-gen472 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen195 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule6_3-deductive] of ntm-deductive-rule
   (pos-name rule6_3-deductive-gen471)
   (depends-on movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen186 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_3-deductive-gen471 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen186 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule6_2-deductive] of ntm-deductive-rule
   (pos-name rule6_2-deductive-gen470)
   (depends-on movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen177 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_2-deductive-gen470 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen177 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule6_1-deductive] of ntm-deductive-rule
   (pos-name rule6_1-deductive-gen469)
   (depends-on movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen168 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_1-deductive-gen469 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen168 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule6-deductive] of ntm-deductive-rule
   (pos-name rule6-deductive-gen468)
   (depends-on lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (deductive-rule "?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ) ( not ( movement_restrictions_death ( defendant ?Defendant ) ) ) => ( movement_restrictions_death ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6-deductive-gen468 ( declare ( salience ( calc-salience movement_restrictions_death ) ) ) ( run-deductive-rules ) ( object ( name ?gen159 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ) ( not ( object ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_death ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_death ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_death ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_death))

([rule5_4-deductive] of ntm-deductive-rule
   (pos-name rule5_4-deductive-gen467)
   (depends-on movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen150 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_4-deductive-gen467 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen150 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule5_3-deductive] of ntm-deductive-rule
   (pos-name rule5_3-deductive-gen466)
   (depends-on movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen141 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_3-deductive-gen466 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen141 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule5_2-deductive] of ntm-deductive-rule
   (pos-name rule5_2-deductive-gen465)
   (depends-on movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen132 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_2-deductive-gen465 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen132 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule5_1-deductive] of ntm-deductive-rule
   (pos-name rule5_1-deductive-gen464)
   (depends-on movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen123 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_1-deductive-gen464 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen123 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule5-deductive] of ntm-deductive-rule
   (pos-name rule5-deductive-gen463)
   (depends-on lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (deductive-rule "?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ( not ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ) => ( movement_restrictions_life_threatening ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5-deductive-gen463 ( declare ( salience ( calc-salience movement_restrictions_life_threatening ) ) ) ( run-deductive-rules ) ( object ( name ?gen114 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ( not ( object ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_life_threatening ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_life_threatening ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_life_threatening ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_life_threatening))

([rule4_3-deductive] of ntm-deductive-rule
   (pos-name rule4_3-deductive-gen462)
   (depends-on movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen105 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4_3-deductive-gen462 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen105 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule4_2-deductive] of ntm-deductive-rule
   (pos-name rule4_2-deductive-gen461)
   (depends-on movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen96 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4_2-deductive-gen461 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen96 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule4_1-deductive] of ntm-deductive-rule
   (pos-name rule4_1-deductive-gen460)
   (depends-on movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen87 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4_1-deductive-gen460 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen87 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule4-deductive] of ntm-deductive-rule
   (pos-name rule4-deductive-gen459)
   (depends-on lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4-deductive-gen459 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen78 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule3_2-deductive] of ntm-deductive-rule
   (pos-name rule3_2-deductive-gen458)
   (depends-on movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen69 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3_2-deductive-gen458 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule3_1-deductive] of ntm-deductive-rule
   (pos-name rule3_1-deductive-gen457)
   (depends-on movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen60 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3_1-deductive-gen457 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen60 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule3-deductive] of ntm-deductive-rule
   (pos-name rule3-deductive-gen456)
   (depends-on lc:case movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3-deductive-gen456 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen51 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule2_1-deductive] of ntm-deductive-rule
   (pos-name rule2_1-deductive-gen455)
   (depends-on psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen42 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2_1-deductive-gen455 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen454)
   (depends-on lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen454 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ( object ( name ?gen29 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen453)
   (depends-on lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen453 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

