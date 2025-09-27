([pn_phy_psy_more_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_max-defeasibly-dot-gen265)
   (depends-on declare max_imprisonment physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_psy_more_person_max] ) ) ) ?gen235 <- ( max_imprisonment ( value 15 ) ( positive 1 ) ( positive-derivator pn_phy_psy_more_person_max $? ) ) ( test ( eq ( class ?gen235 ) max_imprisonment ) ) ( not ( and ?gen242 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen237 & : ( not ( member$ pn_phy_psy_more_person_max $?gen237 ) ) ) ) ) ) => ?gen235 <- ( max_imprisonment ( positive 0 ) )"))

([pn_phy_psy_more_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_max-defeasibly-gen267)
   (depends-on declare physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_psy_more_person_max] ) ) ) ?gen242 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( max_imprisonment ( value 15 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen237 & : ( not ( member$ pn_phy_psy_more_person_max $?gen237 ) ) ) ) ( test ( eq ( class ?gen235 ) max_imprisonment ) ) => ?gen235 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_phy_psy_more_person_max ?gen242 ) )"))

([pn_phy_psy_more_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_max-overruled-dot-gen269)
   (depends-on declare max_imprisonment physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_psy_more_person_max] ) ) ) ?gen235 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen238 ) ( negative-overruled $?gen239 & : ( subseq-pos ( create$ pn_phy_psy_more_person_max-overruled $?gen238 $$$ $?gen239 ) ) ) ) ( test ( eq ( class ?gen235 ) max_imprisonment ) ) ( not ( and ?gen242 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( max_imprisonment ( positive-defeated $?gen237 & : ( not ( member$ pn_phy_psy_more_person_max $?gen237 ) ) ) ) ) ) => ( calc ( bind $?gen240 ( delete-member$ $?gen239 ( create$ pn_phy_psy_more_person_max-overruled $?gen238 ) ) ) ) ?gen235 <- ( max_imprisonment ( negative-overruled $?gen240 ) )"))

([pn_phy_psy_more_person_max-overruled] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_max-overruled-gen271)
   (depends-on declare physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_psy_more_person_max] ) ) ) ?gen242 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen241 & : ( >= ?gen241 1 ) ) ) ?gen235 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen238 ) ( negative-overruled $?gen239 & : ( not ( subseq-pos ( create$ pn_phy_psy_more_person_max-overruled $?gen238 $$$ $?gen239 ) ) ) ) ( positive-defeated $?gen237 & : ( not ( member$ pn_phy_psy_more_person_max $?gen237 ) ) ) ) ( test ( eq ( class ?gen235 ) max_imprisonment ) ) => ( calc ( bind $?gen240 ( create$ pn_phy_psy_more_person_max-overruled $?gen238 $?gen239 ) ) ) ?gen235 <- ( max_imprisonment ( negative-overruled $?gen240 ) )"))

([pn_phy_psy_more_person_max-support] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_max-support-gen273)
   (depends-on declare physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_psy_more_person_max] ) ) ) ?gen234 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ?gen235 <- ( max_imprisonment ( value 15 ) ( positive-support $?gen237 & : ( not ( subseq-pos ( create$ pn_phy_psy_more_person_max ?gen234 $$$ $?gen237 ) ) ) ) ) ( test ( eq ( class ?gen235 ) max_imprisonment ) ) => ( calc ( bind $?gen240 ( create$ pn_phy_psy_more_person_max ?gen234 $?gen237 ) ) ) ?gen235 <- ( max_imprisonment ( positive-support $?gen240 ) )"))

([pn_phy_psy_more_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_min-defeasibly-dot-gen275)
   (depends-on declare min_imprisonment physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_psy_more_person_min] ) ) ) ?gen226 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_phy_psy_more_person_min $? ) ) ( test ( eq ( class ?gen226 ) min_imprisonment ) ) ( not ( and ?gen233 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen228 & : ( not ( member$ pn_phy_psy_more_person_min $?gen228 ) ) ) ) ) ) => ?gen226 <- ( min_imprisonment ( positive 0 ) )"))

([pn_phy_psy_more_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_min-defeasibly-gen277)
   (depends-on declare physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_psy_more_person_min] ) ) ) ?gen233 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen228 & : ( not ( member$ pn_phy_psy_more_person_min $?gen228 ) ) ) ) ( test ( eq ( class ?gen226 ) min_imprisonment ) ) => ?gen226 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_phy_psy_more_person_min ?gen233 ) )"))

([pn_phy_psy_more_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_min-overruled-dot-gen279)
   (depends-on declare min_imprisonment physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_psy_more_person_min] ) ) ) ?gen226 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen229 ) ( negative-overruled $?gen230 & : ( subseq-pos ( create$ pn_phy_psy_more_person_min-overruled $?gen229 $$$ $?gen230 ) ) ) ) ( test ( eq ( class ?gen226 ) min_imprisonment ) ) ( not ( and ?gen233 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( min_imprisonment ( positive-defeated $?gen228 & : ( not ( member$ pn_phy_psy_more_person_min $?gen228 ) ) ) ) ) ) => ( calc ( bind $?gen231 ( delete-member$ $?gen230 ( create$ pn_phy_psy_more_person_min-overruled $?gen229 ) ) ) ) ?gen226 <- ( min_imprisonment ( negative-overruled $?gen231 ) )"))

([pn_phy_psy_more_person_min-overruled] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_min-overruled-gen281)
   (depends-on declare physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_psy_more_person_min] ) ) ) ?gen233 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen232 & : ( >= ?gen232 1 ) ) ) ?gen226 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen229 ) ( negative-overruled $?gen230 & : ( not ( subseq-pos ( create$ pn_phy_psy_more_person_min-overruled $?gen229 $$$ $?gen230 ) ) ) ) ( positive-defeated $?gen228 & : ( not ( member$ pn_phy_psy_more_person_min $?gen228 ) ) ) ) ( test ( eq ( class ?gen226 ) min_imprisonment ) ) => ( calc ( bind $?gen231 ( create$ pn_phy_psy_more_person_min-overruled $?gen229 $?gen230 ) ) ) ?gen226 <- ( min_imprisonment ( negative-overruled $?gen231 ) )"))

([pn_phy_psy_more_person_min-support] of derived-attribute-rule
   (pos-name pn_phy_psy_more_person_min-support-gen283)
   (depends-on declare physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_psy_more_person_min] ) ) ) ?gen225 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ?gen226 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen228 & : ( not ( subseq-pos ( create$ pn_phy_psy_more_person_min ?gen225 $$$ $?gen228 ) ) ) ) ) ( test ( eq ( class ?gen226 ) min_imprisonment ) ) => ( calc ( bind $?gen231 ( create$ pn_phy_psy_more_person_min ?gen225 $?gen228 ) ) ) ?gen226 <- ( min_imprisonment ( positive-support $?gen231 ) )"))

([pn_phy_psy_one_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_max-defeasibly-dot-gen285)
   (depends-on declare max_imprisonment physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_psy_one_person_max] ) ) ) ?gen217 <- ( max_imprisonment ( value 15 ) ( positive 1 ) ( positive-derivator pn_phy_psy_one_person_max $? ) ) ( test ( eq ( class ?gen217 ) max_imprisonment ) ) ( not ( and ?gen224 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen219 & : ( not ( member$ pn_phy_psy_one_person_max $?gen219 ) ) ) ) ) ) => ?gen217 <- ( max_imprisonment ( positive 0 ) )"))

([pn_phy_psy_one_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_max-defeasibly-gen287)
   (depends-on declare physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_psy_one_person_max] ) ) ) ?gen224 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( max_imprisonment ( value 15 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen219 & : ( not ( member$ pn_phy_psy_one_person_max $?gen219 ) ) ) ) ( test ( eq ( class ?gen217 ) max_imprisonment ) ) => ?gen217 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_phy_psy_one_person_max ?gen224 ) )"))

([pn_phy_psy_one_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_max-overruled-dot-gen289)
   (depends-on declare max_imprisonment physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_psy_one_person_max] ) ) ) ?gen217 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen220 ) ( negative-overruled $?gen221 & : ( subseq-pos ( create$ pn_phy_psy_one_person_max-overruled $?gen220 $$$ $?gen221 ) ) ) ) ( test ( eq ( class ?gen217 ) max_imprisonment ) ) ( not ( and ?gen224 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( max_imprisonment ( positive-defeated $?gen219 & : ( not ( member$ pn_phy_psy_one_person_max $?gen219 ) ) ) ) ) ) => ( calc ( bind $?gen222 ( delete-member$ $?gen221 ( create$ pn_phy_psy_one_person_max-overruled $?gen220 ) ) ) ) ?gen217 <- ( max_imprisonment ( negative-overruled $?gen222 ) )"))

([pn_phy_psy_one_person_max-overruled] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_max-overruled-gen291)
   (depends-on declare physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_psy_one_person_max] ) ) ) ?gen224 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen223 & : ( >= ?gen223 1 ) ) ) ?gen217 <- ( max_imprisonment ( value 15 ) ( negative-support $?gen220 ) ( negative-overruled $?gen221 & : ( not ( subseq-pos ( create$ pn_phy_psy_one_person_max-overruled $?gen220 $$$ $?gen221 ) ) ) ) ( positive-defeated $?gen219 & : ( not ( member$ pn_phy_psy_one_person_max $?gen219 ) ) ) ) ( test ( eq ( class ?gen217 ) max_imprisonment ) ) => ( calc ( bind $?gen222 ( create$ pn_phy_psy_one_person_max-overruled $?gen220 $?gen221 ) ) ) ?gen217 <- ( max_imprisonment ( negative-overruled $?gen222 ) )"))

([pn_phy_psy_one_person_max-support] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_max-support-gen293)
   (depends-on declare physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_psy_one_person_max] ) ) ) ?gen216 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen217 <- ( max_imprisonment ( value 15 ) ( positive-support $?gen219 & : ( not ( subseq-pos ( create$ pn_phy_psy_one_person_max ?gen216 $$$ $?gen219 ) ) ) ) ) ( test ( eq ( class ?gen217 ) max_imprisonment ) ) => ( calc ( bind $?gen222 ( create$ pn_phy_psy_one_person_max ?gen216 $?gen219 ) ) ) ?gen217 <- ( max_imprisonment ( positive-support $?gen222 ) )"))

([pn_phy_psy_one_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_min-defeasibly-dot-gen295)
   (depends-on declare min_imprisonment physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_psy_one_person_min] ) ) ) ?gen208 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_phy_psy_one_person_min $? ) ) ( test ( eq ( class ?gen208 ) min_imprisonment ) ) ( not ( and ?gen215 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen210 & : ( not ( member$ pn_phy_psy_one_person_min $?gen210 ) ) ) ) ) ) => ?gen208 <- ( min_imprisonment ( positive 0 ) )"))

