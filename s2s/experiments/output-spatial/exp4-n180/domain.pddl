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
		(symbol_12 ?a - type44)
		(symbol_13 ?a - type33)
		(symbol_14 ?a - type2)
		(symbol_15 ?a - type33)
		(symbol_16 ?a - type14)
		(symbol_17 ?a - type-1)
		(symbol_18 ?a - type-1)
		(symbol_19 ?a - type33)
		(symbol_20 ?a - type44)
		(symbol_21 ?a - type44)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_19 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.332 (not (notfailed))
					0.668 (and (symbol_20 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_14 ?b)) (not (symbol_19 ?c))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_14 ?b) (symbol_19 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.364 (not (notfailed))
					0.636 (and (symbol_20 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_14 ?b)) (not (symbol_19 ?c))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_14 ?b) (symbol_19 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.446 (not (notfailed))
					0.554 (and (symbol_20 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_14 ?b)) (not (symbol_19 ?c))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_19 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.281 (not (notfailed))
					0.719 (and (symbol_20 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_14 ?b)) (not (symbol_19 ?c))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_19 ?c) (symbol_21 ?d))
		:effect (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_19 ?c)) (not (symbol_21 ?d)))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_14 ?b) (symbol_19 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.085 (not (notfailed))
					0.915 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_19 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_14 ?b) (symbol_19 ?c) (symbol_21 ?d))
		:effect (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_19 ?c)) (not (symbol_21 ?d)))
	)

	(:action option-0-partition-1-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b) (symbol_19 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.748 (not (notfailed))
					0.252 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_19 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-1-8
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_19 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.053 (not (notfailed))
					0.947 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_19 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-2-9
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.237 (not (notfailed))
					0.763 (and (symbol_11 ?c) (symbol_16 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.073 (not (notfailed))
					0.927 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.225 (not (notfailed))
					0.775 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.082 (not (notfailed))
					0.918 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.154 (not (notfailed))
					0.846 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.337 (not (notfailed))
					0.663 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_19 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-1-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_1 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-1-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_19 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.141 (not (notfailed))
					0.859 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_19 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-1-17
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_1 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.88 (not (notfailed))
					0.12 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-1-18
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_13 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.89 (not (notfailed))
					0.11 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-1-19
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_19 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.095 (not (notfailed))
					0.905 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_19 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-1-20
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_19 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.577 (not (notfailed))
					0.423 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_19 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-1-partition-1-21
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_19 ?b) (symbol_21 ?c))
		:effect 
			(probabilistic
					0.205 (not (notfailed))
					0.795 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_19 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-2-partition-0-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.162 (not (notfailed))
					0.838 (and (symbol_19 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-0-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.106 (not (notfailed))
					0.894 (and (symbol_19 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-0-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.088 (not (notfailed))
					0.912 (and (symbol_19 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-0-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.114 (not (notfailed))
					0.886 (and (symbol_19 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_15 ?b)))
	)

	(:action option-2-partition-1-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.232 (not (notfailed))
					0.768 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-1-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.051 (not (notfailed))
					0.949 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-1-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.141 (not (notfailed))
					0.859 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-3-partition-0-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.102 (not (notfailed))
					0.898 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-0-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.582 (not (notfailed))
					0.418 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.13 (not (notfailed))
					0.87 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-0-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.399 (not (notfailed))
					0.601 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.331 (not (notfailed))
					0.669 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d)))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.86 (not (notfailed))
					0.14 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.101 (not (notfailed))
					0.899 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.411 (not (notfailed))
					0.589 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.118 (not (notfailed))
					0.882 (and (symbol_21 ?d) (symbol_19 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.276 (not (notfailed))
					0.724 (and (symbol_21 ?d) (symbol_19 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.072 (not (notfailed))
					0.928 (and (symbol_21 ?d) (symbol_19 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.197 (not (notfailed))
					0.803 (and (symbol_21 ?d) (symbol_19 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-4-partition-0-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.838 (not (notfailed))
					0.162 (and (symbol_17 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.83 (not (notfailed))
					0.17 (symbol_17 ?a))
	)

	(:action option-4-partition-0-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.788 (not (notfailed))
					0.212 (and (symbol_17 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-0-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.853 (not (notfailed))
					0.147 (and (symbol_17 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.833 (not (notfailed))
					0.167 (and (symbol_17 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.586 (not (notfailed))
					0.414 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.62 (not (notfailed))
					0.38 (and (symbol_22 ?a) (not (symbol_17 ?a))))
	)

	(:action option-4-partition-1-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.582 (not (notfailed))
					0.418 (and (symbol_22 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-1-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.586 (not (notfailed))
					0.414 (symbol_22 ?a))
	)

	(:action option-4-partition-1-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.628 (not (notfailed))
					0.372 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.259 (not (notfailed))
					0.741 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.267 (not (notfailed))
					0.733 (and (symbol_23 ?a) (not (symbol_17 ?a))))
	)

	(:action option-5-partition-0-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.267 (not (notfailed))
					0.733 (and (symbol_23 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-0-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.263 (not (notfailed))
					0.737 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.264 (not (notfailed))
					0.736 (symbol_23 ?a))
	)

	(:action option-5-partition-1-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.801 (not (notfailed))
					0.199 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.739 (not (notfailed))
					0.261 (and (symbol_18 ?a) (not (symbol_17 ?a))))
	)

	(:action option-5-partition-1-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.737 (not (notfailed))
					0.263 (symbol_18 ?a))
	)

	(:action option-5-partition-1-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.78 (not (notfailed))
					0.22 (and (symbol_18 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.757 (not (notfailed))
					0.243 (and (symbol_18 ?a) (not (symbol_23 ?a))))
	)
)