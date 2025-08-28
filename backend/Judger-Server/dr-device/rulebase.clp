(import-rdf "facts.rdf")
		(export-rdf export.rdf  to_increase_penalty not_previously_convicted)
		(export-proof proof.ruleml)
		
(defeasiblerule rule10
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:previously_convicted "true")
	) 
  => 
	 
	(not_previously_convicted 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule pen11
		 
	(not_previously_convicted 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_increase_penalty 
		(
		 value true)
	) 
) 
	