([pn_phy_psy_one_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_min-defeasibly-gen297)
   (depends-on declare physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_psy_one_person_min] ) ) ) ?gen215 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen210 & : ( not ( member$ pn_phy_psy_one_person_min $?gen210 ) ) ) ) ( test ( eq ( class ?gen208 ) min_imprisonment ) ) => ?gen208 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_phy_psy_one_person_min ?gen215 ) )"))

([pn_phy_psy_one_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_min-overruled-dot-gen299)
   (depends-on declare min_imprisonment physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_psy_one_person_min] ) ) ) ?gen208 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen211 ) ( negative-overruled $?gen212 & : ( subseq-pos ( create$ pn_phy_psy_one_person_min-overruled $?gen211 $$$ $?gen212 ) ) ) ) ( test ( eq ( class ?gen208 ) min_imprisonment ) ) ( not ( and ?gen215 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( min_imprisonment ( positive-defeated $?gen210 & : ( not ( member$ pn_phy_psy_one_person_min $?gen210 ) ) ) ) ) ) => ( calc ( bind $?gen213 ( delete-member$ $?gen212 ( create$ pn_phy_psy_one_person_min-overruled $?gen211 ) ) ) ) ?gen208 <- ( min_imprisonment ( negative-overruled $?gen213 ) )"))

([pn_phy_psy_one_person_min-overruled] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_min-overruled-gen301)
   (depends-on declare physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_psy_one_person_min] ) ) ) ?gen215 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen214 & : ( >= ?gen214 1 ) ) ) ?gen208 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen211 ) ( negative-overruled $?gen212 & : ( not ( subseq-pos ( create$ pn_phy_psy_one_person_min-overruled $?gen211 $$$ $?gen212 ) ) ) ) ( positive-defeated $?gen210 & : ( not ( member$ pn_phy_psy_one_person_min $?gen210 ) ) ) ) ( test ( eq ( class ?gen208 ) min_imprisonment ) ) => ( calc ( bind $?gen213 ( create$ pn_phy_psy_one_person_min-overruled $?gen211 $?gen212 ) ) ) ?gen208 <- ( min_imprisonment ( negative-overruled $?gen213 ) )"))

([pn_phy_psy_one_person_min-support] of derived-attribute-rule
   (pos-name pn_phy_psy_one_person_min-support-gen303)
   (depends-on declare physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_psy_one_person_min] ) ) ) ?gen207 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen208 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen210 & : ( not ( subseq-pos ( create$ pn_phy_psy_one_person_min ?gen207 $$$ $?gen210 ) ) ) ) ) ( test ( eq ( class ?gen208 ) min_imprisonment ) ) => ( calc ( bind $?gen213 ( create$ pn_phy_psy_one_person_min ?gen207 $?gen210 ) ) ) ?gen208 <- ( min_imprisonment ( positive-support $?gen213 ) )"))

([pn_psy_more_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_more_person_max-defeasibly-dot-gen305)
   (depends-on declare max_imprisonment psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_more_person_max] ) ) ) ?gen199 <- ( max_imprisonment ( value 10 ) ( positive 1 ) ( positive-derivator pn_psy_more_person_max $? ) ) ( test ( eq ( class ?gen199 ) max_imprisonment ) ) ( not ( and ?gen206 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen201 & : ( not ( member$ pn_psy_more_person_max $?gen201 ) ) ) ) ) ) => ?gen199 <- ( max_imprisonment ( positive 0 ) )"))

([pn_psy_more_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_more_person_max-defeasibly-gen307)
   (depends-on declare psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_more_person_max] ) ) ) ?gen206 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( max_imprisonment ( value 10 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen201 & : ( not ( member$ pn_psy_more_person_max $?gen201 ) ) ) ) ( test ( eq ( class ?gen199 ) max_imprisonment ) ) => ?gen199 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_psy_more_person_max ?gen206 ) )"))

([pn_psy_more_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_more_person_max-overruled-dot-gen309)
   (depends-on declare max_imprisonment psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_more_person_max] ) ) ) ?gen199 <- ( max_imprisonment ( value 10 ) ( negative-support $?gen202 ) ( negative-overruled $?gen203 & : ( subseq-pos ( create$ pn_psy_more_person_max-overruled $?gen202 $$$ $?gen203 ) ) ) ) ( test ( eq ( class ?gen199 ) max_imprisonment ) ) ( not ( and ?gen206 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( max_imprisonment ( positive-defeated $?gen201 & : ( not ( member$ pn_psy_more_person_max $?gen201 ) ) ) ) ) ) => ( calc ( bind $?gen204 ( delete-member$ $?gen203 ( create$ pn_psy_more_person_max-overruled $?gen202 ) ) ) ) ?gen199 <- ( max_imprisonment ( negative-overruled $?gen204 ) )"))

([pn_psy_more_person_max-overruled] of derived-attribute-rule
   (pos-name pn_psy_more_person_max-overruled-gen311)
   (depends-on declare psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_more_person_max] ) ) ) ?gen206 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen205 & : ( >= ?gen205 1 ) ) ) ?gen199 <- ( max_imprisonment ( value 10 ) ( negative-support $?gen202 ) ( negative-overruled $?gen203 & : ( not ( subseq-pos ( create$ pn_psy_more_person_max-overruled $?gen202 $$$ $?gen203 ) ) ) ) ( positive-defeated $?gen201 & : ( not ( member$ pn_psy_more_person_max $?gen201 ) ) ) ) ( test ( eq ( class ?gen199 ) max_imprisonment ) ) => ( calc ( bind $?gen204 ( create$ pn_psy_more_person_max-overruled $?gen202 $?gen203 ) ) ) ?gen199 <- ( max_imprisonment ( negative-overruled $?gen204 ) )"))

([pn_psy_more_person_max-support] of derived-attribute-rule
   (pos-name pn_psy_more_person_max-support-gen313)
   (depends-on declare psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_more_person_max] ) ) ) ?gen198 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ?gen199 <- ( max_imprisonment ( value 10 ) ( positive-support $?gen201 & : ( not ( subseq-pos ( create$ pn_psy_more_person_max ?gen198 $$$ $?gen201 ) ) ) ) ) ( test ( eq ( class ?gen199 ) max_imprisonment ) ) => ( calc ( bind $?gen204 ( create$ pn_psy_more_person_max ?gen198 $?gen201 ) ) ) ?gen199 <- ( max_imprisonment ( positive-support $?gen204 ) )"))

([pn_psy_more_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_more_person_min-defeasibly-dot-gen315)
   (depends-on declare min_imprisonment psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_more_person_min] ) ) ) ?gen190 <- ( min_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_psy_more_person_min $? ) ) ( test ( eq ( class ?gen190 ) min_imprisonment ) ) ( not ( and ?gen197 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen192 & : ( not ( member$ pn_psy_more_person_min $?gen192 ) ) ) ) ) ) => ?gen190 <- ( min_imprisonment ( positive 0 ) )"))

([pn_psy_more_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_more_person_min-defeasibly-gen317)
   (depends-on declare psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_more_person_min] ) ) ) ?gen197 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( min_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen192 & : ( not ( member$ pn_psy_more_person_min $?gen192 ) ) ) ) ( test ( eq ( class ?gen190 ) min_imprisonment ) ) => ?gen190 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_psy_more_person_min ?gen197 ) )"))

([pn_psy_more_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_more_person_min-overruled-dot-gen319)
   (depends-on declare min_imprisonment psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_more_person_min] ) ) ) ?gen190 <- ( min_imprisonment ( value 5 ) ( negative-support $?gen193 ) ( negative-overruled $?gen194 & : ( subseq-pos ( create$ pn_psy_more_person_min-overruled $?gen193 $$$ $?gen194 ) ) ) ) ( test ( eq ( class ?gen190 ) min_imprisonment ) ) ( not ( and ?gen197 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( min_imprisonment ( positive-defeated $?gen192 & : ( not ( member$ pn_psy_more_person_min $?gen192 ) ) ) ) ) ) => ( calc ( bind $?gen195 ( delete-member$ $?gen194 ( create$ pn_psy_more_person_min-overruled $?gen193 ) ) ) ) ?gen190 <- ( min_imprisonment ( negative-overruled $?gen195 ) )"))

([pn_psy_more_person_min-overruled] of derived-attribute-rule
   (pos-name pn_psy_more_person_min-overruled-gen321)
   (depends-on declare psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_more_person_min] ) ) ) ?gen197 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive ?gen196 & : ( >= ?gen196 1 ) ) ) ?gen190 <- ( min_imprisonment ( value 5 ) ( negative-support $?gen193 ) ( negative-overruled $?gen194 & : ( not ( subseq-pos ( create$ pn_psy_more_person_min-overruled $?gen193 $$$ $?gen194 ) ) ) ) ( positive-defeated $?gen192 & : ( not ( member$ pn_psy_more_person_min $?gen192 ) ) ) ) ( test ( eq ( class ?gen190 ) min_imprisonment ) ) => ( calc ( bind $?gen195 ( create$ pn_psy_more_person_min-overruled $?gen193 $?gen194 ) ) ) ?gen190 <- ( min_imprisonment ( negative-overruled $?gen195 ) )"))

([pn_psy_more_person_min-support] of derived-attribute-rule
   (pos-name pn_psy_more_person_min-support-gen323)
   (depends-on declare psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_more_person_min] ) ) ) ?gen189 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ?gen190 <- ( min_imprisonment ( value 5 ) ( positive-support $?gen192 & : ( not ( subseq-pos ( create$ pn_psy_more_person_min ?gen189 $$$ $?gen192 ) ) ) ) ) ( test ( eq ( class ?gen190 ) min_imprisonment ) ) => ( calc ( bind $?gen195 ( create$ pn_psy_more_person_min ?gen189 $?gen192 ) ) ) ?gen190 <- ( min_imprisonment ( positive-support $?gen195 ) )"))

([pn_phy_more_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_more_person_max-defeasibly-dot-gen325)
   (depends-on declare max_imprisonment physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_more_person_max] ) ) ) ?gen181 <- ( max_imprisonment ( value 6 ) ( positive 1 ) ( positive-derivator pn_phy_more_person_max $? ) ) ( test ( eq ( class ?gen181 ) max_imprisonment ) ) ( not ( and ?gen188 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen183 & : ( not ( member$ pn_phy_more_person_max $?gen183 ) ) ) ) ) ) => ?gen181 <- ( max_imprisonment ( positive 0 ) )"))

([pn_phy_more_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_more_person_max-defeasibly-gen327)
   (depends-on declare physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_more_person_max] ) ) ) ?gen188 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( max_imprisonment ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen183 & : ( not ( member$ pn_phy_more_person_max $?gen183 ) ) ) ) ( test ( eq ( class ?gen181 ) max_imprisonment ) ) => ?gen181 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_phy_more_person_max ?gen188 ) )"))

