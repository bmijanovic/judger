(import-rdf "facts.rdf")
		(export-rdf export.rdf  movement_restrictions_death movement_restrictions_life_threatening movement_restrictions_on_duty movement_restrictions psychological_abuse_on_duty psychological_abuse min_imprisonment max_imprisonment)
		(export-proof proof.ruleml)
		
(defeasiblerule rule1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:psychological_abuse_involved "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:physical_abuse_involved "false")
	) 
  => 
	 
	(psychological_abuse 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule2
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:psychological_abuse_involved "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:physical_abuse_involved "false")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:on_duty "true")
	) 
  => 
	 
	(psychological_abuse_on_duty 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule2_1
		(declare (superior rule1 )) 
	(psychological_abuse_on_duty 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule3
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:num_of_defendants ?num_of_defendants)
	) 
  => 
	 
	(movement_restrictions 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule3_1
		(declare (superior rule1 )) 
	(movement_restrictions 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule3_2
		(declare (superior rule2 )) 
	(movement_restrictions 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse_on_duty 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule4
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:on_duty "true")
	) 
  => 
	 
	(movement_restrictions_on_duty 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule4_1
		(declare (superior rule1 )) 
	(movement_restrictions_on_duty 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule4_2
		(declare (superior rule2 )) 
	(movement_restrictions_on_duty 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse_on_duty 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule4_3
		(declare (superior rule3 )) 
	(movement_restrictions_on_duty 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(movement_restrictions 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule5
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:injury_severity "LIFE_THREATENING")
	) 
  => 
	 
	(movement_restrictions_life_threatening 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule5_1
		(declare (superior rule1 )) 
	(movement_restrictions_life_threatening 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule5_2
		(declare (superior rule2 )) 
	(movement_restrictions_life_threatening 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse_on_duty 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule5_3
		(declare (superior rule3 )) 
	(movement_restrictions_life_threatening 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(movement_restrictions 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule5_4
		(declare (superior rule4 )) 
	(movement_restrictions_life_threatening 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(movement_restrictions_on_duty 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule6
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:injury_severity "FATAL")
	) 
  => 
	 
	(movement_restrictions_death 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule6_1
		(declare (superior rule1 )) 
	(movement_restrictions_death 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule6_2
		(declare (superior rule2 )) 
	(movement_restrictions_death 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse_on_duty 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule6_3
		(declare (superior rule3 )) 
	(movement_restrictions_death 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(movement_restrictions 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule6_4
		(declare (superior rule4 )) 
	(movement_restrictions_death 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(movement_restrictions_on_duty 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule pn_psy_abuse_min
		 
	(psychological_abuse 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 0)
	) 
) 
	
(defeasiblerule pn_psy_abuse_max
		 
	(psychological_abuse 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pn_psy_abuse_on_duty_min
		 
	(psychological_abuse_on_duty 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pn_psy_abuse_on_duty_max
		 
	(psychological_abuse_on_duty 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 8)
	) 
) 
	
(defeasiblerule pn_movement_restrct_min
		 
	(movement_restrictions 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 0)
	) 
) 
	
(defeasiblerule pn_movement_restrct_max
		 
	(movement_restrictions 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pn_movement_restrct_on_duty_min
		 
	(movement_restrictions_on_duty 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pn_movement_restrct_on_duty_max
		 
	(movement_restrictions_on_duty 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 5)
	) 
) 
	
(defeasiblerule pn_movement_restrct_life_threatening_min
		 
	(movement_restrictions_life_threatening 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pn_movement_restrct_life_threatening_max
		 
	(movement_restrictions_life_threatening 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 8)
	) 
) 
	
(defeasiblerule pn_movement_restrct_death_min
		 
	(movement_restrictions_death 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 2)
	) 
) 
	
(defeasiblerule pn_movement_restrct_death_max
		 
	(movement_restrictions_death 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 12)
	) 
) 
	