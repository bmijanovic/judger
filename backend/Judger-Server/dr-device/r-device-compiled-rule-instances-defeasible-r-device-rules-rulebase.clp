([pn_life_threatening_torture_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_life_threatening_torture_max-defeasibly-dot-gen355)
   (depends-on declare max_imprisonment life_threatening_torture max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_life_threatening_torture_max] ) ) ) ?gen316 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_life_threatening_torture_max $? ) ) ( test ( eq ( class ?gen316 ) max_imprisonment ) ) ( not ( and ?gen323 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen322 & : ( >= ?gen322 1 ) ) ) ?gen316 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen318 & : ( not ( member$ pn_life_threatening_torture_max $?gen318 ) ) ) ) ) ) => ?gen316 <- ( max_imprisonment ( positive 0 ) )"))

([pn_life_threatening_torture_max-defeasibly] of derived-attribute-rule
   (pos-name pn_life_threatening_torture_max-defeasibly-gen357)
   (depends-on declare life_threatening_torture max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_life_threatening_torture_max] ) ) ) ?gen323 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen322 & : ( >= ?gen322 1 ) ) ) ?gen316 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen318 & : ( not ( member$ pn_life_threatening_torture_max $?gen318 ) ) ) ) ( test ( eq ( class ?gen316 ) max_imprisonment ) ) => ?gen316 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_life_threatening_torture_max ?gen323 ) )"))

([pn_life_threatening_torture_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_life_threatening_torture_max-overruled-dot-gen359)
   (depends-on declare max_imprisonment life_threatening_torture max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_life_threatening_torture_max] ) ) ) ?gen316 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen319 ) ( negative-overruled $?gen320 & : ( subseq-pos ( create$ pn_life_threatening_torture_max-overruled $?gen319 $$$ $?gen320 ) ) ) ) ( test ( eq ( class ?gen316 ) max_imprisonment ) ) ( not ( and ?gen323 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen322 & : ( >= ?gen322 1 ) ) ) ?gen316 <- ( max_imprisonment ( positive-defeated $?gen318 & : ( not ( member$ pn_life_threatening_torture_max $?gen318 ) ) ) ) ) ) => ( calc ( bind $?gen321 ( delete-member$ $?gen320 ( create$ pn_life_threatening_torture_max-overruled $?gen319 ) ) ) ) ?gen316 <- ( max_imprisonment ( negative-overruled $?gen321 ) )"))

([pn_life_threatening_torture_max-overruled] of derived-attribute-rule
   (pos-name pn_life_threatening_torture_max-overruled-gen361)
   (depends-on declare life_threatening_torture max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_life_threatening_torture_max] ) ) ) ?gen323 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen322 & : ( >= ?gen322 1 ) ) ) ?gen316 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen319 ) ( negative-overruled $?gen320 & : ( not ( subseq-pos ( create$ pn_life_threatening_torture_max-overruled $?gen319 $$$ $?gen320 ) ) ) ) ( positive-defeated $?gen318 & : ( not ( member$ pn_life_threatening_torture_max $?gen318 ) ) ) ) ( test ( eq ( class ?gen316 ) max_imprisonment ) ) => ( calc ( bind $?gen321 ( create$ pn_life_threatening_torture_max-overruled $?gen319 $?gen320 ) ) ) ?gen316 <- ( max_imprisonment ( negative-overruled $?gen321 ) )"))

([pn_life_threatening_torture_max-support] of derived-attribute-rule
   (pos-name pn_life_threatening_torture_max-support-gen363)
   (depends-on declare life_threatening_torture max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_life_threatening_torture_max] ) ) ) ?gen315 <- ( life_threatening_torture ( defendant ?Defendant ) ) ?gen316 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen318 & : ( not ( subseq-pos ( create$ pn_life_threatening_torture_max ?gen315 $$$ $?gen318 ) ) ) ) ) ( test ( eq ( class ?gen316 ) max_imprisonment ) ) => ( calc ( bind $?gen321 ( create$ pn_life_threatening_torture_max ?gen315 $?gen318 ) ) ) ?gen316 <- ( max_imprisonment ( positive-support $?gen321 ) )"))

([pn_life_threatening_torture_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_life_threatening_torture_min-defeasibly-dot-gen365)
   (depends-on declare min_imprisonment life_threatening_torture min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_life_threatening_torture_min] ) ) ) ?gen307 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_life_threatening_torture_min $? ) ) ( test ( eq ( class ?gen307 ) min_imprisonment ) ) ( not ( and ?gen314 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen313 & : ( >= ?gen313 1 ) ) ) ?gen307 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen309 & : ( not ( member$ pn_life_threatening_torture_min $?gen309 ) ) ) ) ) ) => ?gen307 <- ( min_imprisonment ( positive 0 ) )"))

([pn_life_threatening_torture_min-defeasibly] of derived-attribute-rule
   (pos-name pn_life_threatening_torture_min-defeasibly-gen367)
   (depends-on declare life_threatening_torture min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_life_threatening_torture_min] ) ) ) ?gen314 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen313 & : ( >= ?gen313 1 ) ) ) ?gen307 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen309 & : ( not ( member$ pn_life_threatening_torture_min $?gen309 ) ) ) ) ( test ( eq ( class ?gen307 ) min_imprisonment ) ) => ?gen307 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_life_threatening_torture_min ?gen314 ) )"))

([pn_life_threatening_torture_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_life_threatening_torture_min-overruled-dot-gen369)
   (depends-on declare min_imprisonment life_threatening_torture min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_life_threatening_torture_min] ) ) ) ?gen307 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen310 ) ( negative-overruled $?gen311 & : ( subseq-pos ( create$ pn_life_threatening_torture_min-overruled $?gen310 $$$ $?gen311 ) ) ) ) ( test ( eq ( class ?gen307 ) min_imprisonment ) ) ( not ( and ?gen314 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen313 & : ( >= ?gen313 1 ) ) ) ?gen307 <- ( min_imprisonment ( positive-defeated $?gen309 & : ( not ( member$ pn_life_threatening_torture_min $?gen309 ) ) ) ) ) ) => ( calc ( bind $?gen312 ( delete-member$ $?gen311 ( create$ pn_life_threatening_torture_min-overruled $?gen310 ) ) ) ) ?gen307 <- ( min_imprisonment ( negative-overruled $?gen312 ) )"))

([pn_life_threatening_torture_min-overruled] of derived-attribute-rule
   (pos-name pn_life_threatening_torture_min-overruled-gen371)
   (depends-on declare life_threatening_torture min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_life_threatening_torture_min] ) ) ) ?gen314 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen313 & : ( >= ?gen313 1 ) ) ) ?gen307 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen310 ) ( negative-overruled $?gen311 & : ( not ( subseq-pos ( create$ pn_life_threatening_torture_min-overruled $?gen310 $$$ $?gen311 ) ) ) ) ( positive-defeated $?gen309 & : ( not ( member$ pn_life_threatening_torture_min $?gen309 ) ) ) ) ( test ( eq ( class ?gen307 ) min_imprisonment ) ) => ( calc ( bind $?gen312 ( create$ pn_life_threatening_torture_min-overruled $?gen310 $?gen311 ) ) ) ?gen307 <- ( min_imprisonment ( negative-overruled $?gen312 ) )"))

([pn_life_threatening_torture_min-support] of derived-attribute-rule
   (pos-name pn_life_threatening_torture_min-support-gen373)
   (depends-on declare life_threatening_torture min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_life_threatening_torture_min] ) ) ) ?gen306 <- ( life_threatening_torture ( defendant ?Defendant ) ) ?gen307 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen309 & : ( not ( subseq-pos ( create$ pn_life_threatening_torture_min ?gen306 $$$ $?gen309 ) ) ) ) ) ( test ( eq ( class ?gen307 ) min_imprisonment ) ) => ( calc ( bind $?gen312 ( create$ pn_life_threatening_torture_min ?gen306 $?gen309 ) ) ) ?gen307 <- ( min_imprisonment ( positive-support $?gen312 ) )"))

([pn_phy_psy_more_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_max-defeasibly-dot-gen375)
   (depends-on declare max_imprisonment physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_psy_more_person_max] ) ) ) ?gen298 <- ( max_imprisonment ( value 15 ) ( positive 1 ) ( positive-derivator pn_phy_psy_more_person_max $? ) ) ( test ( eq ( class ?gen298 ) max_imprisonment ) ) ( not ( and ?gen305 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen304 & : ( >= ?gen304 1 ) ) ) ?gen298 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen300 & : ( not ( member$ pn_phy_psy_more_person_max $?gen300 ) ) ) ) ) ) => ?gen298 <- ( max_imprisonment ( positive 0 ) )"))

([pn_phy_psy_more_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_max-defeasibly-gen377)
   (depends-on declare physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_psy_more_person_max] ) ) ) ?gen305 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen304 & : ( >= ?gen304 1 ) ) ) ?gen298 <- ( max_imprisonment ( value 15 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen300 & : ( not ( member$ pn_phy_psy_more_person_max $?gen300 ) ) ) ) ( test ( eq ( class ?gen298 ) max_imprisonment ) ) => ?gen298 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_phy_psy_more_person_max ?gen305 ) )"))

([pn_phy_psy_more_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_max-overruled-dot-gen379)
   (depends-on declare max_imprisonment physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_psy_more_person_max] ) ) ) ?gen298 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen301 ) ( negative-overruled $?gen302 & : ( subseq-pos ( create$ pn_phy_psy_more_person_max-overruled $?gen301 $$$ $?gen302 ) ) ) ) ( test ( eq ( class ?gen298 ) max_imprisonment ) ) ( not ( and ?gen305 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen304 & : ( >= ?gen304 1 ) ) ) ?gen298 <- ( max_imprisonment ( positive-defeated $?gen300 & : ( not ( member$ pn_phy_psy_more_person_max $?gen300 ) ) ) ) ) ) => ( calc ( bind $?gen303 ( delete-member$ $?gen302 ( create$ pn_phy_psy_more_person_max-overruled $?gen301 ) ) ) ) ?gen298 <- ( max_imprisonment ( negative-overruled $?gen303 ) )"))

([pn_phy_psy_more_person_max-overruled] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_max-overruled-gen381)
   (depends-on declare physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_psy_more_person_max] ) ) ) ?gen305 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen304 & : ( >= ?gen304 1 ) ) ) ?gen298 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen301 ) ( negative-overruled $?gen302 & : ( not ( subseq-pos ( create$ pn_phy_psy_more_person_max-overruled $?gen301 $$$ $?gen302 ) ) ) ) ( positive-defeated $?gen300 & : ( not ( member$ pn_phy_psy_more_person_max $?gen300 ) ) ) ) ( test ( eq ( class ?gen298 ) max_imprisonment ) ) => ( calc ( bind $?gen303 ( create$ pn_phy_psy_more_person_max-overruled $?gen301 $?gen302 ) ) ) ?gen298 <- ( max_imprisonment ( negative-overruled $?gen303 ) )"))

([pn_phy_psy_more_person_max-support] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_max-support-gen383)
   (depends-on declare physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_psy_more_person_max] ) ) ) ?gen297 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ?gen298 <- ( max_imprisonment ( value 15 ) ( positive-support $?gen300 & : ( not ( subseq-pos ( create$ pn_phy_psy_more_person_max ?gen297 $$$ $?gen300 ) ) ) ) ) ( test ( eq ( class ?gen298 ) max_imprisonment ) ) => ( calc ( bind $?gen303 ( create$ pn_phy_psy_more_person_max ?gen297 $?gen300 ) ) ) ?gen298 <- ( max_imprisonment ( positive-support $?gen303 ) )"))

([pn_phy_psy_more_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_min-defeasibly-dot-gen385)
   (depends-on declare min_imprisonment physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_psy_more_person_min] ) ) ) ?gen289 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_phy_psy_more_person_min $? ) ) ( test ( eq ( class ?gen289 ) min_imprisonment ) ) ( not ( and ?gen296 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen295 & : ( >= ?gen295 1 ) ) ) ?gen289 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen291 & : ( not ( member$ pn_phy_psy_more_person_min $?gen291 ) ) ) ) ) ) => ?gen289 <- ( min_imprisonment ( positive 0 ) )"))

([pn_phy_psy_more_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_min-defeasibly-gen387)
   (depends-on declare physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_psy_more_person_min] ) ) ) ?gen296 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen295 & : ( >= ?gen295 1 ) ) ) ?gen289 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen291 & : ( not ( member$ pn_phy_psy_more_person_min $?gen291 ) ) ) ) ( test ( eq ( class ?gen289 ) min_imprisonment ) ) => ?gen289 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_phy_psy_more_person_min ?gen296 ) )"))

([pn_phy_psy_more_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_min-overruled-dot-gen389)
   (depends-on declare min_imprisonment physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_psy_more_person_min] ) ) ) ?gen289 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen292 ) ( negative-overruled $?gen293 & : ( subseq-pos ( create$ pn_phy_psy_more_person_min-overruled $?gen292 $$$ $?gen293 ) ) ) ) ( test ( eq ( class ?gen289 ) min_imprisonment ) ) ( not ( and ?gen296 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen295 & : ( >= ?gen295 1 ) ) ) ?gen289 <- ( min_imprisonment ( positive-defeated $?gen291 & : ( not ( member$ pn_phy_psy_more_person_min $?gen291 ) ) ) ) ) ) => ( calc ( bind $?gen294 ( delete-member$ $?gen293 ( create$ pn_phy_psy_more_person_min-overruled $?gen292 ) ) ) ) ?gen289 <- ( min_imprisonment ( negative-overruled $?gen294 ) )"))

([pn_phy_psy_more_person_min-overruled] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_min-overruled-gen391)
   (depends-on declare physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_psy_more_person_min] ) ) ) ?gen296 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen295 & : ( >= ?gen295 1 ) ) ) ?gen289 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen292 ) ( negative-overruled $?gen293 & : ( not ( subseq-pos ( create$ pn_phy_psy_more_person_min-overruled $?gen292 $$$ $?gen293 ) ) ) ) ( positive-defeated $?gen291 & : ( not ( member$ pn_phy_psy_more_person_min $?gen291 ) ) ) ) ( test ( eq ( class ?gen289 ) min_imprisonment ) ) => ( calc ( bind $?gen294 ( create$ pn_phy_psy_more_person_min-overruled $?gen292 $?gen293 ) ) ) ?gen289 <- ( min_imprisonment ( negative-overruled $?gen294 ) )"))

([pn_phy_psy_more_person_min-support] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_min-support-gen393)
   (depends-on declare physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_psy_more_person_min] ) ) ) ?gen288 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ?gen289 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen291 & : ( not ( subseq-pos ( create$ pn_phy_psy_more_person_min ?gen288 $$$ $?gen291 ) ) ) ) ) ( test ( eq ( class ?gen289 ) min_imprisonment ) ) => ( calc ( bind $?gen294 ( create$ pn_phy_psy_more_person_min ?gen288 $?gen291 ) ) ) ?gen289 <- ( min_imprisonment ( positive-support $?gen294 ) )"))

