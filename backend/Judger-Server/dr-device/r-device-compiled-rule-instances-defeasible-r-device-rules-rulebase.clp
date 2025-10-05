([pn_movement_restrct_death_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-defeasibly-dot-gen344)
   (depends-on declare max_imprisonment movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_death_max] ) ) ) ?gen304 <- ( max_imprisonment ( value 12 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_death_max $? ) ) ( test ( eq ( class ?gen304 ) max_imprisonment ) ) ( not ( and ?gen311 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen306 & : ( not ( member$ pn_movement_restrct_death_max $?gen306 ) ) ) ) ) ) => ?gen304 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_death_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-defeasibly-gen346)
   (depends-on declare movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_death_max] ) ) ) ?gen311 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( max_imprisonment ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen306 & : ( not ( member$ pn_movement_restrct_death_max $?gen306 ) ) ) ) ( test ( eq ( class ?gen304 ) max_imprisonment ) ) => ?gen304 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_death_max ?gen311 ) )"))

([pn_movement_restrct_death_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-overruled-dot-gen348)
   (depends-on declare max_imprisonment movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_death_max] ) ) ) ?gen304 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen307 ) ( negative-overruled $?gen308 & : ( subseq-pos ( create$ pn_movement_restrct_death_max-overruled $?gen307 $$$ $?gen308 ) ) ) ) ( test ( eq ( class ?gen304 ) max_imprisonment ) ) ( not ( and ?gen311 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( max_imprisonment ( positive-defeated $?gen306 & : ( not ( member$ pn_movement_restrct_death_max $?gen306 ) ) ) ) ) ) => ( calc ( bind $?gen309 ( delete-member$ $?gen308 ( create$ pn_movement_restrct_death_max-overruled $?gen307 ) ) ) ) ?gen304 <- ( max_imprisonment ( negative-overruled $?gen309 ) )"))

([pn_movement_restrct_death_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-overruled-gen350)
   (depends-on declare movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_death_max] ) ) ) ?gen311 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen310 & : ( >= ?gen310 1 ) ) ) ?gen304 <- ( max_imprisonment ( value 12 ) ( negative-support $?gen307 ) ( negative-overruled $?gen308 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_max-overruled $?gen307 $$$ $?gen308 ) ) ) ) ( positive-defeated $?gen306 & : ( not ( member$ pn_movement_restrct_death_max $?gen306 ) ) ) ) ( test ( eq ( class ?gen304 ) max_imprisonment ) ) => ( calc ( bind $?gen309 ( create$ pn_movement_restrct_death_max-overruled $?gen307 $?gen308 ) ) ) ?gen304 <- ( max_imprisonment ( negative-overruled $?gen309 ) )"))

([pn_movement_restrct_death_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_max-support-gen352)
   (depends-on declare movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_death_max] ) ) ) ?gen303 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen304 <- ( max_imprisonment ( value 12 ) ( positive-support $?gen306 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_max ?gen303 $$$ $?gen306 ) ) ) ) ) ( test ( eq ( class ?gen304 ) max_imprisonment ) ) => ( calc ( bind $?gen309 ( create$ pn_movement_restrct_death_max ?gen303 $?gen306 ) ) ) ?gen304 <- ( max_imprisonment ( positive-support $?gen309 ) )"))

([pn_movement_restrct_death_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-defeasibly-dot-gen354)
   (depends-on declare min_imprisonment movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_death_min] ) ) ) ?gen295 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_death_min $? ) ) ( test ( eq ( class ?gen295 ) min_imprisonment ) ) ( not ( and ?gen302 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen297 & : ( not ( member$ pn_movement_restrct_death_min $?gen297 ) ) ) ) ) ) => ?gen295 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_death_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-defeasibly-gen356)
   (depends-on declare movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_death_min] ) ) ) ?gen302 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen297 & : ( not ( member$ pn_movement_restrct_death_min $?gen297 ) ) ) ) ( test ( eq ( class ?gen295 ) min_imprisonment ) ) => ?gen295 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_death_min ?gen302 ) )"))

([pn_movement_restrct_death_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-overruled-dot-gen358)
   (depends-on declare min_imprisonment movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_death_min] ) ) ) ?gen295 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen298 ) ( negative-overruled $?gen299 & : ( subseq-pos ( create$ pn_movement_restrct_death_min-overruled $?gen298 $$$ $?gen299 ) ) ) ) ( test ( eq ( class ?gen295 ) min_imprisonment ) ) ( not ( and ?gen302 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( min_imprisonment ( positive-defeated $?gen297 & : ( not ( member$ pn_movement_restrct_death_min $?gen297 ) ) ) ) ) ) => ( calc ( bind $?gen300 ( delete-member$ $?gen299 ( create$ pn_movement_restrct_death_min-overruled $?gen298 ) ) ) ) ?gen295 <- ( min_imprisonment ( negative-overruled $?gen300 ) )"))

([pn_movement_restrct_death_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-overruled-gen360)
   (depends-on declare movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_death_min] ) ) ) ?gen302 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen301 & : ( >= ?gen301 1 ) ) ) ?gen295 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen298 ) ( negative-overruled $?gen299 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_min-overruled $?gen298 $$$ $?gen299 ) ) ) ) ( positive-defeated $?gen297 & : ( not ( member$ pn_movement_restrct_death_min $?gen297 ) ) ) ) ( test ( eq ( class ?gen295 ) min_imprisonment ) ) => ( calc ( bind $?gen300 ( create$ pn_movement_restrct_death_min-overruled $?gen298 $?gen299 ) ) ) ?gen295 <- ( min_imprisonment ( negative-overruled $?gen300 ) )"))

([pn_movement_restrct_death_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_death_min-support-gen362)
   (depends-on declare movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_death_min] ) ) ) ?gen294 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen295 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen297 & : ( not ( subseq-pos ( create$ pn_movement_restrct_death_min ?gen294 $$$ $?gen297 ) ) ) ) ) ( test ( eq ( class ?gen295 ) min_imprisonment ) ) => ( calc ( bind $?gen300 ( create$ pn_movement_restrct_death_min ?gen294 $?gen297 ) ) ) ?gen295 <- ( min_imprisonment ( positive-support $?gen300 ) )"))

([pn_movement_restrct_life_threatening_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-defeasibly-dot-gen364)
   (depends-on declare max_imprisonment movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen286 <- ( max_imprisonment ( value 8 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_max $? ) ) ( test ( eq ( class ?gen286 ) max_imprisonment ) ) ( not ( and ?gen293 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen288 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen288 ) ) ) ) ) ) => ?gen286 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_life_threatening_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-defeasibly-gen366)
   (depends-on declare movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen293 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( max_imprisonment ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen288 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen288 ) ) ) ) ( test ( eq ( class ?gen286 ) max_imprisonment ) ) => ?gen286 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_max ?gen293 ) )"))

([pn_movement_restrct_life_threatening_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-overruled-dot-gen368)
   (depends-on declare max_imprisonment movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen286 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen289 ) ( negative-overruled $?gen290 & : ( subseq-pos ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen289 $$$ $?gen290 ) ) ) ) ( test ( eq ( class ?gen286 ) max_imprisonment ) ) ( not ( and ?gen293 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( max_imprisonment ( positive-defeated $?gen288 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen288 ) ) ) ) ) ) => ( calc ( bind $?gen291 ( delete-member$ $?gen290 ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen289 ) ) ) ) ?gen286 <- ( max_imprisonment ( negative-overruled $?gen291 ) )"))

([pn_movement_restrct_life_threatening_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-overruled-gen370)
   (depends-on declare movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen293 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen292 & : ( >= ?gen292 1 ) ) ) ?gen286 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen289 ) ( negative-overruled $?gen290 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen289 $$$ $?gen290 ) ) ) ) ( positive-defeated $?gen288 & : ( not ( member$ pn_movement_restrct_life_threatening_max $?gen288 ) ) ) ) ( test ( eq ( class ?gen286 ) max_imprisonment ) ) => ( calc ( bind $?gen291 ( create$ pn_movement_restrct_life_threatening_max-overruled $?gen289 $?gen290 ) ) ) ?gen286 <- ( max_imprisonment ( negative-overruled $?gen291 ) )"))

([pn_movement_restrct_life_threatening_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_max-support-gen372)
   (depends-on declare movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_life_threatening_max] ) ) ) ?gen285 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen286 <- ( max_imprisonment ( value 8 ) ( positive-support $?gen288 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_max ?gen285 $$$ $?gen288 ) ) ) ) ) ( test ( eq ( class ?gen286 ) max_imprisonment ) ) => ( calc ( bind $?gen291 ( create$ pn_movement_restrct_life_threatening_max ?gen285 $?gen288 ) ) ) ?gen286 <- ( max_imprisonment ( positive-support $?gen291 ) )"))

([pn_movement_restrct_life_threatening_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-defeasibly-dot-gen374)
   (depends-on declare min_imprisonment movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen277 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_min $? ) ) ( test ( eq ( class ?gen277 ) min_imprisonment ) ) ( not ( and ?gen284 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen279 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen279 ) ) ) ) ) ) => ?gen277 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_life_threatening_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-defeasibly-gen376)
   (depends-on declare movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen284 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen279 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen279 ) ) ) ) ( test ( eq ( class ?gen277 ) min_imprisonment ) ) => ?gen277 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_life_threatening_min ?gen284 ) )"))

([pn_movement_restrct_life_threatening_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-overruled-dot-gen378)
   (depends-on declare min_imprisonment movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen277 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen280 ) ( negative-overruled $?gen281 & : ( subseq-pos ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen280 $$$ $?gen281 ) ) ) ) ( test ( eq ( class ?gen277 ) min_imprisonment ) ) ( not ( and ?gen284 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( min_imprisonment ( positive-defeated $?gen279 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen279 ) ) ) ) ) ) => ( calc ( bind $?gen282 ( delete-member$ $?gen281 ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen280 ) ) ) ) ?gen277 <- ( min_imprisonment ( negative-overruled $?gen282 ) )"))

([pn_movement_restrct_life_threatening_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-overruled-gen380)
   (depends-on declare movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen284 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen283 & : ( >= ?gen283 1 ) ) ) ?gen277 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen280 ) ( negative-overruled $?gen281 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen280 $$$ $?gen281 ) ) ) ) ( positive-defeated $?gen279 & : ( not ( member$ pn_movement_restrct_life_threatening_min $?gen279 ) ) ) ) ( test ( eq ( class ?gen277 ) min_imprisonment ) ) => ( calc ( bind $?gen282 ( create$ pn_movement_restrct_life_threatening_min-overruled $?gen280 $?gen281 ) ) ) ?gen277 <- ( min_imprisonment ( negative-overruled $?gen282 ) )"))

([pn_movement_restrct_life_threatening_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_life_threatening_min-support-gen382)
   (depends-on declare movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_life_threatening_min] ) ) ) ?gen276 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen277 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen279 & : ( not ( subseq-pos ( create$ pn_movement_restrct_life_threatening_min ?gen276 $$$ $?gen279 ) ) ) ) ) ( test ( eq ( class ?gen277 ) min_imprisonment ) ) => ( calc ( bind $?gen282 ( create$ pn_movement_restrct_life_threatening_min ?gen276 $?gen279 ) ) ) ?gen277 <- ( min_imprisonment ( positive-support $?gen282 ) )"))

([pn_movement_restrct_on_duty_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-defeasibly-dot-gen384)
   (depends-on declare max_imprisonment movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_on_duty_max] ) ) ) ?gen268 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_max $? ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) ( not ( and ?gen275 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen270 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen270 ) ) ) ) ) ) => ?gen268 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_on_duty_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-defeasibly-gen386)
   (depends-on declare movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_on_duty_max] ) ) ) ?gen275 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen270 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen270 ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) => ?gen268 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_max ?gen275 ) )"))

([pn_movement_restrct_on_duty_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-overruled-dot-gen388)
   (depends-on declare max_imprisonment movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_on_duty_max] ) ) ) ?gen268 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen271 ) ( negative-overruled $?gen272 & : ( subseq-pos ( create$ pn_movement_restrct_on_duty_max-overruled $?gen271 $$$ $?gen272 ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) ( not ( and ?gen275 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( positive-defeated $?gen270 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen270 ) ) ) ) ) ) => ( calc ( bind $?gen273 ( delete-member$ $?gen272 ( create$ pn_movement_restrct_on_duty_max-overruled $?gen271 ) ) ) ) ?gen268 <- ( max_imprisonment ( negative-overruled $?gen273 ) )"))

