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
		(symbol_20 ?a - type2)
		(symbol_21 ?a - type-1)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type33)
	)

	(:action option-0-partition-1-0
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.404 (not (notfailed))
					0.596 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-1
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.077 (not (notfailed))
					0.923 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-2
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.397 (not (notfailed))
					0.603 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-3
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.367 (not (notfailed))
					0.633 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-4
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.114 (not (notfailed))
					0.886 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-2-partition-0-5
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.072 (not (notfailed))
					0.928 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-6
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.095 (not (notfailed))
					0.905 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-7
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.271 (not (notfailed))
					0.729 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.185 (not (notfailed))
					0.815 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-1-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.749 (not (notfailed))
					0.251 (and (symbol_23 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.888 (not (notfailed))
					0.112 (and (symbol_23 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.668 (not (notfailed))
					0.332 (and (symbol_23 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.745 (not (notfailed))
					0.255 (and (symbol_23 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.713 (not (notfailed))
					0.287 (and (symbol_23 ?b) (not (symbol_14 ?b))))
	)

	(:action option-3-partition-0-14
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-15
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.892 (not (notfailed))
					0.108 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b))))
	)

	(:action option-3-partition-0-16
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_19 ?d)))
	)

	(:action option-3-partition-0-17
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.217 (not (notfailed))
					0.783 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-18
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.751 (not (notfailed))
					0.249 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-19
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-0-20
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.889 (not (notfailed))
					0.111 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-21
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_19 ?d)))
	)

	(:action option-3-partition-0-22
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_23 ?c)))
	)

	(:action option-3-partition-0-23
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.598 (not (notfailed))
					0.402 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_19 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-24
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.849 (not (notfailed))
					0.151 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c))))
	)

	(:action option-3-partition-0-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-27
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d))))
	)

	(:action option-3-partition-0-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.89 (not (notfailed))
					0.11 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.9 (not (notfailed))
					0.1 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b)))
	)

	(:action option-3-partition-0-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.895 (not (notfailed))
					0.105 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.806 (not (notfailed))
					0.194 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.876 (not (notfailed))
					0.124 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.895 (not (notfailed))
					0.105 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.673 (not (notfailed))
					0.327 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.853 (not (notfailed))
					0.147 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.869 (not (notfailed))
					0.131 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.89 (not (notfailed))
					0.11 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-44
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.46 (not (notfailed))
					0.54 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-45
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-46
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.814 (not (notfailed))
					0.186 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-47
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.853 (not (notfailed))
					0.147 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-48
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-49
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-50
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.264 (not (notfailed))
					0.736 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-51
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.637 (not (notfailed))
					0.363 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-52
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-53
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-54
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.825 (not (notfailed))
					0.175 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-55
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.641 (not (notfailed))
					0.359 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-56
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.849 (not (notfailed))
					0.151 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_19 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-57
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.888 (not (notfailed))
					0.112 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-58
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c))))
	)

	(:action option-3-partition-0-59
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.895 (not (notfailed))
					0.105 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-60
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d))))
	)

	(:action option-3-partition-0-61
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-62
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b)))
	)

	(:action option-3-partition-0-63
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-64
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-65
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-66
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-67
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-68
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.895 (not (notfailed))
					0.105 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-69
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-70
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.857 (not (notfailed))
					0.143 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-71
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-72
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.888 (not (notfailed))
					0.112 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-73
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-74
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-75
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-76
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-77
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-78
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-79
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.9 (not (notfailed))
					0.1 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-80
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.888 (not (notfailed))
					0.112 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-81
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-82
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.895 (not (notfailed))
					0.105 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-83
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-84
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.888 (not (notfailed))
					0.112 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b))))
	)

	(:action option-3-partition-0-85
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_19 ?d)))
	)

	(:action option-3-partition-0-86
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.367 (not (notfailed))
					0.633 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-87
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.79 (not (notfailed))
					0.21 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-88
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-0-89
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.894 (not (notfailed))
					0.106 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-90
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.06 (not (notfailed))
					0.94 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-91
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_23 ?c)))
	)

	(:action option-3-partition-0-92
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.439 (not (notfailed))
					0.561 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_19 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-93
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_1 ?c))))
	)

	(:action option-3-partition-0-94
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.836 (not (notfailed))
					0.164 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-95
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c))))
	)

	(:action option-3-partition-0-96
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.882 (not (notfailed))
					0.118 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-97
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d))))
	)

	(:action option-3-partition-0-98
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.892 (not (notfailed))
					0.108 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-99
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b)))
	)

	(:action option-3-partition-0-100
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.896 (not (notfailed))
					0.104 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-101
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-102
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.851 (not (notfailed))
					0.149 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-103
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-104
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-105
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-106
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.882 (not (notfailed))
					0.118 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-107
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.894 (not (notfailed))
					0.106 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-108
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.572 (not (notfailed))
					0.428 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-109
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-110
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.835 (not (notfailed))
					0.165 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-111
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-112
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.877 (not (notfailed))
					0.123 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-113
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-114
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.892 (not (notfailed))
					0.108 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-115
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.672 (not (notfailed))
					0.328 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-116
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-117
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.853 (not (notfailed))
					0.147 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-118
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-119
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.833 (not (notfailed))
					0.167 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-120
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-121
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.882 (not (notfailed))
					0.118 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-122
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-123
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.891 (not (notfailed))
					0.109 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b))))
	)

	(:action option-3-partition-0-124
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_19 ?d)))
	)

	(:action option-3-partition-0-125
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.268 (not (notfailed))
					0.732 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-126
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.764 (not (notfailed))
					0.236 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-127
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-0-128
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.892 (not (notfailed))
					0.108 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-129
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_19 ?d)))
	)

	(:action option-3-partition-0-130
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_23 ?c)))
	)

	(:action option-3-partition-0-131
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.538 (not (notfailed))
					0.462 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_19 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-132
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.842 (not (notfailed))
					0.158 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-133
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c))))
	)

	(:action option-3-partition-0-134
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.885 (not (notfailed))
					0.115 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-135
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d))))
	)

	(:action option-3-partition-0-136
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.89 (not (notfailed))
					0.11 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-137
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.9 (not (notfailed))
					0.1 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b)))
	)

	(:action option-3-partition-0-138
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.896 (not (notfailed))
					0.104 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-139
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.819 (not (notfailed))
					0.181 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-140
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-141
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.879 (not (notfailed))
					0.121 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-142
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-143
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.884 (not (notfailed))
					0.116 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-144
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.894 (not (notfailed))
					0.106 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-145
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.625 (not (notfailed))
					0.375 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-146
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-147
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.848 (not (notfailed))
					0.152 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-148
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-149
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.871 (not (notfailed))
					0.129 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-150
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-151
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.891 (not (notfailed))
					0.109 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-152
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.513 (not (notfailed))
					0.487 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-153
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-154
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.825 (not (notfailed))
					0.175 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-155
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.845 (not (notfailed))
					0.155 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-156
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-157
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.885 (not (notfailed))
					0.115 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-158
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-159
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.891 (not (notfailed))
					0.109 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b))))
	)

	(:action option-3-partition-0-160
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_19 ?d)))
	)

	(:action option-3-partition-0-161
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.194 (not (notfailed))
					0.806 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-162
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.741 (not (notfailed))
					0.259 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-163
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-0-164
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.888 (not (notfailed))
					0.112 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-165
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_19 ?d)))
	)

	(:action option-3-partition-0-166
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_23 ?c)))
	)

	(:action option-3-partition-0-167
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.543 (not (notfailed))
					0.457 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_19 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-168
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.845 (not (notfailed))
					0.155 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-169
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c))))
	)

	(:action option-3-partition-0-170
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.884 (not (notfailed))
					0.116 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-171
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d))))
	)

	(:action option-3-partition-0-172
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.89 (not (notfailed))
					0.11 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-173
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.9 (not (notfailed))
					0.1 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b)))
	)

	(:action option-3-partition-0-174
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.895 (not (notfailed))
					0.105 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-175
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.9 (not (notfailed))
					0.1 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-176
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.808 (not (notfailed))
					0.192 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-177
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-178
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.877 (not (notfailed))
					0.123 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-0-179
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-180
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.885 (not (notfailed))
					0.115 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-181
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.894 (not (notfailed))
					0.106 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-182
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.636 (not (notfailed))
					0.364 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-183
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-184
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_1 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.845 (not (notfailed))
					0.155 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-185
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_0 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-186
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.868 (not (notfailed))
					0.132 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-187
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-188
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_14 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.89 (not (notfailed))
					0.11 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-189
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.467 (not (notfailed))
					0.533 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-190
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-191
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.814 (not (notfailed))
					0.186 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_19 ?d)) (not (symbol_20 ?b))))
	)

	(:action option-3-partition-0-192
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.847 (not (notfailed))
					0.153 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-193
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-3-partition-0-194
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_23 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.885 (not (notfailed))
					0.115 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_19 ?d)) (not (symbol_20 ?b)) (not (symbol_23 ?c))))
	)

	(:action option-4-partition-0-195
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.461 (not (notfailed))
					0.539 (and (symbol_17 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-196
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.563 (not (notfailed))
					0.437 (symbol_17 ?a))
	)

	(:action option-4-partition-0-197
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.711 (not (notfailed))
					0.289 (and (symbol_17 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-0-198
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.56 (not (notfailed))
					0.44 (and (symbol_17 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-199
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.614 (not (notfailed))
					0.386 (and (symbol_17 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-1-200
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.777 (not (notfailed))
					0.223 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-201
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.892 (not (notfailed))
					0.108 (and (symbol_21 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-1-202
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.828 (not (notfailed))
					0.172 (symbol_21 ?a))
	)

	(:action option-4-partition-1-203
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.759 (not (notfailed))
					0.241 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-204
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.071 (not (notfailed))
					0.929 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-205
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.152 (not (notfailed))
					0.848 (and (symbol_22 ?a) (not (symbol_17 ?a))))
	)

	(:action option-5-partition-0-206
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.13 (not (notfailed))
					0.87 (and (symbol_22 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-0-207
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.089 (not (notfailed))
					0.911 (and (symbol_22 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-208
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.123 (not (notfailed))
					0.877 (symbol_22 ?a))
	)

	(:action option-5-partition-1-209
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.892 (not (notfailed))
					0.108 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-210
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.867 (not (notfailed))
					0.133 (and (symbol_18 ?a) (not (symbol_17 ?a))))
	)

	(:action option-5-partition-1-211
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.871 (not (notfailed))
					0.129 (symbol_18 ?a))
	)

	(:action option-5-partition-1-212
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.879 (not (notfailed))
					0.121 (and (symbol_18 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-1-213
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.884 (not (notfailed))
					0.116 (and (symbol_18 ?a) (not (symbol_22 ?a))))
	)
)