([pn_phy_psy_one_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_max-defeasibly-dot-gen395)
   (depends-on declare max_imprisonment physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_psy_one_person_max] ) ) ) ?gen280 <- ( max_imprisonment ( value 15 ) ( positive 1 ) ( positive-derivator pn_phy_psy_one_person_max $? ) ) ( test ( eq ( class ?gen280 ) max_imprisonment ) ) ( not ( and ?gen287 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen286 & : ( >= ?gen286 1 ) ) ) ?gen280 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen282 & : ( not ( member$ pn_phy_psy_one_person_max $?gen282 ) ) ) ) ) ) => ?gen280 <- ( max_imprisonment ( positive 0 ) )"))

([pn_phy_psy_one_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_max-defeasibly-gen397)
   (depends-on declare physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_psy_one_person_max] ) ) ) ?gen287 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen286 & : ( >= ?gen286 1 ) ) ) ?gen280 <- ( max_imprisonment ( value 15 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen282 & : ( not ( member$ pn_phy_psy_one_person_max $?gen282 ) ) ) ) ( test ( eq ( class ?gen280 ) max_imprisonment ) ) => ?gen280 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_phy_psy_one_person_max ?gen287 ) )"))

([pn_phy_psy_one_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_max-overruled-dot-gen399)
   (depends-on declare max_imprisonment physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_psy_one_person_max] ) ) ) ?gen280 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen283 ) ( negative-overruled $?gen284 & : ( subseq-pos ( create$ pn_phy_psy_one_person_max-overruled $?gen283 $$$ $?gen284 ) ) ) ) ( test ( eq ( class ?gen280 ) max_imprisonment ) ) ( not ( and ?gen287 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen286 & : ( >= ?gen286 1 ) ) ) ?gen280 <- ( max_imprisonment ( positive-defeated $?gen282 & : ( not ( member$ pn_phy_psy_one_person_max $?gen282 ) ) ) ) ) ) => ( calc ( bind $?gen285 ( delete-member$ $?gen284 ( create$ pn_phy_psy_one_person_max-overruled $?gen283 ) ) ) ) ?gen280 <- ( max_imprisonment ( negative-overruled $?gen285 ) )"))

([pn_phy_psy_one_person_max-overruled] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_max-overruled-gen401)
   (depends-on declare physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_psy_one_person_max] ) ) ) ?gen287 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen286 & : ( >= ?gen286 1 ) ) ) ?gen280 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen283 ) ( negative-overruled $?gen284 & : ( not ( subseq-pos ( create$ pn_phy_psy_one_person_max-overruled $?gen283 $$$ $?gen284 ) ) ) ) ( positive-defeated $?gen282 & : ( not ( member$ pn_phy_psy_one_person_max $?gen282 ) ) ) ) ( test ( eq ( class ?gen280 ) max_imprisonment ) ) => ( calc ( bind $?gen285 ( create$ pn_phy_psy_one_person_max-overruled $?gen283 $?gen284 ) ) ) ?gen280 <- ( max_imprisonment ( negative-overruled $?gen285 ) )"))

([pn_phy_psy_one_person_max-support] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_max-support-gen403)
   (depends-on declare physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_psy_one_person_max] ) ) ) ?gen279 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen280 <- ( max_imprisonment ( value 15 ) ( positive-support $?gen282 & : ( not ( subseq-pos ( create$ pn_phy_psy_one_person_max ?gen279 $$$ $?gen282 ) ) ) ) ) ( test ( eq ( class ?gen280 ) max_imprisonment ) ) => ( calc ( bind $?gen285 ( create$ pn_phy_psy_one_person_max ?gen279 $?gen282 ) ) ) ?gen280 <- ( max_imprisonment ( positive-support $?gen285 ) )"))

([pn_phy_psy_one_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_min-defeasibly-dot-gen405)
   (depends-on declare min_imprisonment physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_psy_one_person_min] ) ) ) ?gen271 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_phy_psy_one_person_min $? ) ) ( test ( eq ( class ?gen271 ) min_imprisonment ) ) ( not ( and ?gen278 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen277 & : ( >= ?gen277 1 ) ) ) ?gen271 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen273 & : ( not ( member$ pn_phy_psy_one_person_min $?gen273 ) ) ) ) ) ) => ?gen271 <- ( min_imprisonment ( positive 0 ) )"))

([pn_phy_psy_one_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_min-defeasibly-gen407)
   (depends-on declare physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_psy_one_person_min] ) ) ) ?gen278 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen277 & : ( >= ?gen277 1 ) ) ) ?gen271 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen273 & : ( not ( member$ pn_phy_psy_one_person_min $?gen273 ) ) ) ) ( test ( eq ( class ?gen271 ) min_imprisonment ) ) => ?gen271 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_phy_psy_one_person_min ?gen278 ) )"))

([pn_phy_psy_one_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_min-overruled-dot-gen409)
   (depends-on declare min_imprisonment physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_psy_one_person_min] ) ) ) ?gen271 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen274 ) ( negative-overruled $?gen275 & : ( subseq-pos ( create$ pn_phy_psy_one_person_min-overruled $?gen274 $$$ $?gen275 ) ) ) ) ( test ( eq ( class ?gen271 ) min_imprisonment ) ) ( not ( and ?gen278 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen277 & : ( >= ?gen277 1 ) ) ) ?gen271 <- ( min_imprisonment ( positive-defeated $?gen273 & : ( not ( member$ pn_phy_psy_one_person_min $?gen273 ) ) ) ) ) ) => ( calc ( bind $?gen276 ( delete-member$ $?gen275 ( create$ pn_phy_psy_one_person_min-overruled $?gen274 ) ) ) ) ?gen271 <- ( min_imprisonment ( negative-overruled $?gen276 ) )"))

([pn_phy_psy_one_person_min-overruled] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_min-overruled-gen411)
   (depends-on declare physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_psy_one_person_min] ) ) ) ?gen278 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen277 & : ( >= ?gen277 1 ) ) ) ?gen271 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen274 ) ( negative-overruled $?gen275 & : ( not ( subseq-pos ( create$ pn_phy_psy_one_person_min-overruled $?gen274 $$$ $?gen275 ) ) ) ) ( positive-defeated $?gen273 & : ( not ( member$ pn_phy_psy_one_person_min $?gen273 ) ) ) ) ( test ( eq ( class ?gen271 ) min_imprisonment ) ) => ( calc ( bind $?gen276 ( create$ pn_phy_psy_one_person_min-overruled $?gen274 $?gen275 ) ) ) ?gen271 <- ( min_imprisonment ( negative-overruled $?gen276 ) )"))

([pn_phy_psy_one_person_min-support] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_min-support-gen413)
   (depends-on declare physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_psy_one_person_min] ) ) ) ?gen270 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen271 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen273 & : ( not ( subseq-pos ( create$ pn_phy_psy_one_person_min ?gen270 $$$ $?gen273 ) ) ) ) ) ( test ( eq ( class ?gen271 ) min_imprisonment ) ) => ( calc ( bind $?gen276 ( create$ pn_phy_psy_one_person_min ?gen270 $?gen273 ) ) ) ?gen271 <- ( min_imprisonment ( positive-support $?gen276 ) )"))

([pn_psy_more_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_more_person_max-defeasibly-dot-gen415)
   (depends-on declare max_imprisonment psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_more_person_max] ) ) ) ?gen262 <- ( max_imprisonment ( value 10 ) ( positive 1 ) ( positive-derivator pn_psy_more_person_max $? ) ) ( test ( eq ( class ?gen262 ) max_imprisonment ) ) ( not ( and ?gen269 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen268 & : ( >= ?gen268 1 ) ) ) ?gen262 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen264 & : ( not ( member$ pn_psy_more_person_max $?gen264 ) ) ) ) ) ) => ?gen262 <- ( max_imprisonment ( positive 0 ) )"))

([pn_psy_more_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_more_person_max-defeasibly-gen417)
   (depends-on declare psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_more_person_max] ) ) ) ?gen269 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen268 & : ( >= ?gen268 1 ) ) ) ?gen262 <- ( max_imprisonment ( value 10 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen264 & : ( not ( member$ pn_psy_more_person_max $?gen264 ) ) ) ) ( test ( eq ( class ?gen262 ) max_imprisonment ) ) => ?gen262 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_psy_more_person_max ?gen269 ) )"))

([pn_psy_more_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_more_person_max-overruled-dot-gen419)
   (depends-on declare max_imprisonment psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_more_person_max] ) ) ) ?gen262 <- ( max_imprisonment ( value 10 ) ( negative-support $?gen265 ) ( negative-overruled $?gen266 & : ( subseq-pos ( create$ pn_psy_more_person_max-overruled $?gen265 $$$ $?gen266 ) ) ) ) ( test ( eq ( class ?gen262 ) max_imprisonment ) ) ( not ( and ?gen269 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen268 & : ( >= ?gen268 1 ) ) ) ?gen262 <- ( max_imprisonment ( positive-defeated $?gen264 & : ( not ( member$ pn_psy_more_person_max $?gen264 ) ) ) ) ) ) => ( calc ( bind $?gen267 ( delete-member$ $?gen266 ( create$ pn_psy_more_person_max-overruled $?gen265 ) ) ) ) ?gen262 <- ( max_imprisonment ( negative-overruled $?gen267 ) )"))

([pn_psy_more_person_max-overruled] of derived-attribute-rule
   (pos-name pn_psy_more_person_max-overruled-gen421)
   (depends-on declare psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_more_person_max] ) ) ) ?gen269 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen268 & : ( >= ?gen268 1 ) ) ) ?gen262 <- ( max_imprisonment ( value 10 ) ( negative-support $?gen265 ) ( negative-overruled $?gen266 & : ( not ( subseq-pos ( create$ pn_psy_more_person_max-overruled $?gen265 $$$ $?gen266 ) ) ) ) ( positive-defeated $?gen264 & : ( not ( member$ pn_psy_more_person_max $?gen264 ) ) ) ) ( test ( eq ( class ?gen262 ) max_imprisonment ) ) => ( calc ( bind $?gen267 ( create$ pn_psy_more_person_max-overruled $?gen265 $?gen266 ) ) ) ?gen262 <- ( max_imprisonment ( negative-overruled $?gen267 ) )"))

([pn_psy_more_person_max-support] of derived-attribute-rule
   (pos-name pn_psy_more_person_max-support-gen423)
   (depends-on declare psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_more_person_max] ) ) ) ?gen261 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ?gen262 <- ( max_imprisonment ( value 10 ) ( positive-support $?gen264 & : ( not ( subseq-pos ( create$ pn_psy_more_person_max ?gen261 $$$ $?gen264 ) ) ) ) ) ( test ( eq ( class ?gen262 ) max_imprisonment ) ) => ( calc ( bind $?gen267 ( create$ pn_psy_more_person_max ?gen261 $?gen264 ) ) ) ?gen262 <- ( max_imprisonment ( positive-support $?gen267 ) )"))

([pn_psy_more_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_more_person_min-defeasibly-dot-gen425)
   (depends-on declare min_imprisonment psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_more_person_min] ) ) ) ?gen253 <- ( min_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_psy_more_person_min $? ) ) ( test ( eq ( class ?gen253 ) min_imprisonment ) ) ( not ( and ?gen260 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen259 & : ( >= ?gen259 1 ) ) ) ?gen253 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen255 & : ( not ( member$ pn_psy_more_person_min $?gen255 ) ) ) ) ) ) => ?gen253 <- ( min_imprisonment ( positive 0 ) )"))

([pn_psy_more_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_more_person_min-defeasibly-gen427)
   (depends-on declare psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_more_person_min] ) ) ) ?gen260 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen259 & : ( >= ?gen259 1 ) ) ) ?gen253 <- ( min_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen255 & : ( not ( member$ pn_psy_more_person_min $?gen255 ) ) ) ) ( test ( eq ( class ?gen253 ) min_imprisonment ) ) => ?gen253 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_psy_more_person_min ?gen260 ) )"))

([pn_psy_more_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_more_person_min-overruled-dot-gen429)
   (depends-on declare min_imprisonment psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_more_person_min] ) ) ) ?gen253 <- ( min_imprisonment ( value 5 ) ( negative-support $?gen256 ) ( negative-overruled $?gen257 & : ( subseq-pos ( create$ pn_psy_more_person_min-overruled $?gen256 $$$ $?gen257 ) ) ) ) ( test ( eq ( class ?gen253 ) min_imprisonment ) ) ( not ( and ?gen260 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen259 & : ( >= ?gen259 1 ) ) ) ?gen253 <- ( min_imprisonment ( positive-defeated $?gen255 & : ( not ( member$ pn_psy_more_person_min $?gen255 ) ) ) ) ) ) => ( calc ( bind $?gen258 ( delete-member$ $?gen257 ( create$ pn_psy_more_person_min-overruled $?gen256 ) ) ) ) ?gen253 <- ( min_imprisonment ( negative-overruled $?gen258 ) )"))

([pn_psy_more_person_min-overruled] of derived-attribute-rule
   (pos-name pn_psy_more_person_min-overruled-gen431)
   (depends-on declare psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_more_person_min] ) ) ) ?gen260 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen259 & : ( >= ?gen259 1 ) ) ) ?gen253 <- ( min_imprisonment ( value 5 ) ( negative-support $?gen256 ) ( negative-overruled $?gen257 & : ( not ( subseq-pos ( create$ pn_psy_more_person_min-overruled $?gen256 $$$ $?gen257 ) ) ) ) ( positive-defeated $?gen255 & : ( not ( member$ pn_psy_more_person_min $?gen255 ) ) ) ) ( test ( eq ( class ?gen253 ) min_imprisonment ) ) => ( calc ( bind $?gen258 ( create$ pn_psy_more_person_min-overruled $?gen256 $?gen257 ) ) ) ?gen253 <- ( min_imprisonment ( negative-overruled $?gen258 ) )"))

([pn_psy_more_person_min-support] of derived-attribute-rule
   (pos-name pn_psy_more_person_min-support-gen433)
   (depends-on declare psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_more_person_min] ) ) ) ?gen252 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ?gen253 <- ( min_imprisonment ( value 5 ) ( positive-support $?gen255 & : ( not ( subseq-pos ( create$ pn_psy_more_person_min ?gen252 $$$ $?gen255 ) ) ) ) ) ( test ( eq ( class ?gen253 ) min_imprisonment ) ) => ( calc ( bind $?gen258 ( create$ pn_psy_more_person_min ?gen252 $?gen255 ) ) ) ?gen253 <- ( min_imprisonment ( positive-support $?gen258 ) )"))

([pn_phy_more_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_more_person_max-defeasibly-dot-gen435)
   (depends-on declare max_imprisonment physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_more_person_max] ) ) ) ?gen244 <- ( max_imprisonment ( value 6 ) ( positive 1 ) ( positive-derivator pn_phy_more_person_max $? ) ) ( test ( eq ( class ?gen244 ) max_imprisonment ) ) ( not ( and ?gen251 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen246 & : ( not ( member$ pn_phy_more_person_max $?gen246 ) ) ) ) ) ) => ?gen244 <- ( max_imprisonment ( positive 0 ) )"))

