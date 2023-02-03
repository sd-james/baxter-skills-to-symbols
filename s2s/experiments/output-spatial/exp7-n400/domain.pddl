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
					0.316 (not (notfailed))
					0.684 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.283 (not (notfailed))
					0.717 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.28 (not (notfailed))
					0.72 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.666 (not (notfailed))
					0.334 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.405 (not (notfailed))
					0.595 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.437 (not (notfailed))
					0.563 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-3-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.219 (not (notfailed))
					0.781 (and (symbol_13 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-3-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.184 (not (notfailed))
					0.816 (and (symbol_13 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-3-8
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.207 (not (notfailed))
					0.793 (and (symbol_13 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-3-9
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.265 (not (notfailed))
					0.735 (and (symbol_13 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-4-10
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.224 (not (notfailed))
					0.776 (and (symbol_11 ?c) (symbol_16 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.856 (not (notfailed))
					0.144 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.873 (not (notfailed))
					0.127 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-0-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.844 (not (notfailed))
					0.156 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.863 (not (notfailed))
					0.137 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-0-17
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.851 (not (notfailed))
					0.149 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-18
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.868 (not (notfailed))
					0.132 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-19
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-0-20
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.683 (not (notfailed))
					0.317 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-0-21
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.873 (not (notfailed))
					0.127 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-22
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.881 (not (notfailed))
					0.119 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-23
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-1-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect (and (symbol_14 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-1-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.065 (not (notfailed))
					0.935 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.092 (not (notfailed))
					0.908 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.09 (not (notfailed))
					0.91 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.636 (not (notfailed))
					0.364 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.476 (not (notfailed))
					0.524 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.498 (not (notfailed))
					0.502 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.06 (not (notfailed))
					0.94 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_14 ?b)))
	)

	(:action option-2-partition-0-33
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.069 (not (notfailed))
					0.931 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-34
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.055 (not (notfailed))
					0.945 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-35
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.183 (not (notfailed))
					0.817 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-36
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.193 (not (notfailed))
					0.807 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-37
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.256 (not (notfailed))
					0.744 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-38
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.377 (not (notfailed))
					0.623 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-3-partition-0-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.086 (not (notfailed))
					0.914 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.114 (not (notfailed))
					0.886 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.364 (not (notfailed))
					0.636 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.219 (not (notfailed))
					0.781 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_13 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-44
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.228 (not (notfailed))
					0.772 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-45
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.26 (not (notfailed))
					0.74 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_13 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-46
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.237 (not (notfailed))
					0.763 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-47
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.379 (not (notfailed))
					0.621 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_13 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-48
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.298 (not (notfailed))
					0.702 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-49
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.796 (not (notfailed))
					0.204 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_13 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-4-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.626 (not (notfailed))
					0.374 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.604 (not (notfailed))
					0.396 (symbol_20 ?a))
	)

	(:action option-4-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.603 (not (notfailed))
					0.397 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.873 (not (notfailed))
					0.127 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.567 (not (notfailed))
					0.433 (and (symbol_20 ?a) (not (symbol_24 ?a))))
	)

	(:action option-4-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.714 (not (notfailed))
					0.286 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.711 (not (notfailed))
					0.289 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.695 (not (notfailed))
					0.305 (and (symbol_23 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-1-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.713 (not (notfailed))
					0.287 (symbol_23 ?a))
	)

	(:action option-4-partition-1-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.742 (not (notfailed))
					0.258 (and (symbol_23 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-0-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.661 (not (notfailed))
					0.339 (and (symbol_24 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_24 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.849 (not (notfailed))
					0.151 (and (symbol_24 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.818 (not (notfailed))
					0.182 (and (symbol_24 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.607 (not (notfailed))
					0.393 (symbol_24 ?a))
	)

	(:action option-5-partition-1-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.276 (not (notfailed))
					0.724 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-66
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.189 (not (notfailed))
					0.811 (and (symbol_21 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-1-67
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.183 (not (notfailed))
					0.817 (symbol_21 ?a))
	)

	(:action option-5-partition-1-68
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.201 (not (notfailed))
					0.799 (and (symbol_21 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-1-69
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.328 (not (notfailed))
					0.672 (and (symbol_21 ?a) (not (symbol_24 ?a))))
	)
)