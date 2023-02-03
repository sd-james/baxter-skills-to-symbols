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
		(symbol_13 ?a - type33)
		(symbol_14 ?a - type44)
		(symbol_15 ?a - type33)
		(symbol_16 ?a - type2)
		(symbol_17 ?a - type-1)
		(symbol_18 ?a - type-1)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type44)
		(symbol_21 ?a - type-1)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type33)
	)

	(:action option-0-partition-1-0
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.269 (not (notfailed))
					0.731 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-1-1
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.078 (not (notfailed))
					0.922 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-2
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.058 (not (notfailed))
					0.942 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-3
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.192 (not (notfailed))
					0.808 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-4
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.149 (not (notfailed))
					0.851 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-5
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.131 (not (notfailed))
					0.869 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-6
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_23 ?b))
		:effect 
			(probabilistic
					0.888 (not (notfailed))
					0.112 (and (symbol_13 ?b) (not (symbol_23 ?b))))
	)

	(:action option-1-partition-2-7
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_23 ?b))
		:effect 
			(probabilistic
					0.664 (not (notfailed))
					0.336 (and (symbol_13 ?b) (not (symbol_23 ?b))))
	)

	(:action option-1-partition-2-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_23 ?b))
		:effect 
			(probabilistic
					0.627 (not (notfailed))
					0.373 (and (symbol_13 ?b) (not (symbol_23 ?b))))
	)

	(:action option-2-partition-0-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_15 ?b)))
	)

	(:action option-2-partition-0-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.299 (not (notfailed))
					0.701 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.19 (not (notfailed))
					0.81 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.23 (not (notfailed))
					0.77 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.092 (not (notfailed))
					0.908 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-1-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.413 (not (notfailed))
					0.587 (and (symbol_23 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.874 (not (notfailed))
					0.126 (and (symbol_23 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.372 (not (notfailed))
					0.628 (and (symbol_23 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.326 (not (notfailed))
					0.674 (and (symbol_23 ?b) (not (symbol_13 ?b))))
	)

	(:action option-3-partition-0-18
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-19
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.659 (not (notfailed))
					0.341 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-20
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_13 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.804 (not (notfailed))
					0.196 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-21
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c)))
	)

	(:action option-3-partition-0-22
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.804 (not (notfailed))
					0.196 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-23
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.659 (not (notfailed))
					0.341 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-24
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.599 (not (notfailed))
					0.401 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_13 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.873 (not (notfailed))
					0.127 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-27
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.125 (not (notfailed))
					0.875 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-0-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.874 (not (notfailed))
					0.126 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.598 (not (notfailed))
					0.402 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.71 (not (notfailed))
					0.29 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_13 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.744 (not (notfailed))
					0.256 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c)))
	)

	(:action option-3-partition-0-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.744 (not (notfailed))
					0.256 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.709 (not (notfailed))
					0.291 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.69 (not (notfailed))
					0.31 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_13 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.74 (not (notfailed))
					0.26 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c)))
	)

	(:action option-3-partition-0-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.736 (not (notfailed))
					0.264 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.691 (not (notfailed))
					0.309 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.712 (not (notfailed))
					0.288 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-44
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.51 (not (notfailed))
					0.49 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-0-45
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.713 (not (notfailed))
					0.287 (and (symbol_14 ?d) (symbol_13 ?c) (symbol_16 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-4-partition-0-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.846 (not (notfailed))
					0.154 (and (symbol_17 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.88 (not (notfailed))
					0.12 (symbol_17 ?a))
	)

	(:action option-4-partition-0-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.749 (not (notfailed))
					0.251 (and (symbol_17 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.743 (not (notfailed))
					0.257 (and (symbol_17 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.717 (not (notfailed))
					0.283 (and (symbol_17 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.772 (not (notfailed))
					0.228 (and (symbol_17 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-1-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.787 (not (notfailed))
					0.213 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.816 (not (notfailed))
					0.184 (and (symbol_21 ?a) (not (symbol_17 ?a))))
	)

	(:action option-4-partition-1-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.69 (not (notfailed))
					0.31 (and (symbol_21 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.725 (not (notfailed))
					0.275 (and (symbol_21 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.709 (not (notfailed))
					0.291 (symbol_21 ?a))
	)

	(:action option-4-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.705 (not (notfailed))
					0.295 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-2-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.795 (not (notfailed))
					0.205 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-2-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.756 (not (notfailed))
					0.244 (and (symbol_18 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-2-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.754 (not (notfailed))
					0.246 (and (symbol_18 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.826 (not (notfailed))
					0.174 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.84 (not (notfailed))
					0.16 (and (symbol_22 ?a) (not (symbol_17 ?a))))
	)

	(:action option-5-partition-0-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.824 (not (notfailed))
					0.176 (and (symbol_22 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-0-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.84 (not (notfailed))
					0.16 (and (symbol_22 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.842 (not (notfailed))
					0.158 (and (symbol_22 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-66
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.83 (not (notfailed))
					0.17 (symbol_22 ?a))
	)

	(:action option-5-partition-1-67
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.296 (not (notfailed))
					0.704 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-68
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.173 (not (notfailed))
					0.827 (and (symbol_19 ?a) (not (symbol_17 ?a))))
	)

	(:action option-5-partition-1-69
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.242 (not (notfailed))
					0.758 (and (symbol_19 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-1-70
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.176 (not (notfailed))
					0.824 (symbol_19 ?a))
	)

	(:action option-5-partition-1-71
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.159 (not (notfailed))
					0.841 (and (symbol_19 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-1-72
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.178 (not (notfailed))
					0.822 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)
)