([pn_phy_more_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_more_person_max-defeasibly-gen437)
   (depends-on declare physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_more_person_max] ) ) ) ?gen251 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( max_imprisonment ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen246 & : ( not ( member$ pn_phy_more_person_max $?gen246 ) ) ) ) ( test ( eq ( class ?gen244 ) max_imprisonment ) ) => ?gen244 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_phy_more_person_max ?gen251 ) )"))

([pn_phy_more_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_more_person_max-overruled-dot-gen439)
   (depends-on declare max_imprisonment physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_more_person_max] ) ) ) ?gen244 <- ( max_imprisonment ( value 6 ) ( negative-support $?gen247 ) ( negative-overruled $?gen248 & : ( subseq-pos ( create$ pn_phy_more_person_max-overruled $?gen247 $$$ $?gen248 ) ) ) ) ( test ( eq ( class ?gen244 ) max_imprisonment ) ) ( not ( and ?gen251 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( max_imprisonment ( positive-defeated $?gen246 & : ( not ( member$ pn_phy_more_person_max $?gen246 ) ) ) ) ) ) => ( calc ( bind $?gen249 ( delete-member$ $?gen248 ( create$ pn_phy_more_person_max-overruled $?gen247 ) ) ) ) ?gen244 <- ( max_imprisonment ( negative-overruled $?gen249 ) )"))

([pn_phy_more_person_max-overruled] of derived-attribute-rule
   (pos-name pn_phy_more_person_max-overruled-gen441)
   (depends-on declare physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_more_person_max] ) ) ) ?gen251 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen250 & : ( >= ?gen250 1 ) ) ) ?gen244 <- ( max_imprisonment ( value 6 ) ( negative-support $?gen247 ) ( negative-overruled $?gen248 & : ( not ( subseq-pos ( create$ pn_phy_more_person_max-overruled $?gen247 $$$ $?gen248 ) ) ) ) ( positive-defeated $?gen246 & : ( not ( member$ pn_phy_more_person_max $?gen246 ) ) ) ) ( test ( eq ( class ?gen244 ) max_imprisonment ) ) => ( calc ( bind $?gen249 ( create$ pn_phy_more_person_max-overruled $?gen247 $?gen248 ) ) ) ?gen244 <- ( max_imprisonment ( negative-overruled $?gen249 ) )"))

([pn_phy_more_person_max-support] of derived-attribute-rule
   (pos-name pn_phy_more_person_max-support-gen443)
   (depends-on declare physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_more_person_max] ) ) ) ?gen243 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ) ?gen244 <- ( max_imprisonment ( value 6 ) ( positive-support $?gen246 & : ( not ( subseq-pos ( create$ pn_phy_more_person_max ?gen243 $$$ $?gen246 ) ) ) ) ) ( test ( eq ( class ?gen244 ) max_imprisonment ) ) => ( calc ( bind $?gen249 ( create$ pn_phy_more_person_max ?gen243 $?gen246 ) ) ) ?gen244 <- ( max_imprisonment ( positive-support $?gen249 ) )"))

([pn_phy_more_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_more_person_min-defeasibly-dot-gen445)
   (depends-on declare min_imprisonment physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_more_person_min] ) ) ) ?gen235 <- ( min_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pn_phy_more_person_min $? ) ) ( test ( eq ( class ?gen235 ) min_imprisonment ) ) ( not ( and ?gen242 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen237 & : ( not ( member$ pn_phy_more_person_min $?gen237 ) ) ) ) ) ) => ?gen235 <- ( min_imprisonment ( positive 0 ) )"))

([pn_phy_more_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_more_person_min-defeasibly-gen447)
   (depends-on declare physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_more_person_min] ) ) ) ?gen242 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( min_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen237 & : ( not ( member$ pn_phy_more_person_min $?gen237 ) ) ) ) ( test ( eq ( class ?gen235 ) min_imprisonment ) ) => ?gen235 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_phy_more_person_min ?gen242 ) )"))

([pn_phy_more_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_more_person_min-overruled-dot-gen449)
   (depends-on declare min_imprisonment physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_more_person_min] ) ) ) ?gen235 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen238 ) ( negative-overruled $?gen239 & : ( subseq-pos ( create$ pn_phy_more_person_min-overruled $?gen238 $$$ $?gen239 ) ) ) ) ( test ( eq ( class ?gen235 ) min_imprisonment ) ) ( not ( and ?gen242 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( min_imprisonment ( positive-defeated $?gen237 & : ( not ( member$ pn_phy_more_person_min $?gen237 ) ) ) ) ) ) => ( calc ( bind $?gen240 ( delete-member$ $?gen239 ( create$ pn_phy_more_person_min-overruled $?gen238 ) ) ) ) ?gen235 <- ( min_imprisonment ( negative-overruled $?gen240 ) )"))

([pn_phy_more_person_min-overruled] of derived-attribute-rule
   (pos-name pn_phy_more_person_min-overruled-gen451)
   (depends-on declare physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_more_person_min] ) ) ) ?gen242 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen238 ) ( negative-overruled $?gen239 & : ( not ( subseq-pos ( create$ pn_phy_more_person_min-overruled $?gen238 $$$ $?gen239 ) ) ) ) ( positive-defeated $?gen237 & : ( not ( member$ pn_phy_more_person_min $?gen237 ) ) ) ) ( test ( eq ( class ?gen235 ) min_imprisonment ) ) => ( calc ( bind $?gen240 ( create$ pn_phy_more_person_min-overruled $?gen238 $?gen239 ) ) ) ?gen235 <- ( min_imprisonment ( negative-overruled $?gen240 ) )"))

([pn_phy_more_person_min-support] of derived-attribute-rule
   (pos-name pn_phy_more_person_min-support-gen453)
   (depends-on declare physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_more_person_min] ) ) ) ?gen234 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ) ?gen235 <- ( min_imprisonment ( value 3 ) ( positive-support $?gen237 & : ( not ( subseq-pos ( create$ pn_phy_more_person_min ?gen234 $$$ $?gen237 ) ) ) ) ) ( test ( eq ( class ?gen235 ) min_imprisonment ) ) => ( calc ( bind $?gen240 ( create$ pn_phy_more_person_min ?gen234 $?gen237 ) ) ) ?gen235 <- ( min_imprisonment ( positive-support $?gen240 ) )"))

([pn_phy_one_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_one_person_max-defeasibly-dot-gen455)
   (depends-on declare max_imprisonment physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_one_person_max] ) ) ) ?gen226 <- ( max_imprisonment ( value 6 ) ( positive 1 ) ( positive-derivator pn_phy_one_person_max $? ) ) ( test ( eq ( class ?gen226 ) max_imprisonment ) ) ( not ( and ?gen233 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen228 & : ( not ( member$ pn_phy_one_person_max $?gen228 ) ) ) ) ) ) => ?gen226 <- ( max_imprisonment ( positive 0 ) )"))

([pn_phy_one_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_one_person_max-defeasibly-gen457)
   (depends-on declare physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_one_person_max] ) ) ) ?gen233 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( max_imprisonment ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen228 & : ( not ( member$ pn_phy_one_person_max $?gen228 ) ) ) ) ( test ( eq ( class ?gen226 ) max_imprisonment ) ) => ?gen226 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_phy_one_person_max ?gen233 ) )"))

([pn_phy_one_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_one_person_max-overruled-dot-gen459)
   (depends-on declare max_imprisonment physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_one_person_max] ) ) ) ?gen226 <- ( max_imprisonment ( value 6 ) ( negative-support $?gen229 ) ( negative-overruled $?gen230 & : ( subseq-pos ( create$ pn_phy_one_person_max-overruled $?gen229 $$$ $?gen230 ) ) ) ) ( test ( eq ( class ?gen226 ) max_imprisonment ) ) ( not ( and ?gen233 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( max_imprisonment ( positive-defeated $?gen228 & : ( not ( member$ pn_phy_one_person_max $?gen228 ) ) ) ) ) ) => ( calc ( bind $?gen231 ( delete-member$ $?gen230 ( create$ pn_phy_one_person_max-overruled $?gen229 ) ) ) ) ?gen226 <- ( max_imprisonment ( negative-overruled $?gen231 ) )"))

([pn_phy_one_person_max-overruled] of derived-attribute-rule
   (pos-name pn_phy_one_person_max-overruled-gen461)
   (depends-on declare physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_one_person_max] ) ) ) ?gen233 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( max_imprisonment ( value 6 ) ( negative-support $?gen229 ) ( negative-overruled $?gen230 & : ( not ( subseq-pos ( create$ pn_phy_one_person_max-overruled $?gen229 $$$ $?gen230 ) ) ) ) ( positive-defeated $?gen228 & : ( not ( member$ pn_phy_one_person_max $?gen228 ) ) ) ) ( test ( eq ( class ?gen226 ) max_imprisonment ) ) => ( calc ( bind $?gen231 ( create$ pn_phy_one_person_max-overruled $?gen229 $?gen230 ) ) ) ?gen226 <- ( max_imprisonment ( negative-overruled $?gen231 ) )"))

([pn_phy_one_person_max-support] of derived-attribute-rule
   (pos-name pn_phy_one_person_max-support-gen463)
   (depends-on declare physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_one_person_max] ) ) ) ?gen225 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ) ?gen226 <- ( max_imprisonment ( value 6 ) ( positive-support $?gen228 & : ( not ( subseq-pos ( create$ pn_phy_one_person_max ?gen225 $$$ $?gen228 ) ) ) ) ) ( test ( eq ( class ?gen226 ) max_imprisonment ) ) => ( calc ( bind $?gen231 ( create$ pn_phy_one_person_max ?gen225 $?gen228 ) ) ) ?gen226 <- ( max_imprisonment ( positive-support $?gen231 ) )"))

([pn_phy_one_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_one_person_min-defeasibly-dot-gen465)
   (depends-on declare min_imprisonment physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_one_person_min] ) ) ) ?gen217 <- ( min_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pn_phy_one_person_min $? ) ) ( test ( eq ( class ?gen217 ) min_imprisonment ) ) ( not ( and ?gen224 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen219 & : ( not ( member$ pn_phy_one_person_min $?gen219 ) ) ) ) ) ) => ?gen217 <- ( min_imprisonment ( positive 0 ) )"))

([pn_phy_one_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_one_person_min-defeasibly-gen467)
   (depends-on declare physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_one_person_min] ) ) ) ?gen224 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( min_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen219 & : ( not ( member$ pn_phy_one_person_min $?gen219 ) ) ) ) ( test ( eq ( class ?gen217 ) min_imprisonment ) ) => ?gen217 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_phy_one_person_min ?gen224 ) )"))

([pn_phy_one_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_one_person_min-overruled-dot-gen469)
   (depends-on declare min_imprisonment physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_one_person_min] ) ) ) ?gen217 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen220 ) ( negative-overruled $?gen221 & : ( subseq-pos ( create$ pn_phy_one_person_min-overruled $?gen220 $$$ $?gen221 ) ) ) ) ( test ( eq ( class ?gen217 ) min_imprisonment ) ) ( not ( and ?gen224 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( min_imprisonment ( positive-defeated $?gen219 & : ( not ( member$ pn_phy_one_person_min $?gen219 ) ) ) ) ) ) => ( calc ( bind $?gen222 ( delete-member$ $?gen221 ( create$ pn_phy_one_person_min-overruled $?gen220 ) ) ) ) ?gen217 <- ( min_imprisonment ( negative-overruled $?gen222 ) )"))

([pn_phy_one_person_min-overruled] of derived-attribute-rule
   (pos-name pn_phy_one_person_min-overruled-gen471)
   (depends-on declare physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_one_person_min] ) ) ) ?gen224 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen220 ) ( negative-overruled $?gen221 & : ( not ( subseq-pos ( create$ pn_phy_one_person_min-overruled $?gen220 $$$ $?gen221 ) ) ) ) ( positive-defeated $?gen219 & : ( not ( member$ pn_phy_one_person_min $?gen219 ) ) ) ) ( test ( eq ( class ?gen217 ) min_imprisonment ) ) => ( calc ( bind $?gen222 ( create$ pn_phy_one_person_min-overruled $?gen220 $?gen221 ) ) ) ?gen217 <- ( min_imprisonment ( negative-overruled $?gen222 ) )"))

([pn_phy_one_person_min-support] of derived-attribute-rule
   (pos-name pn_phy_one_person_min-support-gen473)
   (depends-on declare physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_one_person_min] ) ) ) ?gen216 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ) ?gen217 <- ( min_imprisonment ( value 3 ) ( positive-support $?gen219 & : ( not ( subseq-pos ( create$ pn_phy_one_person_min ?gen216 $$$ $?gen219 ) ) ) ) ) ( test ( eq ( class ?gen217 ) min_imprisonment ) ) => ( calc ( bind $?gen222 ( create$ pn_phy_one_person_min ?gen216 $?gen219 ) ) ) ?gen217 <- ( min_imprisonment ( positive-support $?gen222 ) )"))

([pn_psy_one_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_one_person_max-defeasibly-dot-gen475)
   (depends-on declare max_imprisonment psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_one_person_max] ) ) ) ?gen208 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_psy_one_person_max $? ) ) ( test ( eq ( class ?gen208 ) max_imprisonment ) ) ( not ( and ?gen215 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen210 & : ( not ( member$ pn_psy_one_person_max $?gen210 ) ) ) ) ) ) => ?gen208 <- ( max_imprisonment ( positive 0 ) )"))

([pn_psy_one_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_one_person_max-defeasibly-gen477)
   (depends-on declare psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_one_person_max] ) ) ) ?gen215 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen210 & : ( not ( member$ pn_psy_one_person_max $?gen210 ) ) ) ) ( test ( eq ( class ?gen208 ) max_imprisonment ) ) => ?gen208 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_psy_one_person_max ?gen215 ) )"))

([pn_psy_one_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_one_person_max-overruled-dot-gen479)
   (depends-on declare max_imprisonment psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_one_person_max] ) ) ) ?gen208 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen211 ) ( negative-overruled $?gen212 & : ( subseq-pos ( create$ pn_psy_one_person_max-overruled $?gen211 $$$ $?gen212 ) ) ) ) ( test ( eq ( class ?gen208 ) max_imprisonment ) ) ( not ( and ?gen215 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( max_imprisonment ( positive-defeated $?gen210 & : ( not ( member$ pn_psy_one_person_max $?gen210 ) ) ) ) ) ) => ( calc ( bind $?gen213 ( delete-member$ $?gen212 ( create$ pn_psy_one_person_max-overruled $?gen211 ) ) ) ) ?gen208 <- ( max_imprisonment ( negative-overruled $?gen213 ) )"))

([pn_psy_one_person_max-overruled] of derived-attribute-rule
   (pos-name pn_psy_one_person_max-overruled-gen481)
   (depends-on declare psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_one_person_max] ) ) ) ?gen215 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen211 ) ( negative-overruled $?gen212 & : ( not ( subseq-pos ( create$ pn_psy_one_person_max-overruled $?gen211 $$$ $?gen212 ) ) ) ) ( positive-defeated $?gen210 & : ( not ( member$ pn_psy_one_person_max $?gen210 ) ) ) ) ( test ( eq ( class ?gen208 ) max_imprisonment ) ) => ( calc ( bind $?gen213 ( create$ pn_psy_one_person_max-overruled $?gen211 $?gen212 ) ) ) ?gen208 <- ( max_imprisonment ( negative-overruled $?gen213 ) )"))