([pn_movement_restrct_on_duty_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-overruled-gen390)
   (depends-on declare movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_on_duty_max] ) ) ) ?gen275 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen274 & : ( >= ?gen274 1 ) ) ) ?gen268 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen271 ) ( negative-overruled $?gen272 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_max-overruled $?gen271 $$$ $?gen272 ) ) ) ) ( positive-defeated $?gen270 & : ( not ( member$ pn_movement_restrct_on_duty_max $?gen270 ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) => ( calc ( bind $?gen273 ( create$ pn_movement_restrct_on_duty_max-overruled $?gen271 $?gen272 ) ) ) ?gen268 <- ( max_imprisonment ( negative-overruled $?gen273 ) )"))

([pn_movement_restrct_on_duty_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_max-support-gen392)
   (depends-on declare movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_on_duty_max] ) ) ) ?gen267 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen268 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen270 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_max ?gen267 $$$ $?gen270 ) ) ) ) ) ( test ( eq ( class ?gen268 ) max_imprisonment ) ) => ( calc ( bind $?gen273 ( create$ pn_movement_restrct_on_duty_max ?gen267 $?gen270 ) ) ) ?gen268 <- ( max_imprisonment ( positive-support $?gen273 ) )"))

([pn_movement_restrct_on_duty_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-defeasibly-dot-gen394)
   (depends-on declare min_imprisonment movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_on_duty_min] ) ) ) ?gen259 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_min $? ) ) ( test ( eq ( class ?gen259 ) min_imprisonment ) ) ( not ( and ?gen266 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen261 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen261 ) ) ) ) ) ) => ?gen259 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_on_duty_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-defeasibly-gen396)
   (depends-on declare movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_on_duty_min] ) ) ) ?gen266 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen261 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen261 ) ) ) ) ( test ( eq ( class ?gen259 ) min_imprisonment ) ) => ?gen259 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_on_duty_min ?gen266 ) )"))

([pn_movement_restrct_on_duty_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-overruled-dot-gen398)
   (depends-on declare min_imprisonment movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_on_duty_min] ) ) ) ?gen259 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen262 ) ( negative-overruled $?gen263 & : ( subseq-pos ( create$ pn_movement_restrct_on_duty_min-overruled $?gen262 $$$ $?gen263 ) ) ) ) ( test ( eq ( class ?gen259 ) min_imprisonment ) ) ( not ( and ?gen266 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( min_imprisonment ( positive-defeated $?gen261 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen261 ) ) ) ) ) ) => ( calc ( bind $?gen264 ( delete-member$ $?gen263 ( create$ pn_movement_restrct_on_duty_min-overruled $?gen262 ) ) ) ) ?gen259 <- ( min_imprisonment ( negative-overruled $?gen264 ) )"))

([pn_movement_restrct_on_duty_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-overruled-gen400)
   (depends-on declare movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_on_duty_min] ) ) ) ?gen266 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen265 & : ( >= ?gen265 1 ) ) ) ?gen259 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen262 ) ( negative-overruled $?gen263 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_min-overruled $?gen262 $$$ $?gen263 ) ) ) ) ( positive-defeated $?gen261 & : ( not ( member$ pn_movement_restrct_on_duty_min $?gen261 ) ) ) ) ( test ( eq ( class ?gen259 ) min_imprisonment ) ) => ( calc ( bind $?gen264 ( create$ pn_movement_restrct_on_duty_min-overruled $?gen262 $?gen263 ) ) ) ?gen259 <- ( min_imprisonment ( negative-overruled $?gen264 ) )"))

([pn_movement_restrct_on_duty_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_on_duty_min-support-gen402)
   (depends-on declare movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_on_duty_min] ) ) ) ?gen258 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen259 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen261 & : ( not ( subseq-pos ( create$ pn_movement_restrct_on_duty_min ?gen258 $$$ $?gen261 ) ) ) ) ) ( test ( eq ( class ?gen259 ) min_imprisonment ) ) => ( calc ( bind $?gen264 ( create$ pn_movement_restrct_on_duty_min ?gen258 $?gen261 ) ) ) ?gen259 <- ( min_imprisonment ( positive-support $?gen264 ) )"))

([pn_movement_restrct_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-defeasibly-dot-gen404)
   (depends-on declare max_imprisonment movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_max] ) ) ) ?gen250 <- ( max_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_max $? ) ) ( test ( eq ( class ?gen250 ) max_imprisonment ) ) ( not ( and ?gen257 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen252 & : ( not ( member$ pn_movement_restrct_max $?gen252 ) ) ) ) ) ) => ?gen250 <- ( max_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_max-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-defeasibly-gen406)
   (depends-on declare movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_max] ) ) ) ?gen257 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( max_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen252 & : ( not ( member$ pn_movement_restrct_max $?gen252 ) ) ) ) ( test ( eq ( class ?gen250 ) max_imprisonment ) ) => ?gen250 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_max ?gen257 ) )"))

([pn_movement_restrct_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-overruled-dot-gen408)
   (depends-on declare max_imprisonment movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_max] ) ) ) ?gen250 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen253 ) ( negative-overruled $?gen254 & : ( subseq-pos ( create$ pn_movement_restrct_max-overruled $?gen253 $$$ $?gen254 ) ) ) ) ( test ( eq ( class ?gen250 ) max_imprisonment ) ) ( not ( and ?gen257 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( max_imprisonment ( positive-defeated $?gen252 & : ( not ( member$ pn_movement_restrct_max $?gen252 ) ) ) ) ) ) => ( calc ( bind $?gen255 ( delete-member$ $?gen254 ( create$ pn_movement_restrct_max-overruled $?gen253 ) ) ) ) ?gen250 <- ( max_imprisonment ( negative-overruled $?gen255 ) )"))

([pn_movement_restrct_max-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-overruled-gen410)
   (depends-on declare movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_max] ) ) ) ?gen257 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen256 & : ( >= ?gen256 1 ) ) ) ?gen250 <- ( max_imprisonment ( value 1 ) ( negative-support $?gen253 ) ( negative-overruled $?gen254 & : ( not ( subseq-pos ( create$ pn_movement_restrct_max-overruled $?gen253 $$$ $?gen254 ) ) ) ) ( positive-defeated $?gen252 & : ( not ( member$ pn_movement_restrct_max $?gen252 ) ) ) ) ( test ( eq ( class ?gen250 ) max_imprisonment ) ) => ( calc ( bind $?gen255 ( create$ pn_movement_restrct_max-overruled $?gen253 $?gen254 ) ) ) ?gen250 <- ( max_imprisonment ( negative-overruled $?gen255 ) )"))

([pn_movement_restrct_max-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_max-support-gen412)
   (depends-on declare movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_max] ) ) ) ?gen249 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen250 <- ( max_imprisonment ( value 1 ) ( positive-support $?gen252 & : ( not ( subseq-pos ( create$ pn_movement_restrct_max ?gen249 $$$ $?gen252 ) ) ) ) ) ( test ( eq ( class ?gen250 ) max_imprisonment ) ) => ( calc ( bind $?gen255 ( create$ pn_movement_restrct_max ?gen249 $?gen252 ) ) ) ?gen250 <- ( max_imprisonment ( positive-support $?gen255 ) )"))

([pn_movement_restrct_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-defeasibly-dot-gen414)
   (depends-on declare min_imprisonment movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_movement_restrct_min] ) ) ) ?gen241 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_movement_restrct_min $? ) ) ( test ( eq ( class ?gen241 ) min_imprisonment ) ) ( not ( and ?gen248 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen243 & : ( not ( member$ pn_movement_restrct_min $?gen243 ) ) ) ) ) ) => ?gen241 <- ( min_imprisonment ( positive 0 ) )"))

([pn_movement_restrct_min-defeasibly] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-defeasibly-gen416)
   (depends-on declare movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_movement_restrct_min] ) ) ) ?gen248 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen243 & : ( not ( member$ pn_movement_restrct_min $?gen243 ) ) ) ) ( test ( eq ( class ?gen241 ) min_imprisonment ) ) => ?gen241 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_movement_restrct_min ?gen248 ) )"))

([pn_movement_restrct_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-overruled-dot-gen418)
   (depends-on declare min_imprisonment movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_movement_restrct_min] ) ) ) ?gen241 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen244 ) ( negative-overruled $?gen245 & : ( subseq-pos ( create$ pn_movement_restrct_min-overruled $?gen244 $$$ $?gen245 ) ) ) ) ( test ( eq ( class ?gen241 ) min_imprisonment ) ) ( not ( and ?gen248 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( min_imprisonment ( positive-defeated $?gen243 & : ( not ( member$ pn_movement_restrct_min $?gen243 ) ) ) ) ) ) => ( calc ( bind $?gen246 ( delete-member$ $?gen245 ( create$ pn_movement_restrct_min-overruled $?gen244 ) ) ) ) ?gen241 <- ( min_imprisonment ( negative-overruled $?gen246 ) )"))

([pn_movement_restrct_min-overruled] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-overruled-gen420)
   (depends-on declare movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_movement_restrct_min] ) ) ) ?gen248 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen247 & : ( >= ?gen247 1 ) ) ) ?gen241 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen244 ) ( negative-overruled $?gen245 & : ( not ( subseq-pos ( create$ pn_movement_restrct_min-overruled $?gen244 $$$ $?gen245 ) ) ) ) ( positive-defeated $?gen243 & : ( not ( member$ pn_movement_restrct_min $?gen243 ) ) ) ) ( test ( eq ( class ?gen241 ) min_imprisonment ) ) => ( calc ( bind $?gen246 ( create$ pn_movement_restrct_min-overruled $?gen244 $?gen245 ) ) ) ?gen241 <- ( min_imprisonment ( negative-overruled $?gen246 ) )"))

([pn_movement_restrct_min-support] of derived-attribute-rule
   (pos-name pn_movement_restrct_min-support-gen422)
   (depends-on declare movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_movement_restrct_min] ) ) ) ?gen240 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen241 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen243 & : ( not ( subseq-pos ( create$ pn_movement_restrct_min ?gen240 $$$ $?gen243 ) ) ) ) ) ( test ( eq ( class ?gen241 ) min_imprisonment ) ) => ( calc ( bind $?gen246 ( create$ pn_movement_restrct_min ?gen240 $?gen243 ) ) ) ?gen241 <- ( min_imprisonment ( positive-support $?gen246 ) )"))

([pn_psy_abuse_on_duty_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-defeasibly-dot-gen424)
   (depends-on declare max_imprisonment psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_on_duty_max] ) ) ) ?gen232 <- ( max_imprisonment ( value 8 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_max $? ) ) ( test ( eq ( class ?gen232 ) max_imprisonment ) ) ( not ( and ?gen239 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen234 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen234 ) ) ) ) ) ) => ?gen232 <- ( max_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_on_duty_max-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-defeasibly-gen426)
   (depends-on declare psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_on_duty_max] ) ) ) ?gen239 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( max_imprisonment ( value 8 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen234 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen234 ) ) ) ) ( test ( eq ( class ?gen232 ) max_imprisonment ) ) => ?gen232 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_max ?gen239 ) )"))

([pn_psy_abuse_on_duty_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-overruled-dot-gen428)
   (depends-on declare max_imprisonment psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_on_duty_max] ) ) ) ?gen232 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen235 ) ( negative-overruled $?gen236 & : ( subseq-pos ( create$ pn_psy_abuse_on_duty_max-overruled $?gen235 $$$ $?gen236 ) ) ) ) ( test ( eq ( class ?gen232 ) max_imprisonment ) ) ( not ( and ?gen239 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( max_imprisonment ( positive-defeated $?gen234 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen234 ) ) ) ) ) ) => ( calc ( bind $?gen237 ( delete-member$ $?gen236 ( create$ pn_psy_abuse_on_duty_max-overruled $?gen235 ) ) ) ) ?gen232 <- ( max_imprisonment ( negative-overruled $?gen237 ) )"))

([pn_psy_abuse_on_duty_max-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-overruled-gen430)
   (depends-on declare psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_on_duty_max] ) ) ) ?gen239 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen238 & : ( >= ?gen238 1 ) ) ) ?gen232 <- ( max_imprisonment ( value 8 ) ( negative-support $?gen235 ) ( negative-overruled $?gen236 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_max-overruled $?gen235 $$$ $?gen236 ) ) ) ) ( positive-defeated $?gen234 & : ( not ( member$ pn_psy_abuse_on_duty_max $?gen234 ) ) ) ) ( test ( eq ( class ?gen232 ) max_imprisonment ) ) => ( calc ( bind $?gen237 ( create$ pn_psy_abuse_on_duty_max-overruled $?gen235 $?gen236 ) ) ) ?gen232 <- ( max_imprisonment ( negative-overruled $?gen237 ) )"))

