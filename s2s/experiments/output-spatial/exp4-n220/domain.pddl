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
		(symbol_15 ?a - type44)
		(symbol_16 ?a - type14)
		(symbol_17 ?a - type2)
		(symbol_18 ?a - type-1)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type33)
		(symbol_21 ?a - type44)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.544 (not (notfailed))
					0.456 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_20 ?c))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.485 (not (notfailed))
					0.515 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_20 ?c))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.643 (not (notfailed))
					0.357 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_20 ?c))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.466 (not (notfailed))
					0.534 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_20 ?c))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.857 (not (notfailed))
					0.143 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.502 (not (notfailed))
					0.498 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.465 (not (notfailed))
					0.535 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.583 (not (notfailed))
					0.417 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-2-8
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.282 (not (notfailed))
					0.718 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_20 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-9
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.282 (not (notfailed))
					0.718 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-10
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.314 (not (notfailed))
					0.686 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_14 ?c)) (not (symbol_17 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-11
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_20 ?c)) (not (symbol_21 ?d)))
	)

	(:action option-0-partition-2-12
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.365 (not (notfailed))
					0.635 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_20 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-13
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_17 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.379 (not (notfailed))
					0.621 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-14
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.395 (not (notfailed))
					0.605 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_14 ?c)) (not (symbol_17 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-15
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_20 ?c)) (not (symbol_21 ?d)))
	)

	(:action option-0-partition-2-16
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.25 (not (notfailed))
					0.75 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_20 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-17
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.248 (not (notfailed))
					0.752 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-18
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.272 (not (notfailed))
					0.728 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_14 ?c)) (not (symbol_17 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-19
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_20 ?c)) (not (symbol_21 ?d)))
	)

	(:action option-0-partition-2-20
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-21
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.202 (not (notfailed))
					0.798 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_20 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-22
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.356 (not (notfailed))
					0.644 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_20 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-23
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.368 (not (notfailed))
					0.632 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-24
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.391 (not (notfailed))
					0.609 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_14 ?c)) (not (symbol_17 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_20 ?c)) (not (symbol_21 ?d)))
	)

	(:action option-0-partition-3-26
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.324 (not (notfailed))
					0.676 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.065 (not (notfailed))
					0.935 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.197 (not (notfailed))
					0.803 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.079 (not (notfailed))
					0.921 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.17 (not (notfailed))
					0.83 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b))
		:effect 
			(probabilistic
					0.785 (not (notfailed))
					0.215 (and (symbol_14 ?b) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-1-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b))
		:effect 
			(probabilistic
					0.633 (not (notfailed))
					0.367 (and (symbol_14 ?b) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-1-33
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_20 ?b))
		:effect 
			(probabilistic
					0.77 (not (notfailed))
					0.23 (and (symbol_14 ?b) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-1-34
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_20 ?b))
		:effect 
			(probabilistic
					0.6 (not (notfailed))
					0.4 (and (symbol_14 ?b) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-2-35
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.334 (not (notfailed))
					0.666 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_20 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-2-36
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.134 (not (notfailed))
					0.866 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_20 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-2-37
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-2-38
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-2-39
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_20 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.09 (not (notfailed))
					0.91 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_20 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-2-40
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.573 (not (notfailed))
					0.427 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_20 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-2-41
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_20 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.186 (not (notfailed))
					0.814 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_20 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-2-partition-0-42
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect (and (symbol_20 ?b) (not (symbol_14 ?b)))
	)

	(:action option-2-partition-0-43
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.145 (not (notfailed))
					0.855 (and (symbol_20 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-44
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b))
		:effect (and (symbol_20 ?b) (not (symbol_14 ?b)))
	)

	(:action option-2-partition-0-45
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.115 (not (notfailed))
					0.885 (and (symbol_20 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-46
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.086 (not (notfailed))
					0.914 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-47
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.21 (not (notfailed))
					0.79 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-48
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.087 (not (notfailed))
					0.913 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-49
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.228 (not (notfailed))
					0.772 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-3-partition-0-50
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.548 (not (notfailed))
					0.452 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-0-51
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d)))
	)

	(:action option-3-partition-0-52
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.329 (not (notfailed))
					0.671 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-0-53
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d)))
	)

	(:action option-3-partition-0-54
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c)))
	)

	(:action option-3-partition-0-55
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.494 (not (notfailed))
					0.506 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-56
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.896 (not (notfailed))
					0.104 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-0-57
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.386 (not (notfailed))
					0.614 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-0-58
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d)))
	)

	(:action option-3-partition-1-59
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.095 (not (notfailed))
					0.905 (and (symbol_21 ?d) (symbol_20 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-60
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.246 (not (notfailed))
					0.754 (and (symbol_21 ?d) (symbol_20 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-61
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.054 (not (notfailed))
					0.946 (and (symbol_21 ?d) (symbol_20 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-62
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.222 (not (notfailed))
					0.778 (and (symbol_21 ?d) (symbol_20 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-4-partition-0-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.866 (not (notfailed))
					0.134 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.813 (not (notfailed))
					0.187 (symbol_18 ?a))
	)

	(:action option-4-partition-0-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.713 (not (notfailed))
					0.287 (and (symbol_18 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-0-66
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.88 (not (notfailed))
					0.12 (and (symbol_18 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-67
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.797 (not (notfailed))
					0.203 (and (symbol_18 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-68
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.668 (not (notfailed))
					0.332 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-69
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.665 (not (notfailed))
					0.335 (and (symbol_22 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-1-70
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.632 (not (notfailed))
					0.368 (and (symbol_22 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-71
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.642 (not (notfailed))
					0.358 (symbol_22 ?a))
	)

	(:action option-4-partition-1-72
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.67 (not (notfailed))
					0.33 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-73
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.278 (not (notfailed))
					0.722 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-74
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.232 (not (notfailed))
					0.768 (and (symbol_23 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-0-75
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.215 (not (notfailed))
					0.785 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-76
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.274 (not (notfailed))
					0.726 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-77
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.265 (not (notfailed))
					0.735 (symbol_23 ?a))
	)

	(:action option-5-partition-1-78
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.778 (not (notfailed))
					0.222 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-79
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.774 (not (notfailed))
					0.226 (and (symbol_19 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-1-80
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.772 (not (notfailed))
					0.228 (symbol_19 ?a))
	)

	(:action option-5-partition-1-81
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.777 (not (notfailed))
					0.223 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-82
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.775 (not (notfailed))
					0.225 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)
)