([pn_psy_one_person_max-support] of derived-attribute-rule
   (pos-name pn_psy_one_person_max-support-gen483)
   (depends-on declare psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_one_person_max] ) ) ) ?gen207 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen208 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen210 & : ( not ( subseq-pos ( create$ pn_psy_one_person_max ?gen207 $$$ $?gen210 ) ) ) ) ) ( test ( eq ( class ?gen208 ) max_imprisonment ) ) => ( calc ( bind $?gen213 ( create$ pn_psy_one_person_max ?gen207 $?gen210 ) ) ) ?gen208 <- ( max_imprisonment ( positive-support $?gen213 ) )"))

([pn_psy_one_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_one_person_min-defeasibly-dot-gen485)
   (depends-on declare min_imprisonment psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_one_person_min] ) ) ) ?gen199 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_psy_one_person_min $? ) ) ( test ( eq ( class ?gen199 ) min_imprisonment ) ) ( not ( and ?gen206 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen201 & : ( not ( member$ pn_psy_one_person_min $?gen201 ) ) ) ) ) ) => ?gen199 <- ( min_imprisonment ( positive 0 ) )"))

([pn_psy_one_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_one_person_min-defeasibly-gen487)
   (depends-on declare psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_one_person_min] ) ) ) ?gen206 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen201 & : ( not ( member$ pn_psy_one_person_min $?gen201 ) ) ) ) ( test ( eq ( class ?gen199 ) min_imprisonment ) ) => ?gen199 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_psy_one_person_min ?gen206 ) )"))

([pn_psy_one_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_one_person_min-overruled-dot-gen489)
   (depends-on declare min_imprisonment psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_one_person_min] ) ) ) ?gen199 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen202 ) ( negative-overruled $?gen203 & : ( subseq-pos ( create$ pn_psy_one_person_min-overruled $?gen202 $$$ $?gen203 ) ) ) ) ( test ( eq ( class ?gen199 ) min_imprisonment ) ) ( not ( and ?gen206 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( min_imprisonment ( positive-defeated $?gen201 & : ( not ( member$ pn_psy_one_person_min $?gen201 ) ) ) ) ) ) => ( calc ( bind $?gen204 ( delete-member$ $?gen203 ( create$ pn_psy_one_person_min-overruled $?gen202 ) ) ) ) ?gen199 <- ( min_imprisonment ( negative-overruled $?gen204 ) )"))

([pn_psy_one_person_min-overruled] of derived-attribute-rule
   (pos-name pn_psy_one_person_min-overruled-gen491)
   (depends-on declare psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_one_person_min] ) ) ) ?gen206 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen202 ) ( negative-overruled $?gen203 & : ( not ( subseq-pos ( create$ pn_psy_one_person_min-overruled $?gen202 $$$ $?gen203 ) ) ) ) ( positive-defeated $?gen201 & : ( not ( member$ pn_psy_one_person_min $?gen201 ) ) ) ) ( test ( eq ( class ?gen199 ) min_imprisonment ) ) => ( calc ( bind $?gen204 ( create$ pn_psy_one_person_min-overruled $?gen202 $?gen203 ) ) ) ?gen199 <- ( min_imprisonment ( negative-overruled $?gen204 ) )"))

([pn_psy_one_person_min-support] of derived-attribute-rule
   (pos-name pn_psy_one_person_min-support-gen493)
   (depends-on declare psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_one_person_min] ) ) ) ?gen198 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen199 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen201 & : ( not ( subseq-pos ( create$ pn_psy_one_person_min ?gen198 $$$ $?gen201 ) ) ) ) ) ( test ( eq ( class ?gen199 ) min_imprisonment ) ) => ( calc ( bind $?gen204 ( create$ pn_psy_one_person_min ?gen198 $?gen201 ) ) ) ?gen199 <- ( min_imprisonment ( positive-support $?gen204 ) )"))

([rule7_6-defeated-dot] of derived-attribute-rule
   (pos-name rule7_6-defeated-dot-gen495)
   (depends-on declare psychological_abuse_one_victim life_threatening_torture)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_6] ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen193 & : ( subseq-pos ( create$ rule7_6-defeated rule1 $$$ $?gen193 ) ) ) ) ( test ( eq ( class ?gen190 ) psychological_abuse_one_victim ) ) ( not ?gen197 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ) => ( calc ( bind $?gen192 ( delete-member$ $?gen193 ( create$ rule7_6-defeated rule1 ) ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( positive-defeated $?gen192 ) )"))

([rule7_6-defeated] of derived-attribute-rule
   (pos-name rule7_6-defeated-gen497)
   (depends-on declare life_threatening_torture psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_6] ) ) ) ?gen197 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen193 & : ( not ( subseq-pos ( create$ rule7_6-defeated rule1 $$$ $?gen193 ) ) ) ) ) ( test ( eq ( class ?gen190 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen192 ( create$ rule7_6-defeated rule1 $?gen193 ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( positive-defeated $?gen192 ) )"))

([rule7_6-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_6-defeasibly-dot-gen499)
   (depends-on declare psychological_abuse_one_victim life_threatening_torture psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_6] ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_6 $? ) ) ( test ( eq ( class ?gen190 ) psychological_abuse_one_victim ) ) ( not ( and ?gen197 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( positive ~ 2 ) ( negative-overruled $?gen192 & : ( not ( member$ rule7_6 $?gen192 ) ) ) ) ) ) => ?gen190 <- ( psychological_abuse_one_victim ( negative 0 ) )"))

([rule7_6-defeasibly] of derived-attribute-rule
   (pos-name rule7_6-defeasibly-gen501)
   (depends-on declare life_threatening_torture psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_6] ) ) ) ?gen197 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen192 & : ( not ( member$ rule7_6 $?gen192 ) ) ) ) ( test ( eq ( class ?gen190 ) psychological_abuse_one_victim ) ) => ?gen190 <- ( psychological_abuse_one_victim ( negative 1 ) ( negative-derivator rule7_6 ?gen197 ) )"))

([rule7_6-overruled-dot] of derived-attribute-rule
   (pos-name rule7_6-overruled-dot-gen503)
   (depends-on declare psychological_abuse_one_victim life_threatening_torture psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_6] ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen193 ) ( positive-overruled $?gen194 & : ( subseq-pos ( create$ rule7_6-overruled $?gen193 $$$ $?gen194 ) ) ) ) ( test ( eq ( class ?gen190 ) psychological_abuse_one_victim ) ) ( not ( and ?gen197 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( negative-defeated $?gen192 & : ( not ( member$ rule7_6 $?gen192 ) ) ) ) ) ) => ( calc ( bind $?gen195 ( delete-member$ $?gen194 ( create$ rule7_6-overruled $?gen193 ) ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( positive-overruled $?gen195 ) )"))

([rule7_6-overruled] of derived-attribute-rule
   (pos-name rule7_6-overruled-gen505)
   (depends-on declare life_threatening_torture psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_6] ) ) ) ?gen197 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen193 ) ( positive-overruled $?gen194 & : ( not ( subseq-pos ( create$ rule7_6-overruled $?gen193 $$$ $?gen194 ) ) ) ) ( negative-defeated $?gen192 & : ( not ( member$ rule7_6 $?gen192 ) ) ) ) ( test ( eq ( class ?gen190 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen195 ( create$ rule7_6-overruled $?gen193 $?gen194 ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( positive-overruled $?gen195 ) )"))

([rule7_6-support] of derived-attribute-rule
   (pos-name rule7_6-support-gen507)
   (depends-on declare life_threatening_torture psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_6] ) ) ) ?gen189 <- ( life_threatening_torture ( defendant ?Defendant ) ) ?gen190 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen192 & : ( not ( subseq-pos ( create$ rule7_6 ?gen189 $$$ $?gen192 ) ) ) ) ) ( test ( eq ( class ?gen190 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen195 ( create$ rule7_6 ?gen189 $?gen192 ) ) ) ?gen190 <- ( psychological_abuse_one_victim ( negative-support $?gen195 ) )"))

([rule7_5-defeated-dot] of derived-attribute-rule
   (pos-name rule7_5-defeated-dot-gen509)
   (depends-on declare psychological_abuse_more_victim life_threatening_torture)
   (implies psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_5] ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( defendant ?Defendant ) ( positive-defeated $?gen184 & : ( subseq-pos ( create$ rule7_5-defeated rule2 $$$ $?gen184 ) ) ) ) ( test ( eq ( class ?gen181 ) psychological_abuse_more_victim ) ) ( not ?gen188 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ) => ( calc ( bind $?gen183 ( delete-member$ $?gen184 ( create$ rule7_5-defeated rule2 ) ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( positive-defeated $?gen183 ) )"))

([rule7_5-defeated] of derived-attribute-rule
   (pos-name rule7_5-defeated-gen511)
   (depends-on declare life_threatening_torture psychological_abuse_more_victim)
   (implies psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_5] ) ) ) ?gen188 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( defendant ?Defendant ) ( positive-defeated $?gen184 & : ( not ( subseq-pos ( create$ rule7_5-defeated rule2 $$$ $?gen184 ) ) ) ) ) ( test ( eq ( class ?gen181 ) psychological_abuse_more_victim ) ) => ( calc ( bind $?gen183 ( create$ rule7_5-defeated rule2 $?gen184 ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( positive-defeated $?gen183 ) )"))

([rule7_5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_5-defeasibly-dot-gen513)
   (depends-on declare psychological_abuse_more_victim life_threatening_torture psychological_abuse_more_victim)
   (implies psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_5] ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_5 $? ) ) ( test ( eq ( class ?gen181 ) psychological_abuse_more_victim ) ) ( not ( and ?gen188 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( positive ~ 2 ) ( negative-overruled $?gen183 & : ( not ( member$ rule7_5 $?gen183 ) ) ) ) ) ) => ?gen181 <- ( psychological_abuse_more_victim ( negative 0 ) )"))

([rule7_5-defeasibly] of derived-attribute-rule
   (pos-name rule7_5-defeasibly-gen515)
   (depends-on declare life_threatening_torture psychological_abuse_more_victim)
   (implies psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_5] ) ) ) ?gen188 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen183 & : ( not ( member$ rule7_5 $?gen183 ) ) ) ) ( test ( eq ( class ?gen181 ) psychological_abuse_more_victim ) ) => ?gen181 <- ( psychological_abuse_more_victim ( negative 1 ) ( negative-derivator rule7_5 ?gen188 ) )"))

([rule7_5-overruled-dot] of derived-attribute-rule
   (pos-name rule7_5-overruled-dot-gen517)
   (depends-on declare psychological_abuse_more_victim life_threatening_torture psychological_abuse_more_victim)
   (implies psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_5] ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen184 ) ( positive-overruled $?gen185 & : ( subseq-pos ( create$ rule7_5-overruled $?gen184 $$$ $?gen185 ) ) ) ) ( test ( eq ( class ?gen181 ) psychological_abuse_more_victim ) ) ( not ( and ?gen188 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( negative-defeated $?gen183 & : ( not ( member$ rule7_5 $?gen183 ) ) ) ) ) ) => ( calc ( bind $?gen186 ( delete-member$ $?gen185 ( create$ rule7_5-overruled $?gen184 ) ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( positive-overruled $?gen186 ) )"))

([rule7_5-overruled] of derived-attribute-rule
   (pos-name rule7_5-overruled-gen519)
   (depends-on declare life_threatening_torture psychological_abuse_more_victim)
   (implies psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_5] ) ) ) ?gen188 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen184 ) ( positive-overruled $?gen185 & : ( not ( subseq-pos ( create$ rule7_5-overruled $?gen184 $$$ $?gen185 ) ) ) ) ( negative-defeated $?gen183 & : ( not ( member$ rule7_5 $?gen183 ) ) ) ) ( test ( eq ( class ?gen181 ) psychological_abuse_more_victim ) ) => ( calc ( bind $?gen186 ( create$ rule7_5-overruled $?gen184 $?gen185 ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( positive-overruled $?gen186 ) )"))

([rule7_5-support] of derived-attribute-rule
   (pos-name rule7_5-support-gen521)
   (depends-on declare life_threatening_torture psychological_abuse_more_victim)
   (implies psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_5] ) ) ) ?gen180 <- ( life_threatening_torture ( defendant ?Defendant ) ) ?gen181 <- ( psychological_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen183 & : ( not ( subseq-pos ( create$ rule7_5 ?gen180 $$$ $?gen183 ) ) ) ) ) ( test ( eq ( class ?gen181 ) psychological_abuse_more_victim ) ) => ( calc ( bind $?gen186 ( create$ rule7_5 ?gen180 $?gen183 ) ) ) ?gen181 <- ( psychological_abuse_more_victim ( negative-support $?gen186 ) )"))

([rule7_4-defeated-dot] of derived-attribute-rule
   (pos-name rule7_4-defeated-dot-gen523)
   (depends-on declare physical_abuse_one_victim life_threatening_torture)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_4] ) ) ) ?gen172 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen175 & : ( subseq-pos ( create$ rule7_4-defeated rule3 $$$ $?gen175 ) ) ) ) ( test ( eq ( class ?gen172 ) physical_abuse_one_victim ) ) ( not ?gen179 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ) => ( calc ( bind $?gen174 ( delete-member$ $?gen175 ( create$ rule7_4-defeated rule3 ) ) ) ) ?gen172 <- ( physical_abuse_one_victim ( positive-defeated $?gen174 ) )"))

([rule7_4-defeated] of derived-attribute-rule
   (pos-name rule7_4-defeated-gen525)
   (depends-on declare life_threatening_torture physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_4] ) ) ) ?gen179 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen175 & : ( not ( subseq-pos ( create$ rule7_4-defeated rule3 $$$ $?gen175 ) ) ) ) ) ( test ( eq ( class ?gen172 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen174 ( create$ rule7_4-defeated rule3 $?gen175 ) ) ) ?gen172 <- ( physical_abuse_one_victim ( positive-defeated $?gen174 ) )"))

([rule7_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_4-defeasibly-dot-gen527)
   (depends-on declare physical_abuse_one_victim life_threatening_torture physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_4] ) ) ) ?gen172 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_4 $? ) ) ( test ( eq ( class ?gen172 ) physical_abuse_one_victim ) ) ( not ( and ?gen179 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( physical_abuse_one_victim ( positive ~ 2 ) ( negative-overruled $?gen174 & : ( not ( member$ rule7_4 $?gen174 ) ) ) ) ) ) => ?gen172 <- ( physical_abuse_one_victim ( negative 0 ) )"))

([rule7_4-defeasibly] of derived-attribute-rule
   (pos-name rule7_4-defeasibly-gen529)
   (depends-on declare life_threatening_torture physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_4] ) ) ) ?gen179 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen174 & : ( not ( member$ rule7_4 $?gen174 ) ) ) ) ( test ( eq ( class ?gen172 ) physical_abuse_one_victim ) ) => ?gen172 <- ( physical_abuse_one_victim ( negative 1 ) ( negative-derivator rule7_4 ?gen179 ) )"))