([pn_phy_more_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_more_person_max-overruled-dot-gen329)
   (depends-on declare max_imprisonment physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_more_person_max] ) ) ) ?gen181 <- ( max_imprisonment ( value 6 ) ( negative-support $?gen184 ) ( negative-overruled $?gen185 & : ( subseq-pos ( create$ pn_phy_more_person_max-overruled $?gen184 $$$ $?gen185 ) ) ) ) ( test ( eq ( class ?gen181 ) max_imprisonment ) ) ( not ( and ?gen188 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( max_imprisonment ( positive-defeated $?gen183 & : ( not ( member$ pn_phy_more_person_max $?gen183 ) ) ) ) ) ) => ( calc ( bind $?gen186 ( delete-member$ $?gen185 ( create$ pn_phy_more_person_max-overruled $?gen184 ) ) ) ) ?gen181 <- ( max_imprisonment ( negative-overruled $?gen186 ) )"))

([pn_phy_more_person_max-overruled] of derived-attribute-rule
   (pos-name pn_phy_more_person_max-overruled-gen331)
   (depends-on declare physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_more_person_max] ) ) ) ?gen188 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen187 & : ( >= ?gen187 1 ) ) ) ?gen181 <- ( max_imprisonment ( value 6 ) ( negative-support $?gen184 ) ( negative-overruled $?gen185 & : ( not ( subseq-pos ( create$ pn_phy_more_person_max-overruled $?gen184 $$$ $?gen185 ) ) ) ) ( positive-defeated $?gen183 & : ( not ( member$ pn_phy_more_person_max $?gen183 ) ) ) ) ( test ( eq ( class ?gen181 ) max_imprisonment ) ) => ( calc ( bind $?gen186 ( create$ pn_phy_more_person_max-overruled $?gen184 $?gen185 ) ) ) ?gen181 <- ( max_imprisonment ( negative-overruled $?gen186 ) )"))

([pn_phy_more_person_max-support] of derived-attribute-rule
   (pos-name pn_phy_more_person_max-support-gen333)
   (depends-on declare physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_more_person_max] ) ) ) ?gen180 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ) ?gen181 <- ( max_imprisonment ( value 6 ) ( positive-support $?gen183 & : ( not ( subseq-pos ( create$ pn_phy_more_person_max ?gen180 $$$ $?gen183 ) ) ) ) ) ( test ( eq ( class ?gen181 ) max_imprisonment ) ) => ( calc ( bind $?gen186 ( create$ pn_phy_more_person_max ?gen180 $?gen183 ) ) ) ?gen181 <- ( max_imprisonment ( positive-support $?gen186 ) )"))

([pn_phy_more_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_more_person_min-defeasibly-dot-gen335)
   (depends-on declare min_imprisonment physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_more_person_min] ) ) ) ?gen172 <- ( min_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pn_phy_more_person_min $? ) ) ( test ( eq ( class ?gen172 ) min_imprisonment ) ) ( not ( and ?gen179 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen174 & : ( not ( member$ pn_phy_more_person_min $?gen174 ) ) ) ) ) ) => ?gen172 <- ( min_imprisonment ( positive 0 ) )"))

([pn_phy_more_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_more_person_min-defeasibly-gen337)
   (depends-on declare physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_more_person_min] ) ) ) ?gen179 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( min_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen174 & : ( not ( member$ pn_phy_more_person_min $?gen174 ) ) ) ) ( test ( eq ( class ?gen172 ) min_imprisonment ) ) => ?gen172 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_phy_more_person_min ?gen179 ) )"))

([pn_phy_more_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_more_person_min-overruled-dot-gen339)
   (depends-on declare min_imprisonment physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_more_person_min] ) ) ) ?gen172 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen175 ) ( negative-overruled $?gen176 & : ( subseq-pos ( create$ pn_phy_more_person_min-overruled $?gen175 $$$ $?gen176 ) ) ) ) ( test ( eq ( class ?gen172 ) min_imprisonment ) ) ( not ( and ?gen179 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( min_imprisonment ( positive-defeated $?gen174 & : ( not ( member$ pn_phy_more_person_min $?gen174 ) ) ) ) ) ) => ( calc ( bind $?gen177 ( delete-member$ $?gen176 ( create$ pn_phy_more_person_min-overruled $?gen175 ) ) ) ) ?gen172 <- ( min_imprisonment ( negative-overruled $?gen177 ) )"))

([pn_phy_more_person_min-overruled] of derived-attribute-rule
   (pos-name pn_phy_more_person_min-overruled-gen341)
   (depends-on declare physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_more_person_min] ) ) ) ?gen179 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen178 & : ( >= ?gen178 1 ) ) ) ?gen172 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen175 ) ( negative-overruled $?gen176 & : ( not ( subseq-pos ( create$ pn_phy_more_person_min-overruled $?gen175 $$$ $?gen176 ) ) ) ) ( positive-defeated $?gen174 & : ( not ( member$ pn_phy_more_person_min $?gen174 ) ) ) ) ( test ( eq ( class ?gen172 ) min_imprisonment ) ) => ( calc ( bind $?gen177 ( create$ pn_phy_more_person_min-overruled $?gen175 $?gen176 ) ) ) ?gen172 <- ( min_imprisonment ( negative-overruled $?gen177 ) )"))

([pn_phy_more_person_min-support] of derived-attribute-rule
   (pos-name pn_phy_more_person_min-support-gen343)
   (depends-on declare physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_more_person_min] ) ) ) ?gen171 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ) ?gen172 <- ( min_imprisonment ( value 3 ) ( positive-support $?gen174 & : ( not ( subseq-pos ( create$ pn_phy_more_person_min ?gen171 $$$ $?gen174 ) ) ) ) ) ( test ( eq ( class ?gen172 ) min_imprisonment ) ) => ( calc ( bind $?gen177 ( create$ pn_phy_more_person_min ?gen171 $?gen174 ) ) ) ?gen172 <- ( min_imprisonment ( positive-support $?gen177 ) )"))

([pn_phy_one_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_one_person_max-defeasibly-dot-gen345)
   (depends-on declare max_imprisonment physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_one_person_max] ) ) ) ?gen163 <- ( max_imprisonment ( value 6 ) ( positive 1 ) ( positive-derivator pn_phy_one_person_max $? ) ) ( test ( eq ( class ?gen163 ) max_imprisonment ) ) ( not ( and ?gen170 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen165 & : ( not ( member$ pn_phy_one_person_max $?gen165 ) ) ) ) ) ) => ?gen163 <- ( max_imprisonment ( positive 0 ) )"))

([pn_phy_one_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_one_person_max-defeasibly-gen347)
   (depends-on declare physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_one_person_max] ) ) ) ?gen170 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( max_imprisonment ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen165 & : ( not ( member$ pn_phy_one_person_max $?gen165 ) ) ) ) ( test ( eq ( class ?gen163 ) max_imprisonment ) ) => ?gen163 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_phy_one_person_max ?gen170 ) )"))

([pn_phy_one_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_one_person_max-overruled-dot-gen349)
   (depends-on declare max_imprisonment physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_one_person_max] ) ) ) ?gen163 <- ( max_imprisonment ( value 6 ) ( negative-support $?gen166 ) ( negative-overruled $?gen167 & : ( subseq-pos ( create$ pn_phy_one_person_max-overruled $?gen166 $$$ $?gen167 ) ) ) ) ( test ( eq ( class ?gen163 ) max_imprisonment ) ) ( not ( and ?gen170 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( max_imprisonment ( positive-defeated $?gen165 & : ( not ( member$ pn_phy_one_person_max $?gen165 ) ) ) ) ) ) => ( calc ( bind $?gen168 ( delete-member$ $?gen167 ( create$ pn_phy_one_person_max-overruled $?gen166 ) ) ) ) ?gen163 <- ( max_imprisonment ( negative-overruled $?gen168 ) )"))

([pn_phy_one_person_max-overruled] of derived-attribute-rule
   (pos-name pn_phy_one_person_max-overruled-gen351)
   (depends-on declare physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_one_person_max] ) ) ) ?gen170 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen169 & : ( >= ?gen169 1 ) ) ) ?gen163 <- ( max_imprisonment ( value 6 ) ( negative-support $?gen166 ) ( negative-overruled $?gen167 & : ( not ( subseq-pos ( create$ pn_phy_one_person_max-overruled $?gen166 $$$ $?gen167 ) ) ) ) ( positive-defeated $?gen165 & : ( not ( member$ pn_phy_one_person_max $?gen165 ) ) ) ) ( test ( eq ( class ?gen163 ) max_imprisonment ) ) => ( calc ( bind $?gen168 ( create$ pn_phy_one_person_max-overruled $?gen166 $?gen167 ) ) ) ?gen163 <- ( max_imprisonment ( negative-overruled $?gen168 ) )"))

([pn_phy_one_person_max-support] of derived-attribute-rule
   (pos-name pn_phy_one_person_max-support-gen353)
   (depends-on declare physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_one_person_max] ) ) ) ?gen162 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ) ?gen163 <- ( max_imprisonment ( value 6 ) ( positive-support $?gen165 & : ( not ( subseq-pos ( create$ pn_phy_one_person_max ?gen162 $$$ $?gen165 ) ) ) ) ) ( test ( eq ( class ?gen163 ) max_imprisonment ) ) => ( calc ( bind $?gen168 ( create$ pn_phy_one_person_max ?gen162 $?gen165 ) ) ) ?gen163 <- ( max_imprisonment ( positive-support $?gen168 ) )"))

([pn_phy_one_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_phy_one_person_min-defeasibly-dot-gen355)
   (depends-on declare min_imprisonment physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_phy_one_person_min] ) ) ) ?gen154 <- ( min_imprisonment ( value 3 ) ( positive 1 ) ( positive-derivator pn_phy_one_person_min $? ) ) ( test ( eq ( class ?gen154 ) min_imprisonment ) ) ( not ( and ?gen161 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen156 & : ( not ( member$ pn_phy_one_person_min $?gen156 ) ) ) ) ) ) => ?gen154 <- ( min_imprisonment ( positive 0 ) )"))

([pn_phy_one_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_phy_one_person_min-defeasibly-gen357)
   (depends-on declare physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_phy_one_person_min] ) ) ) ?gen161 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( min_imprisonment ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen156 & : ( not ( member$ pn_phy_one_person_min $?gen156 ) ) ) ) ( test ( eq ( class ?gen154 ) min_imprisonment ) ) => ?gen154 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_phy_one_person_min ?gen161 ) )"))

([pn_phy_one_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_phy_one_person_min-overruled-dot-gen359)
   (depends-on declare min_imprisonment physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_phy_one_person_min] ) ) ) ?gen154 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen157 ) ( negative-overruled $?gen158 & : ( subseq-pos ( create$ pn_phy_one_person_min-overruled $?gen157 $$$ $?gen158 ) ) ) ) ( test ( eq ( class ?gen154 ) min_imprisonment ) ) ( not ( and ?gen161 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( min_imprisonment ( positive-defeated $?gen156 & : ( not ( member$ pn_phy_one_person_min $?gen156 ) ) ) ) ) ) => ( calc ( bind $?gen159 ( delete-member$ $?gen158 ( create$ pn_phy_one_person_min-overruled $?gen157 ) ) ) ) ?gen154 <- ( min_imprisonment ( negative-overruled $?gen159 ) )"))

