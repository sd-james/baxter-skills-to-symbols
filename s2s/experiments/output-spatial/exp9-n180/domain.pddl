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
		(symbol_22 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.278 (not (notfailed))
					0.722 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.284 (not (notfailed))
					0.716 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.29 (not (notfailed))
					0.71 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.242 (not (notfailed))
					0.758 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.278 (not (notfailed))
					0.722 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_19 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.277 (not (notfailed))
					0.723 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-6
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.151 (not (notfailed))
					0.849 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-7
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.111 (not (notfailed))
					0.889 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.319 (not (notfailed))
					0.681 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.351 (not (notfailed))
					0.649 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.565 (not (notfailed))
					0.435 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-1-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.722 (not (notfailed))
					0.278 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-1-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.754 (not (notfailed))
					0.246 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.149 (not (notfailed))
					0.851 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.318 (not (notfailed))
					0.682 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.349 (not (notfailed))
					0.651 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.114 (not (notfailed))
					0.886 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.097 (not (notfailed))
					0.903 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.837 (not (notfailed))
					0.163 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.101 (not (notfailed))
					0.899 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_12 ?b)))
	)

	(:action option-2-partition-1-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_12 ?b)))
	)

	(:action option-2-partition-1-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_12 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_12 ?b)))
	)

	(:action option-3-partition-0-23
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.128 (not (notfailed))
					0.872 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-24
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.105 (not (notfailed))
					0.895 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.126 (not (notfailed))
					0.874 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c)))
	)

	(:action option-3-partition-1-27
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d)))
	)

	(:action option-3-partition-1-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.81 (not (notfailed))
					0.19 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.827 (not (notfailed))
					0.173 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.81 (not (notfailed))
					0.19 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.827 (not (notfailed))
					0.173 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c)))
	)

	(:action option-3-partition-1-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d)))
	)

	(:action option-3-partition-1-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.852 (not (notfailed))
					0.148 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.788 (not (notfailed))
					0.212 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.851 (not (notfailed))
					0.149 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.789 (not (notfailed))
					0.211 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c)))
	)

	(:action option-3-partition-1-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d)))
	)

	(:action option-3-partition-1-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.86 (not (notfailed))
					0.14 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.788 (not (notfailed))
					0.212 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.858 (not (notfailed))
					0.142 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.788 (not (notfailed))
					0.212 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-4-partition-0-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.704 (not (notfailed))
					0.296 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.523 (not (notfailed))
					0.477 (symbol_20 ?a))
	)

	(:action option-4-partition-0-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.791 (not (notfailed))
					0.209 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.553 (not (notfailed))
					0.447 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-1-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.691 (not (notfailed))
					0.309 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.773 (not (notfailed))
					0.227 (and (symbol_21 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.631 (not (notfailed))
					0.369 (symbol_21 ?a))
	)

	(:action option-4-partition-1-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.775 (not (notfailed))
					0.225 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_10 ?a)))
	)

	(:action option-5-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_20 ?a)))
	)

	(:action option-5-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_21 ?a)))
	)

	(:action option-5-partition-0-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect (symbol_22 ?a)
	)
)