([rule7_4-overruled-dot] of derived-attribute-rule
   (pos-name rule7_4-overruled-dot-gen531)
   (depends-on declare physical_abuse_one_victim life_threatening_torture physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_4] ) ) ) ?gen172 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen175 ) ( positive-overruled $?gen176 & : ( subseq-pos ( create$ rule7_4-overruled $?gen175 $$$ $?gen176 ) ) ) ) ( test ( eq ( class ?gen172 ) physical_abuse_one_victim ) ) ( not ( and ?gen179 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( physical_abuse_one_victim ( negative-defeated $?gen174 & : ( not ( member$ rule7_4 $?gen174 ) ) ) ) ) ) => ( calc ( bind $?gen177 ( delete-member$ $?gen176 ( create$ rule7_4-overruled $?gen175 ) ) ) ) ?gen172 <- ( physical_abuse_one_victim ( positive-overruled $?gen177 ) )"))

([rule7_4-overruled] of derived-attribute-rule
   (pos-name rule7_4-overruled-gen533)
   (depends-on declare life_threatening_torture physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_4] ) ) ) ?gen179 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen175 ) ( positive-overruled $?gen176 & : ( not ( subseq-pos ( create$ rule7_4-overruled $?gen175 $$$ $?gen176 ) ) ) ) ( negative-defeated $?gen174 & : ( not ( member$ rule7_4 $?gen174 ) ) ) ) ( test ( eq ( class ?gen172 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen177 ( create$ rule7_4-overruled $?gen175 $?gen176 ) ) ) ?gen172 <- ( physical_abuse_one_victim ( positive-overruled $?gen177 ) )"))

([rule7_4-support] of derived-attribute-rule
   (pos-name rule7_4-support-gen535)
   (depends-on declare life_threatening_torture physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_4] ) ) ) ?gen171 <- ( life_threatening_torture ( defendant ?Defendant ) ) ?gen172 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen174 & : ( not ( subseq-pos ( create$ rule7_4 ?gen171 $$$ $?gen174 ) ) ) ) ) ( test ( eq ( class ?gen172 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen177 ( create$ rule7_4 ?gen171 $?gen174 ) ) ) ?gen172 <- ( physical_abuse_one_victim ( negative-support $?gen177 ) )"))

([rule7_3-defeated-dot] of derived-attribute-rule
   (pos-name rule7_3-defeated-dot-gen537)
   (depends-on declare physical_abuse_more_victim life_threatening_torture)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_3] ) ) ) ?gen163 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-defeated $?gen166 & : ( subseq-pos ( create$ rule7_3-defeated rule4 $$$ $?gen166 ) ) ) ) ( test ( eq ( class ?gen163 ) physical_abuse_more_victim ) ) ( not ?gen170 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ) => ( calc ( bind $?gen165 ( delete-member$ $?gen166 ( create$ rule7_3-defeated rule4 ) ) ) ) ?gen163 <- ( physical_abuse_more_victim ( positive-defeated $?gen165 ) )"))

([rule7_3-defeated] of derived-attribute-rule
   (pos-name rule7_3-defeated-gen539)
   (depends-on declare life_threatening_torture physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_3] ) ) ) ?gen170 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-defeated $?gen166 & : ( not ( subseq-pos ( create$ rule7_3-defeated rule4 $$$ $?gen166 ) ) ) ) ) ( test ( eq ( class ?gen163 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen165 ( create$ rule7_3-defeated rule4 $?gen166 ) ) ) ?gen163 <- ( physical_abuse_more_victim ( positive-defeated $?gen165 ) )"))

([rule7_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_3-defeasibly-dot-gen541)
   (depends-on declare physical_abuse_more_victim life_threatening_torture physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_3] ) ) ) ?gen163 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_3 $? ) ) ( test ( eq ( class ?gen163 ) physical_abuse_more_victim ) ) ( not ( and ?gen170 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( physical_abuse_more_victim ( positive ~ 2 ) ( negative-overruled $?gen165 & : ( not ( member$ rule7_3 $?gen165 ) ) ) ) ) ) => ?gen163 <- ( physical_abuse_more_victim ( negative 0 ) )"))

([rule7_3-defeasibly] of derived-attribute-rule
   (pos-name rule7_3-defeasibly-gen543)
   (depends-on declare life_threatening_torture physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_3] ) ) ) ?gen170 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen165 & : ( not ( member$ rule7_3 $?gen165 ) ) ) ) ( test ( eq ( class ?gen163 ) physical_abuse_more_victim ) ) => ?gen163 <- ( physical_abuse_more_victim ( negative 1 ) ( negative-derivator rule7_3 ?gen170 ) )"))

([rule7_3-overruled-dot] of derived-attribute-rule
   (pos-name rule7_3-overruled-dot-gen545)
   (depends-on declare physical_abuse_more_victim life_threatening_torture physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_3] ) ) ) ?gen163 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen166 ) ( positive-overruled $?gen167 & : ( subseq-pos ( create$ rule7_3-overruled $?gen166 $$$ $?gen167 ) ) ) ) ( test ( eq ( class ?gen163 ) physical_abuse_more_victim ) ) ( not ( and ?gen170 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( physical_abuse_more_victim ( negative-defeated $?gen165 & : ( not ( member$ rule7_3 $?gen165 ) ) ) ) ) ) => ( calc ( bind $?gen168 ( delete-member$ $?gen167 ( create$ rule7_3-overruled $?gen166 ) ) ) ) ?gen163 <- ( physical_abuse_more_victim ( positive-overruled $?gen168 ) )"))

([rule7_3-overruled] of derived-attribute-rule
   (pos-name rule7_3-overruled-gen547)
   (depends-on declare life_threatening_torture physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_3] ) ) ) ?gen170 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen166 ) ( positive-overruled $?gen167 & : ( not ( subseq-pos ( create$ rule7_3-overruled $?gen166 $$$ $?gen167 ) ) ) ) ( negative-defeated $?gen165 & : ( not ( member$ rule7_3 $?gen165 ) ) ) ) ( test ( eq ( class ?gen163 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen168 ( create$ rule7_3-overruled $?gen166 $?gen167 ) ) ) ?gen163 <- ( physical_abuse_more_victim ( positive-overruled $?gen168 ) )"))

([rule7_3-support] of derived-attribute-rule
   (pos-name rule7_3-support-gen549)
   (depends-on declare life_threatening_torture physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_3] ) ) ) ?gen162 <- ( life_threatening_torture ( defendant ?Defendant ) ) ?gen163 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen165 & : ( not ( subseq-pos ( create$ rule7_3 ?gen162 $$$ $?gen165 ) ) ) ) ) ( test ( eq ( class ?gen163 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen168 ( create$ rule7_3 ?gen162 $?gen165 ) ) ) ?gen163 <- ( physical_abuse_more_victim ( negative-support $?gen168 ) )"))

([rule7_2-defeated-dot] of derived-attribute-rule
   (pos-name rule7_2-defeated-dot-gen551)
   (depends-on declare physical_psychological_abuse_more_victim life_threatening_torture)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_2] ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive-defeated $?gen157 & : ( subseq-pos ( create$ rule7_2-defeated rule6 $$$ $?gen157 ) ) ) ) ( test ( eq ( class ?gen154 ) physical_psychological_abuse_more_victim ) ) ( not ?gen161 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ) => ( calc ( bind $?gen156 ( delete-member$ $?gen157 ( create$ rule7_2-defeated rule6 ) ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( positive-defeated $?gen156 ) )"))

([rule7_2-defeated] of derived-attribute-rule
   (pos-name rule7_2-defeated-gen553)
   (depends-on declare life_threatening_torture physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_2] ) ) ) ?gen161 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive-defeated $?gen157 & : ( not ( subseq-pos ( create$ rule7_2-defeated rule6 $$$ $?gen157 ) ) ) ) ) ( test ( eq ( class ?gen154 ) physical_psychological_abuse_more_victim ) ) => ( calc ( bind $?gen156 ( create$ rule7_2-defeated rule6 $?gen157 ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( positive-defeated $?gen156 ) )"))

([rule7_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_2-defeasibly-dot-gen555)
   (depends-on declare physical_psychological_abuse_more_victim life_threatening_torture physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_2] ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_2 $? ) ) ( test ( eq ( class ?gen154 ) physical_psychological_abuse_more_victim ) ) ( not ( and ?gen161 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( positive ~ 2 ) ( negative-overruled $?gen156 & : ( not ( member$ rule7_2 $?gen156 ) ) ) ) ) ) => ?gen154 <- ( physical_psychological_abuse_more_victim ( negative 0 ) )"))

([rule7_2-defeasibly] of derived-attribute-rule
   (pos-name rule7_2-defeasibly-gen557)
   (depends-on declare life_threatening_torture physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_2] ) ) ) ?gen161 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen156 & : ( not ( member$ rule7_2 $?gen156 ) ) ) ) ( test ( eq ( class ?gen154 ) physical_psychological_abuse_more_victim ) ) => ?gen154 <- ( physical_psychological_abuse_more_victim ( negative 1 ) ( negative-derivator rule7_2 ?gen161 ) )"))

([rule7_2-overruled-dot] of derived-attribute-rule
   (pos-name rule7_2-overruled-dot-gen559)
   (depends-on declare physical_psychological_abuse_more_victim life_threatening_torture physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_2] ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen157 ) ( positive-overruled $?gen158 & : ( subseq-pos ( create$ rule7_2-overruled $?gen157 $$$ $?gen158 ) ) ) ) ( test ( eq ( class ?gen154 ) physical_psychological_abuse_more_victim ) ) ( not ( and ?gen161 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( negative-defeated $?gen156 & : ( not ( member$ rule7_2 $?gen156 ) ) ) ) ) ) => ( calc ( bind $?gen159 ( delete-member$ $?gen158 ( create$ rule7_2-overruled $?gen157 ) ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( positive-overruled $?gen159 ) )"))

([rule7_2-overruled] of derived-attribute-rule
   (pos-name rule7_2-overruled-gen561)
   (depends-on declare life_threatening_torture physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_2] ) ) ) ?gen161 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen157 ) ( positive-overruled $?gen158 & : ( not ( subseq-pos ( create$ rule7_2-overruled $?gen157 $$$ $?gen158 ) ) ) ) ( negative-defeated $?gen156 & : ( not ( member$ rule7_2 $?gen156 ) ) ) ) ( test ( eq ( class ?gen154 ) physical_psychological_abuse_more_victim ) ) => ( calc ( bind $?gen159 ( create$ rule7_2-overruled $?gen157 $?gen158 ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( positive-overruled $?gen159 ) )"))

([rule7_2-support] of derived-attribute-rule
   (pos-name rule7_2-support-gen563)
   (depends-on declare life_threatening_torture physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_2] ) ) ) ?gen153 <- ( life_threatening_torture ( defendant ?Defendant ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen156 & : ( not ( subseq-pos ( create$ rule7_2 ?gen153 $$$ $?gen156 ) ) ) ) ) ( test ( eq ( class ?gen154 ) physical_psychological_abuse_more_victim ) ) => ( calc ( bind $?gen159 ( create$ rule7_2 ?gen153 $?gen156 ) ) ) ?gen154 <- ( physical_psychological_abuse_more_victim ( negative-support $?gen159 ) )"))

([rule7_1-defeated-dot] of derived-attribute-rule
   (pos-name rule7_1-defeated-dot-gen565)
   (depends-on declare physical_psychological_abuse_one_victim life_threatening_torture)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule7_1] ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen148 & : ( subseq-pos ( create$ rule7_1-defeated rule5 $$$ $?gen148 ) ) ) ) ( test ( eq ( class ?gen145 ) physical_psychological_abuse_one_victim ) ) ( not ?gen152 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ) => ( calc ( bind $?gen147 ( delete-member$ $?gen148 ( create$ rule7_1-defeated rule5 ) ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( positive-defeated $?gen147 ) )"))

([rule7_1-defeated] of derived-attribute-rule
   (pos-name rule7_1-defeated-gen567)
   (depends-on declare life_threatening_torture physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule7_1] ) ) ) ?gen152 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen148 & : ( not ( subseq-pos ( create$ rule7_1-defeated rule5 $$$ $?gen148 ) ) ) ) ) ( test ( eq ( class ?gen145 ) physical_psychological_abuse_one_victim ) ) => ( calc ( bind $?gen147 ( create$ rule7_1-defeated rule5 $?gen148 ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( positive-defeated $?gen147 ) )"))

([rule7_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7_1-defeasibly-dot-gen569)
   (depends-on declare physical_psychological_abuse_one_victim life_threatening_torture physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7_1] ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule7_1 $? ) ) ( test ( eq ( class ?gen145 ) physical_psychological_abuse_one_victim ) ) ( not ( and ?gen152 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( positive ~ 2 ) ( negative-overruled $?gen147 & : ( not ( member$ rule7_1 $?gen147 ) ) ) ) ) ) => ?gen145 <- ( physical_psychological_abuse_one_victim ( negative 0 ) )"))

([rule7_1-defeasibly] of derived-attribute-rule
   (pos-name rule7_1-defeasibly-gen571)
   (depends-on declare life_threatening_torture physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7_1] ) ) ) ?gen152 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen147 & : ( not ( member$ rule7_1 $?gen147 ) ) ) ) ( test ( eq ( class ?gen145 ) physical_psychological_abuse_one_victim ) ) => ?gen145 <- ( physical_psychological_abuse_one_victim ( negative 1 ) ( negative-derivator rule7_1 ?gen152 ) )"))

([rule7_1-overruled-dot] of derived-attribute-rule
   (pos-name rule7_1-overruled-dot-gen573)
   (depends-on declare physical_psychological_abuse_one_victim life_threatening_torture physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7_1] ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen148 ) ( positive-overruled $?gen149 & : ( subseq-pos ( create$ rule7_1-overruled $?gen148 $$$ $?gen149 ) ) ) ) ( test ( eq ( class ?gen145 ) physical_psychological_abuse_one_victim ) ) ( not ( and ?gen152 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( negative-defeated $?gen147 & : ( not ( member$ rule7_1 $?gen147 ) ) ) ) ) ) => ( calc ( bind $?gen150 ( delete-member$ $?gen149 ( create$ rule7_1-overruled $?gen148 ) ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( positive-overruled $?gen150 ) )"))

([rule7_1-overruled] of derived-attribute-rule
   (pos-name rule7_1-overruled-gen575)
   (depends-on declare life_threatening_torture physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7_1] ) ) ) ?gen152 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen148 ) ( positive-overruled $?gen149 & : ( not ( subseq-pos ( create$ rule7_1-overruled $?gen148 $$$ $?gen149 ) ) ) ) ( negative-defeated $?gen147 & : ( not ( member$ rule7_1 $?gen147 ) ) ) ) ( test ( eq ( class ?gen145 ) physical_psychological_abuse_one_victim ) ) => ( calc ( bind $?gen150 ( create$ rule7_1-overruled $?gen148 $?gen149 ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( positive-overruled $?gen150 ) )"))

([rule7_1-support] of derived-attribute-rule
   (pos-name rule7_1-support-gen577)
   (depends-on declare life_threatening_torture physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7_1] ) ) ) ?gen144 <- ( life_threatening_torture ( defendant ?Defendant ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen147 & : ( not ( subseq-pos ( create$ rule7_1 ?gen144 $$$ $?gen147 ) ) ) ) ) ( test ( eq ( class ?gen145 ) physical_psychological_abuse_one_victim ) ) => ( calc ( bind $?gen150 ( create$ rule7_1 ?gen144 $?gen147 ) ) ) ?gen145 <- ( physical_psychological_abuse_one_victim ( negative-support $?gen150 ) )"))

