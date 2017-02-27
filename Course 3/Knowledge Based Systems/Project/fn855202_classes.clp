; Tue Jan 21 17:56:15 EET 2014
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot AdditionalSupplementType
		(type STRING)
		(create-accessor read-write))
	(single-slot Name
		(type STRING)
		(create-accessor read-write))
	(single-slot AdditionalSupplementName
		(type STRING)
		(create-accessor read-write))
	(single-slot AdditionalSupplementPrice
		(type FLOAT)
		(create-accessor read-write))
	(multislot FoundProblem
		(type STRING)
		(create-accessor read-write))
	(single-slot Rating
		(type INTEGER)
		(range 1 10)
		(create-accessor read-write))
	(single-slot WheyProtein
		(type SYMBOL)
		(allowed-values T F)
		(create-accessor read-write))
	(multislot UsedSupplement
		(type INSTANCE)
		(create-accessor read-write))
	(single-slot Carbohydrates
		(type SYMBOL)
		(allowed-values T F)
		(create-accessor read-write))
	(single-slot CreatineMonohidrate
		(type SYMBOL)
		(allowed-values TRUE FALSE)
		(default TRUE)
		(create-accessor read-write))
	(single-slot Brand
		(type STRING)
		(create-accessor read-write))
	(single-slot DescriptionProblem
		(type STRING)
		(create-accessor read-write)))

(defclass Supplement
	(is-a USER)
	(role abstract)
	(multislot FoundProblem
		(type STRING)
		(create-accessor read-write))
	(single-slot Name
		(type STRING)
		(create-accessor read-write))
	(single-slot Brand
		(type STRING)
		(create-accessor read-write))
	(single-slot Rating
		(type INTEGER)
		(range 1 10)
		(create-accessor read-write))
	(single-slot DescriptionProblem
		(type STRING)
		(create-accessor read-write))
	(multislot UsedSupplement
		(type INSTANCE)
		(create-accessor read-write)))

(defclass WeightGain
	(is-a Supplement)
	(role abstract))

(defclass Protein
	(is-a WeightGain)
	(role concrete)
	(pattern-match reactive)
	(single-slot WheyProtein
		(type SYMBOL)
		(allowed-values T F)
		(create-accessor read-write)))

(defclass Gainer
	(is-a WeightGain)
	(role concrete)
	(pattern-match reactive)
	(single-slot Carbohydrates
		(type SYMBOL)
		(allowed-values T F)
		(create-accessor read-write)))

(defclass FatBurners
	(is-a Supplement)
	(role abstract))

(defclass LCarnitin
	(is-a FatBurners)
	(role concrete)
	(pattern-match reactive))

(defclass StrengthIncrease
	(is-a Supplement)
	(role abstract))

(defclass CreatineProduct
	(is-a StrengthIncrease)
	(role concrete)
	(pattern-match reactive)
	(single-slot CreatineMonohidrate
		(type SYMBOL)
		(allowed-values TRUE FALSE)
		(default TRUE)
		(create-accessor read-write)))

(defclass NitricOxide
	(is-a StrengthIncrease)
	(role concrete)
	(pattern-match reactive))

(defclass AdditionalSupplement
	(is-a USER)
	(role concrete)
	(pattern-match reactive)
	(single-slot AdditionalSupplementPrice
		(type FLOAT)
		(create-accessor read-write))
	(single-slot AdditionalSupplementType
		(type STRING)
		(create-accessor read-write))
	(single-slot AdditionalSupplementName
		(type STRING)
		(create-accessor read-write)))