([pn_psy_abuse_on_duty_max-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_max-support-gen432)
   (depends-on declare psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_on_duty_max] ) ) ) ?gen231 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ?gen232 <- ( max_imprisonment ( value 8 ) ( positive-support $?gen234 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_max ?gen231 $$$ $?gen234 ) ) ) ) ) ( test ( eq ( class ?gen232 ) max_imprisonment ) ) => ( calc ( bind $?gen237 ( create$ pn_psy_abuse_on_duty_max ?gen231 $?gen234 ) ) ) ?gen232 <- ( max_imprisonment ( positive-support $?gen237 ) )"))

([pn_psy_abuse_on_duty_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-defeasibly-dot-gen434)
   (depends-on declare min_imprisonment psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_on_duty_min] ) ) ) ?gen223 <- ( min_imprisonment ( value 1 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_min $? ) ) ( test ( eq ( class ?gen223 ) min_imprisonment ) ) ( not ( and ?gen230 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen225 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen225 ) ) ) ) ) ) => ?gen223 <- ( min_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_on_duty_min-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-defeasibly-gen436)
   (depends-on declare psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_on_duty_min] ) ) ) ?gen230 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( min_imprisonment ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen225 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen225 ) ) ) ) ( test ( eq ( class ?gen223 ) min_imprisonment ) ) => ?gen223 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_on_duty_min ?gen230 ) )"))

([pn_psy_abuse_on_duty_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-overruled-dot-gen438)
   (depends-on declare min_imprisonment psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_on_duty_min] ) ) ) ?gen223 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen226 ) ( negative-overruled $?gen227 & : ( subseq-pos ( create$ pn_psy_abuse_on_duty_min-overruled $?gen226 $$$ $?gen227 ) ) ) ) ( test ( eq ( class ?gen223 ) min_imprisonment ) ) ( not ( and ?gen230 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( min_imprisonment ( positive-defeated $?gen225 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen225 ) ) ) ) ) ) => ( calc ( bind $?gen228 ( delete-member$ $?gen227 ( create$ pn_psy_abuse_on_duty_min-overruled $?gen226 ) ) ) ) ?gen223 <- ( min_imprisonment ( negative-overruled $?gen228 ) )"))

([pn_psy_abuse_on_duty_min-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-overruled-gen440)
   (depends-on declare psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_on_duty_min] ) ) ) ?gen230 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen229 & : ( >= ?gen229 1 ) ) ) ?gen223 <- ( min_imprisonment ( value 1 ) ( negative-support $?gen226 ) ( negative-overruled $?gen227 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_min-overruled $?gen226 $$$ $?gen227 ) ) ) ) ( positive-defeated $?gen225 & : ( not ( member$ pn_psy_abuse_on_duty_min $?gen225 ) ) ) ) ( test ( eq ( class ?gen223 ) min_imprisonment ) ) => ( calc ( bind $?gen228 ( create$ pn_psy_abuse_on_duty_min-overruled $?gen226 $?gen227 ) ) ) ?gen223 <- ( min_imprisonment ( negative-overruled $?gen228 ) )"))

([pn_psy_abuse_on_duty_min-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_on_duty_min-support-gen442)
   (depends-on declare psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_on_duty_min] ) ) ) ?gen222 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ?gen223 <- ( min_imprisonment ( value 1 ) ( positive-support $?gen225 & : ( not ( subseq-pos ( create$ pn_psy_abuse_on_duty_min ?gen222 $$$ $?gen225 ) ) ) ) ) ( test ( eq ( class ?gen223 ) min_imprisonment ) ) => ( calc ( bind $?gen228 ( create$ pn_psy_abuse_on_duty_min ?gen222 $?gen225 ) ) ) ?gen223 <- ( min_imprisonment ( positive-support $?gen228 ) )"))

([pn_psy_abuse_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-defeasibly-dot-gen444)
   (depends-on declare max_imprisonment psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_max] ) ) ) ?gen214 <- ( max_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_max $? ) ) ( test ( eq ( class ?gen214 ) max_imprisonment ) ) ( not ( and ?gen221 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen216 & : ( not ( member$ pn_psy_abuse_max $?gen216 ) ) ) ) ) ) => ?gen214 <- ( max_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_max-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-defeasibly-gen446)
   (depends-on declare psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_max] ) ) ) ?gen221 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( max_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen216 & : ( not ( member$ pn_psy_abuse_max $?gen216 ) ) ) ) ( test ( eq ( class ?gen214 ) max_imprisonment ) ) => ?gen214 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_max ?gen221 ) )"))

([pn_psy_abuse_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-overruled-dot-gen448)
   (depends-on declare max_imprisonment psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_max] ) ) ) ?gen214 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen217 ) ( negative-overruled $?gen218 & : ( subseq-pos ( create$ pn_psy_abuse_max-overruled $?gen217 $$$ $?gen218 ) ) ) ) ( test ( eq ( class ?gen214 ) max_imprisonment ) ) ( not ( and ?gen221 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( max_imprisonment ( positive-defeated $?gen216 & : ( not ( member$ pn_psy_abuse_max $?gen216 ) ) ) ) ) ) => ( calc ( bind $?gen219 ( delete-member$ $?gen218 ( create$ pn_psy_abuse_max-overruled $?gen217 ) ) ) ) ?gen214 <- ( max_imprisonment ( negative-overruled $?gen219 ) )"))

([pn_psy_abuse_max-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-overruled-gen450)
   (depends-on declare psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_max] ) ) ) ?gen221 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen220 & : ( >= ?gen220 1 ) ) ) ?gen214 <- ( max_imprisonment ( value 3 ) ( negative-support $?gen217 ) ( negative-overruled $?gen218 & : ( not ( subseq-pos ( create$ pn_psy_abuse_max-overruled $?gen217 $$$ $?gen218 ) ) ) ) ( positive-defeated $?gen216 & : ( not ( member$ pn_psy_abuse_max $?gen216 ) ) ) ) ( test ( eq ( class ?gen214 ) max_imprisonment ) ) => ( calc ( bind $?gen219 ( create$ pn_psy_abuse_max-overruled $?gen217 $?gen218 ) ) ) ?gen214 <- ( max_imprisonment ( negative-overruled $?gen219 ) )"))

([pn_psy_abuse_max-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_max-support-gen452)
   (depends-on declare psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_max] ) ) ) ?gen213 <- ( psychological_abuse ( defendant ?Defendant ) ) ?gen214 <- ( max_imprisonment ( value 3 ) ( positive-support $?gen216 & : ( not ( subseq-pos ( create$ pn_psy_abuse_max ?gen213 $$$ $?gen216 ) ) ) ) ) ( test ( eq ( class ?gen214 ) max_imprisonment ) ) => ( calc ( bind $?gen219 ( create$ pn_psy_abuse_max ?gen213 $?gen216 ) ) ) ?gen214 <- ( max_imprisonment ( positive-support $?gen219 ) )"))

([pn_psy_abuse_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-defeasibly-dot-gen454)
   (depends-on declare min_imprisonment psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_abuse_min] ) ) ) ?gen205 <- ( min_imprisonment ( value 0 ) ( positive 1 ) ( positive-derivator pn_psy_abuse_min $? ) ) ( test ( eq ( class ?gen205 ) min_imprisonment ) ) ( not ( and ?gen212 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen207 & : ( not ( member$ pn_psy_abuse_min $?gen207 ) ) ) ) ) ) => ?gen205 <- ( min_imprisonment ( positive 0 ) )"))

([pn_psy_abuse_min-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-defeasibly-gen456)
   (depends-on declare psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_abuse_min] ) ) ) ?gen212 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( min_imprisonment ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen207 & : ( not ( member$ pn_psy_abuse_min $?gen207 ) ) ) ) ( test ( eq ( class ?gen205 ) min_imprisonment ) ) => ?gen205 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_psy_abuse_min ?gen212 ) )"))

([pn_psy_abuse_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-overruled-dot-gen458)
   (depends-on declare min_imprisonment psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_abuse_min] ) ) ) ?gen205 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen208 ) ( negative-overruled $?gen209 & : ( subseq-pos ( create$ pn_psy_abuse_min-overruled $?gen208 $$$ $?gen209 ) ) ) ) ( test ( eq ( class ?gen205 ) min_imprisonment ) ) ( not ( and ?gen212 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( min_imprisonment ( positive-defeated $?gen207 & : ( not ( member$ pn_psy_abuse_min $?gen207 ) ) ) ) ) ) => ( calc ( bind $?gen210 ( delete-member$ $?gen209 ( create$ pn_psy_abuse_min-overruled $?gen208 ) ) ) ) ?gen205 <- ( min_imprisonment ( negative-overruled $?gen210 ) )"))

([pn_psy_abuse_min-overruled] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-overruled-gen460)
   (depends-on declare psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_abuse_min] ) ) ) ?gen212 <- ( psychological_abuse ( defendant ?Defendant ) ( positive ?gen211 & : ( >= ?gen211 1 ) ) ) ?gen205 <- ( min_imprisonment ( value 0 ) ( negative-support $?gen208 ) ( negative-overruled $?gen209 & : ( not ( subseq-pos ( create$ pn_psy_abuse_min-overruled $?gen208 $$$ $?gen209 ) ) ) ) ( positive-defeated $?gen207 & : ( not ( member$ pn_psy_abuse_min $?gen207 ) ) ) ) ( test ( eq ( class ?gen205 ) min_imprisonment ) ) => ( calc ( bind $?gen210 ( create$ pn_psy_abuse_min-overruled $?gen208 $?gen209 ) ) ) ?gen205 <- ( min_imprisonment ( negative-overruled $?gen210 ) )"))

([pn_psy_abuse_min-support] of derived-attribute-rule
   (pos-name pn_psy_abuse_min-support-gen462)
   (depends-on declare psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_abuse_min] ) ) ) ?gen204 <- ( psychological_abuse ( defendant ?Defendant ) ) ?gen205 <- ( min_imprisonment ( value 0 ) ( positive-support $?gen207 & : ( not ( subseq-pos ( create$ pn_psy_abuse_min ?gen204 $$$ $?gen207 ) ) ) ) ) ( test ( eq ( class ?gen205 ) min_imprisonment ) ) => ( calc ( bind $?gen210 ( create$ pn_psy_abuse_min ?gen204 $?gen207 ) ) ) ?gen205 <- ( min_imprisonment ( positive-support $?gen210 ) )"))

([rule6_4-defeated-dot] of derived-attribute-rule
   (pos-name rule6_4-defeated-dot-gen464)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_death)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_4] ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen199 & : ( subseq-pos ( create$ rule6_4-defeated rule4 $$$ $?gen199 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) ( not ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ) => ( calc ( bind $?gen198 ( delete-member$ $?gen199 ( create$ rule6_4-defeated rule4 ) ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-defeated $?gen198 ) )"))

([rule6_4-defeated] of derived-attribute-rule
   (pos-name rule6_4-defeated-gen466)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_4] ) ) ) ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen199 & : ( not ( subseq-pos ( create$ rule6_4-defeated rule4 $$$ $?gen199 ) ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen198 ( create$ rule6_4-defeated rule4 $?gen199 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-defeated $?gen198 ) )"))

([rule6_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_4-defeasibly-dot-gen468)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_4] ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_4 $? ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) ( not ( and ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ) ) => ?gen196 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule6_4-defeasibly] of derived-attribute-rule
   (pos-name rule6_4-defeasibly-gen470)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_4] ) ) ) ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ?gen196 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule6_4 ?gen203 ) )"))