([rule7-defeasibly-dot] of derived-attribute-rule
   (pos-name rule7-defeasibly-dot-gen579)
   (depends-on declare life_threatening_torture lc:case life_threatening_torture)
   (implies life_threatening_torture)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule7] ) ) ) ?gen136 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule7 $? ) ) ( test ( eq ( class ?gen136 ) life_threatening_torture ) ) ( not ( and ?gen143 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( life_threatening_torture ( negative ~ 2 ) ( positive-overruled $?gen138 & : ( not ( member$ rule7 $?gen138 ) ) ) ) ) ) => ?gen136 <- ( life_threatening_torture ( positive 0 ) )"))

([rule7-defeasibly] of derived-attribute-rule
   (pos-name rule7-defeasibly-gen581)
   (depends-on declare lc:case life_threatening_torture)
   (implies life_threatening_torture)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule7] ) ) ) ?gen143 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen138 & : ( not ( member$ rule7 $?gen138 ) ) ) ) ( test ( eq ( class ?gen136 ) life_threatening_torture ) ) => ?gen136 <- ( life_threatening_torture ( positive 1 ) ( positive-derivator rule7 ?gen143 ) )"))

([rule7-overruled-dot] of derived-attribute-rule
   (pos-name rule7-overruled-dot-gen583)
   (depends-on declare life_threatening_torture lc:case life_threatening_torture)
   (implies life_threatening_torture)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule7] ) ) ) ?gen136 <- ( life_threatening_torture ( defendant ?Defendant ) ( negative-support $?gen139 ) ( negative-overruled $?gen140 & : ( subseq-pos ( create$ rule7-overruled $?gen139 $$$ $?gen140 ) ) ) ) ( test ( eq ( class ?gen136 ) life_threatening_torture ) ) ( not ( and ?gen143 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( life_threatening_torture ( positive-defeated $?gen138 & : ( not ( member$ rule7 $?gen138 ) ) ) ) ) ) => ( calc ( bind $?gen141 ( delete-member$ $?gen140 ( create$ rule7-overruled $?gen139 ) ) ) ) ?gen136 <- ( life_threatening_torture ( negative-overruled $?gen141 ) )"))

([rule7-overruled] of derived-attribute-rule
   (pos-name rule7-overruled-gen585)
   (depends-on declare lc:case life_threatening_torture)
   (implies life_threatening_torture)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule7] ) ) ) ?gen143 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( life_threatening_torture ( defendant ?Defendant ) ( negative-support $?gen139 ) ( negative-overruled $?gen140 & : ( not ( subseq-pos ( create$ rule7-overruled $?gen139 $$$ $?gen140 ) ) ) ) ( positive-defeated $?gen138 & : ( not ( member$ rule7 $?gen138 ) ) ) ) ( test ( eq ( class ?gen136 ) life_threatening_torture ) ) => ( calc ( bind $?gen141 ( create$ rule7-overruled $?gen139 $?gen140 ) ) ) ?gen136 <- ( life_threatening_torture ( negative-overruled $?gen141 ) )"))

([rule7-support] of derived-attribute-rule
   (pos-name rule7-support-gen587)
   (depends-on declare lc:case life_threatening_torture)
   (implies life_threatening_torture)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule7] ) ) ) ?gen135 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ?gen136 <- ( life_threatening_torture ( defendant ?Defendant ) ( positive-support $?gen138 & : ( not ( subseq-pos ( create$ rule7 ?gen135 $$$ $?gen138 ) ) ) ) ) ( test ( eq ( class ?gen136 ) life_threatening_torture ) ) => ( calc ( bind $?gen141 ( create$ rule7 ?gen135 $?gen138 ) ) ) ?gen136 <- ( life_threatening_torture ( positive-support $?gen141 ) )"))

