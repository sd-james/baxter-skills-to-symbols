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
					0.248 (not (notfailed))
					0.752 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.26 (not (notfailed))
					0.74 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.362 (not (notfailed))
					0.638 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.684 (not (notfailed))
					0.316 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.559 (not (notfailed))
					0.441 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.723 (not (notfailed))
					0.277 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-3-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.138 (not (notfailed))
					0.862 (and (symbol_13 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-3-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.07 (not (notfailed))
					0.93 (and (symbol_13 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-3-8
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.133 (not (notfailed))
					0.867 (and (symbol_13 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-3-9
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.122 (not (notfailed))
					0.878 (and (symbol_13 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-4-10
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.324 (not (notfailed))
					0.676 (and (symbol_11 ?c) (symbol_16 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.887 (not (notfailed))
					0.113 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
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
					0.88 (not (notfailed))
					0.12 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.892 (not (notfailed))
					0.108 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
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
					0.89 (not (notfailed))
					0.11 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-18
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.9 (not (notfailed))
					0.1 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-19
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.085 (not (notfailed))
					0.915 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-0-20
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.74 (not (notfailed))
					0.26 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-0-21
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.104 (not (notfailed))
					0.896 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-1-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect (and (symbol_14 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-1-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect (and (symbol_14 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-1-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.09 (not (notfailed))
					0.91 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.065 (not (notfailed))
					0.935 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.704 (not (notfailed))
					0.296 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.617 (not (notfailed))
					0.383 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.707 (not (notfailed))
					0.293 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.086 (not (notfailed))
					0.914 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.056 (not (notfailed))
					0.944 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.103 (not (notfailed))
					0.897 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.072 (not (notfailed))
					0.928 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-33
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.072 (not (notfailed))
					0.928 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-34
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.073 (not (notfailed))
					0.927 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-35
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.189 (not (notfailed))
					0.811 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.1 (not (notfailed))
					0.9 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.063 (not (notfailed))
					0.937 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.173 (not (notfailed))
					0.827 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.185 (not (notfailed))
					0.815 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.076 (not (notfailed))
					0.924 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_13 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.084 (not (notfailed))
					0.916 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.099 (not (notfailed))
					0.901 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_13 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.134 (not (notfailed))
					0.866 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-44
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.219 (not (notfailed))
					0.781 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_13 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-45
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.115 (not (notfailed))
					0.885 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-1-46
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.702 (not (notfailed))
					0.298 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_13 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-4-partition-0-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.807 (not (notfailed))
					0.193 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.646 (not (notfailed))
					0.354 (symbol_20 ?a))
	)

	(:action option-4-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.651 (not (notfailed))
					0.349 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.874 (not (notfailed))
					0.126 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.535 (not (notfailed))
					0.465 (and (symbol_20 ?a) (not (symbol_24 ?a))))
	)

	(:action option-4-partition-1-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.637 (not (notfailed))
					0.363 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.673 (not (notfailed))
					0.327 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.665 (not (notfailed))
					0.335 (and (symbol_23 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.628 (not (notfailed))
					0.372 (symbol_23 ?a))
	)

	(:action option-4-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.686 (not (notfailed))
					0.314 (and (symbol_23 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-0-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.79 (not (notfailed))
					0.21 (and (symbol_24 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.803 (not (notfailed))
					0.197 (and (symbol_24 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.804 (not (notfailed))
					0.196 (and (symbol_24 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.803 (not (notfailed))
					0.197 (and (symbol_24 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.789 (not (notfailed))
					0.211 (symbol_24 ?a))
	)

	(:action option-5-partition-1-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.272 (not (notfailed))
					0.728 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.192 (not (notfailed))
					0.808 (and (symbol_21 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-1-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.185 (not (notfailed))
					0.815 (symbol_21 ?a))
	)

	(:action option-5-partition-1-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.187 (not (notfailed))
					0.813 (and (symbol_21 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-1-66
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.28 (not (notfailed))
					0.72 (and (symbol_21 ?a) (not (symbol_24 ?a))))
	)
)