([rule6_4-overruled-dot] of derived-attribute-rule
   (pos-name rule6_4-overruled-dot-gen472)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_4] ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen199 ) ( positive-overruled $?gen200 & : ( subseq-pos ( create$ rule6_4-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) ( not ( and ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( negative-defeated $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ) ) => ( calc ( bind $?gen201 ( delete-member$ $?gen200 ( create$ rule6_4-overruled $?gen199 ) ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-overruled $?gen201 ) )"))

([rule6_4-overruled] of derived-attribute-rule
   (pos-name rule6_4-overruled-gen474)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_4] ) ) ) ?gen203 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen202 & : ( >= ?gen202 1 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen199 ) ( positive-overruled $?gen200 & : ( not ( subseq-pos ( create$ rule6_4-overruled $?gen199 $$$ $?gen200 ) ) ) ) ( negative-defeated $?gen198 & : ( not ( member$ rule6_4 $?gen198 ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen201 ( create$ rule6_4-overruled $?gen199 $?gen200 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( positive-overruled $?gen201 ) )"))

([rule6_4-support] of derived-attribute-rule
   (pos-name rule6_4-support-gen476)
   (depends-on declare movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_4] ) ) ) ?gen195 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen196 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen198 & : ( not ( subseq-pos ( create$ rule6_4 ?gen195 $$$ $?gen198 ) ) ) ) ) ( test ( eq ( class ?gen196 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen201 ( create$ rule6_4 ?gen195 $?gen198 ) ) ) ?gen196 <- ( movement_restrictions_on_duty ( negative-support $?gen201 ) )"))

([rule6_3-defeated-dot] of derived-attribute-rule
   (pos-name rule6_3-defeated-dot-gen478)
   (depends-on declare movement_restrictions movement_restrictions_death)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_3] ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen190 & : ( subseq-pos ( create$ rule6_3-defeated rule3 $$$ $?gen190 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) ( not ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ) => ( calc ( bind $?gen189 ( delete-member$ $?gen190 ( create$ rule6_3-defeated rule3 ) ) ) ) ?gen187 <- ( movement_restrictions ( positive-defeated $?gen189 ) )"))

([rule6_3-defeated] of derived-attribute-rule
   (pos-name rule6_3-defeated-gen480)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_3] ) ) ) ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen190 & : ( not ( subseq-pos ( create$ rule6_3-defeated rule3 $$$ $?gen190 ) ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ( calc ( bind $?gen189 ( create$ rule6_3-defeated rule3 $?gen190 ) ) ) ?gen187 <- ( movement_restrictions ( positive-defeated $?gen189 ) )"))

([rule6_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_3-defeasibly-dot-gen482)
   (depends-on declare movement_restrictions movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_3] ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_3 $? ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) ( not ( and ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ) ) => ?gen187 <- ( movement_restrictions ( negative 0 ) )"))

([rule6_3-defeasibly] of derived-attribute-rule
   (pos-name rule6_3-defeasibly-gen484)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_3] ) ) ) ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ?gen187 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule6_3 ?gen194 ) )"))

([rule6_3-overruled-dot] of derived-attribute-rule
   (pos-name rule6_3-overruled-dot-gen486)
   (depends-on declare movement_restrictions movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_3] ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen190 ) ( positive-overruled $?gen191 & : ( subseq-pos ( create$ rule6_3-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) ( not ( and ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( negative-defeated $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ) ) => ( calc ( bind $?gen192 ( delete-member$ $?gen191 ( create$ rule6_3-overruled $?gen190 ) ) ) ) ?gen187 <- ( movement_restrictions ( positive-overruled $?gen192 ) )"))

([rule6_3-overruled] of derived-attribute-rule
   (pos-name rule6_3-overruled-gen488)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_3] ) ) ) ?gen194 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen193 & : ( >= ?gen193 1 ) ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen190 ) ( positive-overruled $?gen191 & : ( not ( subseq-pos ( create$ rule6_3-overruled $?gen190 $$$ $?gen191 ) ) ) ) ( negative-defeated $?gen189 & : ( not ( member$ rule6_3 $?gen189 ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ( calc ( bind $?gen192 ( create$ rule6_3-overruled $?gen190 $?gen191 ) ) ) ?gen187 <- ( movement_restrictions ( positive-overruled $?gen192 ) )"))

([rule6_3-support] of derived-attribute-rule
   (pos-name rule6_3-support-gen490)
   (depends-on declare movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_3] ) ) ) ?gen186 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen187 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen189 & : ( not ( subseq-pos ( create$ rule6_3 ?gen186 $$$ $?gen189 ) ) ) ) ) ( test ( eq ( class ?gen187 ) movement_restrictions ) ) => ( calc ( bind $?gen192 ( create$ rule6_3 ?gen186 $?gen189 ) ) ) ?gen187 <- ( movement_restrictions ( negative-support $?gen192 ) )"))

([rule6_2-defeated-dot] of derived-attribute-rule
   (pos-name rule6_2-defeated-dot-gen492)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_death)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_2] ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen181 & : ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen181 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) ( not ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ) => ( calc ( bind $?gen180 ( delete-member$ $?gen181 ( create$ rule6_2-defeated rule2 ) ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-defeated $?gen180 ) )"))

([rule6_2-defeated] of derived-attribute-rule
   (pos-name rule6_2-defeated-gen494)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_2] ) ) ) ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen181 & : ( not ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen181 ) ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen180 ( create$ rule6_2-defeated rule2 $?gen181 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-defeated $?gen180 ) )"))

([rule6_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-dot-gen496)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_2] ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_2 $? ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) ( not ( and ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ) ) => ?gen178 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule6_2-defeasibly] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-gen498)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_2] ) ) ) ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ?gen178 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule6_2 ?gen185 ) )"))

([rule6_2-overruled-dot] of derived-attribute-rule
   (pos-name rule6_2-overruled-dot-gen500)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_2] ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen181 ) ( positive-overruled $?gen182 & : ( subseq-pos ( create$ rule6_2-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) ( not ( and ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( negative-defeated $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ) ) => ( calc ( bind $?gen183 ( delete-member$ $?gen182 ( create$ rule6_2-overruled $?gen181 ) ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-overruled $?gen183 ) )"))

([rule6_2-overruled] of derived-attribute-rule
   (pos-name rule6_2-overruled-gen502)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_2] ) ) ) ?gen185 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen184 & : ( >= ?gen184 1 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen181 ) ( positive-overruled $?gen182 & : ( not ( subseq-pos ( create$ rule6_2-overruled $?gen181 $$$ $?gen182 ) ) ) ) ( negative-defeated $?gen180 & : ( not ( member$ rule6_2 $?gen180 ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen183 ( create$ rule6_2-overruled $?gen181 $?gen182 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( positive-overruled $?gen183 ) )"))

([rule6_2-support] of derived-attribute-rule
   (pos-name rule6_2-support-gen504)
   (depends-on declare movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_2] ) ) ) ?gen177 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen178 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen180 & : ( not ( subseq-pos ( create$ rule6_2 ?gen177 $$$ $?gen180 ) ) ) ) ) ( test ( eq ( class ?gen178 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen183 ( create$ rule6_2 ?gen177 $?gen180 ) ) ) ?gen178 <- ( psychological_abuse_on_duty ( negative-support $?gen183 ) )"))

([rule6_1-defeated-dot] of derived-attribute-rule
   (pos-name rule6_1-defeated-dot-gen506)
   (depends-on declare psychological_abuse movement_restrictions_death)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_1] ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen172 & : ( subseq-pos ( create$ rule6_1-defeated rule1 $$$ $?gen172 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) ( not ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ) => ( calc ( bind $?gen171 ( delete-member$ $?gen172 ( create$ rule6_1-defeated rule1 ) ) ) ) ?gen169 <- ( psychological_abuse ( positive-defeated $?gen171 ) )"))

([rule6_1-defeated] of derived-attribute-rule
   (pos-name rule6_1-defeated-gen508)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_1] ) ) ) ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen172 & : ( not ( subseq-pos ( create$ rule6_1-defeated rule1 $$$ $?gen172 ) ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ( calc ( bind $?gen171 ( create$ rule6_1-defeated rule1 $?gen172 ) ) ) ?gen169 <- ( psychological_abuse ( positive-defeated $?gen171 ) )"))

([rule6_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_1-defeasibly-dot-gen510)
   (depends-on declare psychological_abuse movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_1] ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_1 $? ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) ( not ( and ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ) ) => ?gen169 <- ( psychological_abuse ( negative 0 ) )"))

([rule6_1-defeasibly] of derived-attribute-rule
   (pos-name rule6_1-defeasibly-gen512)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_1] ) ) ) ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ?gen169 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule6_1 ?gen176 ) )"))

([rule6_1-overruled-dot] of derived-attribute-rule
   (pos-name rule6_1-overruled-dot-gen514)
   (depends-on declare psychological_abuse movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_1] ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen172 ) ( positive-overruled $?gen173 & : ( subseq-pos ( create$ rule6_1-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) ( not ( and ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( negative-defeated $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ) ) => ( calc ( bind $?gen174 ( delete-member$ $?gen173 ( create$ rule6_1-overruled $?gen172 ) ) ) ) ?gen169 <- ( psychological_abuse ( positive-overruled $?gen174 ) )"))

([rule6_1-overruled] of derived-attribute-rule
   (pos-name rule6_1-overruled-gen516)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_1] ) ) ) ?gen176 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive ?gen175 & : ( >= ?gen175 1 ) ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen172 ) ( positive-overruled $?gen173 & : ( not ( subseq-pos ( create$ rule6_1-overruled $?gen172 $$$ $?gen173 ) ) ) ) ( negative-defeated $?gen171 & : ( not ( member$ rule6_1 $?gen171 ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ( calc ( bind $?gen174 ( create$ rule6_1-overruled $?gen172 $?gen173 ) ) ) ?gen169 <- ( psychological_abuse ( positive-overruled $?gen174 ) )"))

([rule6_1-support] of derived-attribute-rule
   (pos-name rule6_1-support-gen518)
   (depends-on declare movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_1] ) ) ) ?gen168 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ?gen169 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen171 & : ( not ( subseq-pos ( create$ rule6_1 ?gen168 $$$ $?gen171 ) ) ) ) ) ( test ( eq ( class ?gen169 ) psychological_abuse ) ) => ( calc ( bind $?gen174 ( create$ rule6_1 ?gen168 $?gen171 ) ) ) ?gen169 <- ( psychological_abuse ( negative-support $?gen174 ) )"))

([rule6-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6-defeasibly-dot-gen520)
   (depends-on declare movement_restrictions_death lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6] ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule6 $? ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) ( not ( and ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ) ) => ?gen160 <- ( movement_restrictions_death ( positive 0 ) )"))

([rule6-defeasibly] of derived-attribute-rule
   (pos-name rule6-defeasibly-gen522)
   (depends-on declare lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6] ) ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) => ?gen160 <- ( movement_restrictions_death ( positive 1 ) ( positive-derivator rule6 ?gen167 ) )"))

([rule6-overruled-dot] of derived-attribute-rule
   (pos-name rule6-overruled-dot-gen524)
   (depends-on declare movement_restrictions_death lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6] ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( subseq-pos ( create$ rule6-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) ( not ( and ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( positive-defeated $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ) ) => ( calc ( bind $?gen165 ( delete-member$ $?gen164 ( create$ rule6-overruled $?gen163 ) ) ) ) ?gen160 <- ( movement_restrictions_death ( negative-overruled $?gen165 ) )"))

([rule6-overruled] of derived-attribute-rule
   (pos-name rule6-overruled-gen526)
   (depends-on declare lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6] ) ) ) ?gen167 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ( positive ?gen166 & : ( >= ?gen166 1 ) ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( negative-support $?gen163 ) ( negative-overruled $?gen164 & : ( not ( subseq-pos ( create$ rule6-overruled $?gen163 $$$ $?gen164 ) ) ) ) ( positive-defeated $?gen162 & : ( not ( member$ rule6 $?gen162 ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) => ( calc ( bind $?gen165 ( create$ rule6-overruled $?gen163 $?gen164 ) ) ) ?gen160 <- ( movement_restrictions_death ( negative-overruled $?gen165 ) )"))

([rule6-support] of derived-attribute-rule
   (pos-name rule6-support-gen528)
   (depends-on declare lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6] ) ) ) ?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ) ?gen160 <- ( movement_restrictions_death ( defendant ?Defendant ) ( positive-support $?gen162 & : ( not ( subseq-pos ( create$ rule6 ?gen159 $$$ $?gen162 ) ) ) ) ) ( test ( eq ( class ?gen160 ) movement_restrictions_death ) ) => ( calc ( bind $?gen165 ( create$ rule6 ?gen159 $?gen162 ) ) ) ?gen160 <- ( movement_restrictions_death ( positive-support $?gen165 ) )"))

([rule5_4-defeated-dot] of derived-attribute-rule
   (pos-name rule5_4-defeated-dot-gen530)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_life_threatening)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_4] ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen154 & : ( subseq-pos ( create$ rule5_4-defeated rule4 $$$ $?gen154 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) ( not ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ) => ( calc ( bind $?gen153 ( delete-member$ $?gen154 ( create$ rule5_4-defeated rule4 ) ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-defeated $?gen153 ) )"))

([rule5_4-defeated] of derived-attribute-rule
   (pos-name rule5_4-defeated-gen532)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_4] ) ) ) ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen154 & : ( not ( subseq-pos ( create$ rule5_4-defeated rule4 $$$ $?gen154 ) ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen153 ( create$ rule5_4-defeated rule4 $?gen154 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-defeated $?gen153 ) )"))

([rule5_4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_4-defeasibly-dot-gen534)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_4] ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_4 $? ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) ( not ( and ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive ~ 2 ) ( negative-overruled $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ) ) => ?gen151 <- ( movement_restrictions_on_duty ( negative 0 ) )"))