([rule6_2-defeated-dot] of derived-attribute-rule
   (pos-name rule6_2-defeated-dot-gen589)
   (depends-on declare psychological_abuse_more_victims physical_psychological_abuse_more_victim)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_2] ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive-defeated $?gen130 & : ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen130 ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) ( not ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ) => ( calc ( bind $?gen129 ( delete-member$ $?gen130 ( create$ rule6_2-defeated rule2 ) ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( positive-defeated $?gen129 ) )"))

([rule6_2-defeated] of derived-attribute-rule
   (pos-name rule6_2-defeated-gen591)
   (depends-on declare physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_2] ) ) ) ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive-defeated $?gen130 & : ( not ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen130 ) ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) => ( calc ( bind $?gen129 ( create$ rule6_2-defeated rule2 $?gen130 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( positive-defeated $?gen129 ) )"))

([rule6_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-dot-gen593)
   (depends-on declare psychological_abuse_more_victims physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_2] ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_2 $? ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) ( not ( and ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( positive ~ 2 ) ( negative-overruled $?gen129 & : ( not ( member$ rule6_2 $?gen129 ) ) ) ) ) ) => ?gen127 <- ( psychological_abuse_more_victims ( negative 0 ) )"))

([rule6_2-defeasibly] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-gen595)
   (depends-on declare physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_2] ) ) ) ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen129 & : ( not ( member$ rule6_2 $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) => ?gen127 <- ( psychological_abuse_more_victims ( negative 1 ) ( negative-derivator rule6_2 ?gen134 ) )"))

([rule6_2-overruled-dot] of derived-attribute-rule
   (pos-name rule6_2-overruled-dot-gen597)
   (depends-on declare psychological_abuse_more_victims physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_2] ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive-support $?gen130 ) ( positive-overruled $?gen131 & : ( subseq-pos ( create$ rule6_2-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) ( not ( and ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( negative-defeated $?gen129 & : ( not ( member$ rule6_2 $?gen129 ) ) ) ) ) ) => ( calc ( bind $?gen132 ( delete-member$ $?gen131 ( create$ rule6_2-overruled $?gen130 ) ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( positive-overruled $?gen132 ) )"))

([rule6_2-overruled] of derived-attribute-rule
   (pos-name rule6_2-overruled-gen599)
   (depends-on declare physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_2] ) ) ) ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive-support $?gen130 ) ( positive-overruled $?gen131 & : ( not ( subseq-pos ( create$ rule6_2-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( negative-defeated $?gen129 & : ( not ( member$ rule6_2 $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) => ( calc ( bind $?gen132 ( create$ rule6_2-overruled $?gen130 $?gen131 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( positive-overruled $?gen132 ) )"))

([rule6_2-support] of derived-attribute-rule
   (pos-name rule6_2-support-gen601)
   (depends-on declare physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_2] ) ) ) ?gen126 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( negative-support $?gen129 & : ( not ( subseq-pos ( create$ rule6_2 ?gen126 $$$ $?gen129 ) ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) => ( calc ( bind $?gen132 ( create$ rule6_2 ?gen126 $?gen129 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( negative-support $?gen132 ) )"))

([rule6_1-defeated-dot] of derived-attribute-rule
   (pos-name rule6_1-defeated-dot-gen603)
   (depends-on declare physical_abuse_more_victim physical_psychological_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_1] ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-defeated $?gen121 & : ( subseq-pos ( create$ rule6_1-defeated rule4 $$$ $?gen121 ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) ( not ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ) => ( calc ( bind $?gen120 ( delete-member$ $?gen121 ( create$ rule6_1-defeated rule4 ) ) ) ) ?gen118 <- ( physical_abuse_more_victim ( positive-defeated $?gen120 ) )"))

([rule6_1-defeated] of derived-attribute-rule
   (pos-name rule6_1-defeated-gen605)
   (depends-on declare physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_1] ) ) ) ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-defeated $?gen121 & : ( not ( subseq-pos ( create$ rule6_1-defeated rule4 $$$ $?gen121 ) ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen120 ( create$ rule6_1-defeated rule4 $?gen121 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( positive-defeated $?gen120 ) )"))

([rule6_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_1-defeasibly-dot-gen607)
   (depends-on declare physical_abuse_more_victim physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_1] ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_1 $? ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) ( not ( and ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( positive ~ 2 ) ( negative-overruled $?gen120 & : ( not ( member$ rule6_1 $?gen120 ) ) ) ) ) ) => ?gen118 <- ( physical_abuse_more_victim ( negative 0 ) )"))

([rule6_1-defeasibly] of derived-attribute-rule
   (pos-name rule6_1-defeasibly-gen609)
   (depends-on declare physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_1] ) ) ) ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen120 & : ( not ( member$ rule6_1 $?gen120 ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) => ?gen118 <- ( physical_abuse_more_victim ( negative 1 ) ( negative-derivator rule6_1 ?gen125 ) )"))

([rule6_1-overruled-dot] of derived-attribute-rule
   (pos-name rule6_1-overruled-dot-gen611)
   (depends-on declare physical_abuse_more_victim physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_1] ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen121 ) ( positive-overruled $?gen122 & : ( subseq-pos ( create$ rule6_1-overruled $?gen121 $$$ $?gen122 ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) ( not ( and ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( negative-defeated $?gen120 & : ( not ( member$ rule6_1 $?gen120 ) ) ) ) ) ) => ( calc ( bind $?gen123 ( delete-member$ $?gen122 ( create$ rule6_1-overruled $?gen121 ) ) ) ) ?gen118 <- ( physical_abuse_more_victim ( positive-overruled $?gen123 ) )"))

([rule6_1-overruled] of derived-attribute-rule
   (pos-name rule6_1-overruled-gen613)
   (depends-on declare physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_1] ) ) ) ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen121 ) ( positive-overruled $?gen122 & : ( not ( subseq-pos ( create$ rule6_1-overruled $?gen121 $$$ $?gen122 ) ) ) ) ( negative-defeated $?gen120 & : ( not ( member$ rule6_1 $?gen120 ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen123 ( create$ rule6_1-overruled $?gen121 $?gen122 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( positive-overruled $?gen123 ) )"))

([rule6_1-support] of derived-attribute-rule
   (pos-name rule6_1-support-gen615)
   (depends-on declare physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_1] ) ) ) ?gen117 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen120 & : ( not ( subseq-pos ( create$ rule6_1 ?gen117 $$$ $?gen120 ) ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen123 ( create$ rule6_1 ?gen117 $?gen120 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( negative-support $?gen123 ) )"))

([rule6-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6-defeasibly-dot-gen617)
   (depends-on declare physical_psychological_abuse_more_victim lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6] ) ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule6 $? ) ) ( test ( eq ( class ?gen105 ) physical_psychological_abuse_more_victim ) ) ( not ( and ?gen112 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen111 & : ( >= ?gen111 1 ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( negative ~ 2 ) ( positive-overruled $?gen107 & : ( not ( member$ rule6 $?gen107 ) ) ) ) ) ) => ?gen105 <- ( physical_psychological_abuse_more_victim ( positive 0 ) )"))

([rule6-defeasibly] of derived-attribute-rule
   (pos-name rule6-defeasibly-gen619)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6] ) ) ) ?gen112 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen111 & : ( >= ?gen111 1 ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen107 & : ( not ( member$ rule6 $?gen107 ) ) ) ) ( test ( eq ( class ?gen105 ) physical_psychological_abuse_more_victim ) ) => ?gen105 <- ( physical_psychological_abuse_more_victim ( positive 1 ) ( positive-derivator rule6 ?gen112 ?gen114 ?gen116 ) )"))

([rule6-overruled-dot] of derived-attribute-rule
   (pos-name rule6-overruled-dot-gen621)
   (depends-on declare physical_psychological_abuse_more_victim lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6] ) ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen108 ) ( negative-overruled $?gen109 & : ( subseq-pos ( create$ rule6-overruled $?gen108 $$$ $?gen109 ) ) ) ) ( test ( eq ( class ?gen105 ) physical_psychological_abuse_more_victim ) ) ( not ( and ?gen112 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen111 & : ( >= ?gen111 1 ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( positive-defeated $?gen107 & : ( not ( member$ rule6 $?gen107 ) ) ) ) ) ) => ( calc ( bind $?gen110 ( delete-member$ $?gen109 ( create$ rule6-overruled $?gen108 ) ) ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( negative-overruled $?gen110 ) )"))

([rule6-overruled] of derived-attribute-rule
   (pos-name rule6-overruled-gen623)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6] ) ) ) ?gen112 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen111 & : ( >= ?gen111 1 ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen108 ) ( negative-overruled $?gen109 & : ( not ( subseq-pos ( create$ rule6-overruled $?gen108 $$$ $?gen109 ) ) ) ) ( positive-defeated $?gen107 & : ( not ( member$ rule6 $?gen107 ) ) ) ) ( test ( eq ( class ?gen105 ) physical_psychological_abuse_more_victim ) ) => ( calc ( bind $?gen110 ( create$ rule6-overruled $?gen108 $?gen109 ) ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( negative-overruled $?gen110 ) )"))

([rule6-support] of derived-attribute-rule
   (pos-name rule6-support-gen625)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6] ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen107 & : ( not ( subseq-pos ( create$ rule6 ?gen101 ?gen102 ?gen103 $$$ $?gen107 ) ) ) ) ) ( test ( eq ( class ?gen105 ) physical_psychological_abuse_more_victim ) ) => ( calc ( bind $?gen110 ( create$ rule6 ?gen101 ?gen102 ?gen103 $?gen107 ) ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( positive-support $?gen110 ) )"))

([rule5_2-defeated-dot] of derived-attribute-rule
   (pos-name rule5_2-defeated-dot-gen627)
   (depends-on declare psychological_abuse_one_victim physical_psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_2] ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen96 & : ( subseq-pos ( create$ rule5_2-defeated rule1 $$$ $?gen96 ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) ( not ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ) => ( calc ( bind $?gen95 ( delete-member$ $?gen96 ( create$ rule5_2-defeated rule1 ) ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( positive-defeated $?gen95 ) )"))

([rule5_2-defeated] of derived-attribute-rule
   (pos-name rule5_2-defeated-gen629)
   (depends-on declare physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_2] ) ) ) ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen96 & : ( not ( subseq-pos ( create$ rule5_2-defeated rule1 $$$ $?gen96 ) ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen95 ( create$ rule5_2-defeated rule1 $?gen96 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( positive-defeated $?gen95 ) )"))

([rule5_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_2-defeasibly-dot-gen631)
   (depends-on declare psychological_abuse_one_victim physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_2] ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_2 $? ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) ( not ( and ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( positive ~ 2 ) ( negative-overruled $?gen95 & : ( not ( member$ rule5_2 $?gen95 ) ) ) ) ) ) => ?gen93 <- ( psychological_abuse_one_victim ( negative 0 ) )"))

([rule5_2-defeasibly] of derived-attribute-rule
   (pos-name rule5_2-defeasibly-gen633)
   (depends-on declare physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_2] ) ) ) ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen95 & : ( not ( member$ rule5_2 $?gen95 ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) => ?gen93 <- ( psychological_abuse_one_victim ( negative 1 ) ( negative-derivator rule5_2 ?gen100 ) )"))

([rule5_2-overruled-dot] of derived-attribute-rule
   (pos-name rule5_2-overruled-dot-gen635)
   (depends-on declare psychological_abuse_one_victim physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_2] ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen96 ) ( positive-overruled $?gen97 & : ( subseq-pos ( create$ rule5_2-overruled $?gen96 $$$ $?gen97 ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) ( not ( and ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( negative-defeated $?gen95 & : ( not ( member$ rule5_2 $?gen95 ) ) ) ) ) ) => ( calc ( bind $?gen98 ( delete-member$ $?gen97 ( create$ rule5_2-overruled $?gen96 ) ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( positive-overruled $?gen98 ) )"))

([rule5_2-overruled] of derived-attribute-rule
   (pos-name rule5_2-overruled-gen637)
   (depends-on declare physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_2] ) ) ) ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen96 ) ( positive-overruled $?gen97 & : ( not ( subseq-pos ( create$ rule5_2-overruled $?gen96 $$$ $?gen97 ) ) ) ) ( negative-defeated $?gen95 & : ( not ( member$ rule5_2 $?gen95 ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen98 ( create$ rule5_2-overruled $?gen96 $?gen97 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( positive-overruled $?gen98 ) )"))

([rule5_2-support] of derived-attribute-rule
   (pos-name rule5_2-support-gen639)
   (depends-on declare physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_2] ) ) ) ?gen92 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen95 & : ( not ( subseq-pos ( create$ rule5_2 ?gen92 $$$ $?gen95 ) ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen98 ( create$ rule5_2 ?gen92 $?gen95 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( negative-support $?gen98 ) )"))

([rule5_1-defeated-dot] of derived-attribute-rule
   (pos-name rule5_1-defeated-dot-gen641)
   (depends-on declare physical_abuse_one_victim physical_psychological_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_1] ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen87 & : ( subseq-pos ( create$ rule5_1-defeated rule3 $$$ $?gen87 ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) ( not ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ) => ( calc ( bind $?gen86 ( delete-member$ $?gen87 ( create$ rule5_1-defeated rule3 ) ) ) ) ?gen84 <- ( physical_abuse_one_victim ( positive-defeated $?gen86 ) )"))

([rule5_1-defeated] of derived-attribute-rule
   (pos-name rule5_1-defeated-gen643)
   (depends-on declare physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_1] ) ) ) ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen87 & : ( not ( subseq-pos ( create$ rule5_1-defeated rule3 $$$ $?gen87 ) ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen86 ( create$ rule5_1-defeated rule3 $?gen87 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( positive-defeated $?gen86 ) )"))

([rule5_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-dot-gen645)
   (depends-on declare physical_abuse_one_victim physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_1] ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_1 $? ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) ( not ( and ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( positive ~ 2 ) ( negative-overruled $?gen86 & : ( not ( member$ rule5_1 $?gen86 ) ) ) ) ) ) => ?gen84 <- ( physical_abuse_one_victim ( negative 0 ) )"))

([rule5_1-defeasibly] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-gen647)
   (depends-on declare physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_1] ) ) ) ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen86 & : ( not ( member$ rule5_1 $?gen86 ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) => ?gen84 <- ( physical_abuse_one_victim ( negative 1 ) ( negative-derivator rule5_1 ?gen91 ) )"))

([rule5_1-overruled-dot] of derived-attribute-rule
   (pos-name rule5_1-overruled-dot-gen649)
   (depends-on declare physical_abuse_one_victim physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_1] ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen87 ) ( positive-overruled $?gen88 & : ( subseq-pos ( create$ rule5_1-overruled $?gen87 $$$ $?gen88 ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) ( not ( and ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( negative-defeated $?gen86 & : ( not ( member$ rule5_1 $?gen86 ) ) ) ) ) ) => ( calc ( bind $?gen89 ( delete-member$ $?gen88 ( create$ rule5_1-overruled $?gen87 ) ) ) ) ?gen84 <- ( physical_abuse_one_victim ( positive-overruled $?gen89 ) )"))

([rule5_1-overruled] of derived-attribute-rule
   (pos-name rule5_1-overruled-gen651)
   (depends-on declare physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_1] ) ) ) ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen87 ) ( positive-overruled $?gen88 & : ( not ( subseq-pos ( create$ rule5_1-overruled $?gen87 $$$ $?gen88 ) ) ) ) ( negative-defeated $?gen86 & : ( not ( member$ rule5_1 $?gen86 ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen89 ( create$ rule5_1-overruled $?gen87 $?gen88 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( positive-overruled $?gen89 ) )"))

([rule5_1-support] of derived-attribute-rule
   (pos-name rule5_1-support-gen653)
   (depends-on declare physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_1] ) ) ) ?gen83 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen86 & : ( not ( subseq-pos ( create$ rule5_1 ?gen83 $$$ $?gen86 ) ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen89 ( create$ rule5_1 ?gen83 $?gen86 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( negative-support $?gen89 ) )"))

([rule5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5-defeasibly-dot-gen655)
   (depends-on declare physical_psychological_abuse_one_victim lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5] ) ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule5 $? ) ) ( test ( eq ( class ?gen71 ) physical_psychological_abuse_one_victim ) ) ( not ( and ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen77 & : ( >= ?gen77 1 ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( negative ~ 2 ) ( positive-overruled $?gen73 & : ( not ( member$ rule5 $?gen73 ) ) ) ) ) ) => ?gen71 <- ( physical_psychological_abuse_one_victim ( positive 0 ) )"))

([rule5-defeasibly] of derived-attribute-rule
   (pos-name rule5-defeasibly-gen657)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen77 & : ( >= ?gen77 1 ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen73 & : ( not ( member$ rule5 $?gen73 ) ) ) ) ( test ( eq ( class ?gen71 ) physical_psychological_abuse_one_victim ) ) => ?gen71 <- ( physical_psychological_abuse_one_victim ( positive 1 ) ( positive-derivator rule5 ?gen78 ?gen80 ?gen82 ) )"))

([rule5-overruled-dot] of derived-attribute-rule
   (pos-name rule5-overruled-dot-gen659)
   (depends-on declare physical_psychological_abuse_one_victim lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5] ) ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen74 ) ( negative-overruled $?gen75 & : ( subseq-pos ( create$ rule5-overruled $?gen74 $$$ $?gen75 ) ) ) ) ( test ( eq ( class ?gen71 ) physical_psychological_abuse_one_victim ) ) ( not ( and ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen77 & : ( >= ?gen77 1 ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( positive-defeated $?gen73 & : ( not ( member$ rule5 $?gen73 ) ) ) ) ) ) => ( calc ( bind $?gen76 ( delete-member$ $?gen75 ( create$ rule5-overruled $?gen74 ) ) ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( negative-overruled $?gen76 ) )"))

([rule5-overruled] of derived-attribute-rule
   (pos-name rule5-overruled-gen661)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen77 & : ( >= ?gen77 1 ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen74 ) ( negative-overruled $?gen75 & : ( not ( subseq-pos ( create$ rule5-overruled $?gen74 $$$ $?gen75 ) ) ) ) ( positive-defeated $?gen73 & : ( not ( member$ rule5 $?gen73 ) ) ) ) ( test ( eq ( class ?gen71 ) physical_psychological_abuse_one_victim ) ) => ( calc ( bind $?gen76 ( create$ rule5-overruled $?gen74 $?gen75 ) ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( negative-overruled $?gen76 ) )"))

([rule5-support] of derived-attribute-rule
   (pos-name rule5-support-gen663)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5] ) ) ) ?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen73 & : ( not ( subseq-pos ( create$ rule5 ?gen67 ?gen68 ?gen69 $$$ $?gen73 ) ) ) ) ) ( test ( eq ( class ?gen71 ) physical_psychological_abuse_one_victim ) ) => ( calc ( bind $?gen76 ( create$ rule5 ?gen67 ?gen68 ?gen69 $?gen73 ) ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( positive-support $?gen76 ) )"))

([rule4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4-defeasibly-dot-gen665)
   (depends-on declare physical_abuse_more_victim lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4] ) ) ) ?gen57 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule4 $? ) ) ( test ( eq ( class ?gen57 ) physical_abuse_more_victim ) ) ( not ( and ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen57 <- ( physical_abuse_more_victim ( negative ~ 2 ) ( positive-overruled $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ) ) => ?gen57 <- ( physical_abuse_more_victim ( positive 0 ) )"))

([rule4-defeasibly] of derived-attribute-rule
   (pos-name rule4-defeasibly-gen667)
   (depends-on declare lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4] ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen57 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ( test ( eq ( class ?gen57 ) physical_abuse_more_victim ) ) => ?gen57 <- ( physical_abuse_more_victim ( positive 1 ) ( positive-derivator rule4 ?gen64 ?gen66 ) )"))

([rule4-overruled-dot] of derived-attribute-rule
   (pos-name rule4-overruled-dot-gen669)
   (depends-on declare physical_abuse_more_victim lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4] ) ) ) ?gen57 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen60 ) ( negative-overruled $?gen61 & : ( subseq-pos ( create$ rule4-overruled $?gen60 $$$ $?gen61 ) ) ) ) ( test ( eq ( class ?gen57 ) physical_abuse_more_victim ) ) ( not ( and ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen57 <- ( physical_abuse_more_victim ( positive-defeated $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ) ) => ( calc ( bind $?gen62 ( delete-member$ $?gen61 ( create$ rule4-overruled $?gen60 ) ) ) ) ?gen57 <- ( physical_abuse_more_victim ( negative-overruled $?gen62 ) )"))

([rule4-overruled] of derived-attribute-rule
   (pos-name rule4-overruled-gen671)
   (depends-on declare lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4] ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen57 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen60 ) ( negative-overruled $?gen61 & : ( not ( subseq-pos ( create$ rule4-overruled $?gen60 $$$ $?gen61 ) ) ) ) ( positive-defeated $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ( test ( eq ( class ?gen57 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen62 ( create$ rule4-overruled $?gen60 $?gen61 ) ) ) ?gen57 <- ( physical_abuse_more_victim ( negative-overruled $?gen62 ) )"))

([rule4-support] of derived-attribute-rule
   (pos-name rule4-support-gen673)
   (depends-on declare lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4] ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ?gen57 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen59 & : ( not ( subseq-pos ( create$ rule4 ?gen54 ?gen55 $$$ $?gen59 ) ) ) ) ) ( test ( eq ( class ?gen57 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen62 ( create$ rule4 ?gen54 ?gen55 $?gen59 ) ) ) ?gen57 <- ( physical_abuse_more_victim ( positive-support $?gen62 ) )"))

([rule3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3-defeasibly-dot-gen675)
   (depends-on declare physical_abuse_one_victim lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3] ) ) ) ?gen44 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule3 $? ) ) ( test ( eq ( class ?gen44 ) physical_abuse_one_victim ) ) ( not ( and ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen44 <- ( physical_abuse_one_victim ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ) ) => ?gen44 <- ( physical_abuse_one_victim ( positive 0 ) )"))

([rule3-defeasibly] of derived-attribute-rule
   (pos-name rule3-defeasibly-gen677)
   (depends-on declare lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen44 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) physical_abuse_one_victim ) ) => ?gen44 <- ( physical_abuse_one_victim ( positive 1 ) ( positive-derivator rule3 ?gen51 ?gen53 ) )"))

