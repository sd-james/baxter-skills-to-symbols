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
		(symbol_15 ?a - type14)
		(symbol_16 ?a - type44)
		(symbol_17 ?a - type33)
		(symbol_18 ?a - type2)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type44)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.354 (not (notfailed))
					0.646 (and (symbol_21 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.335 (not (notfailed))
					0.665 (and (symbol_21 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.333 (not (notfailed))
					0.667 (and (symbol_21 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.362 (not (notfailed))
					0.638 (and (symbol_21 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.383 (not (notfailed))
					0.617 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.354 (not (notfailed))
					0.646 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.407 (not (notfailed))
					0.593 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.389 (not (notfailed))
					0.611 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-2-8
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.52 (not (notfailed))
					0.48 (and (symbol_11 ?c) (symbol_15 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.091 (not (notfailed))
					0.909 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.34 (not (notfailed))
					0.66 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.179 (not (notfailed))
					0.821 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.367 (not (notfailed))
					0.633 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-1-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.616 (not (notfailed))
					0.384 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-1-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.617 (not (notfailed))
					0.383 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-2-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.058 (not (notfailed))
					0.942 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.091 (not (notfailed))
					0.909 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.189 (not (notfailed))
					0.811 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.086 (not (notfailed))
					0.914 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-2-partition-0-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.217 (not (notfailed))
					0.783 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.151 (not (notfailed))
					0.849 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.197 (not (notfailed))
					0.803 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.787 (not (notfailed))
					0.213 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.152 (not (notfailed))
					0.848 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_12 ?b)))
	)

	(:action option-2-partition-1-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.051 (not (notfailed))
					0.949 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.074 (not (notfailed))
					0.926 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.051 (not (notfailed))
					0.949 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-3-partition-0-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.124 (not (notfailed))
					0.876 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.156 (not (notfailed))
					0.844 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.864 (not (notfailed))
					0.136 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.829 (not (notfailed))
					0.171 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-1-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.134 (not (notfailed))
					0.866 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.108 (not (notfailed))
					0.892 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-1-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.865 (not (notfailed))
					0.135 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.823 (not (notfailed))
					0.177 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-4-partition-0-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.71 (not (notfailed))
					0.29 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.746 (not (notfailed))
					0.254 (symbol_19 ?a))
	)

	(:action option-4-partition-0-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.745 (not (notfailed))
					0.255 (and (symbol_19 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.712 (not (notfailed))
					0.288 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.74 (not (notfailed))
					0.26 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.823 (not (notfailed))
					0.177 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.751 (not (notfailed))
					0.249 (and (symbol_22 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.612 (not (notfailed))
					0.388 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.764 (not (notfailed))
					0.236 (symbol_22 ?a))
	)

	(:action option-4-partition-1-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.76 (not (notfailed))
					0.24 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.302 (not (notfailed))
					0.698 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.322 (not (notfailed))
					0.678 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.335 (not (notfailed))
					0.665 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.375 (not (notfailed))
					0.625 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.317 (not (notfailed))
					0.683 (symbol_23 ?a))
	)

	(:action option-5-partition-1-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.757 (not (notfailed))
					0.243 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.747 (not (notfailed))
					0.253 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.642 (not (notfailed))
					0.358 (symbol_20 ?a))
	)

	(:action option-5-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.641 (not (notfailed))
					0.359 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.752 (not (notfailed))
					0.248 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)
)