([rule5_4-defeasibly] of derived-attribute-rule
   (pos-name rule5_4-defeasibly-gen536)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_4] ) ) ) ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ?gen151 <- ( movement_restrictions_on_duty ( negative 1 ) ( negative-derivator rule5_4 ?gen158 ) )"))

([rule5_4-overruled-dot] of derived-attribute-rule
   (pos-name rule5_4-overruled-dot-gen538)
   (depends-on declare movement_restrictions_on_duty movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_4] ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen154 ) ( positive-overruled $?gen155 & : ( subseq-pos ( create$ rule5_4-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) ( not ( and ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( negative-defeated $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ) ) => ( calc ( bind $?gen156 ( delete-member$ $?gen155 ( create$ rule5_4-overruled $?gen154 ) ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-overruled $?gen156 ) )"))

([rule5_4-overruled] of derived-attribute-rule
   (pos-name rule5_4-overruled-gen540)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_4] ) ) ) ?gen158 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen157 & : ( >= ?gen157 1 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen154 ) ( positive-overruled $?gen155 & : ( not ( subseq-pos ( create$ rule5_4-overruled $?gen154 $$$ $?gen155 ) ) ) ) ( negative-defeated $?gen153 & : ( not ( member$ rule5_4 $?gen153 ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen156 ( create$ rule5_4-overruled $?gen154 $?gen155 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( positive-overruled $?gen156 ) )"))

([rule5_4-support] of derived-attribute-rule
   (pos-name rule5_4-support-gen542)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_4] ) ) ) ?gen150 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen151 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen153 & : ( not ( subseq-pos ( create$ rule5_4 ?gen150 $$$ $?gen153 ) ) ) ) ) ( test ( eq ( class ?gen151 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen156 ( create$ rule5_4 ?gen150 $?gen153 ) ) ) ?gen151 <- ( movement_restrictions_on_duty ( negative-support $?gen156 ) )"))

([rule5_3-defeated-dot] of derived-attribute-rule
   (pos-name rule5_3-defeated-dot-gen544)
   (depends-on declare movement_restrictions movement_restrictions_life_threatening)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_3] ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen145 & : ( subseq-pos ( create$ rule5_3-defeated rule3 $$$ $?gen145 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) ( not ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ) => ( calc ( bind $?gen144 ( delete-member$ $?gen145 ( create$ rule5_3-defeated rule3 ) ) ) ) ?gen142 <- ( movement_restrictions ( positive-defeated $?gen144 ) )"))

([rule5_3-defeated] of derived-attribute-rule
   (pos-name rule5_3-defeated-gen546)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_3] ) ) ) ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen145 & : ( not ( subseq-pos ( create$ rule5_3-defeated rule3 $$$ $?gen145 ) ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ( calc ( bind $?gen144 ( create$ rule5_3-defeated rule3 $?gen145 ) ) ) ?gen142 <- ( movement_restrictions ( positive-defeated $?gen144 ) )"))

([rule5_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_3-defeasibly-dot-gen548)
   (depends-on declare movement_restrictions movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_3] ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_3 $? ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) ( not ( and ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ) ) => ?gen142 <- ( movement_restrictions ( negative 0 ) )"))

([rule5_3-defeasibly] of derived-attribute-rule
   (pos-name rule5_3-defeasibly-gen550)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_3] ) ) ) ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ?gen142 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule5_3 ?gen149 ) )"))

([rule5_3-overruled-dot] of derived-attribute-rule
   (pos-name rule5_3-overruled-dot-gen552)
   (depends-on declare movement_restrictions movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_3] ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen145 ) ( positive-overruled $?gen146 & : ( subseq-pos ( create$ rule5_3-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) ( not ( and ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( negative-defeated $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ) ) => ( calc ( bind $?gen147 ( delete-member$ $?gen146 ( create$ rule5_3-overruled $?gen145 ) ) ) ) ?gen142 <- ( movement_restrictions ( positive-overruled $?gen147 ) )"))

([rule5_3-overruled] of derived-attribute-rule
   (pos-name rule5_3-overruled-gen554)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_3] ) ) ) ?gen149 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen148 & : ( >= ?gen148 1 ) ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen145 ) ( positive-overruled $?gen146 & : ( not ( subseq-pos ( create$ rule5_3-overruled $?gen145 $$$ $?gen146 ) ) ) ) ( negative-defeated $?gen144 & : ( not ( member$ rule5_3 $?gen144 ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ( calc ( bind $?gen147 ( create$ rule5_3-overruled $?gen145 $?gen146 ) ) ) ?gen142 <- ( movement_restrictions ( positive-overruled $?gen147 ) )"))

([rule5_3-support] of derived-attribute-rule
   (pos-name rule5_3-support-gen556)
   (depends-on declare movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_3] ) ) ) ?gen141 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen142 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen144 & : ( not ( subseq-pos ( create$ rule5_3 ?gen141 $$$ $?gen144 ) ) ) ) ) ( test ( eq ( class ?gen142 ) movement_restrictions ) ) => ( calc ( bind $?gen147 ( create$ rule5_3 ?gen141 $?gen144 ) ) ) ?gen142 <- ( movement_restrictions ( negative-support $?gen147 ) )"))

([rule5_2-defeated-dot] of derived-attribute-rule
   (pos-name rule5_2-defeated-dot-gen558)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_life_threatening)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_2] ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen136 & : ( subseq-pos ( create$ rule5_2-defeated rule2 $$$ $?gen136 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) ( not ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ) => ( calc ( bind $?gen135 ( delete-member$ $?gen136 ( create$ rule5_2-defeated rule2 ) ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-defeated $?gen135 ) )"))

([rule5_2-defeated] of derived-attribute-rule
   (pos-name rule5_2-defeated-gen560)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_2] ) ) ) ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen136 & : ( not ( subseq-pos ( create$ rule5_2-defeated rule2 $$$ $?gen136 ) ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen135 ( create$ rule5_2-defeated rule2 $?gen136 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-defeated $?gen135 ) )"))

([rule5_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_2-defeasibly-dot-gen562)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_2] ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_2 $? ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) ( not ( and ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ) ) => ?gen133 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule5_2-defeasibly] of derived-attribute-rule
   (pos-name rule5_2-defeasibly-gen564)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_2] ) ) ) ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ?gen133 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule5_2 ?gen140 ) )"))

([rule5_2-overruled-dot] of derived-attribute-rule
   (pos-name rule5_2-overruled-dot-gen566)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_2] ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen136 ) ( positive-overruled $?gen137 & : ( subseq-pos ( create$ rule5_2-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) ( not ( and ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( negative-defeated $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ) ) => ( calc ( bind $?gen138 ( delete-member$ $?gen137 ( create$ rule5_2-overruled $?gen136 ) ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-overruled $?gen138 ) )"))

([rule5_2-overruled] of derived-attribute-rule
   (pos-name rule5_2-overruled-gen568)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_2] ) ) ) ?gen140 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen139 & : ( >= ?gen139 1 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen136 ) ( positive-overruled $?gen137 & : ( not ( subseq-pos ( create$ rule5_2-overruled $?gen136 $$$ $?gen137 ) ) ) ) ( negative-defeated $?gen135 & : ( not ( member$ rule5_2 $?gen135 ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen138 ( create$ rule5_2-overruled $?gen136 $?gen137 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( positive-overruled $?gen138 ) )"))

([rule5_2-support] of derived-attribute-rule
   (pos-name rule5_2-support-gen570)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_2] ) ) ) ?gen132 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen133 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen135 & : ( not ( subseq-pos ( create$ rule5_2 ?gen132 $$$ $?gen135 ) ) ) ) ) ( test ( eq ( class ?gen133 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen138 ( create$ rule5_2 ?gen132 $?gen135 ) ) ) ?gen133 <- ( psychological_abuse_on_duty ( negative-support $?gen138 ) )"))

([rule5_1-defeated-dot] of derived-attribute-rule
   (pos-name rule5_1-defeated-dot-gen572)
   (depends-on declare psychological_abuse movement_restrictions_life_threatening)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_1] ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen127 & : ( subseq-pos ( create$ rule5_1-defeated rule1 $$$ $?gen127 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) ( not ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ) => ( calc ( bind $?gen126 ( delete-member$ $?gen127 ( create$ rule5_1-defeated rule1 ) ) ) ) ?gen124 <- ( psychological_abuse ( positive-defeated $?gen126 ) )"))

([rule5_1-defeated] of derived-attribute-rule
   (pos-name rule5_1-defeated-gen574)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_1] ) ) ) ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen127 & : ( not ( subseq-pos ( create$ rule5_1-defeated rule1 $$$ $?gen127 ) ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ( calc ( bind $?gen126 ( create$ rule5_1-defeated rule1 $?gen127 ) ) ) ?gen124 <- ( psychological_abuse ( positive-defeated $?gen126 ) )"))

([rule5_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-dot-gen576)
   (depends-on declare psychological_abuse movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_1] ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_1 $? ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) ( not ( and ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ) ) => ?gen124 <- ( psychological_abuse ( negative 0 ) )"))

([rule5_1-defeasibly] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-gen578)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_1] ) ) ) ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ?gen124 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule5_1 ?gen131 ) )"))

([rule5_1-overruled-dot] of derived-attribute-rule
   (pos-name rule5_1-overruled-dot-gen580)
   (depends-on declare psychological_abuse movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_1] ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen127 ) ( positive-overruled $?gen128 & : ( subseq-pos ( create$ rule5_1-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) ( not ( and ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( negative-defeated $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ) ) => ( calc ( bind $?gen129 ( delete-member$ $?gen128 ( create$ rule5_1-overruled $?gen127 ) ) ) ) ?gen124 <- ( psychological_abuse ( positive-overruled $?gen129 ) )"))

([rule5_1-overruled] of derived-attribute-rule
   (pos-name rule5_1-overruled-gen582)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_1] ) ) ) ?gen131 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive ?gen130 & : ( >= ?gen130 1 ) ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen127 ) ( positive-overruled $?gen128 & : ( not ( subseq-pos ( create$ rule5_1-overruled $?gen127 $$$ $?gen128 ) ) ) ) ( negative-defeated $?gen126 & : ( not ( member$ rule5_1 $?gen126 ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ( calc ( bind $?gen129 ( create$ rule5_1-overruled $?gen127 $?gen128 ) ) ) ?gen124 <- ( psychological_abuse ( positive-overruled $?gen129 ) )"))

([rule5_1-support] of derived-attribute-rule
   (pos-name rule5_1-support-gen584)
   (depends-on declare movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_1] ) ) ) ?gen123 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ?gen124 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen126 & : ( not ( subseq-pos ( create$ rule5_1 ?gen123 $$$ $?gen126 ) ) ) ) ) ( test ( eq ( class ?gen124 ) psychological_abuse ) ) => ( calc ( bind $?gen129 ( create$ rule5_1 ?gen123 $?gen126 ) ) ) ?gen124 <- ( psychological_abuse ( negative-support $?gen129 ) )"))

