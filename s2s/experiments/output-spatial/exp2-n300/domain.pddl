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
		type-1 - object
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
		(symbol_10 ?a - type-1)
		(symbol_11 ?a - type44)
		(symbol_12 ?a - type33)
		(symbol_13 ?a - type44)
		(symbol_14 ?a - type33)
		(symbol_15 ?a - type2)
		(symbol_16 ?a - type44)
		(symbol_17 ?a - type14)
		(symbol_18 ?a - type33)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type44)
		(symbol_21 ?a - type-1)
		(symbol_22 ?a - type-1)
	)

	(:action option-0-partition-1-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.805 (not (notfailed))
					0.195 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_18 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-0-partition-1-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.891 (not (notfailed))
					0.109 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_18 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-0-partition-1-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.869 (not (notfailed))
					0.131 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_18 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-0-partition-3-3
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.176 (not (notfailed))
					0.824 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-4
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.07 (not (notfailed))
					0.93 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-5
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.191 (not (notfailed))
					0.809 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-6
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.127 (not (notfailed))
					0.873 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-7
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.062 (not (notfailed))
					0.938 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.885 (not (notfailed))
					0.115 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.069 (not (notfailed))
					0.931 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.064 (not (notfailed))
					0.936 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_12 ?b)))
	)

	(:action option-2-partition-0-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.093 (not (notfailed))
					0.907 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-0-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.084 (not (notfailed))
					0.916 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.137 (not (notfailed))
					0.863 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.205 (not (notfailed))
					0.795 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.181 (not (notfailed))
					0.819 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-3-partition-0-17
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.437 (not (notfailed))
					0.563 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_16 ?d))))
	)

	(:action option-3-partition-0-18
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.453 (not (notfailed))
					0.547 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_16 ?d))))
	)

	(:action option-3-partition-1-19
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.112 (not (notfailed))
					0.888 (and (symbol_20 ?d) (symbol_18 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-20
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_16 ?d))
		:effect (and (symbol_20 ?d) (symbol_18 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_16 ?d)))
	)

	(:action option-3-partition-1-21
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_18 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_20 ?d) (symbol_18 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?d))))
	)

	(:action option-3-partition-1-22
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_12 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_20 ?d) (symbol_18 ?c) (symbol_15 ?b) (not (symbol_12 ?c)) (not (symbol_16 ?d))))
	)

	(:action option-3-partition-1-23
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.093 (not (notfailed))
					0.907 (and (symbol_20 ?d) (symbol_18 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-24
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_16 ?d))
		:effect (and (symbol_20 ?d) (symbol_18 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_16 ?d)))
	)

	(:action option-3-partition-1-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.125 (not (notfailed))
					0.875 (and (symbol_20 ?d) (symbol_18 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_16 ?d))
		:effect (and (symbol_20 ?d) (symbol_18 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_16 ?d)))
	)

	(:action option-4-partition-0-27
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.573 (not (notfailed))
					0.427 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-28
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.597 (not (notfailed))
					0.403 (symbol_19 ?a))
	)

	(:action option-4-partition-0-29
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.684 (not (notfailed))
					0.316 (and (symbol_19 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-30
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.68 (not (notfailed))
					0.32 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-1-31
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.776 (not (notfailed))
					0.224 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-32
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.805 (not (notfailed))
					0.195 (and (symbol_21 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-33
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.698 (not (notfailed))
					0.302 (symbol_21 ?a))
	)

	(:action option-4-partition-1-34
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.7 (not (notfailed))
					0.3 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-35
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_10 ?a)))
	)

	(:action option-5-partition-0-36
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_19 ?a)))
	)

	(:action option-5-partition-0-37
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_21 ?a)))
	)

	(:action option-5-partition-0-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect (symbol_22 ?a)
	)
)