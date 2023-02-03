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
					0.64 (not (notfailed))
					0.36 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_20 ?c))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.553 (not (notfailed))
					0.447 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_20 ?c))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.717 (not (notfailed))
					0.283 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_20 ?c))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.518 (not (notfailed))
					0.482 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_20 ?c))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.679 (not (notfailed))
					0.321 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.396 (not (notfailed))
					0.604 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.457 (not (notfailed))
					0.543 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.429 (not (notfailed))
					0.571 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-2-8
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_20 ?c)) (not (symbol_21 ?d)))
	)

	(:action option-0-partition-2-9
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.072 (not (notfailed))
					0.928 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_20 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-10
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_20 ?c)) (not (symbol_21 ?d)))
	)

	(:action option-0-partition-2-11
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.758 (not (notfailed))
					0.242 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_20 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-12
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.054 (not (notfailed))
					0.946 (and (symbol_15 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?b)) (not (symbol_20 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-3-13
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.265 (not (notfailed))
					0.735 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect (and (symbol_12 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-0-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_1 ?b))
		:effect (and (symbol_12 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-0-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.056 (not (notfailed))
					0.944 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect (and (symbol_12 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-1-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b))
		:effect 
			(probabilistic
					0.849 (not (notfailed))
					0.151 (and (symbol_14 ?b) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-1-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b))
		:effect 
			(probabilistic
					0.642 (not (notfailed))
					0.358 (and (symbol_14 ?b) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-1-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_20 ?b))
		:effect 
			(probabilistic
					0.824 (not (notfailed))
					0.176 (and (symbol_14 ?b) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-1-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_20 ?b))
		:effect 
			(probabilistic
					0.61 (not (notfailed))
					0.39 (and (symbol_14 ?b) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-2-22
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.303 (not (notfailed))
					0.697 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_20 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-2-23
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.111 (not (notfailed))
					0.889 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_20 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-2-24
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_20 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.077 (not (notfailed))
					0.923 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_20 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-2-25
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.58 (not (notfailed))
					0.42 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_20 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-2-26
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_20 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.148 (not (notfailed))
					0.852 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_20 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-2-partition-0-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect (and (symbol_20 ?b) (not (symbol_14 ?b)))
	)

	(:action option-2-partition-0-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.192 (not (notfailed))
					0.808 (and (symbol_20 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.056 (not (notfailed))
					0.944 (and (symbol_20 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.183 (not (notfailed))
					0.817 (and (symbol_20 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_12 ?b)))
	)

	(:action option-2-partition-1-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.131 (not (notfailed))
					0.869 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-33
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.168 (not (notfailed))
					0.832 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-34
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.144 (not (notfailed))
					0.856 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.112 (not (notfailed))
					0.888 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d)))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.087 (not (notfailed))
					0.913 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d)))
	)

	(:action option-3-partition-0-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c)))
	)

	(:action option-3-partition-0-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.697 (not (notfailed))
					0.303 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.089 (not (notfailed))
					0.911 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-0-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.057 (not (notfailed))
					0.943 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.171 (not (notfailed))
					0.829 (and (symbol_21 ?d) (symbol_20 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-44
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.153 (not (notfailed))
					0.847 (and (symbol_21 ?d) (symbol_20 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-45
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.147 (not (notfailed))
					0.853 (and (symbol_21 ?d) (symbol_20 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-46
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.173 (not (notfailed))
					0.827 (and (symbol_21 ?d) (symbol_20 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-4-partition-0-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.732 (not (notfailed))
					0.268 (symbol_18 ?a))
	)

	(:action option-4-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.8 (not (notfailed))
					0.2 (and (symbol_18 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.894 (not (notfailed))
					0.106 (and (symbol_18 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.753 (not (notfailed))
					0.247 (and (symbol_18 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.665 (not (notfailed))
					0.335 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.742 (not (notfailed))
					0.258 (and (symbol_22 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-1-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.635 (not (notfailed))
					0.365 (and (symbol_22 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.673 (not (notfailed))
					0.327 (symbol_22 ?a))
	)

	(:action option-4-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.734 (not (notfailed))
					0.266 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.167 (not (notfailed))
					0.833 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.223 (not (notfailed))
					0.777 (and (symbol_23 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-0-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.197 (not (notfailed))
					0.803 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.303 (not (notfailed))
					0.697 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.297 (not (notfailed))
					0.703 (symbol_23 ?a))
	)

	(:action option-5-partition-1-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.786 (not (notfailed))
					0.214 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.789 (not (notfailed))
					0.211 (and (symbol_19 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-1-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.805 (not (notfailed))
					0.195 (symbol_19 ?a))
	)

	(:action option-5-partition-1-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.749 (not (notfailed))
					0.251 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-66
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.758 (not (notfailed))
					0.242 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)
)