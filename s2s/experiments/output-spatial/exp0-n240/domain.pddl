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
		(symbol_20 ?a - type44)
		(symbol_21 ?a - type-1)
		(symbol_22 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.191 (not (notfailed))
					0.809 (and (symbol_20 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.166 (not (notfailed))
					0.834 (and (symbol_20 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.241 (not (notfailed))
					0.759 (and (symbol_20 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.392 (not (notfailed))
					0.608 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.357 (not (notfailed))
					0.643 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.396 (not (notfailed))
					0.604 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-2-6
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.54 (not (notfailed))
					0.46 (and (symbol_11 ?c) (symbol_15 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-7
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.067 (not (notfailed))
					0.933 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.349 (not (notfailed))
					0.651 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.324 (not (notfailed))
					0.676 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-1-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.678 (not (notfailed))
					0.322 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-1-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.765 (not (notfailed))
					0.235 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-2-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.058 (not (notfailed))
					0.942 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.083 (not (notfailed))
					0.917 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.126 (not (notfailed))
					0.874 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-2-partition-0-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.228 (not (notfailed))
					0.772 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.144 (not (notfailed))
					0.856 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.793 (not (notfailed))
					0.207 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.173 (not (notfailed))
					0.827 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_12 ?b)))
	)

	(:action option-2-partition-1-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.055 (not (notfailed))
					0.945 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.053 (not (notfailed))
					0.947 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-3-partition-0-22
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-23
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.101 (not (notfailed))
					0.899 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-24
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.113 (not (notfailed))
					0.887 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.804 (not (notfailed))
					0.196 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-27
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.659 (not (notfailed))
					0.341 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.627 (not (notfailed))
					0.373 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-4-partition-0-29
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.734 (not (notfailed))
					0.266 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-30
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.768 (not (notfailed))
					0.232 (symbol_19 ?a))
	)

	(:action option-4-partition-0-31
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.736 (not (notfailed))
					0.264 (and (symbol_19 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-32
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.759 (not (notfailed))
					0.241 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-1-33
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.641 (not (notfailed))
					0.359 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-34
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.681 (not (notfailed))
					0.319 (and (symbol_21 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-35
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.666 (not (notfailed))
					0.334 (symbol_21 ?a))
	)

	(:action option-4-partition-1-36
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.684 (not (notfailed))
					0.316 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-37
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_10 ?a)))
	)

	(:action option-5-partition-0-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_19 ?a)))
	)

	(:action option-5-partition-0-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_21 ?a)))
	)

	(:action option-5-partition-0-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect (symbol_22 ?a)
	)
)