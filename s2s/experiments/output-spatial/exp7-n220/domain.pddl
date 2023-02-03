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
		(symbol_13 ?a - type14)
		(symbol_14 ?a - type44)
		(symbol_15 ?a - type33)
		(symbol_16 ?a - type44)
		(symbol_17 ?a - type44)
		(symbol_18 ?a - type33)
		(symbol_19 ?a - type2)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type-1)
		(symbol_23 ?a - type-1)
		(symbol_24 ?a - type-1)
	)

	(:action option-0-partition-1-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.303 (not (notfailed))
					0.697 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.326 (not (notfailed))
					0.674 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.373 (not (notfailed))
					0.627 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.535 (not (notfailed))
					0.465 (and (symbol_14 ?d) (symbol_15 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_16 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.489 (not (notfailed))
					0.511 (and (symbol_14 ?d) (symbol_15 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_16 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.568 (not (notfailed))
					0.432 (and (symbol_14 ?d) (symbol_15 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_16 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-3-6
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.349 (not (notfailed))
					0.651 (and (symbol_11 ?c) (symbol_13 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-7
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.668 (not (notfailed))
					0.332 (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.707 (not (notfailed))
					0.293 (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.656 (not (notfailed))
					0.344 (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.697 (not (notfailed))
					0.303 (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.668 (not (notfailed))
					0.332 (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.709 (not (notfailed))
					0.291 (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-0-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-17
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.437 (not (notfailed))
					0.563 (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-0-18
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.737 (not (notfailed))
					0.263 (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-19
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.755 (not (notfailed))
					0.245 (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-20
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_16 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-1-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect (and (symbol_15 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-1-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.075 (not (notfailed))
					0.925 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.122 (not (notfailed))
					0.878 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.18 (not (notfailed))
					0.82 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.425 (not (notfailed))
					0.575 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.284 (not (notfailed))
					0.716 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.323 (not (notfailed))
					0.677 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.108 (not (notfailed))
					0.892 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.075 (not (notfailed))
					0.925 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.091 (not (notfailed))
					0.909 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.149 (not (notfailed))
					0.851 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-1-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.124 (not (notfailed))
					0.876 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-33
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.129 (not (notfailed))
					0.871 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-34
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.207 (not (notfailed))
					0.793 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.107 (not (notfailed))
					0.893 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.109 (not (notfailed))
					0.891 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.196 (not (notfailed))
					0.804 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.235 (not (notfailed))
					0.765 (and (symbol_16 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-1-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.144 (not (notfailed))
					0.856 (and (symbol_16 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-1-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.161 (not (notfailed))
					0.839 (and (symbol_16 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-1-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.16 (not (notfailed))
					0.84 (and (symbol_16 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-1-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.159 (not (notfailed))
					0.841 (and (symbol_16 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-1-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.213 (not (notfailed))
					0.787 (and (symbol_16 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-1-44
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.828 (not (notfailed))
					0.172 (and (symbol_16 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-1-45
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.866 (not (notfailed))
					0.134 (and (symbol_16 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-4-partition-0-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.833 (not (notfailed))
					0.167 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.705 (not (notfailed))
					0.295 (symbol_20 ?a))
	)

	(:action option-4-partition-0-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.667 (not (notfailed))
					0.333 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.81 (not (notfailed))
					0.19 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.547 (not (notfailed))
					0.453 (and (symbol_20 ?a) (not (symbol_24 ?a))))
	)

	(:action option-4-partition-1-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.698 (not (notfailed))
					0.302 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.625 (not (notfailed))
					0.375 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.612 (not (notfailed))
					0.388 (and (symbol_23 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-1-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.66 (not (notfailed))
					0.34 (symbol_23 ?a))
	)

	(:action option-4-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.567 (not (notfailed))
					0.433 (and (symbol_23 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-0-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.739 (not (notfailed))
					0.261 (and (symbol_24 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.855 (not (notfailed))
					0.145 (and (symbol_24 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.855 (not (notfailed))
					0.145 (and (symbol_24 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.853 (not (notfailed))
					0.147 (and (symbol_24 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.687 (not (notfailed))
					0.313 (symbol_24 ?a))
	)

	(:action option-5-partition-1-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.282 (not (notfailed))
					0.718 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.156 (not (notfailed))
					0.844 (and (symbol_21 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-1-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.157 (not (notfailed))
					0.843 (symbol_21 ?a))
	)

	(:action option-5-partition-1-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.147 (not (notfailed))
					0.853 (and (symbol_21 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-1-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.315 (not (notfailed))
					0.685 (and (symbol_21 ?a) (not (symbol_24 ?a))))
	)
)