([rule5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5-defeasibly-dot-gen586)
   (depends-on declare movement_restrictions_life_threatening lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5] ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule5 $? ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) ( not ( and ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( negative ~ 2 ) ( positive-overruled $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ) ) => ?gen115 <- ( movement_restrictions_life_threatening ( positive 0 ) )"))

([rule5-defeasibly] of derived-attribute-rule
   (pos-name rule5-defeasibly-gen588)
   (depends-on declare lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5] ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) => ?gen115 <- ( movement_restrictions_life_threatening ( positive 1 ) ( positive-derivator rule5 ?gen122 ) )"))

([rule5-overruled-dot] of derived-attribute-rule
   (pos-name rule5-overruled-dot-gen590)
   (depends-on declare movement_restrictions_life_threatening lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5] ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( negative-support $?gen118 ) ( negative-overruled $?gen119 & : ( subseq-pos ( create$ rule5-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) ( not ( and ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( positive-defeated $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ) ) => ( calc ( bind $?gen120 ( delete-member$ $?gen119 ( create$ rule5-overruled $?gen118 ) ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( negative-overruled $?gen120 ) )"))

([rule5-overruled] of derived-attribute-rule
   (pos-name rule5-overruled-gen592)
   (depends-on declare lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5] ) ) ) ?gen122 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ( positive ?gen121 & : ( >= ?gen121 1 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( negative-support $?gen118 ) ( negative-overruled $?gen119 & : ( not ( subseq-pos ( create$ rule5-overruled $?gen118 $$$ $?gen119 ) ) ) ) ( positive-defeated $?gen117 & : ( not ( member$ rule5 $?gen117 ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) => ( calc ( bind $?gen120 ( create$ rule5-overruled $?gen118 $?gen119 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( negative-overruled $?gen120 ) )"))

([rule5-support] of derived-attribute-rule
   (pos-name rule5-support-gen594)
   (depends-on declare lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5] ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ?gen115 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ( positive-support $?gen117 & : ( not ( subseq-pos ( create$ rule5 ?gen114 $$$ $?gen117 ) ) ) ) ) ( test ( eq ( class ?gen115 ) movement_restrictions_life_threatening ) ) => ( calc ( bind $?gen120 ( create$ rule5 ?gen114 $?gen117 ) ) ) ?gen115 <- ( movement_restrictions_life_threatening ( positive-support $?gen120 ) )"))

([rule4_3-defeated-dot] of derived-attribute-rule
   (pos-name rule4_3-defeated-dot-gen596)
   (depends-on declare movement_restrictions movement_restrictions_on_duty)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4_3] ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen109 & : ( subseq-pos ( create$ rule4_3-defeated rule3 $$$ $?gen109 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) ( not ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ) => ( calc ( bind $?gen108 ( delete-member$ $?gen109 ( create$ rule4_3-defeated rule3 ) ) ) ) ?gen106 <- ( movement_restrictions ( positive-defeated $?gen108 ) )"))

([rule4_3-defeated] of derived-attribute-rule
   (pos-name rule4_3-defeated-gen598)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4_3] ) ) ) ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-defeated $?gen109 & : ( not ( subseq-pos ( create$ rule4_3-defeated rule3 $$$ $?gen109 ) ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ( calc ( bind $?gen108 ( create$ rule4_3-defeated rule3 $?gen109 ) ) ) ?gen106 <- ( movement_restrictions ( positive-defeated $?gen108 ) )"))

([rule4_3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4_3-defeasibly-dot-gen600)
   (depends-on declare movement_restrictions movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4_3] ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule4_3 $? ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) ( not ( and ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( positive ~ 2 ) ( negative-overruled $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ) ) => ?gen106 <- ( movement_restrictions ( negative 0 ) )"))

([rule4_3-defeasibly] of derived-attribute-rule
   (pos-name rule4_3-defeasibly-gen602)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4_3] ) ) ) ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ?gen106 <- ( movement_restrictions ( negative 1 ) ( negative-derivator rule4_3 ?gen113 ) )"))

([rule4_3-overruled-dot] of derived-attribute-rule
   (pos-name rule4_3-overruled-dot-gen604)
   (depends-on declare movement_restrictions movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4_3] ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen109 ) ( positive-overruled $?gen110 & : ( subseq-pos ( create$ rule4_3-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) ( not ( and ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( negative-defeated $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ) ) => ( calc ( bind $?gen111 ( delete-member$ $?gen110 ( create$ rule4_3-overruled $?gen109 ) ) ) ) ?gen106 <- ( movement_restrictions ( positive-overruled $?gen111 ) )"))

([rule4_3-overruled] of derived-attribute-rule
   (pos-name rule4_3-overruled-gen606)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4_3] ) ) ) ?gen113 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen112 & : ( >= ?gen112 1 ) ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen109 ) ( positive-overruled $?gen110 & : ( not ( subseq-pos ( create$ rule4_3-overruled $?gen109 $$$ $?gen110 ) ) ) ) ( negative-defeated $?gen108 & : ( not ( member$ rule4_3 $?gen108 ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ( calc ( bind $?gen111 ( create$ rule4_3-overruled $?gen109 $?gen110 ) ) ) ?gen106 <- ( movement_restrictions ( positive-overruled $?gen111 ) )"))

([rule4_3-support] of derived-attribute-rule
   (pos-name rule4_3-support-gen608)
   (depends-on declare movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4_3] ) ) ) ?gen105 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen106 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen108 & : ( not ( subseq-pos ( create$ rule4_3 ?gen105 $$$ $?gen108 ) ) ) ) ) ( test ( eq ( class ?gen106 ) movement_restrictions ) ) => ( calc ( bind $?gen111 ( create$ rule4_3 ?gen105 $?gen108 ) ) ) ?gen106 <- ( movement_restrictions ( negative-support $?gen111 ) )"))

([rule4_2-defeated-dot] of derived-attribute-rule
   (pos-name rule4_2-defeated-dot-gen610)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4_2] ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen100 & : ( subseq-pos ( create$ rule4_2-defeated rule2 $$$ $?gen100 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) ( not ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ) => ( calc ( bind $?gen99 ( delete-member$ $?gen100 ( create$ rule4_2-defeated rule2 ) ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-defeated $?gen99 ) )"))

([rule4_2-defeated] of derived-attribute-rule
   (pos-name rule4_2-defeated-gen612)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4_2] ) ) ) ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen100 & : ( not ( subseq-pos ( create$ rule4_2-defeated rule2 $$$ $?gen100 ) ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen99 ( create$ rule4_2-defeated rule2 $?gen100 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-defeated $?gen99 ) )"))

([rule4_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4_2-defeasibly-dot-gen614)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4_2] ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule4_2 $? ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) ( not ( and ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ) ) => ?gen97 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule4_2-defeasibly] of derived-attribute-rule
   (pos-name rule4_2-defeasibly-gen616)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4_2] ) ) ) ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ?gen97 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule4_2 ?gen104 ) )"))

([rule4_2-overruled-dot] of derived-attribute-rule
   (pos-name rule4_2-overruled-dot-gen618)
   (depends-on declare psychological_abuse_on_duty movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4_2] ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen100 ) ( positive-overruled $?gen101 & : ( subseq-pos ( create$ rule4_2-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) ( not ( and ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( negative-defeated $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ) ) => ( calc ( bind $?gen102 ( delete-member$ $?gen101 ( create$ rule4_2-overruled $?gen100 ) ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-overruled $?gen102 ) )"))

([rule4_2-overruled] of derived-attribute-rule
   (pos-name rule4_2-overruled-gen620)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4_2] ) ) ) ?gen104 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen103 & : ( >= ?gen103 1 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen100 ) ( positive-overruled $?gen101 & : ( not ( subseq-pos ( create$ rule4_2-overruled $?gen100 $$$ $?gen101 ) ) ) ) ( negative-defeated $?gen99 & : ( not ( member$ rule4_2 $?gen99 ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen102 ( create$ rule4_2-overruled $?gen100 $?gen101 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( positive-overruled $?gen102 ) )"))

([rule4_2-support] of derived-attribute-rule
   (pos-name rule4_2-support-gen622)
   (depends-on declare movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4_2] ) ) ) ?gen96 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen97 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen99 & : ( not ( subseq-pos ( create$ rule4_2 ?gen96 $$$ $?gen99 ) ) ) ) ) ( test ( eq ( class ?gen97 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen102 ( create$ rule4_2 ?gen96 $?gen99 ) ) ) ?gen97 <- ( psychological_abuse_on_duty ( negative-support $?gen102 ) )"))

([rule4_1-defeated-dot] of derived-attribute-rule
   (pos-name rule4_1-defeated-dot-gen624)
   (depends-on declare psychological_abuse movement_restrictions_on_duty)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule4_1] ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen91 & : ( subseq-pos ( create$ rule4_1-defeated rule1 $$$ $?gen91 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) ( not ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ) => ( calc ( bind $?gen90 ( delete-member$ $?gen91 ( create$ rule4_1-defeated rule1 ) ) ) ) ?gen88 <- ( psychological_abuse ( positive-defeated $?gen90 ) )"))

([rule4_1-defeated] of derived-attribute-rule
   (pos-name rule4_1-defeated-gen626)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule4_1] ) ) ) ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen91 & : ( not ( subseq-pos ( create$ rule4_1-defeated rule1 $$$ $?gen91 ) ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ( calc ( bind $?gen90 ( create$ rule4_1-defeated rule1 $?gen91 ) ) ) ?gen88 <- ( psychological_abuse ( positive-defeated $?gen90 ) )"))

([rule4_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4_1-defeasibly-dot-gen628)
   (depends-on declare psychological_abuse movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4_1] ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule4_1 $? ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) ( not ( and ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ) ) => ?gen88 <- ( psychological_abuse ( negative 0 ) )"))

([rule4_1-defeasibly] of derived-attribute-rule
   (pos-name rule4_1-defeasibly-gen630)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4_1] ) ) ) ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ?gen88 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule4_1 ?gen95 ) )"))

([rule4_1-overruled-dot] of derived-attribute-rule
   (pos-name rule4_1-overruled-dot-gen632)
   (depends-on declare psychological_abuse movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4_1] ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen91 ) ( positive-overruled $?gen92 & : ( subseq-pos ( create$ rule4_1-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) ( not ( and ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( negative-defeated $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ) ) => ( calc ( bind $?gen93 ( delete-member$ $?gen92 ( create$ rule4_1-overruled $?gen91 ) ) ) ) ?gen88 <- ( psychological_abuse ( positive-overruled $?gen93 ) )"))

([rule4_1-overruled] of derived-attribute-rule
   (pos-name rule4_1-overruled-gen634)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4_1] ) ) ) ?gen95 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive ?gen94 & : ( >= ?gen94 1 ) ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen91 ) ( positive-overruled $?gen92 & : ( not ( subseq-pos ( create$ rule4_1-overruled $?gen91 $$$ $?gen92 ) ) ) ) ( negative-defeated $?gen90 & : ( not ( member$ rule4_1 $?gen90 ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ( calc ( bind $?gen93 ( create$ rule4_1-overruled $?gen91 $?gen92 ) ) ) ?gen88 <- ( psychological_abuse ( positive-overruled $?gen93 ) )"))

([rule4_1-support] of derived-attribute-rule
   (pos-name rule4_1-support-gen636)
   (depends-on declare movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4_1] ) ) ) ?gen87 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ?gen88 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen90 & : ( not ( subseq-pos ( create$ rule4_1 ?gen87 $$$ $?gen90 ) ) ) ) ) ( test ( eq ( class ?gen88 ) psychological_abuse ) ) => ( calc ( bind $?gen93 ( create$ rule4_1 ?gen87 $?gen90 ) ) ) ?gen88 <- ( psychological_abuse ( negative-support $?gen93 ) )"))

