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
		(symbol_17 ?a - type-1)
		(symbol_18 ?a - type-1)
		(symbol_19 ?a - type44)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type-1)
		(symbol_22 ?a - type33)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.694 (not (notfailed))
					0.306 (and (symbol_19 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_15 ?b))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.748 (not (notfailed))
					0.252 (and (symbol_19 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_15 ?b))))
	)

	(:action option-0-partition-1-2
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.381 (not (notfailed))
					0.619 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-3
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.082 (not (notfailed))
					0.918 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-4
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.527 (not (notfailed))
					0.473 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-5
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.569 (not (notfailed))
					0.431 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-6
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.077 (not (notfailed))
					0.923 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-2-partition-0-7
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.062 (not (notfailed))
					0.938 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.073 (not (notfailed))
					0.927 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.474 (not (notfailed))
					0.526 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.184 (not (notfailed))
					0.816 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-1-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.471 (not (notfailed))
					0.529 (and (symbol_22 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.815 (not (notfailed))
					0.185 (and (symbol_22 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.309 (not (notfailed))
					0.691 (and (symbol_22 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.619 (not (notfailed))
					0.381 (and (symbol_22 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.391 (not (notfailed))
					0.609 (and (symbol_22 ?b) (not (symbol_14 ?b))))
	)

	(:action option-3-partition-0-16
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-0-17
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.875 (not (notfailed))
					0.125 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-18
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.875 (not (notfailed))
					0.125 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-19
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-0-20
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.874 (not (notfailed))
					0.126 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-21
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.875 (not (notfailed))
					0.125 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-22
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.396 (not (notfailed))
					0.604 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-23
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-4-partition-0-24
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.619 (not (notfailed))
					0.381 (and (symbol_17 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-25
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.592 (not (notfailed))
					0.408 (symbol_17 ?a))
	)

	(:action option-4-partition-0-26
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.644 (not (notfailed))
					0.356 (and (symbol_17 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-0-27
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.614 (not (notfailed))
					0.386 (and (symbol_17 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-28
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.62 (not (notfailed))
					0.38 (and (symbol_17 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-1-29
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.758 (not (notfailed))
					0.242 (and (symbol_20 ?a) (not (symbol_17 ?a))))
	)

	(:action option-4-partition-1-30
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.773 (not (notfailed))
					0.227 (and (symbol_20 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-1-31
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.773 (not (notfailed))
					0.227 (symbol_20 ?a))
	)

	(:action option-4-partition-1-32
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.865 (not (notfailed))
					0.135 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-33
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.141 (not (notfailed))
					0.859 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-34
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.157 (not (notfailed))
					0.843 (and (symbol_21 ?a) (not (symbol_17 ?a))))
	)

	(:action option-5-partition-0-35
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.151 (not (notfailed))
					0.849 (and (symbol_21 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-0-36
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.146 (not (notfailed))
					0.854 (and (symbol_21 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-37
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.133 (not (notfailed))
					0.867 (symbol_21 ?a))
	)

	(:action option-5-partition-1-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.863 (not (notfailed))
					0.137 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.872 (not (notfailed))
					0.128 (and (symbol_18 ?a) (not (symbol_17 ?a))))
	)

	(:action option-5-partition-1-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.871 (not (notfailed))
					0.129 (symbol_18 ?a))
	)

	(:action option-5-partition-1-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.87 (not (notfailed))
					0.13 (and (symbol_18 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-1-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.864 (not (notfailed))
					0.136 (and (symbol_18 ?a) (not (symbol_21 ?a))))
	)
)