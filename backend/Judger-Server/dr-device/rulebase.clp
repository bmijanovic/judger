(import-rdf "facts.rdf")
		(export-rdf export.rdf  is_speeding_on_town_road_lv3_with_accident is_speeding_on_town_road_lv1 is_speeding_on_town_road_lv2 to_pay_min to_pay_max max_imprisonment is_speeding_on_town_road_lv3 to_pay)
		(export-proof proof.ruleml)
		
(defeasiblerule rule1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:speed ?Speed)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:allowed_speed 50)
	) 
		(test 
		(>  ?Speed 70
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:driving_on "town_road")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:caused_accident "no")
	) 
  => 
	 
	(is_speeding_on_town_road_lv1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule2
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:speed ?Speed)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:allowed_speed 50)
	) 
		(test 
		(<=  ?Speed 50
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:driving_on "town_road")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:caused_accident "no")
	) 
  => 
	
		(not  
	(is_speeding_on_town_road_lv1 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule3
		(declare (superior rule2 rule1 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:speed ?Speed)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:allowed_speed 50)
	) 
		(test 
		(>  ?Speed 80
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:driving_on "town_road")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:caused_accident "no")
	) 
  => 
	 
	(is_speeding_on_town_road_lv2 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule4
		(declare (superior rule1 )) 
	(is_speeding_on_town_road_lv2 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_speeding_on_town_road_lv1 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule5
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:speed ?Speed)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:allowed_speed 50)
	) 
		(test 
		(>  ?Speed 100
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:driving_on "town_road")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:caused_accident "no")
	) 
  => 
	 
	(is_speeding_on_town_road_lv3 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule6
		(declare (superior rule3 )) 
	(is_speeding_on_town_road_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_speeding_on_town_road_lv2 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule7
		(declare (superior rule1 )) 
	(is_speeding_on_town_road_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(is_speeding_on_town_road_lv1 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule8
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:speed ?Speed)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:allowed_speed 50)
	) 
		(test 
		(>  ?Speed 100
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:driving_on "town_road")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:caused_accident "yes")
	) 
  => 
	 
	(is_speeding_on_town_road_lv3_with_accident 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule pen1
		 
	(is_speeding_on_town_road_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay 
		(
		 value 10000)
	) 
) 
	
(defeasiblerule pen2
		 
	(is_speeding_on_town_road_lv2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min 
		(
		 value 10000)
	) 
) 
	
(defeasiblerule pen3
		 
	(is_speeding_on_town_road_lv2 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max 
		(
		 value 20000)
	) 
) 
	
(defeasiblerule pen4
		 
	(is_speeding_on_town_road_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min 
		(
		 value 20000)
	) 
) 
	
(defeasiblerule pen5
		 
	(is_speeding_on_town_road_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max 
		(
		 value 40000)
	) 
) 
	
(defeasiblerule pen6
		 
	(is_speeding_on_town_road_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 30)
	) 
) 
	
(defeasiblerule pen7
		 
	(is_speeding_on_town_road_lv3_with_accident 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 60)
	) 
) 
	
(defeasiblerule pen8
		 
	(is_speeding_on_town_road_lv3_with_accident 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min 
		(
		 value 40000)
	) 
) 
	
(defeasiblerule pen9
		 
	(is_speeding_on_town_road_lv3_with_accident 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max 
		(
		 value 60000)
	) 
) 
	