([pn_phy_one_person_min-overruled] of derived-attribute-rule
   (pos-name pn_phy_one_person_min-overruled-gen361)
   (depends-on declare physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_phy_one_person_min] ) ) ) ?gen161 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen160 & : ( >= ?gen160 1 ) ) ) ?gen154 <- ( min_imprisonment ( value 3 ) ( negative-support $?gen157 ) ( negative-overruled $?gen158 & : ( not ( subseq-pos ( create$ pn_phy_one_person_min-overruled $?gen157 $$$ $?gen158 ) ) ) ) ( positive-defeated $?gen156 & : ( not ( member$ pn_phy_one_person_min $?gen156 ) ) ) ) ( test ( eq ( class ?gen154 ) min_imprisonment ) ) => ( calc ( bind $?gen159 ( create$ pn_phy_one_person_min-overruled $?gen157 $?gen158 ) ) ) ?gen154 <- ( min_imprisonment ( negative-overruled $?gen159 ) )"))

([pn_phy_one_person_min-support] of derived-attribute-rule
   (pos-name pn_phy_one_person_min-support-gen363)
   (depends-on declare physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_phy_one_person_min] ) ) ) ?gen153 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ) ?gen154 <- ( min_imprisonment ( value 3 ) ( positive-support $?gen156 & : ( not ( subseq-pos ( create$ pn_phy_one_person_min ?gen153 $$$ $?gen156 ) ) ) ) ) ( test ( eq ( class ?gen154 ) min_imprisonment ) ) => ( calc ( bind $?gen159 ( create$ pn_phy_one_person_min ?gen153 $?gen156 ) ) ) ?gen154 <- ( min_imprisonment ( positive-support $?gen159 ) )"))

([pn_psy_one_person_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_one_person_max-defeasibly-dot-gen365)
   (depends-on declare max_imprisonment psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_one_person_max] ) ) ) ?gen145 <- ( max_imprisonment ( value 5 ) ( positive 1 ) ( positive-derivator pn_psy_one_person_max $? ) ) ( test ( eq ( class ?gen145 ) max_imprisonment ) ) ( not ( and ?gen152 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( max_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen147 & : ( not ( member$ pn_psy_one_person_max $?gen147 ) ) ) ) ) ) => ?gen145 <- ( max_imprisonment ( positive 0 ) )"))

([pn_psy_one_person_max-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_one_person_max-defeasibly-gen367)
   (depends-on declare psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_one_person_max] ) ) ) ?gen152 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( max_imprisonment ( value 5 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen147 & : ( not ( member$ pn_psy_one_person_max $?gen147 ) ) ) ) ( test ( eq ( class ?gen145 ) max_imprisonment ) ) => ?gen145 <- ( max_imprisonment ( positive 1 ) ( positive-derivator pn_psy_one_person_max ?gen152 ) )"))

([pn_psy_one_person_max-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_one_person_max-overruled-dot-gen369)
   (depends-on declare max_imprisonment psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_one_person_max] ) ) ) ?gen145 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen148 ) ( negative-overruled $?gen149 & : ( subseq-pos ( create$ pn_psy_one_person_max-overruled $?gen148 $$$ $?gen149 ) ) ) ) ( test ( eq ( class ?gen145 ) max_imprisonment ) ) ( not ( and ?gen152 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( max_imprisonment ( positive-defeated $?gen147 & : ( not ( member$ pn_psy_one_person_max $?gen147 ) ) ) ) ) ) => ( calc ( bind $?gen150 ( delete-member$ $?gen149 ( create$ pn_psy_one_person_max-overruled $?gen148 ) ) ) ) ?gen145 <- ( max_imprisonment ( negative-overruled $?gen150 ) )"))

([pn_psy_one_person_max-overruled] of derived-attribute-rule
   (pos-name pn_psy_one_person_max-overruled-gen371)
   (depends-on declare psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_one_person_max] ) ) ) ?gen152 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen151 & : ( >= ?gen151 1 ) ) ) ?gen145 <- ( max_imprisonment ( value 5 ) ( negative-support $?gen148 ) ( negative-overruled $?gen149 & : ( not ( subseq-pos ( create$ pn_psy_one_person_max-overruled $?gen148 $$$ $?gen149 ) ) ) ) ( positive-defeated $?gen147 & : ( not ( member$ pn_psy_one_person_max $?gen147 ) ) ) ) ( test ( eq ( class ?gen145 ) max_imprisonment ) ) => ( calc ( bind $?gen150 ( create$ pn_psy_one_person_max-overruled $?gen148 $?gen149 ) ) ) ?gen145 <- ( max_imprisonment ( negative-overruled $?gen150 ) )"))

([pn_psy_one_person_max-support] of derived-attribute-rule
   (pos-name pn_psy_one_person_max-support-gen373)
   (depends-on declare psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_one_person_max] ) ) ) ?gen144 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen145 <- ( max_imprisonment ( value 5 ) ( positive-support $?gen147 & : ( not ( subseq-pos ( create$ pn_psy_one_person_max ?gen144 $$$ $?gen147 ) ) ) ) ) ( test ( eq ( class ?gen145 ) max_imprisonment ) ) => ( calc ( bind $?gen150 ( create$ pn_psy_one_person_max ?gen144 $?gen147 ) ) ) ?gen145 <- ( max_imprisonment ( positive-support $?gen150 ) )"))

([pn_psy_one_person_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pn_psy_one_person_min-defeasibly-dot-gen375)
   (depends-on declare min_imprisonment psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pn_psy_one_person_min] ) ) ) ?gen136 <- ( min_imprisonment ( value 2 ) ( positive 1 ) ( positive-derivator pn_psy_one_person_min $? ) ) ( test ( eq ( class ?gen136 ) min_imprisonment ) ) ( not ( and ?gen143 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( min_imprisonment ( negative ~ 2 ) ( positive-overruled $?gen138 & : ( not ( member$ pn_psy_one_person_min $?gen138 ) ) ) ) ) ) => ?gen136 <- ( min_imprisonment ( positive 0 ) )"))

([pn_psy_one_person_min-defeasibly] of derived-attribute-rule
   (pos-name pn_psy_one_person_min-defeasibly-gen377)
   (depends-on declare psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pn_psy_one_person_min] ) ) ) ?gen143 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( min_imprisonment ( value 2 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen138 & : ( not ( member$ pn_psy_one_person_min $?gen138 ) ) ) ) ( test ( eq ( class ?gen136 ) min_imprisonment ) ) => ?gen136 <- ( min_imprisonment ( positive 1 ) ( positive-derivator pn_psy_one_person_min ?gen143 ) )"))

([pn_psy_one_person_min-overruled-dot] of derived-attribute-rule
   (pos-name pn_psy_one_person_min-overruled-dot-gen379)
   (depends-on declare min_imprisonment psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pn_psy_one_person_min] ) ) ) ?gen136 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen139 ) ( negative-overruled $?gen140 & : ( subseq-pos ( create$ pn_psy_one_person_min-overruled $?gen139 $$$ $?gen140 ) ) ) ) ( test ( eq ( class ?gen136 ) min_imprisonment ) ) ( not ( and ?gen143 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( min_imprisonment ( positive-defeated $?gen138 & : ( not ( member$ pn_psy_one_person_min $?gen138 ) ) ) ) ) ) => ( calc ( bind $?gen141 ( delete-member$ $?gen140 ( create$ pn_psy_one_person_min-overruled $?gen139 ) ) ) ) ?gen136 <- ( min_imprisonment ( negative-overruled $?gen141 ) )"))

([pn_psy_one_person_min-overruled] of derived-attribute-rule
   (pos-name pn_psy_one_person_min-overruled-gen381)
   (depends-on declare psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pn_psy_one_person_min] ) ) ) ?gen143 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen142 & : ( >= ?gen142 1 ) ) ) ?gen136 <- ( min_imprisonment ( value 2 ) ( negative-support $?gen139 ) ( negative-overruled $?gen140 & : ( not ( subseq-pos ( create$ pn_psy_one_person_min-overruled $?gen139 $$$ $?gen140 ) ) ) ) ( positive-defeated $?gen138 & : ( not ( member$ pn_psy_one_person_min $?gen138 ) ) ) ) ( test ( eq ( class ?gen136 ) min_imprisonment ) ) => ( calc ( bind $?gen141 ( create$ pn_psy_one_person_min-overruled $?gen139 $?gen140 ) ) ) ?gen136 <- ( min_imprisonment ( negative-overruled $?gen141 ) )"))

([pn_psy_one_person_min-support] of derived-attribute-rule
   (pos-name pn_psy_one_person_min-support-gen383)
   (depends-on declare psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pn_psy_one_person_min] ) ) ) ?gen135 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen136 <- ( min_imprisonment ( value 2 ) ( positive-support $?gen138 & : ( not ( subseq-pos ( create$ pn_psy_one_person_min ?gen135 $$$ $?gen138 ) ) ) ) ) ( test ( eq ( class ?gen136 ) min_imprisonment ) ) => ( calc ( bind $?gen141 ( create$ pn_psy_one_person_min ?gen135 $?gen138 ) ) ) ?gen136 <- ( min_imprisonment ( positive-support $?gen141 ) )"))

