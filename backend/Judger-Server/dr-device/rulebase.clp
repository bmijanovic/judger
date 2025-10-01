(import-rdf "facts.rdf")
		(export-rdf export.rdf  psychological_abuse_one_victim psychological_abuse_more_victims physical_abuse_one_victim physical_abuse_more_victim physical_psychological_abuse_one_victim physical_psychological_abuse_more_victim life_threatening_torture min_imprisonment max_imprisonment)
		(export-proof proof.ruleml)
		
(defeasiblerule rule1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:num_of_victims ?num_of_victims)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:psychological_abuse_involved "true")
	) 
		(test 
		(<  ?num_of_victims 2
		)
	)
	
  => 
	 
	(psychological_abuse_one_victim 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule2
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:num_of_victims ?num_of_victims)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:psychological_abuse_involved "true")
	) 
		(test 
		(>  ?num_of_victims 1
		)
	)
	
  => 
	 
	(psychological_abuse_more_victims 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule3
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:num_of_victims ?num_of_victims)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:physical_abuse_involved "true")
	) 
		(test 
		(<  ?num_of_victims 2
		)
	)
	
  => 
	 
	(physical_abuse_one_victim 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule4
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:num_of_victims ?num_of_victims)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:physical_abuse_involved "true")
	) 
		(test 
		(>  ?num_of_victims 1
		)
	)
	
  => 
	 
	(physical_abuse_more_victim 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule5
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:num_of_victims ?num_of_victims)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:physical_abuse_involved "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:psychological_abuse_involved "true")
	) 
		(test 
		(<  ?num_of_victims 2
		)
	)
	
  => 
	 
	(physical_psychological_abuse_one_victim 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule5_1
		(declare (superior rule3 )) 
	(physical_psychological_abuse_one_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(physical_abuse_one_victim 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule5_2
		(declare (superior rule1 )) 
	(physical_psychological_abuse_one_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse_one_victim 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule6
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:num_of_victims ?num_of_victims)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:physical_abuse_involved "true")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:psychological_abuse_involved "true")
	) 
		(test 
		(>  ?num_of_victims 1
		)
	)
	
  => 
	 
	(physical_psychological_abuse_more_victim 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule6_1
		(declare (superior rule4 )) 
	(physical_psychological_abuse_more_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(physical_abuse_more_victim 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule6_2
		(declare (superior rule2 )) 
	(physical_psychological_abuse_more_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse_more_victims 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule7
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:injury_severity "LIFE_THREATENING")
	) 
  => 
	 
	(life_threatening_torture 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule7_1
		(declare (superior rule5 )) 
	(life_threatening_torture 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(physical_psychological_abuse_one_victim 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule7_2
		(declare (superior rule6 )) 
	(life_threatening_torture 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(physical_psychological_abuse_more_victim 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule7_3
		(declare (superior rule4 )) 
	(life_threatening_torture 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(physical_abuse_more_victim 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule7_4
		(declare (superior rule3 )) 
	(life_threatening_torture 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(physical_abuse_one_victim 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule7_5
		(declare (superior rule2 )) 
	(life_threatening_torture 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse_more_victim 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule7_6
		(declare (superior rule1 )) 
	(life_threatening_torture 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(psychological_abuse_one_victim 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule pn_psy_one_person_min
		 
	(psychological_abuse_one_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 2)
	) 
) 
	
(defeasiblerule pn_psy_one_person_max
		 
	(psychological_abuse_one_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 5)
	) 
) 
	
(defeasiblerule pn_phy_one_person_min
		 
	(physical_abuse_one_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pn_phy_one_person_max
		 
	(physical_abuse_one_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 6)
	) 
) 
	
(defeasiblerule pn_phy_more_person_min
		 
	(physical_abuse_more_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 3)
	) 
) 
	
(defeasiblerule pn_phy_more_person_max
		 
	(physical_abuse_more_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 6)
	) 
) 
	
(defeasiblerule pn_psy_more_person_min
		 
	(psychological_abuse_more_victims 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 5)
	) 
) 
	
(defeasiblerule pn_psy_more_person_max
		 
	(psychological_abuse_more_victims 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 10)
	) 
) 
	
(defeasiblerule pn_phy_psy_one_person_min
		 
	(physical_psychological_abuse_one_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 2)
	) 
) 
	
(defeasiblerule pn_phy_psy_one_person_max
		 
	(physical_psychological_abuse_one_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 15)
	) 
) 
	
(defeasiblerule pn_phy_psy_more_person_min
		 
	(physical_psychological_abuse_more_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 2)
	) 
) 
	
(defeasiblerule pn_phy_psy_more_person_max
		 
	(physical_psychological_abuse_more_victim 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 15)
	) 
) 
	
(defeasiblerule pn_life_threatening_torture_min
		 
	(life_threatening_torture 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pn_life_threatening_torture_max
		 
	(life_threatening_torture 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 5)
	) 
) 
	