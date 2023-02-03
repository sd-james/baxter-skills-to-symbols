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
		(symbol_12 ?a - type14)
		(symbol_13 ?a - type44)
		(symbol_14 ?a - type33)
		(symbol_15 ?a - type2)
		(symbol_16 ?a - type33)
		(symbol_17 ?a - type44)
		(symbol_18 ?a - type33)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type-1)
		(symbol_22 ?a - type44)
		(symbol_23 ?a - type2)
		(symbol_24 ?a - type-1)
		(symbol_25 ?a - type-1)
		(symbol_26 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.097 (not (notfailed))
					0.903 (and (symbol_22 ?d) (symbol_1 ?c) (symbol_23 ?b) (not (symbol_14 ?c)) (not (symbol_15 ?b)) (not (symbol_17 ?d))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.133 (not (notfailed))
					0.867 (and (symbol_22 ?d) (symbol_1 ?c) (symbol_23 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?d)) (not (symbol_18 ?c))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.476 (not (notfailed))
					0.524 (and (symbol_22 ?d) (symbol_1 ?c) (symbol_23 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_15 ?b))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.338 (not (notfailed))
					0.662 (and (symbol_22 ?d) (symbol_1 ?c) (symbol_23 ?b) (not (symbol_14 ?c)) (not (symbol_15 ?b)) (not (symbol_17 ?d))))
	)

	(:action option-0-partition-0-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.454 (not (notfailed))
					0.546 (and (symbol_22 ?d) (symbol_1 ?c) (symbol_23 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?d)) (not (symbol_18 ?c))))
	)

	(:action option-0-partition-0-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_26 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.55 (not (notfailed))
					0.45 (and (symbol_22 ?d) (symbol_1 ?c) (symbol_23 ?b) (not (symbol_14 ?c)) (not (symbol_15 ?b)) (not (symbol_17 ?d))))
	)

	(:action option-0-partition-0-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_26 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.495 (not (notfailed))
					0.505 (and (symbol_22 ?d) (symbol_1 ?c) (symbol_23 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?d)) (not (symbol_18 ?c))))
	)

	(:action option-0-partition-1-7
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.175 (not (notfailed))
					0.825 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-0-partition-1-8
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.88 (not (notfailed))
					0.12 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-0-partition-1-9
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.677 (not (notfailed))
					0.323 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.173 (not (notfailed))
					0.827 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.773 (not (notfailed))
					0.227 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.232 (not (notfailed))
					0.768 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_26 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.31 (not (notfailed))
					0.69 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.471 (not (notfailed))
					0.529 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.88 (not (notfailed))
					0.12 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.547 (not (notfailed))
					0.453 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-17
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.538 (not (notfailed))
					0.462 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-18
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_26 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.441 (not (notfailed))
					0.559 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect (and (symbol_14 ?b) (not (symbol_18 ?b)))
	)

	(:action option-2-partition-0-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.644 (not (notfailed))
					0.356 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.198 (not (notfailed))
					0.802 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.059 (not (notfailed))
					0.941 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.823 (not (notfailed))
					0.177 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_26 ?a) (symbol_18 ?b))
		:effect (and (symbol_14 ?b) (not (symbol_18 ?b)))
	)

	(:action option-2-partition-1-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.119 (not (notfailed))
					0.881 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-1-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.883 (not (notfailed))
					0.117 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-1-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.202 (not (notfailed))
					0.798 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-1-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_26 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.27 (not (notfailed))
					0.73 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-3-partition-0-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.164 (not (notfailed))
					0.836 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.401 (not (notfailed))
					0.599 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.233 (not (notfailed))
					0.767 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_26 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.188 (not (notfailed))
					0.812 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-4-partition-0-33
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.504 (not (notfailed))
					0.496 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-34
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.859 (not (notfailed))
					0.141 (symbol_19 ?a))
	)

	(:action option-4-partition-0-35
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.783 (not (notfailed))
					0.217 (and (symbol_19 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-36
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.593 (not (notfailed))
					0.407 (and (symbol_19 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-37
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.459 (not (notfailed))
					0.541 (and (symbol_19 ?a) (not (symbol_24 ?a))))
	)

	(:action option-4-partition-0-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_25 ?a))
		:effect 
			(probabilistic
					0.702 (not (notfailed))
					0.298 (and (symbol_19 ?a) (not (symbol_25 ?a))))
	)

	(:action option-4-partition-0-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_26 ?a))
		:effect 
			(probabilistic
					0.776 (not (notfailed))
					0.224 (and (symbol_19 ?a) (not (symbol_26 ?a))))
	)

	(:action option-4-partition-1-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.867 (not (notfailed))
					0.133 (and (symbol_24 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.867 (not (notfailed))
					0.133 (and (symbol_24 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.867 (not (notfailed))
					0.133 (and (symbol_24 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.87 (not (notfailed))
					0.13 (and (symbol_24 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-1-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.867 (not (notfailed))
					0.133 (symbol_24 ?a))
	)

	(:action option-4-partition-1-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_25 ?a))
		:effect 
			(probabilistic
					0.868 (not (notfailed))
					0.132 (and (symbol_24 ?a) (not (symbol_25 ?a))))
	)

	(:action option-4-partition-1-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_26 ?a))
		:effect 
			(probabilistic
					0.869 (not (notfailed))
					0.131 (and (symbol_24 ?a) (not (symbol_26 ?a))))
	)

	(:action option-5-partition-0-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.252 (not (notfailed))
					0.748 (and (symbol_26 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.447 (not (notfailed))
					0.553 (and (symbol_26 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.408 (not (notfailed))
					0.592 (and (symbol_26 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.261 (not (notfailed))
					0.739 (and (symbol_26 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.262 (not (notfailed))
					0.738 (and (symbol_26 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_25 ?a))
		:effect 
			(probabilistic
					0.349 (not (notfailed))
					0.651 (and (symbol_26 ?a) (not (symbol_25 ?a))))
	)

	(:action option-5-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_26 ?a))
		:effect 
			(probabilistic
					0.306 (not (notfailed))
					0.694 (symbol_26 ?a))
	)

	(:action option-5-partition-1-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.895 (not (notfailed))
					0.105 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.803 (not (notfailed))
					0.197 (symbol_21 ?a))
	)

	(:action option-5-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_21 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_26 ?a))
		:effect 
			(probabilistic
					0.85 (not (notfailed))
					0.15 (and (symbol_21 ?a) (not (symbol_26 ?a))))
	)

	(:action option-5-partition-2-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.885 (not (notfailed))
					0.115 (and (symbol_25 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-2-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.885 (not (notfailed))
					0.115 (and (symbol_25 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-2-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.896 (not (notfailed))
					0.104 (and (symbol_25 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-3-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.829 (not (notfailed))
					0.171 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-3-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.884 (not (notfailed))
					0.116 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-3-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.87 (not (notfailed))
					0.13 (symbol_20 ?a))
	)

	(:action option-5-partition-3-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.881 (not (notfailed))
					0.119 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-3-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.872 (not (notfailed))
					0.128 (and (symbol_20 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-3-66
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_25 ?a))
		:effect 
			(probabilistic
					0.883 (not (notfailed))
					0.117 (and (symbol_20 ?a) (not (symbol_25 ?a))))
	)

	(:action option-5-partition-3-67
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_26 ?a))
		:effect 
			(probabilistic
					0.872 (not (notfailed))
					0.128 (and (symbol_20 ?a) (not (symbol_26 ?a))))
	)
)