([rule6_2-defeated-dot] of derived-attribute-rule
   (pos-name rule6_2-defeated-dot-gen385)
   (depends-on declare psychological_abuse_more_victims physical_psychological_abuse_more_victim)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_2] ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive-defeated $?gen130 & : ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen130 ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) ( not ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ) => ( calc ( bind $?gen129 ( delete-member$ $?gen130 ( create$ rule6_2-defeated rule2 ) ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( positive-defeated $?gen129 ) )"))

([rule6_2-defeated] of derived-attribute-rule
   (pos-name rule6_2-defeated-gen387)
   (depends-on declare physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_2] ) ) ) ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive-defeated $?gen130 & : ( not ( subseq-pos ( create$ rule6_2-defeated rule2 $$$ $?gen130 ) ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) => ( calc ( bind $?gen129 ( create$ rule6_2-defeated rule2 $?gen130 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( positive-defeated $?gen129 ) )"))

([rule6_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-dot-gen389)
   (depends-on declare psychological_abuse_more_victims physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_2] ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_2 $? ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) ( not ( and ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( positive ~ 2 ) ( negative-overruled $?gen129 & : ( not ( member$ rule6_2 $?gen129 ) ) ) ) ) ) => ?gen127 <- ( psychological_abuse_more_victims ( negative 0 ) )"))

([rule6_2-defeasibly] of derived-attribute-rule
   (pos-name rule6_2-defeasibly-gen391)
   (depends-on declare physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_2] ) ) ) ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen129 & : ( not ( member$ rule6_2 $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) => ?gen127 <- ( psychological_abuse_more_victims ( negative 1 ) ( negative-derivator rule6_2 ?gen134 ) )"))

([rule6_2-overruled-dot] of derived-attribute-rule
   (pos-name rule6_2-overruled-dot-gen393)
   (depends-on declare psychological_abuse_more_victims physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_2] ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive-support $?gen130 ) ( positive-overruled $?gen131 & : ( subseq-pos ( create$ rule6_2-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) ( not ( and ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( negative-defeated $?gen129 & : ( not ( member$ rule6_2 $?gen129 ) ) ) ) ) ) => ( calc ( bind $?gen132 ( delete-member$ $?gen131 ( create$ rule6_2-overruled $?gen130 ) ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( positive-overruled $?gen132 ) )"))

([rule6_2-overruled] of derived-attribute-rule
   (pos-name rule6_2-overruled-gen395)
   (depends-on declare physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_2] ) ) ) ?gen134 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen133 & : ( >= ?gen133 1 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive-support $?gen130 ) ( positive-overruled $?gen131 & : ( not ( subseq-pos ( create$ rule6_2-overruled $?gen130 $$$ $?gen131 ) ) ) ) ( negative-defeated $?gen129 & : ( not ( member$ rule6_2 $?gen129 ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) => ( calc ( bind $?gen132 ( create$ rule6_2-overruled $?gen130 $?gen131 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( positive-overruled $?gen132 ) )"))

([rule6_2-support] of derived-attribute-rule
   (pos-name rule6_2-support-gen397)
   (depends-on declare physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_2] ) ) ) ?gen126 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ?gen127 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( negative-support $?gen129 & : ( not ( subseq-pos ( create$ rule6_2 ?gen126 $$$ $?gen129 ) ) ) ) ) ( test ( eq ( class ?gen127 ) psychological_abuse_more_victims ) ) => ( calc ( bind $?gen132 ( create$ rule6_2 ?gen126 $?gen129 ) ) ) ?gen127 <- ( psychological_abuse_more_victims ( negative-support $?gen132 ) )"))

([rule6_1-defeated-dot] of derived-attribute-rule
   (pos-name rule6_1-defeated-dot-gen399)
   (depends-on declare physical_abuse_more_victim physical_psychological_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule6_1] ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-defeated $?gen121 & : ( subseq-pos ( create$ rule6_1-defeated rule4 $$$ $?gen121 ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) ( not ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ) => ( calc ( bind $?gen120 ( delete-member$ $?gen121 ( create$ rule6_1-defeated rule4 ) ) ) ) ?gen118 <- ( physical_abuse_more_victim ( positive-defeated $?gen120 ) )"))

([rule6_1-defeated] of derived-attribute-rule
   (pos-name rule6_1-defeated-gen401)
   (depends-on declare physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule6_1] ) ) ) ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-defeated $?gen121 & : ( not ( subseq-pos ( create$ rule6_1-defeated rule4 $$$ $?gen121 ) ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen120 ( create$ rule6_1-defeated rule4 $?gen121 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( positive-defeated $?gen120 ) )"))

([rule6_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6_1-defeasibly-dot-gen403)
   (depends-on declare physical_abuse_more_victim physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6_1] ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule6_1 $? ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) ( not ( and ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( positive ~ 2 ) ( negative-overruled $?gen120 & : ( not ( member$ rule6_1 $?gen120 ) ) ) ) ) ) => ?gen118 <- ( physical_abuse_more_victim ( negative 0 ) )"))

([rule6_1-defeasibly] of derived-attribute-rule
   (pos-name rule6_1-defeasibly-gen405)
   (depends-on declare physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6_1] ) ) ) ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen120 & : ( not ( member$ rule6_1 $?gen120 ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) => ?gen118 <- ( physical_abuse_more_victim ( negative 1 ) ( negative-derivator rule6_1 ?gen125 ) )"))

([rule6_1-overruled-dot] of derived-attribute-rule
   (pos-name rule6_1-overruled-dot-gen407)
   (depends-on declare physical_abuse_more_victim physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6_1] ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen121 ) ( positive-overruled $?gen122 & : ( subseq-pos ( create$ rule6_1-overruled $?gen121 $$$ $?gen122 ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) ( not ( and ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( negative-defeated $?gen120 & : ( not ( member$ rule6_1 $?gen120 ) ) ) ) ) ) => ( calc ( bind $?gen123 ( delete-member$ $?gen122 ( create$ rule6_1-overruled $?gen121 ) ) ) ) ?gen118 <- ( physical_abuse_more_victim ( positive-overruled $?gen123 ) )"))

([rule6_1-overruled] of derived-attribute-rule
   (pos-name rule6_1-overruled-gen409)
   (depends-on declare physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6_1] ) ) ) ?gen125 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive ?gen124 & : ( >= ?gen124 1 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen121 ) ( positive-overruled $?gen122 & : ( not ( subseq-pos ( create$ rule6_1-overruled $?gen121 $$$ $?gen122 ) ) ) ) ( negative-defeated $?gen120 & : ( not ( member$ rule6_1 $?gen120 ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen123 ( create$ rule6_1-overruled $?gen121 $?gen122 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( positive-overruled $?gen123 ) )"))

([rule6_1-support] of derived-attribute-rule
   (pos-name rule6_1-support-gen411)
   (depends-on declare physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6_1] ) ) ) ?gen117 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ?gen118 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen120 & : ( not ( subseq-pos ( create$ rule6_1 ?gen117 $$$ $?gen120 ) ) ) ) ) ( test ( eq ( class ?gen118 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen123 ( create$ rule6_1 ?gen117 $?gen120 ) ) ) ?gen118 <- ( physical_abuse_more_victim ( negative-support $?gen123 ) )"))

([rule6-defeasibly-dot] of derived-attribute-rule
   (pos-name rule6-defeasibly-dot-gen413)
   (depends-on declare physical_psychological_abuse_more_victim lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule6] ) ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule6 $? ) ) ( test ( eq ( class ?gen105 ) physical_psychological_abuse_more_victim ) ) ( not ( and ?gen112 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen111 & : ( >= ?gen111 1 ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( negative ~ 2 ) ( positive-overruled $?gen107 & : ( not ( member$ rule6 $?gen107 ) ) ) ) ) ) => ?gen105 <- ( physical_psychological_abuse_more_victim ( positive 0 ) )"))

([rule6-defeasibly] of derived-attribute-rule
   (pos-name rule6-defeasibly-gen415)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule6] ) ) ) ?gen112 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen111 & : ( >= ?gen111 1 ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen107 & : ( not ( member$ rule6 $?gen107 ) ) ) ) ( test ( eq ( class ?gen105 ) physical_psychological_abuse_more_victim ) ) => ?gen105 <- ( physical_psychological_abuse_more_victim ( positive 1 ) ( positive-derivator rule6 ?gen112 ?gen114 ?gen116 ) )"))

([rule6-overruled-dot] of derived-attribute-rule
   (pos-name rule6-overruled-dot-gen417)
   (depends-on declare physical_psychological_abuse_more_victim lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule6] ) ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen108 ) ( negative-overruled $?gen109 & : ( subseq-pos ( create$ rule6-overruled $?gen108 $$$ $?gen109 ) ) ) ) ( test ( eq ( class ?gen105 ) physical_psychological_abuse_more_victim ) ) ( not ( and ?gen112 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen111 & : ( >= ?gen111 1 ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( positive-defeated $?gen107 & : ( not ( member$ rule6 $?gen107 ) ) ) ) ) ) => ( calc ( bind $?gen110 ( delete-member$ $?gen109 ( create$ rule6-overruled $?gen108 ) ) ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( negative-overruled $?gen110 ) )"))

([rule6-overruled] of derived-attribute-rule
   (pos-name rule6-overruled-gen419)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule6] ) ) ) ?gen112 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen111 & : ( >= ?gen111 1 ) ) ) ?gen114 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen113 & : ( >= ?gen113 1 ) ) ) ?gen116 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen115 & : ( >= ?gen115 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen108 ) ( negative-overruled $?gen109 & : ( not ( subseq-pos ( create$ rule6-overruled $?gen108 $$$ $?gen109 ) ) ) ) ( positive-defeated $?gen107 & : ( not ( member$ rule6 $?gen107 ) ) ) ) ( test ( eq ( class ?gen105 ) physical_psychological_abuse_more_victim ) ) => ( calc ( bind $?gen110 ( create$ rule6-overruled $?gen108 $?gen109 ) ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( negative-overruled $?gen110 ) )"))

([rule6-support] of derived-attribute-rule
   (pos-name rule6-support-gen421)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule6] ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen107 & : ( not ( subseq-pos ( create$ rule6 ?gen101 ?gen102 ?gen103 $$$ $?gen107 ) ) ) ) ) ( test ( eq ( class ?gen105 ) physical_psychological_abuse_more_victim ) ) => ( calc ( bind $?gen110 ( create$ rule6 ?gen101 ?gen102 ?gen103 $?gen107 ) ) ) ?gen105 <- ( physical_psychological_abuse_more_victim ( positive-support $?gen110 ) )"))

