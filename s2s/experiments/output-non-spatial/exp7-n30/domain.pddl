;Automatically generated AosmEnv domain PPDDL file.
(define (domain AosmEnv)
	(:requirements :typing :strips)

	(:types 
		type0 - object
		type1 - object
		type2 - object
		type3 - object
		type4 - object
		type5 - object
		type6 - object
		type7 - object
		type8 - object
		type9 - object
		type10 - object
		type11 - object
		type12 - object
		type13 - object
		type14 - object
		type15 - object
		type16 - object
		type17 - object
		type18 - object
		type19 - object
		type20 - object
		type21 - object
		type22 - object
		type23 - object
		type24 - object
		type25 - object
		type26 - object
		type27 - object
		type28 - object
		type29 - object
		type30 - object
		type31 - object
		type32 - object
		type33 - object
		type34 - object
		type35 - object
		type36 - object
		type37 - object
		type38 - object
		type39 - object
		type40 - object
		type41 - object
		type42 - object
		type43 - object
		type44 - object
	)


	(:predicates
		(notfailed)
		(symbol_0 ?a - type44)
		(symbol_1 ?a - type33)
		(symbol_2 ?a - type14)
		(symbol_3 ?a - type14)
		(symbol_4 ?a - type14)
		(symbol_5 ?a - type2)
		(symbol_6 ?a - type2)
		(symbol_7 ?a - type2)
		(symbol_10 ?a - type33)
		(symbol_11 ?a - type44)
		(symbol_12 ?a - type14)
		(symbol_14 ?a - type33)
		(symbol_15 ?a - type44)
		(symbol_16 ?a - type2)
	)

	(:action option-0-partition-1-0
		:parameters (?a - type14 ?b - type44)
		:precondition (and (notfailed) (symbol_3 ?a) (symbol_0 ?b))
		:effect 
			(probabilistic
					0.2 (not (notfailed))
					0.8 (and (symbol_11 ?b) (symbol_12 ?a) (not (symbol_0 ?b)) (not (symbol_3 ?a))))
	)

	(:action option-1-partition-0-1
		:parameters (?a - type33)
		:precondition (and (notfailed) (symbol_1 ?a))
		:effect 
			(probabilistic
					0.167 (not (notfailed))
					0.833 (and (symbol_14 ?a) (not (symbol_1 ?a))))
	)

	(:action option-2-partition-1-2
		:parameters (?a - type33)
		:precondition (and (notfailed) (symbol_14 ?a))
		:effect 
			(probabilistic
					0.143 (not (notfailed))
					0.857 (and (symbol_1 ?a) (not (symbol_14 ?a))))
	)

	(:action option-3-partition-0-3
		:parameters (?a - type2 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_6 ?a) (symbol_1 ?b) (symbol_11 ?c))
		:effect 
			(probabilistic
					0.115 (not (notfailed))
					0.885 (and (symbol_15 ?c) (symbol_10 ?b) (symbol_16 ?a) (not (symbol_1 ?b)) (not (symbol_6 ?a)) (not (symbol_11 ?c))))
	)

	(:action option-3-partition-0-4
		:parameters (?a - type2 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_6 ?a) (symbol_14 ?b) (symbol_11 ?c))
		:effect 
			(probabilistic
					0.115 (not (notfailed))
					0.885 (and (symbol_15 ?c) (symbol_10 ?b) (symbol_16 ?a) (not (symbol_6 ?a)) (not (symbol_11 ?c)) (not (symbol_14 ?b))))
	)
)