([rule3-overruled-dot] of derived-attribute-rule
   (pos-name rule3-overruled-dot-gen679)
   (depends-on declare physical_abuse_one_victim lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3] ) ) ) ?gen44 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( subseq-pos ( create$ rule3-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( test ( eq ( class ?gen44 ) physical_abuse_one_victim ) ) ( not ( and ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen44 <- ( physical_abuse_one_victim ( positive-defeated $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ) ) => ( calc ( bind $?gen49 ( delete-member$ $?gen48 ( create$ rule3-overruled $?gen47 ) ) ) ) ?gen44 <- ( physical_abuse_one_victim ( negative-overruled $?gen49 ) )"))

([rule3-overruled] of derived-attribute-rule
   (pos-name rule3-overruled-gen681)
   (depends-on declare lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen44 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( not ( subseq-pos ( create$ rule3-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( positive-defeated $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen49 ( create$ rule3-overruled $?gen47 $?gen48 ) ) ) ?gen44 <- ( physical_abuse_one_victim ( negative-overruled $?gen49 ) )"))

([rule3-support] of derived-attribute-rule
   (pos-name rule3-support-gen683)
   (depends-on declare lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3] ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ?gen44 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen46 & : ( not ( subseq-pos ( create$ rule3 ?gen41 ?gen42 $$$ $?gen46 ) ) ) ) ) ( test ( eq ( class ?gen44 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen49 ( create$ rule3 ?gen41 ?gen42 $?gen46 ) ) ) ?gen44 <- ( physical_abuse_one_victim ( positive-support $?gen49 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen685)
   (depends-on declare psychological_abuse_more_victims lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen31 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen31 ) psychological_abuse_more_victims ) ) ( not ( and ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen31 <- ( psychological_abuse_more_victims ( negative ~ 2 ) ( positive-overruled $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ) ) => ?gen31 <- ( psychological_abuse_more_victims ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen687)
   (depends-on declare lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen31 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ( test ( eq ( class ?gen31 ) psychological_abuse_more_victims ) ) => ?gen31 <- ( psychological_abuse_more_victims ( positive 1 ) ( positive-derivator rule2 ?gen38 ?gen40 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen689)
   (depends-on declare psychological_abuse_more_victims lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen31 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( negative-support $?gen34 ) ( negative-overruled $?gen35 & : ( subseq-pos ( create$ rule2-overruled $?gen34 $$$ $?gen35 ) ) ) ) ( test ( eq ( class ?gen31 ) psychological_abuse_more_victims ) ) ( not ( and ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen31 <- ( psychological_abuse_more_victims ( positive-defeated $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ) ) => ( calc ( bind $?gen36 ( delete-member$ $?gen35 ( create$ rule2-overruled $?gen34 ) ) ) ) ?gen31 <- ( psychological_abuse_more_victims ( negative-overruled $?gen36 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen691)
   (depends-on declare lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen31 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( negative-support $?gen34 ) ( negative-overruled $?gen35 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen34 $$$ $?gen35 ) ) ) ) ( positive-defeated $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ( test ( eq ( class ?gen31 ) psychological_abuse_more_victims ) ) => ( calc ( bind $?gen36 ( create$ rule2-overruled $?gen34 $?gen35 ) ) ) ?gen31 <- ( psychological_abuse_more_victims ( negative-overruled $?gen36 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen693)
   (depends-on declare lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ?gen31 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive-support $?gen33 & : ( not ( subseq-pos ( create$ rule2 ?gen28 ?gen29 $$$ $?gen33 ) ) ) ) ) ( test ( eq ( class ?gen31 ) psychological_abuse_more_victims ) ) => ( calc ( bind $?gen36 ( create$ rule2 ?gen28 ?gen29 $?gen33 ) ) ) ?gen31 <- ( psychological_abuse_more_victims ( positive-support $?gen36 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen695)
   (depends-on declare psychological_abuse_one_victim lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen18 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen18 ) psychological_abuse_one_victim ) ) ( not ( and ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen18 <- ( psychological_abuse_one_victim ( negative ~ 2 ) ( positive-overruled $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ) ) => ?gen18 <- ( psychological_abuse_one_victim ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen697)
   (depends-on declare lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen18 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ( test ( eq ( class ?gen18 ) psychological_abuse_one_victim ) ) => ?gen18 <- ( psychological_abuse_one_victim ( positive 1 ) ( positive-derivator rule1 ?gen25 ?gen27 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen699)
   (depends-on declare psychological_abuse_one_victim lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen18 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen21 ) ( negative-overruled $?gen22 & : ( subseq-pos ( create$ rule1-overruled $?gen21 $$$ $?gen22 ) ) ) ) ( test ( eq ( class ?gen18 ) psychological_abuse_one_victim ) ) ( not ( and ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen18 <- ( psychological_abuse_one_victim ( positive-defeated $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ) ) => ( calc ( bind $?gen23 ( delete-member$ $?gen22 ( create$ rule1-overruled $?gen21 ) ) ) ) ?gen18 <- ( psychological_abuse_one_victim ( negative-overruled $?gen23 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen701)
   (depends-on declare lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen18 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen21 ) ( negative-overruled $?gen22 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen21 $$$ $?gen22 ) ) ) ) ( positive-defeated $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ( test ( eq ( class ?gen18 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen23 ( create$ rule1-overruled $?gen21 $?gen22 ) ) ) ?gen18 <- ( psychological_abuse_one_victim ( negative-overruled $?gen23 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen703)
   (depends-on declare lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ?gen18 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen20 & : ( not ( subseq-pos ( create$ rule1 ?gen15 ?gen16 $$$ $?gen20 ) ) ) ) ) ( test ( eq ( class ?gen18 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen23 ( create$ rule1 ?gen15 ?gen16 $?gen20 ) ) ) ?gen18 <- ( psychological_abuse_one_victim ( positive-support $?gen23 ) )"))

([pn_life_threatening_torture_max-deductive] of ntm-deductive-rule
   (pos-name pn_life_threatening_torture_max-deductive-gen354)
   (depends-on life_threatening_torture max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen315 <- ( life_threatening_torture ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_life_threatening_torture_max-deductive-gen354 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen315 ) ( is-a life_threatening_torture ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pn_life_threatening_torture_min-deductive] of ntm-deductive-rule
   (pos-name pn_life_threatening_torture_min-deductive-gen353)
   (depends-on life_threatening_torture min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen306 <- ( life_threatening_torture ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_life_threatening_torture_min-deductive-gen353 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen306 ) ( is-a life_threatening_torture ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_phy_psy_more_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_phy_psy_more_person_max-deductive-gen352)
   (depends-on physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen297 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 15 ) ) ) => ( max_imprisonment ( value 15 ) )")
   (production-rule "( defrule pn_phy_psy_more_person_max-deductive-gen352 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen297 ) ( is-a physical_psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 15 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ( make-instance ?oid of max_imprisonment ( value 15 ) ) )")
   (derived-class max_imprisonment))

([pn_phy_psy_more_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_phy_psy_more_person_min-deductive-gen351)
   (depends-on physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen288 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_phy_psy_more_person_min-deductive-gen351 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen288 ) ( is-a physical_psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([pn_phy_psy_one_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_phy_psy_one_person_max-deductive-gen350)
   (depends-on physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen279 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 15 ) ) ) => ( max_imprisonment ( value 15 ) )")
   (production-rule "( defrule pn_phy_psy_one_person_max-deductive-gen350 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen279 ) ( is-a physical_psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 15 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ( make-instance ?oid of max_imprisonment ( value 15 ) ) )")
   (derived-class max_imprisonment))

([pn_phy_psy_one_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_phy_psy_one_person_min-deductive-gen349)
   (depends-on physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen270 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_phy_psy_one_person_min-deductive-gen349 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen270 ) ( is-a physical_psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([pn_psy_more_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_psy_more_person_max-deductive-gen348)
   (depends-on psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen261 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 10 ) ) ) => ( max_imprisonment ( value 10 ) )")
   (production-rule "( defrule pn_psy_more_person_max-deductive-gen348 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen261 ) ( is-a psychological_abuse_more_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 10 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 10 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 10 ) ) ) ( make-instance ?oid of max_imprisonment ( value 10 ) ) )")
   (derived-class max_imprisonment))

([pn_psy_more_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_psy_more_person_min-deductive-gen347)
   (depends-on psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen252 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 5 ) ) ) => ( min_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_psy_more_person_min-deductive-gen347 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen252 ) ( is-a psychological_abuse_more_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 5 ) ) ) ( make-instance ?oid of min_imprisonment ( value 5 ) ) )")
   (derived-class min_imprisonment))

([pn_phy_more_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_phy_more_person_max-deductive-gen346)
   (depends-on physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen243 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 6 ) ) ) => ( max_imprisonment ( value 6 ) )")
   (production-rule "( defrule pn_phy_more_person_max-deductive-gen346 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen243 ) ( is-a physical_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 6 ) ) ) ( make-instance ?oid of max_imprisonment ( value 6 ) ) )")
   (derived-class max_imprisonment))

([pn_phy_more_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_phy_more_person_min-deductive-gen345)
   (depends-on physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen234 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 3 ) ) ) => ( min_imprisonment ( value 3 ) )")
   (production-rule "( defrule pn_phy_more_person_min-deductive-gen345 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen234 ) ( is-a physical_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ( make-instance ?oid of min_imprisonment ( value 3 ) ) )")
   (derived-class min_imprisonment))

([pn_phy_one_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_phy_one_person_max-deductive-gen344)
   (depends-on physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen225 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 6 ) ) ) => ( max_imprisonment ( value 6 ) )")
   (production-rule "( defrule pn_phy_one_person_max-deductive-gen344 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen225 ) ( is-a physical_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 6 ) ) ) ( make-instance ?oid of max_imprisonment ( value 6 ) ) )")
   (derived-class max_imprisonment))

([pn_phy_one_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_phy_one_person_min-deductive-gen343)
   (depends-on physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen216 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 3 ) ) ) => ( min_imprisonment ( value 3 ) )")
   (production-rule "( defrule pn_phy_one_person_min-deductive-gen343 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen216 ) ( is-a physical_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ( make-instance ?oid of min_imprisonment ( value 3 ) ) )")
   (derived-class min_imprisonment))

([pn_psy_one_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_psy_one_person_max-deductive-gen342)
   (depends-on psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen207 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_psy_one_person_max-deductive-gen342 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen207 ) ( is-a psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pn_psy_one_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_psy_one_person_min-deductive-gen341)
   (depends-on psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen198 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_psy_one_person_min-deductive-gen341 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen198 ) ( is-a psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([rule7_6-deductive] of ntm-deductive-rule
   (pos-name rule7_6-deductive-gen340)
   (depends-on life_threatening_torture psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (deductive-rule "?gen189 <- ( life_threatening_torture ( defendant ?Defendant ) ) ( not ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ) => ( psychological_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_6-deductive-gen340 ( declare ( salience ( calc-salience psychological_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen189 ) ( is-a life_threatening_torture ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_one_victim))

([rule7_5-deductive] of ntm-deductive-rule
   (pos-name rule7_5-deductive-gen339)
   (depends-on life_threatening_torture psychological_abuse_more_victim)
   (implies psychological_abuse_more_victim)
   (deductive-rule "?gen180 <- ( life_threatening_torture ( defendant ?Defendant ) ) ( not ( psychological_abuse_more_victim ( defendant ?Defendant ) ) ) => ( psychological_abuse_more_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_5-deductive-gen339 ( declare ( salience ( calc-salience psychological_abuse_more_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen180 ) ( is-a life_threatening_torture ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_more_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_more_victim ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_more_victim ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_more_victim))

([rule7_4-deductive] of ntm-deductive-rule
   (pos-name rule7_4-deductive-gen338)
   (depends-on life_threatening_torture physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (deductive-rule "?gen171 <- ( life_threatening_torture ( defendant ?Defendant ) ) ( not ( physical_abuse_one_victim ( defendant ?Defendant ) ) ) => ( physical_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_4-deductive-gen338 ( declare ( salience ( calc-salience physical_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen171 ) ( is-a life_threatening_torture ) ( defendant ?Defendant ) ) ( not ( object ( is-a physical_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of physical_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_abuse_one_victim))

([rule7_3-deductive] of ntm-deductive-rule
   (pos-name rule7_3-deductive-gen337)
   (depends-on life_threatening_torture physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (deductive-rule "?gen162 <- ( life_threatening_torture ( defendant ?Defendant ) ) ( not ( physical_abuse_more_victim ( defendant ?Defendant ) ) ) => ( physical_abuse_more_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_3-deductive-gen337 ( declare ( salience ( calc-salience physical_abuse_more_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen162 ) ( is-a life_threatening_torture ) ( defendant ?Defendant ) ) ( not ( object ( is-a physical_abuse_more_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_abuse_more_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_abuse_more_victim ?Defendant ) ) ) ( make-instance ?oid of physical_abuse_more_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_abuse_more_victim))

([rule7_2-deductive] of ntm-deductive-rule
   (pos-name rule7_2-deductive-gen336)
   (depends-on life_threatening_torture physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (deductive-rule "?gen153 <- ( life_threatening_torture ( defendant ?Defendant ) ) ( not ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ) => ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_2-deductive-gen336 ( declare ( salience ( calc-salience physical_psychological_abuse_more_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen153 ) ( is-a life_threatening_torture ) ( defendant ?Defendant ) ) ( not ( object ( is-a physical_psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_more_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_more_victim ?Defendant ) ) ) ( make-instance ?oid of physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_psychological_abuse_more_victim))

([rule7_1-deductive] of ntm-deductive-rule
   (pos-name rule7_1-deductive-gen335)
   (depends-on life_threatening_torture physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (deductive-rule "?gen144 <- ( life_threatening_torture ( defendant ?Defendant ) ) ( not ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ) => ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7_1-deductive-gen335 ( declare ( salience ( calc-salience physical_psychological_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen144 ) ( is-a life_threatening_torture ) ( defendant ?Defendant ) ) ( not ( object ( is-a physical_psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_psychological_abuse_one_victim))

([rule7-deductive] of ntm-deductive-rule
   (pos-name rule7-deductive-gen334)
   (depends-on lc:case life_threatening_torture)
   (implies life_threatening_torture)
   (deductive-rule "?gen135 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ( not ( life_threatening_torture ( defendant ?Defendant ) ) ) => ( life_threatening_torture ( defendant ?Defendant ) )")
   (production-rule "( defrule rule7-deductive-gen334 ( declare ( salience ( calc-salience life_threatening_torture ) ) ) ( run-deductive-rules ) ( object ( name ?gen135 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ( not ( object ( is-a life_threatening_torture ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat life_threatening_torture ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat life_threatening_torture ?Defendant ) ) ) ( make-instance ?oid of life_threatening_torture ( defendant ?Defendant ) ) )")
   (derived-class life_threatening_torture))

([rule6_2-deductive] of ntm-deductive-rule
   (pos-name rule6_2-deductive-gen333)
   (depends-on physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (deductive-rule "?gen126 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ( not ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ) => ( psychological_abuse_more_victims ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_2-deductive-gen333 ( declare ( salience ( calc-salience psychological_abuse_more_victims ) ) ) ( run-deductive-rules ) ( object ( name ?gen126 ) ( is-a physical_psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_more_victims ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_more_victims ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_more_victims ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_more_victims ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_more_victims))

([rule6_1-deductive] of ntm-deductive-rule
   (pos-name rule6_1-deductive-gen332)
   (depends-on physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (deductive-rule "?gen117 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ( not ( physical_abuse_more_victim ( defendant ?Defendant ) ) ) => ( physical_abuse_more_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_1-deductive-gen332 ( declare ( salience ( calc-salience physical_abuse_more_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen117 ) ( is-a physical_psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a physical_abuse_more_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_abuse_more_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_abuse_more_victim ?Defendant ) ) ) ( make-instance ?oid of physical_abuse_more_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_abuse_more_victim))

([rule6-deductive] of ntm-deductive-rule
   (pos-name rule6-deductive-gen331)
   (depends-on lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (deductive-rule "?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ) => ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6-deductive-gen331 ( declare ( salience ( calc-salience physical_psychological_abuse_more_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen101 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen102 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( object ( name ?gen103 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( object ( is-a physical_psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_more_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_more_victim ?Defendant ) ) ) ( make-instance ?oid of physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_psychological_abuse_more_victim))

([rule5_2-deductive] of ntm-deductive-rule
   (pos-name rule5_2-deductive-gen330)
   (depends-on physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (deductive-rule "?gen92 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ) => ( psychological_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_2-deductive-gen330 ( declare ( salience ( calc-salience psychological_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen92 ) ( is-a physical_psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_one_victim))

([rule5_1-deductive] of ntm-deductive-rule
   (pos-name rule5_1-deductive-gen329)
   (depends-on physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (deductive-rule "?gen83 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( physical_abuse_one_victim ( defendant ?Defendant ) ) ) => ( physical_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_1-deductive-gen329 ( declare ( salience ( calc-salience physical_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen83 ) ( is-a physical_psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a physical_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of physical_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_abuse_one_victim))

([rule5-deductive] of ntm-deductive-rule
   (pos-name rule5-deductive-gen328)
   (depends-on lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (deductive-rule "?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ) => ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5-deductive-gen328 ( declare ( salience ( calc-salience physical_psychological_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen67 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen68 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( object ( name ?gen69 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( object ( is-a physical_psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_psychological_abuse_one_victim))

([rule4-deductive] of ntm-deductive-rule
   (pos-name rule4-deductive-gen327)
   (depends-on lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (deductive-rule "?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( physical_abuse_more_victim ( defendant ?Defendant ) ) ) => ( physical_abuse_more_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4-deductive-gen327 ( declare ( salience ( calc-salience physical_abuse_more_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen54 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen55 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( object ( is-a physical_abuse_more_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_abuse_more_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_abuse_more_victim ?Defendant ) ) ) ( make-instance ?oid of physical_abuse_more_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_abuse_more_victim))

([rule3-deductive] of ntm-deductive-rule
   (pos-name rule3-deductive-gen326)
   (depends-on lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (deductive-rule "?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( physical_abuse_one_victim ( defendant ?Defendant ) ) ) => ( physical_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3-deductive-gen326 ( declare ( salience ( calc-salience physical_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen41 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen42 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( object ( is-a physical_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of physical_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_abuse_one_victim))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen325)
   (depends-on lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (deductive-rule "?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ) => ( psychological_abuse_more_victims ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen325 ( declare ( salience ( calc-salience psychological_abuse_more_victims ) ) ) ( run-deductive-rules ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen29 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( object ( is-a psychological_abuse_more_victims ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_more_victims ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_more_victims ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_more_victims ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_more_victims))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen324)
   (depends-on lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ) => ( psychological_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen324 ( declare ( salience ( calc-salience psychological_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( object ( is-a psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_one_victim))