([rule5_2-defeated-dot] of derived-attribute-rule
   (pos-name rule5_2-defeated-dot-gen423)
   (depends-on declare psychological_abuse_one_victim physical_psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_2] ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen96 & : ( subseq-pos ( create$ rule5_2-defeated rule1 $$$ $?gen96 ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) ( not ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ) => ( calc ( bind $?gen95 ( delete-member$ $?gen96 ( create$ rule5_2-defeated rule1 ) ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( positive-defeated $?gen95 ) )"))

([rule5_2-defeated] of derived-attribute-rule
   (pos-name rule5_2-defeated-gen425)
   (depends-on declare physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_2] ) ) ) ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen96 & : ( not ( subseq-pos ( create$ rule5_2-defeated rule1 $$$ $?gen96 ) ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen95 ( create$ rule5_2-defeated rule1 $?gen96 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( positive-defeated $?gen95 ) )"))

([rule5_2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_2-defeasibly-dot-gen427)
   (depends-on declare psychological_abuse_one_victim physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_2] ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_2 $? ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) ( not ( and ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( positive ~ 2 ) ( negative-overruled $?gen95 & : ( not ( member$ rule5_2 $?gen95 ) ) ) ) ) ) => ?gen93 <- ( psychological_abuse_one_victim ( negative 0 ) )"))

([rule5_2-defeasibly] of derived-attribute-rule
   (pos-name rule5_2-defeasibly-gen429)
   (depends-on declare physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_2] ) ) ) ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen95 & : ( not ( member$ rule5_2 $?gen95 ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) => ?gen93 <- ( psychological_abuse_one_victim ( negative 1 ) ( negative-derivator rule5_2 ?gen100 ) )"))

([rule5_2-overruled-dot] of derived-attribute-rule
   (pos-name rule5_2-overruled-dot-gen431)
   (depends-on declare psychological_abuse_one_victim physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_2] ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen96 ) ( positive-overruled $?gen97 & : ( subseq-pos ( create$ rule5_2-overruled $?gen96 $$$ $?gen97 ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) ( not ( and ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( negative-defeated $?gen95 & : ( not ( member$ rule5_2 $?gen95 ) ) ) ) ) ) => ( calc ( bind $?gen98 ( delete-member$ $?gen97 ( create$ rule5_2-overruled $?gen96 ) ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( positive-overruled $?gen98 ) )"))

([rule5_2-overruled] of derived-attribute-rule
   (pos-name rule5_2-overruled-gen433)
   (depends-on declare physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_2] ) ) ) ?gen100 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen96 ) ( positive-overruled $?gen97 & : ( not ( subseq-pos ( create$ rule5_2-overruled $?gen96 $$$ $?gen97 ) ) ) ) ( negative-defeated $?gen95 & : ( not ( member$ rule5_2 $?gen95 ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen98 ( create$ rule5_2-overruled $?gen96 $?gen97 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( positive-overruled $?gen98 ) )"))

([rule5_2-support] of derived-attribute-rule
   (pos-name rule5_2-support-gen435)
   (depends-on declare physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_2] ) ) ) ?gen92 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen93 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen95 & : ( not ( subseq-pos ( create$ rule5_2 ?gen92 $$$ $?gen95 ) ) ) ) ) ( test ( eq ( class ?gen93 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen98 ( create$ rule5_2 ?gen92 $?gen95 ) ) ) ?gen93 <- ( psychological_abuse_one_victim ( negative-support $?gen98 ) )"))

([rule5_1-defeated-dot] of derived-attribute-rule
   (pos-name rule5_1-defeated-dot-gen437)
   (depends-on declare physical_abuse_one_victim physical_psychological_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rule5_1] ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen87 & : ( subseq-pos ( create$ rule5_1-defeated rule3 $$$ $?gen87 ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) ( not ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ) => ( calc ( bind $?gen86 ( delete-member$ $?gen87 ( create$ rule5_1-defeated rule3 ) ) ) ) ?gen84 <- ( physical_abuse_one_victim ( positive-defeated $?gen86 ) )"))

([rule5_1-defeated] of derived-attribute-rule
   (pos-name rule5_1-defeated-gen439)
   (depends-on declare physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rule5_1] ) ) ) ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-defeated $?gen87 & : ( not ( subseq-pos ( create$ rule5_1-defeated rule3 $$$ $?gen87 ) ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen86 ( create$ rule5_1-defeated rule3 $?gen87 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( positive-defeated $?gen86 ) )"))

([rule5_1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-dot-gen441)
   (depends-on declare physical_abuse_one_victim physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5_1] ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rule5_1 $? ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) ( not ( and ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( positive ~ 2 ) ( negative-overruled $?gen86 & : ( not ( member$ rule5_1 $?gen86 ) ) ) ) ) ) => ?gen84 <- ( physical_abuse_one_victim ( negative 0 ) )"))

([rule5_1-defeasibly] of derived-attribute-rule
   (pos-name rule5_1-defeasibly-gen443)
   (depends-on declare physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5_1] ) ) ) ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen86 & : ( not ( member$ rule5_1 $?gen86 ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) => ?gen84 <- ( physical_abuse_one_victim ( negative 1 ) ( negative-derivator rule5_1 ?gen91 ) )"))

([rule5_1-overruled-dot] of derived-attribute-rule
   (pos-name rule5_1-overruled-dot-gen445)
   (depends-on declare physical_abuse_one_victim physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5_1] ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen87 ) ( positive-overruled $?gen88 & : ( subseq-pos ( create$ rule5_1-overruled $?gen87 $$$ $?gen88 ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) ( not ( and ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( negative-defeated $?gen86 & : ( not ( member$ rule5_1 $?gen86 ) ) ) ) ) ) => ( calc ( bind $?gen89 ( delete-member$ $?gen88 ( create$ rule5_1-overruled $?gen87 ) ) ) ) ?gen84 <- ( physical_abuse_one_victim ( positive-overruled $?gen89 ) )"))

([rule5_1-overruled] of derived-attribute-rule
   (pos-name rule5_1-overruled-gen447)
   (depends-on declare physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5_1] ) ) ) ?gen91 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive ?gen90 & : ( >= ?gen90 1 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen87 ) ( positive-overruled $?gen88 & : ( not ( subseq-pos ( create$ rule5_1-overruled $?gen87 $$$ $?gen88 ) ) ) ) ( negative-defeated $?gen86 & : ( not ( member$ rule5_1 $?gen86 ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen89 ( create$ rule5_1-overruled $?gen87 $?gen88 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( positive-overruled $?gen89 ) )"))

([rule5_1-support] of derived-attribute-rule
   (pos-name rule5_1-support-gen449)
   (depends-on declare physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5_1] ) ) ) ?gen83 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ?gen84 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen86 & : ( not ( subseq-pos ( create$ rule5_1 ?gen83 $$$ $?gen86 ) ) ) ) ) ( test ( eq ( class ?gen84 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen89 ( create$ rule5_1 ?gen83 $?gen86 ) ) ) ?gen84 <- ( physical_abuse_one_victim ( negative-support $?gen89 ) )"))

([rule5-defeasibly-dot] of derived-attribute-rule
   (pos-name rule5-defeasibly-dot-gen451)
   (depends-on declare physical_psychological_abuse_one_victim lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule5] ) ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule5 $? ) ) ( test ( eq ( class ?gen71 ) physical_psychological_abuse_one_victim ) ) ( not ( and ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen77 & : ( >= ?gen77 1 ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( negative ~ 2 ) ( positive-overruled $?gen73 & : ( not ( member$ rule5 $?gen73 ) ) ) ) ) ) => ?gen71 <- ( physical_psychological_abuse_one_victim ( positive 0 ) )"))

([rule5-defeasibly] of derived-attribute-rule
   (pos-name rule5-defeasibly-gen453)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule5] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen77 & : ( >= ?gen77 1 ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen73 & : ( not ( member$ rule5 $?gen73 ) ) ) ) ( test ( eq ( class ?gen71 ) physical_psychological_abuse_one_victim ) ) => ?gen71 <- ( physical_psychological_abuse_one_victim ( positive 1 ) ( positive-derivator rule5 ?gen78 ?gen80 ?gen82 ) )"))

([rule5-overruled-dot] of derived-attribute-rule
   (pos-name rule5-overruled-dot-gen455)
   (depends-on declare physical_psychological_abuse_one_victim lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule5] ) ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen74 ) ( negative-overruled $?gen75 & : ( subseq-pos ( create$ rule5-overruled $?gen74 $$$ $?gen75 ) ) ) ) ( test ( eq ( class ?gen71 ) physical_psychological_abuse_one_victim ) ) ( not ( and ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen77 & : ( >= ?gen77 1 ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( positive-defeated $?gen73 & : ( not ( member$ rule5 $?gen73 ) ) ) ) ) ) => ( calc ( bind $?gen76 ( delete-member$ $?gen75 ( create$ rule5-overruled $?gen74 ) ) ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( negative-overruled $?gen76 ) )"))

([rule5-overruled] of derived-attribute-rule
   (pos-name rule5-overruled-gen457)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule5] ) ) ) ?gen78 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen77 & : ( >= ?gen77 1 ) ) ) ?gen80 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen79 & : ( >= ?gen79 1 ) ) ) ?gen82 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen81 & : ( >= ?gen81 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen74 ) ( negative-overruled $?gen75 & : ( not ( subseq-pos ( create$ rule5-overruled $?gen74 $$$ $?gen75 ) ) ) ) ( positive-defeated $?gen73 & : ( not ( member$ rule5 $?gen73 ) ) ) ) ( test ( eq ( class ?gen71 ) physical_psychological_abuse_one_victim ) ) => ( calc ( bind $?gen76 ( create$ rule5-overruled $?gen74 $?gen75 ) ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( negative-overruled $?gen76 ) )"))

([rule5-support] of derived-attribute-rule
   (pos-name rule5-support-gen459)
   (depends-on declare lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule5] ) ) ) ?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen73 & : ( not ( subseq-pos ( create$ rule5 ?gen67 ?gen68 ?gen69 $$$ $?gen73 ) ) ) ) ) ( test ( eq ( class ?gen71 ) physical_psychological_abuse_one_victim ) ) => ( calc ( bind $?gen76 ( create$ rule5 ?gen67 ?gen68 ?gen69 $?gen73 ) ) ) ?gen71 <- ( physical_psychological_abuse_one_victim ( positive-support $?gen76 ) )"))

([rule4-defeasibly-dot] of derived-attribute-rule
   (pos-name rule4-defeasibly-dot-gen461)
   (depends-on declare physical_abuse_more_victim lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule4] ) ) ) ?gen57 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule4 $? ) ) ( test ( eq ( class ?gen57 ) physical_abuse_more_victim ) ) ( not ( and ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen57 <- ( physical_abuse_more_victim ( negative ~ 2 ) ( positive-overruled $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ) ) => ?gen57 <- ( physical_abuse_more_victim ( positive 0 ) )"))

([rule4-defeasibly] of derived-attribute-rule
   (pos-name rule4-defeasibly-gen463)
   (depends-on declare lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule4] ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen57 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ( test ( eq ( class ?gen57 ) physical_abuse_more_victim ) ) => ?gen57 <- ( physical_abuse_more_victim ( positive 1 ) ( positive-derivator rule4 ?gen64 ?gen66 ) )"))

([rule4-overruled-dot] of derived-attribute-rule
   (pos-name rule4-overruled-dot-gen465)
   (depends-on declare physical_abuse_more_victim lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule4] ) ) ) ?gen57 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen60 ) ( negative-overruled $?gen61 & : ( subseq-pos ( create$ rule4-overruled $?gen60 $$$ $?gen61 ) ) ) ) ( test ( eq ( class ?gen57 ) physical_abuse_more_victim ) ) ( not ( and ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen57 <- ( physical_abuse_more_victim ( positive-defeated $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ) ) => ( calc ( bind $?gen62 ( delete-member$ $?gen61 ( create$ rule4-overruled $?gen60 ) ) ) ) ?gen57 <- ( physical_abuse_more_victim ( negative-overruled $?gen62 ) )"))

([rule4-overruled] of derived-attribute-rule
   (pos-name rule4-overruled-gen467)
   (depends-on declare lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule4] ) ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen63 & : ( >= ?gen63 1 ) ) ) ?gen66 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen65 & : ( >= ?gen65 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen57 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( negative-support $?gen60 ) ( negative-overruled $?gen61 & : ( not ( subseq-pos ( create$ rule4-overruled $?gen60 $$$ $?gen61 ) ) ) ) ( positive-defeated $?gen59 & : ( not ( member$ rule4 $?gen59 ) ) ) ) ( test ( eq ( class ?gen57 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen62 ( create$ rule4-overruled $?gen60 $?gen61 ) ) ) ?gen57 <- ( physical_abuse_more_victim ( negative-overruled $?gen62 ) )"))

([rule4-support] of derived-attribute-rule
   (pos-name rule4-support-gen469)
   (depends-on declare lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule4] ) ) ) ?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ?gen57 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ( positive-support $?gen59 & : ( not ( subseq-pos ( create$ rule4 ?gen54 ?gen55 $$$ $?gen59 ) ) ) ) ) ( test ( eq ( class ?gen57 ) physical_abuse_more_victim ) ) => ( calc ( bind $?gen62 ( create$ rule4 ?gen54 ?gen55 $?gen59 ) ) ) ?gen57 <- ( physical_abuse_more_victim ( positive-support $?gen62 ) )"))