([rule4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4-defeasibly-dot-gen638)
   (depends-on declare movement_restrictions_on_duty lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4] ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule4 $? ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) ( not ( and ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( negative ~ 2 ) ( positive-overruled $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ) ) => ?gen79 <- ( movement_restrictions_on_duty ( positive 0 ) )"))

([rule4-defeasibly] of derived-attribute-rule
   (pos-name rule4-defeasibly-gen640)
   (depends-on declare lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4] ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) => ?gen79 <- ( movement_restrictions_on_duty ( positive 1 ) ( positive-derivator rule4 ?gen86 ) )"))

([rule4-overruled-dot] of derived-attribute-rule
   (pos-name rule4-overruled-dot-gen642)
   (depends-on declare movement_restrictions_on_duty lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4] ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen82 ) ( negative-overruled $?gen83 & : ( subseq-pos ( create$ rule4-overruled $?gen82 $$$ $?gen83 ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) ( not ( and ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( positive-defeated $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ) ) => ( calc ( bind $?gen84 ( delete-member$ $?gen83 ( create$ rule4-overruled $?gen82 ) ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( negative-overruled $?gen84 ) )"))

([rule4-overruled] of derived-attribute-rule
   (pos-name rule4-overruled-gen644)
   (depends-on declare lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4] ) ) ) ?gen86 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen85 & : ( >= ?gen85 1 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( negative-support $?gen82 ) ( negative-overruled $?gen83 & : ( not ( subseq-pos ( create$ rule4-overruled $?gen82 $$$ $?gen83 ) ) ) ) ( positive-defeated $?gen81 & : ( not ( member$ rule4 $?gen81 ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen84 ( create$ rule4-overruled $?gen82 $?gen83 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( negative-overruled $?gen84 ) )"))

([rule4-support] of derived-attribute-rule
   (pos-name rule4-support-gen646)
   (depends-on declare lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ?gen79 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ( positive-support $?gen81 & : ( not ( subseq-pos ( create$ rule4 ?gen78 $$$ $?gen81 ) ) ) ) ) ( test ( eq ( class ?gen79 ) movement_restrictions_on_duty ) ) => ( calc ( bind $?gen84 ( create$ rule4 ?gen78 $?gen81 ) ) ) ?gen79 <- ( movement_restrictions_on_duty ( positive-support $?gen84 ) )"))

([rule3_2-defeated-dot] of derived-attribute-rule
   (pos-name rule3_2-defeated-dot-gen648)
   (depends-on declare psychological_abuse_on_duty movement_restrictions)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule3_2] ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen73 & : ( subseq-pos ( create$ rule3_2-defeated rule2 $$$ $?gen73 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) ( not ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ) => ( calc ( bind $?gen72 ( delete-member$ $?gen73 ( create$ rule3_2-defeated rule2 ) ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-defeated $?gen72 ) )"))

([rule3_2-defeated] of derived-attribute-rule
   (pos-name rule3_2-defeated-gen650)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule3_2] ) ) ) ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-defeated $?gen73 & : ( not ( subseq-pos ( create$ rule3_2-defeated rule2 $$$ $?gen73 ) ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen72 ( create$ rule3_2-defeated rule2 $?gen73 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-defeated $?gen72 ) )"))

([rule3_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3_2-defeasibly-dot-gen652)
   (depends-on declare psychological_abuse_on_duty movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3_2] ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule3_2 $? ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) ( not ( and ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive ~ 2 ) ( negative-overruled $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ) ) => ?gen70 <- ( psychological_abuse_on_duty ( negative 0 ) )"))

([rule3_2-defeasibly] of derived-attribute-rule
   (pos-name rule3_2-defeasibly-gen654)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3_2] ) ) ) ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ?gen70 <- ( psychological_abuse_on_duty ( negative 1 ) ( negative-derivator rule3_2 ?gen77 ) )"))

([rule3_2-overruled-dot] of derived-attribute-rule
   (pos-name rule3_2-overruled-dot-gen656)
   (depends-on declare psychological_abuse_on_duty movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3_2] ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen73 ) ( positive-overruled $?gen74 & : ( subseq-pos ( create$ rule3_2-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) ( not ( and ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( negative-defeated $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ) ) => ( calc ( bind $?gen75 ( delete-member$ $?gen74 ( create$ rule3_2-overruled $?gen73 ) ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-overruled $?gen75 ) )"))

([rule3_2-overruled] of derived-attribute-rule
   (pos-name rule3_2-overruled-gen658)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3_2] ) ) ) ?gen77 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen76 & : ( >= ?gen76 1 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen73 ) ( positive-overruled $?gen74 & : ( not ( subseq-pos ( create$ rule3_2-overruled $?gen73 $$$ $?gen74 ) ) ) ) ( negative-defeated $?gen72 & : ( not ( member$ rule3_2 $?gen72 ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen75 ( create$ rule3_2-overruled $?gen73 $?gen74 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( positive-overruled $?gen75 ) )"))

([rule3_2-support] of derived-attribute-rule
   (pos-name rule3_2-support-gen660)
   (depends-on declare movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3_2] ) ) ) ?gen69 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen70 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen72 & : ( not ( subseq-pos ( create$ rule3_2 ?gen69 $$$ $?gen72 ) ) ) ) ) ( test ( eq ( class ?gen70 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen75 ( create$ rule3_2 ?gen69 $?gen72 ) ) ) ?gen70 <- ( psychological_abuse_on_duty ( negative-support $?gen75 ) )"))

([rule3_1-defeated-dot] of derived-attribute-rule
   (pos-name rule3_1-defeated-dot-gen662)
   (depends-on declare psychological_abuse movement_restrictions)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule3_1] ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen64 & : ( subseq-pos ( create$ rule3_1-defeated rule1 $$$ $?gen64 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) ( not ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ) => ( calc ( bind $?gen63 ( delete-member$ $?gen64 ( create$ rule3_1-defeated rule1 ) ) ) ) ?gen61 <- ( psychological_abuse ( positive-defeated $?gen63 ) )"))

([rule3_1-defeated] of derived-attribute-rule
   (pos-name rule3_1-defeated-gen664)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule3_1] ) ) ) ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen64 & : ( not ( subseq-pos ( create$ rule3_1-defeated rule1 $$$ $?gen64 ) ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ( calc ( bind $?gen63 ( create$ rule3_1-defeated rule1 $?gen64 ) ) ) ?gen61 <- ( psychological_abuse ( positive-defeated $?gen63 ) )"))

([rule3_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3_1-defeasibly-dot-gen666)
   (depends-on declare psychological_abuse movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3_1] ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule3_1 $? ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) ( not ( and ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ) ) => ?gen61 <- ( psychological_abuse ( negative 0 ) )"))

([rule3_1-defeasibly] of derived-attribute-rule
   (pos-name rule3_1-defeasibly-gen668)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3_1] ) ) ) ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ?gen61 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule3_1 ?gen68 ) )"))

([rule3_1-overruled-dot] of derived-attribute-rule
   (pos-name rule3_1-overruled-dot-gen670)
   (depends-on declare psychological_abuse movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3_1] ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen64 ) ( positive-overruled $?gen65 & : ( subseq-pos ( create$ rule3_1-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) ( not ( and ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( negative-defeated $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ) ) => ( calc ( bind $?gen66 ( delete-member$ $?gen65 ( create$ rule3_1-overruled $?gen64 ) ) ) ) ?gen61 <- ( psychological_abuse ( positive-overruled $?gen66 ) )"))

([rule3_1-overruled] of derived-attribute-rule
   (pos-name rule3_1-overruled-gen672)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3_1] ) ) ) ?gen68 <- ( movement_restrictions ( defendant ?Defendant ) ( positive ?gen67 & : ( >= ?gen67 1 ) ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen64 ) ( positive-overruled $?gen65 & : ( not ( subseq-pos ( create$ rule3_1-overruled $?gen64 $$$ $?gen65 ) ) ) ) ( negative-defeated $?gen63 & : ( not ( member$ rule3_1 $?gen63 ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ( calc ( bind $?gen66 ( create$ rule3_1-overruled $?gen64 $?gen65 ) ) ) ?gen61 <- ( psychological_abuse ( positive-overruled $?gen66 ) )"))

([rule3_1-support] of derived-attribute-rule
   (pos-name rule3_1-support-gen674)
   (depends-on declare movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3_1] ) ) ) ?gen60 <- ( movement_restrictions ( defendant ?Defendant ) ) ?gen61 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen63 & : ( not ( subseq-pos ( create$ rule3_1 ?gen60 $$$ $?gen63 ) ) ) ) ) ( test ( eq ( class ?gen61 ) psychological_abuse ) ) => ( calc ( bind $?gen66 ( create$ rule3_1 ?gen60 $?gen63 ) ) ) ?gen61 <- ( psychological_abuse ( negative-support $?gen66 ) )"))

([rule3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3-defeasibly-dot-gen676)
   (depends-on declare movement_restrictions lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3] ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule3 $? ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) ( not ( and ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ) ) => ?gen52 <- ( movement_restrictions ( positive 0 ) )"))

([rule3-defeasibly] of derived-attribute-rule
   (pos-name rule3-defeasibly-gen678)
   (depends-on declare lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3] ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) => ?gen52 <- ( movement_restrictions ( positive 1 ) ( positive-derivator rule3 ?gen59 ) )"))

([rule3-overruled-dot] of derived-attribute-rule
   (pos-name rule3-overruled-dot-gen680)
   (depends-on declare movement_restrictions lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3] ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( subseq-pos ( create$ rule3-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) ( not ( and ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( positive-defeated $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ) ) => ( calc ( bind $?gen57 ( delete-member$ $?gen56 ( create$ rule3-overruled $?gen55 ) ) ) ) ?gen52 <- ( movement_restrictions ( negative-overruled $?gen57 ) )"))

([rule3-overruled] of derived-attribute-rule
   (pos-name rule3-overruled-gen682)
   (depends-on declare lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3] ) ) ) ?gen59 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ( positive ?gen58 & : ( >= ?gen58 1 ) ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( negative-support $?gen55 ) ( negative-overruled $?gen56 & : ( not ( subseq-pos ( create$ rule3-overruled $?gen55 $$$ $?gen56 ) ) ) ) ( positive-defeated $?gen54 & : ( not ( member$ rule3 $?gen54 ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) => ( calc ( bind $?gen57 ( create$ rule3-overruled $?gen55 $?gen56 ) ) ) ?gen52 <- ( movement_restrictions ( negative-overruled $?gen57 ) )"))

([rule3-support] of derived-attribute-rule
   (pos-name rule3-support-gen684)
   (depends-on declare lc:case movement_restrictions)
   (implies movement_restrictions)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ?gen52 <- ( movement_restrictions ( defendant ?Defendant ) ( positive-support $?gen54 & : ( not ( subseq-pos ( create$ rule3 ?gen51 $$$ $?gen54 ) ) ) ) ) ( test ( eq ( class ?gen52 ) movement_restrictions ) ) => ( calc ( bind $?gen57 ( create$ rule3 ?gen51 $?gen54 ) ) ) ?gen52 <- ( movement_restrictions ( positive-support $?gen57 ) )"))

([rule2_1-defeated-dot] of derived-attribute-rule
   (pos-name rule2_1-defeated-dot-gen686)
   (depends-on declare psychological_abuse psychological_abuse_on_duty)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule2_1] ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen46 & : ( subseq-pos ( create$ rule2_1-defeated rule1 $$$ $?gen46 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) ( not ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ) => ( calc ( bind $?gen45 ( delete-member$ $?gen46 ( create$ rule2_1-defeated rule1 ) ) ) ) ?gen43 <- ( psychological_abuse ( positive-defeated $?gen45 ) )"))

([rule2_1-defeated] of derived-attribute-rule
   (pos-name rule2_1-defeated-gen688)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule2_1] ) ) ) ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-defeated $?gen46 & : ( not ( subseq-pos ( create$ rule2_1-defeated rule1 $$$ $?gen46 ) ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ( calc ( bind $?gen45 ( create$ rule2_1-defeated rule1 $?gen46 ) ) ) ?gen43 <- ( psychological_abuse ( positive-defeated $?gen45 ) )"))

([rule2_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2_1-defeasibly-dot-gen690)
   (depends-on declare psychological_abuse psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2_1] ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule2_1 $? ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) ( not ( and ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( positive ~ 2 ) ( negative-overruled $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ) ) => ?gen43 <- ( psychological_abuse ( negative 0 ) )"))

([rule2_1-defeasibly] of derived-attribute-rule
   (pos-name rule2_1-defeasibly-gen692)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2_1] ) ) ) ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ?gen43 <- ( psychological_abuse ( negative 1 ) ( negative-derivator rule2_1 ?gen50 ) )"))

([rule2_1-overruled-dot] of derived-attribute-rule
   (pos-name rule2_1-overruled-dot-gen694)
   (depends-on declare psychological_abuse psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2_1] ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen46 ) ( positive-overruled $?gen47 & : ( subseq-pos ( create$ rule2_1-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) ( not ( and ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( negative-defeated $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ) ) => ( calc ( bind $?gen48 ( delete-member$ $?gen47 ( create$ rule2_1-overruled $?gen46 ) ) ) ) ?gen43 <- ( psychological_abuse ( positive-overruled $?gen48 ) )"))

([rule2_1-overruled] of derived-attribute-rule
   (pos-name rule2_1-overruled-gen696)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2_1] ) ) ) ?gen50 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen46 ) ( positive-overruled $?gen47 & : ( not ( subseq-pos ( create$ rule2_1-overruled $?gen46 $$$ $?gen47 ) ) ) ) ( negative-defeated $?gen45 & : ( not ( member$ rule2_1 $?gen45 ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ( calc ( bind $?gen48 ( create$ rule2_1-overruled $?gen46 $?gen47 ) ) ) ?gen43 <- ( psychological_abuse ( positive-overruled $?gen48 ) )"))

([rule2_1-support] of derived-attribute-rule
   (pos-name rule2_1-support-gen698)
   (depends-on declare psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2_1] ) ) ) ?gen42 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ?gen43 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen45 & : ( not ( subseq-pos ( create$ rule2_1 ?gen42 $$$ $?gen45 ) ) ) ) ) ( test ( eq ( class ?gen43 ) psychological_abuse ) ) => ( calc ( bind $?gen48 ( create$ rule2_1 ?gen42 $?gen45 ) ) ) ?gen43 <- ( psychological_abuse ( negative-support $?gen48 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen700)
   (depends-on declare psychological_abuse_on_duty lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ) ) => ?gen30 <- ( psychological_abuse_on_duty ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen702)
   (depends-on declare lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) => ?gen30 <- ( psychological_abuse_on_duty ( positive 1 ) ( positive-derivator rule2 ?gen37 ?gen39 ?gen41 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen704)
   (depends-on declare psychological_abuse_on_duty lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( subseq-pos ( create$ rule2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) ( not ( and ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( positive-defeated $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ) ) => ( calc ( bind $?gen35 ( delete-member$ $?gen34 ( create$ rule2-overruled $?gen33 ) ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( negative-overruled $?gen35 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen706)
   (depends-on declare lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen37 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen36 & : ( >= ?gen36 1 ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen38 & : ( >= ?gen38 1 ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ( positive ?gen40 & : ( >= ?gen40 1 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( negative-support $?gen33 ) ( negative-overruled $?gen34 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen33 $$$ $?gen34 ) ) ) ) ( positive-defeated $?gen32 & : ( not ( member$ rule2 $?gen32 ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen35 ( create$ rule2-overruled $?gen33 $?gen34 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( negative-overruled $?gen35 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen708)
   (depends-on declare lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ?gen30 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ( positive-support $?gen32 & : ( not ( subseq-pos ( create$ rule2 ?gen27 ?gen28 ?gen29 $$$ $?gen32 ) ) ) ) ) ( test ( eq ( class ?gen30 ) psychological_abuse_on_duty ) ) => ( calc ( bind $?gen35 ( create$ rule2 ?gen27 ?gen28 ?gen29 $?gen32 ) ) ) ?gen30 <- ( psychological_abuse_on_duty ( positive-support $?gen35 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen710)
   (depends-on declare psychological_abuse lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( psychological_abuse ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen712)
   (depends-on declare lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) => ?gen17 <- ( psychological_abuse ( positive 1 ) ( positive-derivator rule1 ?gen24 ?gen26 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen714)
   (depends-on declare psychological_abuse lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( positive-defeated $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule1-overruled $?gen20 ) ) ) ) ?gen17 <- ( psychological_abuse ( negative-overruled $?gen22 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen716)
   (depends-on declare lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule1 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) => ( calc ( bind $?gen22 ( create$ rule1-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( psychological_abuse ( negative-overruled $?gen22 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen718)
   (depends-on declare lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ?gen17 <- ( psychological_abuse ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule1 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) psychological_abuse ) ) => ( calc ( bind $?gen22 ( create$ rule1 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( psychological_abuse ( positive-support $?gen22 ) )"))

([pn_movement_restrct_death_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_death_max-deductive-gen343)
   (depends-on movement_restrictions_death max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen303 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 12 ) ) ) => ( max_imprisonment ( value 12 ) )")
   (production-rule "( defrule pn_movement_restrct_death_max-deductive-gen343 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen303 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 12 ) ) ) ( make-instance ?oid of max_imprisonment ( value 12 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_death_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_death_min-deductive-gen342)
   (depends-on movement_restrictions_death min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen294 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_movement_restrct_death_min-deductive-gen342 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen294 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([pn_movement_restrct_life_threatening_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_life_threatening_max-deductive-gen341)
   (depends-on movement_restrictions_life_threatening max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen285 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 8 ) ) ) => ( max_imprisonment ( value 8 ) )")
   (production-rule "( defrule pn_movement_restrct_life_threatening_max-deductive-gen341 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen285 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ( make-instance ?oid of max_imprisonment ( value 8 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_life_threatening_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_life_threatening_min-deductive-gen340)
   (depends-on movement_restrictions_life_threatening min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen276 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_movement_restrct_life_threatening_min-deductive-gen340 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen276 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_movement_restrct_on_duty_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_on_duty_max-deductive-gen339)
   (depends-on movement_restrictions_on_duty max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen267 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_movement_restrct_on_duty_max-deductive-gen339 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen267 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_on_duty_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_on_duty_min-deductive-gen338)
   (depends-on movement_restrictions_on_duty min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen258 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_movement_restrct_on_duty_min-deductive-gen338 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen258 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_movement_restrct_max-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_max-deductive-gen337)
   (depends-on movement_restrictions max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen249 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 1 ) ) ) => ( max_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_movement_restrct_max-deductive-gen337 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen249 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 1 ) ) ) ( make-instance ?oid of max_imprisonment ( value 1 ) ) )")
   (derived-class max_imprisonment))

([pn_movement_restrct_min-deductive] of ntm-deductive-rule
   (pos-name pn_movement_restrct_min-deductive-gen336)
   (depends-on movement_restrictions min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen240 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_movement_restrct_min-deductive-gen336 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen240 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([pn_psy_abuse_on_duty_max-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_on_duty_max-deductive-gen335)
   (depends-on psychological_abuse_on_duty max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen231 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 8 ) ) ) => ( max_imprisonment ( value 8 ) )")
   (production-rule "( defrule pn_psy_abuse_on_duty_max-deductive-gen335 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen231 ) ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 8 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 8 ) ) ) ( make-instance ?oid of max_imprisonment ( value 8 ) ) )")
   (derived-class max_imprisonment))

([pn_psy_abuse_on_duty_min-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_on_duty_min-deductive-gen334)
   (depends-on psychological_abuse_on_duty min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen222 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 1 ) ) ) => ( min_imprisonment ( value 1 ) )")
   (production-rule "( defrule pn_psy_abuse_on_duty_min-deductive-gen334 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen222 ) ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 1 ) ) ) ( make-instance ?oid of min_imprisonment ( value 1 ) ) )")
   (derived-class min_imprisonment))

([pn_psy_abuse_max-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_max-deductive-gen333)
   (depends-on psychological_abuse max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen213 <- ( psychological_abuse ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 3 ) ) ) => ( max_imprisonment ( value 3 ) )")
   (production-rule "( defrule pn_psy_abuse_max-deductive-gen333 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen213 ) ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 3 ) ) ) ( make-instance ?oid of max_imprisonment ( value 3 ) ) )")
   (derived-class max_imprisonment))

([pn_psy_abuse_min-deductive] of ntm-deductive-rule
   (pos-name pn_psy_abuse_min-deductive-gen332)
   (depends-on psychological_abuse min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen204 <- ( psychological_abuse ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 0 ) ) ) => ( min_imprisonment ( value 0 ) )")
   (production-rule "( defrule pn_psy_abuse_min-deductive-gen332 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen204 ) ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 0 ) ) ) ( make-instance ?oid of min_imprisonment ( value 0 ) ) )")
   (derived-class min_imprisonment))

([rule6_4-deductive] of ntm-deductive-rule
   (pos-name rule6_4-deductive-gen331)
   (depends-on movement_restrictions_death movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen195 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_4-deductive-gen331 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen195 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule6_3-deductive] of ntm-deductive-rule
   (pos-name rule6_3-deductive-gen330)
   (depends-on movement_restrictions_death movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen186 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_3-deductive-gen330 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen186 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule6_2-deductive] of ntm-deductive-rule
   (pos-name rule6_2-deductive-gen329)
   (depends-on movement_restrictions_death psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen177 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_2-deductive-gen329 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen177 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule6_1-deductive] of ntm-deductive-rule
   (pos-name rule6_1-deductive-gen328)
   (depends-on movement_restrictions_death psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen168 <- ( movement_restrictions_death ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_1-deductive-gen328 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen168 ) ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule6-deductive] of ntm-deductive-rule
   (pos-name rule6-deductive-gen327)
   (depends-on lc:case movement_restrictions_death)
   (implies movement_restrictions_death)
   (deductive-rule "?gen159 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ) ( not ( movement_restrictions_death ( defendant ?Defendant ) ) ) => ( movement_restrictions_death ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6-deductive-gen327 ( declare ( salience ( calc-salience movement_restrictions_death ) ) ) ( run-deductive-rules ) ( object ( name ?gen159 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"FATAL\" ) ) ( not ( object ( is-a movement_restrictions_death ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_death ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_death ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_death ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_death))

([rule5_4-deductive] of ntm-deductive-rule
   (pos-name rule5_4-deductive-gen326)
   (depends-on movement_restrictions_life_threatening movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen150 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_4-deductive-gen326 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen150 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule5_3-deductive] of ntm-deductive-rule
   (pos-name rule5_3-deductive-gen325)
   (depends-on movement_restrictions_life_threatening movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen141 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_3-deductive-gen325 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen141 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule5_2-deductive] of ntm-deductive-rule
   (pos-name rule5_2-deductive-gen324)
   (depends-on movement_restrictions_life_threatening psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen132 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_2-deductive-gen324 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen132 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule5_1-deductive] of ntm-deductive-rule
   (pos-name rule5_1-deductive-gen323)
   (depends-on movement_restrictions_life_threatening psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen123 <- ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_1-deductive-gen323 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen123 ) ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule5-deductive] of ntm-deductive-rule
   (pos-name rule5-deductive-gen322)
   (depends-on lc:case movement_restrictions_life_threatening)
   (implies movement_restrictions_life_threatening)
   (deductive-rule "?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ( not ( movement_restrictions_life_threatening ( defendant ?Defendant ) ) ) => ( movement_restrictions_life_threatening ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5-deductive-gen322 ( declare ( salience ( calc-salience movement_restrictions_life_threatening ) ) ) ( run-deductive-rules ) ( object ( name ?gen114 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:injury_severity \"LIFE_THREATENING\" ) ) ( not ( object ( is-a movement_restrictions_life_threatening ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_life_threatening ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_life_threatening ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_life_threatening ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_life_threatening))

([rule4_3-deductive] of ntm-deductive-rule
   (pos-name rule4_3-deductive-gen321)
   (depends-on movement_restrictions_on_duty movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen105 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4_3-deductive-gen321 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen105 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule4_2-deductive] of ntm-deductive-rule
   (pos-name rule4_2-deductive-gen320)
   (depends-on movement_restrictions_on_duty psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen96 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4_2-deductive-gen320 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen96 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule4_1-deductive] of ntm-deductive-rule
   (pos-name rule4_1-deductive-gen319)
   (depends-on movement_restrictions_on_duty psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen87 <- ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4_1-deductive-gen319 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen87 ) ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule4-deductive] of ntm-deductive-rule
   (pos-name rule4-deductive-gen318)
   (depends-on lc:case movement_restrictions_on_duty)
   (implies movement_restrictions_on_duty)
   (deductive-rule "?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( movement_restrictions_on_duty ( defendant ?Defendant ) ) ) => ( movement_restrictions_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4-deductive-gen318 ( declare ( salience ( calc-salience movement_restrictions_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen78 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( object ( is-a movement_restrictions_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions_on_duty ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions_on_duty ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions_on_duty))

([rule3_2-deductive] of ntm-deductive-rule
   (pos-name rule3_2-deductive-gen317)
   (depends-on movement_restrictions psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen69 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3_2-deductive-gen317 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen69 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule3_1-deductive] of ntm-deductive-rule
   (pos-name rule3_1-deductive-gen316)
   (depends-on movement_restrictions psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen60 <- ( movement_restrictions ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3_1-deductive-gen316 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen60 ) ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule3-deductive] of ntm-deductive-rule
   (pos-name rule3-deductive-gen315)
   (depends-on lc:case movement_restrictions)
   (implies movement_restrictions)
   (deductive-rule "?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( not ( movement_restrictions ( defendant ?Defendant ) ) ) => ( movement_restrictions ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3-deductive-gen315 ( declare ( salience ( calc-salience movement_restrictions ) ) ) ( run-deductive-rules ) ( object ( name ?gen51 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_defendants ?num_of_defendants ) ) ( not ( object ( is-a movement_restrictions ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat movement_restrictions ?Defendant ) ) ) ( make-instance ?oid of movement_restrictions ( defendant ?Defendant ) ) )")
   (derived-class movement_restrictions))

([rule2_1-deductive] of ntm-deductive-rule
   (pos-name rule2_1-deductive-gen314)
   (depends-on psychological_abuse_on_duty psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen42 <- ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2_1-deductive-gen314 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen42 ) ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen313)
   (depends-on lc:case lc:case lc:case psychological_abuse_on_duty)
   (implies psychological_abuse_on_duty)
   (deductive-rule "?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( psychological_abuse_on_duty ( defendant ?Defendant ) ) ) => ( psychological_abuse_on_duty ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen313 ( declare ( salience ( calc-salience psychological_abuse_on_duty ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ( object ( name ?gen29 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:on_duty \"true\" ) ) ( not ( object ( is-a psychological_abuse_on_duty ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_on_duty ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_on_duty ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_on_duty))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen312)
   (depends-on lc:case lc:case psychological_abuse)
   (implies psychological_abuse)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ( not ( psychological_abuse ( defendant ?Defendant ) ) ) => ( psychological_abuse ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen312 ( declare ( salience ( calc-salience psychological_abuse ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"false\" ) ) ( not ( object ( is-a psychological_abuse ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse))

