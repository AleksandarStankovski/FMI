;-----------FUNCTIONS-----------

;ask question and read answer to the user
(deffunction read-answer (?question)
	(printout t ?question)
	(read)
)

;asking the question
(deffunction ask-question (?question)
	(bind ?answer (read-answer ?question))
)


;-------------RULES-------------

; looking for cases where protein gives less energy
; telling that the problem is in the energy formula
(defrule find-problem-energy (declare (salience 20))
	?inst <- (object (is-a Protein) (DescriptionProblem "Not satisfied with the amount of energy"))
=>
	(modify-instance ?inst (FoundProblem "EnergyFormula"))
)

; looking for cases where gainer gives less muscular endurance
; telling that the problem is in the low level creatine
(defrule find-problem-creatine (declare (salience 20))
	?inst <- (object (is-a Gainer) (DescriptionProblem "Not satisfied with the muscular endurance"))
=>
	(modify-instance ?inst (FoundProblem "Creatine"))
)

; looking for cases where creatine product gives less power 
; telling that the problem is in the low level amino acidis
(defrule find-problem-amino-acidis (declare (salience 20))
	?inst <- (object (is-a CreatineProduct) (DescriptionProblem "Not satisfied with explosive power")(Rating ?rating))
	(test(< ?rating 7))
=>
	(modify-instance ?inst (FoundProblem "Low level amino acidis"))
)

(defrule UsedSupplement-choice1 (declare (salience 10))
	?inst <- (object (is-a Supplement) (Name ?n) (FoundProblem "EnergyFormula"))
=>	
    (printout t "Food supplement: " ?n crlf)
    (printout t "The problem is that this supplement gives less energy" crlf)
	(printout t "We recommend additional supplement Almax Caffeine for 40.0 lv" crlf)
	(bind ?no (ask-question "Should we look for another supplement(Yes/No): "))
	(if (eq ?no No)
	 then
		(make-instance Caffeine of AdditionalSupplement (AdditionalSupplementName "Caffeine") (AdditionalSupplementPrice 40.0) (AdditionalSupplementType "EnergyFormulas"))
		(modify-instance ?inst (UsedSupplement [Caffeine]))
		(printout t crlf)
	 else
		(make-instance BlackJack of AdditionalSupplement (AdditionalSupplementName "BlackJack") (AdditionalSupplementPrice 59.0) (AdditionalSupplementType "EnergyFormula"))
		(printout t "Selected BlackJack for 59.0 lv" crlf)
		(modify-instance ?inst (UsedSupplement [BlackJack]))
		(printout t crlf)
	
	)
)

(defrule UsedSupplement-choice2 (declare (salience 10))
	?inst <- (object (is-a Supplement) (Name ?n) (FoundProblem "Creatine"))
=>	

	(printout t "Food supplement: " ?n crlf)
	(printout t "The problem is that this supplement contains a low level of creatine" crlf)
	(printout t "We recommend additional supplement CreatineMega for 40.0 lv" crlf)
	(bind ?no (ask-question "Should we look for another supplement(Yes/No): "))
	(if (eq ?no No)
	then
        (make-instance CreatineMega of AdditionalSupplement (AdditionalSupplementName "CreatineMega") (AdditionalSupplementPrice 40.0) (AdditionalSupplementType "Creatine"))
		(modify-instance ?inst (UsedSupplement [CreatineMega]))
		(printout t crlf)		
	else
		(printout t "You should go somewhere else" crlf)
		(printout t crlf)
	)
)