([rule3-defeasibly-dot] of derived-attribute-rule
   (pos-name rule3-defeasibly-dot-gen471)
   (depends-on declare physical_abuse_one_victim lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule3] ) ) ) ?gen44 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule3 $? ) ) ( test ( eq ( class ?gen44 ) physical_abuse_one_victim ) ) ( not ( and ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen44 <- ( physical_abuse_one_victim ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ) ) => ?gen44 <- ( physical_abuse_one_victim ( positive 0 ) )"))

([rule3-defeasibly] of derived-attribute-rule
   (pos-name rule3-defeasibly-gen473)
   (depends-on declare lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen44 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) physical_abuse_one_victim ) ) => ?gen44 <- ( physical_abuse_one_victim ( positive 1 ) ( positive-derivator rule3 ?gen51 ?gen53 ) )"))

([rule3-overruled-dot] of derived-attribute-rule
   (pos-name rule3-overruled-dot-gen475)
   (depends-on declare physical_abuse_one_victim lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule3] ) ) ) ?gen44 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( subseq-pos ( create$ rule3-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( test ( eq ( class ?gen44 ) physical_abuse_one_victim ) ) ( not ( and ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen44 <- ( physical_abuse_one_victim ( positive-defeated $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ) ) => ( calc ( bind $?gen49 ( delete-member$ $?gen48 ( create$ rule3-overruled $?gen47 ) ) ) ) ?gen44 <- ( physical_abuse_one_victim ( negative-overruled $?gen49 ) )"))

([rule3-overruled] of derived-attribute-rule
   (pos-name rule3-overruled-gen477)
   (depends-on declare lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule3] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen50 & : ( >= ?gen50 1 ) ) ) ?gen53 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ( positive ?gen52 & : ( >= ?gen52 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen44 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen47 ) ( negative-overruled $?gen48 & : ( not ( subseq-pos ( create$ rule3-overruled $?gen47 $$$ $?gen48 ) ) ) ) ( positive-defeated $?gen46 & : ( not ( member$ rule3 $?gen46 ) ) ) ) ( test ( eq ( class ?gen44 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen49 ( create$ rule3-overruled $?gen47 $?gen48 ) ) ) ?gen44 <- ( physical_abuse_one_victim ( negative-overruled $?gen49 ) )"))

([rule3-support] of derived-attribute-rule
   (pos-name rule3-support-gen479)
   (depends-on declare lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule3] ) ) ) ?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ?gen44 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen46 & : ( not ( subseq-pos ( create$ rule3 ?gen41 ?gen42 $$$ $?gen46 ) ) ) ) ) ( test ( eq ( class ?gen44 ) physical_abuse_one_victim ) ) => ( calc ( bind $?gen49 ( create$ rule3 ?gen41 ?gen42 $?gen46 ) ) ) ?gen44 <- ( physical_abuse_one_victim ( positive-support $?gen49 ) )"))

([rule2-defeasibly-dot] of derived-attribute-rule
   (pos-name rule2-defeasibly-dot-gen481)
   (depends-on declare psychological_abuse_more_victims lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule2] ) ) ) ?gen31 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule2 $? ) ) ( test ( eq ( class ?gen31 ) psychological_abuse_more_victims ) ) ( not ( and ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen31 <- ( psychological_abuse_more_victims ( negative ~ 2 ) ( positive-overruled $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ) ) => ?gen31 <- ( psychological_abuse_more_victims ( positive 0 ) )"))

([rule2-defeasibly] of derived-attribute-rule
   (pos-name rule2-defeasibly-gen483)
   (depends-on declare lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule2] ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen31 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ( test ( eq ( class ?gen31 ) psychological_abuse_more_victims ) ) => ?gen31 <- ( psychological_abuse_more_victims ( positive 1 ) ( positive-derivator rule2 ?gen38 ?gen40 ) )"))

([rule2-overruled-dot] of derived-attribute-rule
   (pos-name rule2-overruled-dot-gen485)
   (depends-on declare psychological_abuse_more_victims lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule2] ) ) ) ?gen31 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( negative-support $?gen34 ) ( negative-overruled $?gen35 & : ( subseq-pos ( create$ rule2-overruled $?gen34 $$$ $?gen35 ) ) ) ) ( test ( eq ( class ?gen31 ) psychological_abuse_more_victims ) ) ( not ( and ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen31 <- ( psychological_abuse_more_victims ( positive-defeated $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ) ) => ( calc ( bind $?gen36 ( delete-member$ $?gen35 ( create$ rule2-overruled $?gen34 ) ) ) ) ?gen31 <- ( psychological_abuse_more_victims ( negative-overruled $?gen36 ) )"))

([rule2-overruled] of derived-attribute-rule
   (pos-name rule2-overruled-gen487)
   (depends-on declare lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule2] ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen39 & : ( >= ?gen39 1 ) ) ) ( test ( > ?num_of_victims 1 ) ) ?gen31 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( negative-support $?gen34 ) ( negative-overruled $?gen35 & : ( not ( subseq-pos ( create$ rule2-overruled $?gen34 $$$ $?gen35 ) ) ) ) ( positive-defeated $?gen33 & : ( not ( member$ rule2 $?gen33 ) ) ) ) ( test ( eq ( class ?gen31 ) psychological_abuse_more_victims ) ) => ( calc ( bind $?gen36 ( create$ rule2-overruled $?gen34 $?gen35 ) ) ) ?gen31 <- ( psychological_abuse_more_victims ( negative-overruled $?gen36 ) )"))

([rule2-support] of derived-attribute-rule
   (pos-name rule2-support-gen489)
   (depends-on declare lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule2] ) ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ?gen31 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ( positive-support $?gen33 & : ( not ( subseq-pos ( create$ rule2 ?gen28 ?gen29 $$$ $?gen33 ) ) ) ) ) ( test ( eq ( class ?gen31 ) psychological_abuse_more_victims ) ) => ( calc ( bind $?gen36 ( create$ rule2 ?gen28 ?gen29 $?gen33 ) ) ) ?gen31 <- ( psychological_abuse_more_victims ( positive-support $?gen36 ) )"))

([rule1-defeasibly-dot] of derived-attribute-rule
   (pos-name rule1-defeasibly-dot-gen491)
   (depends-on declare psychological_abuse_one_victim lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule1] ) ) ) ?gen18 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule1 $? ) ) ( test ( eq ( class ?gen18 ) psychological_abuse_one_victim ) ) ( not ( and ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen18 <- ( psychological_abuse_one_victim ( negative ~ 2 ) ( positive-overruled $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ) ) => ?gen18 <- ( psychological_abuse_one_victim ( positive 0 ) )"))

([rule1-defeasibly] of derived-attribute-rule
   (pos-name rule1-defeasibly-gen493)
   (depends-on declare lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule1] ) ) ) ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen18 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ( test ( eq ( class ?gen18 ) psychological_abuse_one_victim ) ) => ?gen18 <- ( psychological_abuse_one_victim ( positive 1 ) ( positive-derivator rule1 ?gen25 ?gen27 ) )"))

([rule1-overruled-dot] of derived-attribute-rule
   (pos-name rule1-overruled-dot-gen495)
   (depends-on declare psychological_abuse_one_victim lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule1] ) ) ) ?gen18 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen21 ) ( negative-overruled $?gen22 & : ( subseq-pos ( create$ rule1-overruled $?gen21 $$$ $?gen22 ) ) ) ) ( test ( eq ( class ?gen18 ) psychological_abuse_one_victim ) ) ( not ( and ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen18 <- ( psychological_abuse_one_victim ( positive-defeated $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ) ) => ( calc ( bind $?gen23 ( delete-member$ $?gen22 ( create$ rule1-overruled $?gen21 ) ) ) ) ?gen18 <- ( psychological_abuse_one_victim ( negative-overruled $?gen23 ) )"))

([rule1-overruled] of derived-attribute-rule
   (pos-name rule1-overruled-gen497)
   (depends-on declare lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule1] ) ) ) ?gen25 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ( positive ?gen24 & : ( >= ?gen24 1 ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ( positive ?gen26 & : ( >= ?gen26 1 ) ) ) ( test ( < ?num_of_victims 2 ) ) ?gen18 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( negative-support $?gen21 ) ( negative-overruled $?gen22 & : ( not ( subseq-pos ( create$ rule1-overruled $?gen21 $$$ $?gen22 ) ) ) ) ( positive-defeated $?gen20 & : ( not ( member$ rule1 $?gen20 ) ) ) ) ( test ( eq ( class ?gen18 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen23 ( create$ rule1-overruled $?gen21 $?gen22 ) ) ) ?gen18 <- ( psychological_abuse_one_victim ( negative-overruled $?gen23 ) )"))

([rule1-support] of derived-attribute-rule
   (pos-name rule1-support-gen499)
   (depends-on declare lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule1] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ?gen18 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ( positive-support $?gen20 & : ( not ( subseq-pos ( create$ rule1 ?gen15 ?gen16 $$$ $?gen20 ) ) ) ) ) ( test ( eq ( class ?gen18 ) psychological_abuse_one_victim ) ) => ( calc ( bind $?gen23 ( create$ rule1 ?gen15 ?gen16 $?gen20 ) ) ) ?gen18 <- ( psychological_abuse_one_victim ( positive-support $?gen23 ) )"))

([pn_phy_psy_more_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_phy_psy_more_person_max-deductive-gen264)
   (depends-on physical_psychological_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen234 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 15 ) ) ) => ( max_imprisonment ( value 15 ) )")
   (production-rule "( defrule pn_phy_psy_more_person_max-deductive-gen264 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen234 ) ( is-a physical_psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 15 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ( make-instance ?oid of max_imprisonment ( value 15 ) ) )")
   (derived-class max_imprisonment))

([pn_phy_psy_more_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_phy_psy_more_person_min-deductive-gen263)
   (depends-on physical_psychological_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen225 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_phy_psy_more_person_min-deductive-gen263 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen225 ) ( is-a physical_psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([pn_phy_psy_one_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_phy_psy_one_person_max-deductive-gen262)
   (depends-on physical_psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen216 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 15 ) ) ) => ( max_imprisonment ( value 15 ) )")
   (production-rule "( defrule pn_phy_psy_one_person_max-deductive-gen262 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen216 ) ( is-a physical_psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 15 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 15 ) ) ) ( make-instance ?oid of max_imprisonment ( value 15 ) ) )")
   (derived-class max_imprisonment))

