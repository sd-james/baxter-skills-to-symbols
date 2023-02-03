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
		(symbol_13 ?a - type33)
		(symbol_14 ?a - type44)
		(symbol_15 ?a - type33)
		(symbol_16 ?a - type44)
		(symbol_17 ?a - type33)
		(symbol_18 ?a - type2)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type44)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
	)

	(:action option-1-partition-0-0
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.755 (not (notfailed))
					0.245 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-1
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.79 (not (notfailed))
					0.21 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-2
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b)))
	)

	(:action option-1-partition-0-3
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.892 (not (notfailed))
					0.108 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-4
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.453 (not (notfailed))
					0.547 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-5
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.76 (not (notfailed))
					0.24 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-6
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_13 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.794 (not (notfailed))
					0.206 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-7
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b)))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.759 (not (notfailed))
					0.241 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_13 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.794 (not (notfailed))
					0.206 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b)))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.768 (not (notfailed))
					0.232 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_13 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.807 (not (notfailed))
					0.193 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b)))
	)

	(:action option-1-partition-1-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.052 (not (notfailed))
					0.948 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.094 (not (notfailed))
					0.906 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.095 (not (notfailed))
					0.905 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.085 (not (notfailed))
					0.915 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.872 (not (notfailed))
					0.128 (and (symbol_13 ?b) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-2-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.661 (not (notfailed))
					0.339 (and (symbol_13 ?b) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-2-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.757 (not (notfailed))
					0.243 (and (symbol_13 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-0-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_15 ?b)))
	)

	(:action option-2-partition-0-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.117 (not (notfailed))
					0.883 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.117 (not (notfailed))
					0.883 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.091 (not (notfailed))
					0.909 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-1-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.422 (not (notfailed))
					0.578 (and (symbol_17 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.362 (not (notfailed))
					0.638 (and (symbol_17 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.43 (not (notfailed))
					0.57 (and (symbol_17 ?b) (not (symbol_13 ?b))))
	)

	(:action option-3-partition-0-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.275 (not (notfailed))
					0.725 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-0-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.415 (not (notfailed))
					0.585 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-0-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.276 (not (notfailed))
					0.724 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.275 (not (notfailed))
					0.725 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.706 (not (notfailed))
					0.294 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.429 (not (notfailed))
					0.571 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.596 (not (notfailed))
					0.404 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.431 (not (notfailed))
					0.569 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.433 (not (notfailed))
					0.567 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.43 (not (notfailed))
					0.57 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-0-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.602 (not (notfailed))
					0.398 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-0-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.432 (not (notfailed))
					0.568 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.425 (not (notfailed))
					0.575 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-44
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-45
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.374 (not (notfailed))
					0.626 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-0-46
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.682 (not (notfailed))
					0.318 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-0-47
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.377 (not (notfailed))
					0.623 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-48
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.367 (not (notfailed))
					0.633 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-4-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.669 (not (notfailed))
					0.331 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.652 (not (notfailed))
					0.348 (symbol_19 ?a))
	)

	(:action option-4-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.627 (not (notfailed))
					0.373 (and (symbol_19 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.624 (not (notfailed))
					0.376 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.645 (not (notfailed))
					0.355 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.707 (not (notfailed))
					0.293 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.741 (not (notfailed))
					0.259 (and (symbol_22 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.494 (not (notfailed))
					0.506 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.464 (not (notfailed))
					0.536 (symbol_22 ?a))
	)

	(:action option-4-partition-1-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.468 (not (notfailed))
					0.532 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.774 (not (notfailed))
					0.226 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.813 (not (notfailed))
					0.187 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.816 (not (notfailed))
					0.184 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.817 (not (notfailed))
					0.183 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.815 (not (notfailed))
					0.185 (symbol_23 ?a))
	)

	(:action option-5-partition-1-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.385 (not (notfailed))
					0.615 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.21 (not (notfailed))
					0.79 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-1-66
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.198 (not (notfailed))
					0.802 (symbol_20 ?a))
	)

	(:action option-5-partition-1-67
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.197 (not (notfailed))
					0.803 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-68
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.198 (not (notfailed))
					0.802 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)
)