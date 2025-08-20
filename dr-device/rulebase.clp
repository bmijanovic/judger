(import-rdf "facts.rdf")
		(export-rdf export.rdf   counterfeiting_money_under_15000 counterfeiting_money_over_15000 procurement_money_under_15000 procurement_money_over_15000 counterfeiting_money_under_15000_mitigating_circumstances counterfeiting_money_over_15000_mitigating_circumstances procurement_money_under_15000_mitigating_circumstances procurement_money_over_15000_mitigating_circumstances counterfeiting_money_under_15000_aggravating_circumstances counterfeiting_money_over_15000_aggravating_circumstances procurement_money_under_15000_aggravating_circumstances procurement_money_over_15000_aggravating_circumstances failure_to_report min_imprisonment max_imprisonment to_confiscate )
		(export-proof proof.ruleml)
		
(defeasiblerule rule1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "counterfeiting_money")
	) 
		(test 
		(<=  ?Amount 15000
		)
	)
	
  => 
	 
	(counterfeiting_money_under_15000 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule2
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	) 
		(test 
		(>  ?Amount 15000
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "counterfeiting_money")
	) 
  => 
	 
	(counterfeiting_money_over_15000 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule3
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "procurement_of_counterfeit_money")
	) 
		(test 
		(<=  ?Amount 15000
		)
	)
	
  => 
	 
	(procurement_money_under_15000 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule4
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "procurement_of_counterfeit_money")
	) 
		(test 
		(>  ?Amount 15000
		)
	)
	
  => 
	 
	(procurement_money_over_15000 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule5
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "counterfeiting_money")
	) 
		(test 
		(<=  ?Amount 15000
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:financial_condition "poor")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:extended_criminal_activity "false")
	) 
  => 
	 
	(counterfeiting_money_under_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule5_1
		(declare (superior rule1 )) 
	(counterfeiting_money_under_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(counterfeiting_money_under_15000 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule6
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	) 
		(test 
		(>  ?Amount 15000
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "counterfeiting_money")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:financial_condition "poor")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:extended_criminal_activity "false")
	) 
  => 
	 
	(counterfeiting_money_over_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule6_2
		(declare (superior rule2 )) 
	(counterfeiting_money_over_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(counterfeiting_money_over_15000 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule7
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "procurement_of_counterfeit_money")
	) 
		(test 
		(<=  ?Amount 15000
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:financial_condition "poor")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:extended_criminal_activity "false")
	) 
  => 
	 
	(procurement_money_under_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule7_3
		(declare (superior rule3 )) 
	(procurement_money_under_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(procurement_money_under_15000 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule8
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "procurement_of_counterfeit_money")
	) 
		(test 
		(>  ?Amount 15000
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:financial_condition "poor")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:extended_criminal_activity "false")
	) 
  => 
	 
	(procurement_money_over_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule8_4
		(declare (superior rule4 )) 
	(procurement_money_over_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(procurement_money_over_15000 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule9
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "counterfeiting_money")
	) 
		(test 
		(<=  ?Amount 15000
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:extended_criminal_activity "true")
	) 
  => 
	 
	(counterfeiting_money_under_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule9_1
		(declare (superior rule1 )) 
	(counterfeiting_money_under_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(counterfeiting_money_under_15000 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule10
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	) 
		(test 
		(>  ?Amount 15000
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "counterfeiting_money")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:extended_criminal_activity "true")
	) 
  => 
	 
	(counterfeiting_money_over_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule10_2
		(declare (superior rule2 )) 
	(counterfeiting_money_over_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(counterfeiting_money_over_15000 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule11
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "procurement_of_counterfeit_money")
	) 
		(test 
		(<=  ?Amount 15000
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:extended_criminal_activity "true")
	) 
  => 
	 
	(procurement_money_under_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule11_3
		(declare (superior rule3 )) 
	(procurement_money_under_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(procurement_money_under_15000 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule12
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:amount ?Amount)
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "procurement_of_counterfeit_money")
	) 
		(test 
		(>  ?Amount 15000
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:extended_criminal_activity "true")
	) 
  => 
	 
	(procurement_money_over_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule12_4
		(declare (superior rule4 )) 
	(procurement_money_over_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(procurement_money_over_15000 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule rule13
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:crime_type "failure_to_report")
	) 
  => 
	 
	(failure_to_report 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule pen_conf_1
		 
	(counterfeiting_money_under_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_2
		 
	(counterfeiting_money_over_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_3
		 
	(procurement_money_under_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_4
		 
	(procurement_money_over_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_5
		 
	(counterfeiting_money_under_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_6
		 
	(counterfeiting_money_over_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_7
		 
	(procurement_money_under_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_8
		 
	(procurement_money_over_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_9
		 
	(counterfeiting_money_under_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_10
		 
	(counterfeiting_money_over_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_11
		 
	(procurement_money_under_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_12
		 
	(procurement_money_over_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_conf_13
		 
	(failure_to_report 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pn_make_lt_min
		 
	(counterfeiting_money_under_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 2)
	) 
) 
	
(defeasiblerule pn_make_lt_max
		 
	(counterfeiting_money_under_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 12)
	) 
) 
	
(defeasiblerule pn_make_gt_min
		 
	(counterfeiting_money_over_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 5)
	) 
) 
	
(defeasiblerule pn_make_gt_max
		 
	(counterfeiting_money_over_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 15)
	) 
) 
	
(defeasiblerule pn_use_lt_min
		 
	(procurement_money_under_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 2)
	) 
) 
	
(defeasiblerule pn_use_lt_max
		 
	(procurement_money_under_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 10)
	) 
) 
	
(defeasiblerule pn_use_gt_min
		 
	(procurement_money_over_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 5)
	) 
) 
	
(defeasiblerule pn_use_gt_max
		 
	(procurement_money_over_15000 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 15)
	) 
) 
	
(defeasiblerule pn_make_lt_mitigating_min
		 
	(counterfeiting_money_under_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 0)
	) 
) 
	
(defeasiblerule pn_make_lt_mitigating_max
		 
	(counterfeiting_money_under_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 12)
	) 
) 
	
(defeasiblerule pn_make_gt_mitigating_min
		 
	(counterfeiting_money_over_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 0)
	) 
) 
	
(defeasiblerule pn_make_gt_mitigating_max
		 
	(counterfeiting_money_over_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 15)
	) 
) 
	
(defeasiblerule pn_use_lt_mitigating_min
		 
	(procurement_money_under_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 0)
	) 
) 
	
(defeasiblerule pn_use_lt_mitigating_max
		 
	(procurement_money_under_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 10)
	) 
) 
	
(defeasiblerule pn_use_gt_mitigating_min
		 
	(procurement_money_over_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 0)
	) 
) 
	
(defeasiblerule pn_use_gt_mitigating_max
		 
	(procurement_money_over_15000_mitigating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 15)
	) 
) 
	
(defeasiblerule pn_make_lt_agg_min
		 
	(counterfeiting_money_under_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 0)
	) 
) 
	
(defeasiblerule pn_make_lt_agg_max
		 
	(counterfeiting_money_under_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 20)
	) 
) 
	
(defeasiblerule pn_make_gt_agg_min
		 
	(counterfeiting_money_over_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 0)
	) 
) 
	
(defeasiblerule pn_make_gt_agg_max
		 
	(counterfeiting_money_over_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 20)
	) 
) 
	
(defeasiblerule pn_use_lt_agg_min
		 
	(procurement_money_under_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 0)
	) 
) 
	
(defeasiblerule pn_use_lt_agg_max
		 
	(procurement_money_under_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 20)
	) 
) 
	
(defeasiblerule pn_use_gt_agg_min
		 
	(procurement_money_over_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 0)
	) 
) 
	
(defeasiblerule pn_use_gt_agg_max
		 
	(procurement_money_over_15000_aggravating_circumstances 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 20)
	) 
) 
	
(defeasiblerule report_failure_min
		 
	(failure_to_report 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(min_imprisonment 
		(
		 value 0)
	) 
) 
	
(defeasiblerule report_failure_max
		 
	(failure_to_report 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(max_imprisonment 
		(
		 value 1)
	) 
) 
	