([pn_phy_psy_one_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_phy_psy_one_person_min-deductive-gen261)
   (depends-on physical_psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen207 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_phy_psy_one_person_min-deductive-gen261 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen207 ) ( is-a physical_psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([pn_psy_more_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_psy_more_person_max-deductive-gen260)
   (depends-on psychological_abuse_more_victims max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen198 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 10 ) ) ) => ( max_imprisonment ( value 10 ) )")
   (production-rule "( defrule pn_psy_more_person_max-deductive-gen260 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen198 ) ( is-a psychological_abuse_more_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 10 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 10 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 10 ) ) ) ( make-instance ?oid of max_imprisonment ( value 10 ) ) )")
   (derived-class max_imprisonment))

([pn_psy_more_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_psy_more_person_min-deductive-gen259)
   (depends-on psychological_abuse_more_victims min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen189 <- ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 5 ) ) ) => ( min_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_psy_more_person_min-deductive-gen259 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen189 ) ( is-a psychological_abuse_more_victims ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 5 ) ) ) ( make-instance ?oid of min_imprisonment ( value 5 ) ) )")
   (derived-class min_imprisonment))

([pn_phy_more_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_phy_more_person_max-deductive-gen258)
   (depends-on physical_abuse_more_victim max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen180 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 6 ) ) ) => ( max_imprisonment ( value 6 ) )")
   (production-rule "( defrule pn_phy_more_person_max-deductive-gen258 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen180 ) ( is-a physical_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 6 ) ) ) ( make-instance ?oid of max_imprisonment ( value 6 ) ) )")
   (derived-class max_imprisonment))

([pn_phy_more_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_phy_more_person_min-deductive-gen257)
   (depends-on physical_abuse_more_victim min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen171 <- ( physical_abuse_more_victim ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 3 ) ) ) => ( min_imprisonment ( value 3 ) )")
   (production-rule "( defrule pn_phy_more_person_min-deductive-gen257 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen171 ) ( is-a physical_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ( make-instance ?oid of min_imprisonment ( value 3 ) ) )")
   (derived-class min_imprisonment))

([pn_phy_one_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_phy_one_person_max-deductive-gen256)
   (depends-on physical_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen162 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 6 ) ) ) => ( max_imprisonment ( value 6 ) )")
   (production-rule "( defrule pn_phy_one_person_max-deductive-gen256 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen162 ) ( is-a physical_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 6 ) ) ) ( make-instance ?oid of max_imprisonment ( value 6 ) ) )")
   (derived-class max_imprisonment))

([pn_phy_one_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_phy_one_person_min-deductive-gen255)
   (depends-on physical_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen153 <- ( physical_abuse_one_victim ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 3 ) ) ) => ( min_imprisonment ( value 3 ) )")
   (production-rule "( defrule pn_phy_one_person_min-deductive-gen255 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen153 ) ( is-a physical_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 3 ) ) ) ( make-instance ?oid of min_imprisonment ( value 3 ) ) )")
   (derived-class min_imprisonment))

([pn_psy_one_person_max-deductive] of ntm-deductive-rule
   (pos-name pn_psy_one_person_max-deductive-gen254)
   (depends-on psychological_abuse_one_victim max_imprisonment)
   (implies max_imprisonment)
   (deductive-rule "?gen144 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( max_imprisonment ( value 5 ) ) ) => ( max_imprisonment ( value 5 ) )")
   (production-rule "( defrule pn_psy_one_person_max-deductive-gen254 ( declare ( salience ( calc-salience max_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen144 ) ( is-a psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a max_imprisonment ) ( value 5 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat max_imprisonment 5 ) ) ) ( make-instance ?oid of max_imprisonment ( value 5 ) ) )")
   (derived-class max_imprisonment))

([pn_psy_one_person_min-deductive] of ntm-deductive-rule
   (pos-name pn_psy_one_person_min-deductive-gen253)
   (depends-on psychological_abuse_one_victim min_imprisonment)
   (implies min_imprisonment)
   (deductive-rule "?gen135 <- ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( min_imprisonment ( value 2 ) ) ) => ( min_imprisonment ( value 2 ) )")
   (production-rule "( defrule pn_psy_one_person_min-deductive-gen253 ( declare ( salience ( calc-salience min_imprisonment ) ) ) ( run-deductive-rules ) ( object ( name ?gen135 ) ( is-a psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a min_imprisonment ) ( value 2 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat min_imprisonment 2 ) ) ) ( make-instance ?oid of min_imprisonment ( value 2 ) ) )")
   (derived-class min_imprisonment))

([rule6_2-deductive] of ntm-deductive-rule
   (pos-name rule6_2-deductive-gen252)
   (depends-on physical_psychological_abuse_more_victim psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (deductive-rule "?gen126 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ( not ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ) => ( psychological_abuse_more_victims ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_2-deductive-gen252 ( declare ( salience ( calc-salience psychological_abuse_more_victims ) ) ) ( run-deductive-rules ) ( object ( name ?gen126 ) ( is-a physical_psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_more_victims ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_more_victims ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_more_victims ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_more_victims ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_more_victims))

([rule6_1-deductive] of ntm-deductive-rule
   (pos-name rule6_1-deductive-gen251)
   (depends-on physical_psychological_abuse_more_victim physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (deductive-rule "?gen117 <- ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ( not ( physical_abuse_more_victim ( defendant ?Defendant ) ) ) => ( physical_abuse_more_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6_1-deductive-gen251 ( declare ( salience ( calc-salience physical_abuse_more_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen117 ) ( is-a physical_psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a physical_abuse_more_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_abuse_more_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_abuse_more_victim ?Defendant ) ) ) ( make-instance ?oid of physical_abuse_more_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_abuse_more_victim))

([rule6-deductive] of ntm-deductive-rule
   (pos-name rule6-deductive-gen250)
   (depends-on lc:case lc:case lc:case physical_psychological_abuse_more_victim)
   (implies physical_psychological_abuse_more_victim)
   (deductive-rule "?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen102 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ?gen103 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) ) => ( physical_psychological_abuse_more_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule6-deductive-gen250 ( declare ( salience ( calc-salience physical_psychological_abuse_more_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen101 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen102 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( object ( name ?gen103 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( object ( is-a physical_psychological_abuse_more_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_more_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_more_victim ?Defendant ) ) ) ( make-instance ?oid of physical_psychological_abuse_more_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_psychological_abuse_more_victim))

([rule5_2-deductive] of ntm-deductive-rule
   (pos-name rule5_2-deductive-gen249)
   (depends-on physical_psychological_abuse_one_victim psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (deductive-rule "?gen92 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ) => ( psychological_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_2-deductive-gen249 ( declare ( salience ( calc-salience psychological_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen92 ) ( is-a physical_psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_one_victim))

([rule5_1-deductive] of ntm-deductive-rule
   (pos-name rule5_1-deductive-gen248)
   (depends-on physical_psychological_abuse_one_victim physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (deductive-rule "?gen83 <- ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ( not ( physical_abuse_one_victim ( defendant ?Defendant ) ) ) => ( physical_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5_1-deductive-gen248 ( declare ( salience ( calc-salience physical_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen83 ) ( is-a physical_psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ( not ( object ( is-a physical_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of physical_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_abuse_one_victim))

([rule5-deductive] of ntm-deductive-rule
   (pos-name rule5-deductive-gen247)
   (depends-on lc:case lc:case lc:case physical_psychological_abuse_one_victim)
   (implies physical_psychological_abuse_one_victim)
   (deductive-rule "?gen67 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen68 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ?gen69 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) ) => ( physical_psychological_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule5-deductive-gen247 ( declare ( salience ( calc-salience physical_psychological_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen67 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen68 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( object ( name ?gen69 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( object ( is-a physical_psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_psychological_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of physical_psychological_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_psychological_abuse_one_victim))

([rule4-deductive] of ntm-deductive-rule
   (pos-name rule4-deductive-gen246)
   (depends-on lc:case lc:case physical_abuse_more_victim)
   (implies physical_abuse_more_victim)
   (deductive-rule "?gen54 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen55 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( physical_abuse_more_victim ( defendant ?Defendant ) ) ) => ( physical_abuse_more_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule4-deductive-gen246 ( declare ( salience ( calc-salience physical_abuse_more_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen54 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen55 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( object ( is-a physical_abuse_more_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_abuse_more_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_abuse_more_victim ?Defendant ) ) ) ( make-instance ?oid of physical_abuse_more_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_abuse_more_victim))

([rule3-deductive] of ntm-deductive-rule
   (pos-name rule3-deductive-gen245)
   (depends-on lc:case lc:case physical_abuse_one_victim)
   (implies physical_abuse_one_victim)
   (deductive-rule "?gen41 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen42 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( physical_abuse_one_victim ( defendant ?Defendant ) ) ) => ( physical_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule3-deductive-gen245 ( declare ( salience ( calc-salience physical_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen41 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen42 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:physical_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( object ( is-a physical_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat physical_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat physical_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of physical_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class physical_abuse_one_victim))

([rule2-deductive] of ntm-deductive-rule
   (pos-name rule2-deductive-gen244)
   (depends-on lc:case lc:case psychological_abuse_more_victims)
   (implies psychological_abuse_more_victims)
   (deductive-rule "?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen29 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( psychological_abuse_more_victims ( defendant ?Defendant ) ) ) => ( psychological_abuse_more_victims ( defendant ?Defendant ) )")
   (production-rule "( defrule rule2-deductive-gen244 ( declare ( salience ( calc-salience psychological_abuse_more_victims ) ) ) ( run-deductive-rules ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen29 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( > ?num_of_victims 1 ) ) ( not ( object ( is-a psychological_abuse_more_victims ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_more_victims ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_more_victims ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_more_victims ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_more_victims))

([rule1-deductive] of ntm-deductive-rule
   (pos-name rule1-deductive-gen243)
   (depends-on lc:case lc:case psychological_abuse_one_victim)
   (implies psychological_abuse_one_victim)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( psychological_abuse_one_victim ( defendant ?Defendant ) ) ) => ( psychological_abuse_one_victim ( defendant ?Defendant ) )")
   (production-rule "( defrule rule1-deductive-gen243 ( declare ( salience ( calc-salience psychological_abuse_one_victim ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:num_of_victims ?num_of_victims ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:psychological_abuse_involved \"true\" ) ) ( test ( < ?num_of_victims 2 ) ) ( not ( object ( is-a psychological_abuse_one_victim ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat psychological_abuse_one_victim ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat psychological_abuse_one_victim ?Defendant ) ) ) ( make-instance ?oid of psychological_abuse_one_victim ( defendant ?Defendant ) ) )")
   (derived-class psychological_abuse_one_victim))

