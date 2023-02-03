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
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type-1)
		(symbol_22 ?a - type-1)
	)

	(:action option-0-partition-1-0
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.169 (not (notfailed))
					0.831 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-0-partition-1-1
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.614 (not (notfailed))
					0.386 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-2
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.139 (not (notfailed))
					0.861 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-3
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.228 (not (notfailed))
					0.772 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-4
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.368 (not (notfailed))
					0.632 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-2-partition-0-5
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.514 (not (notfailed))
					0.486 (symbol_14 ?b))
	)

	(:action option-2-partition-0-6
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.892 (not (notfailed))
					0.108 (and (symbol_14 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-7
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_17 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.804 (not (notfailed))
					0.196 (symbol_14 ?b))
	)

	(:action option-2-partition-0-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.52 (not (notfailed))
					0.48 (symbol_14 ?b))
	)

	(:action option-2-partition-0-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.891 (not (notfailed))
					0.109 (and (symbol_14 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.884 (not (notfailed))
					0.116 (symbol_14 ?b))
	)

	(:action option-2-partition-0-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.537 (not (notfailed))
					0.463 (symbol_14 ?b))
	)

	(:action option-3-partition-0-12
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.305 (not (notfailed))
					0.695 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-13
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.271 (not (notfailed))
					0.729 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-14
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.322 (not (notfailed))
					0.678 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-15
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.309 (not (notfailed))
					0.691 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-0-16
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.388 (not (notfailed))
					0.612 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-17
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.388 (not (notfailed))
					0.612 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-4-partition-0-18
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.372 (not (notfailed))
					0.628 (and (symbol_17 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-19
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.82 (not (notfailed))
					0.18 (and (symbol_17 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-0-20
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.414 (not (notfailed))
					0.586 (and (symbol_17 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-21
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.821 (not (notfailed))
					0.179 (and (symbol_17 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-22
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.812 (not (notfailed))
					0.188 (and (symbol_17 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-1-23
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.805 (not (notfailed))
					0.195 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-24
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.794 (not (notfailed))
					0.206 (and (symbol_20 ?a) (not (symbol_17 ?a))))
	)

	(:action option-4-partition-1-25
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.805 (not (notfailed))
					0.195 (symbol_20 ?a))
	)

	(:action option-4-partition-1-26
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.854 (not (notfailed))
					0.146 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-1-27
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.882 (not (notfailed))
					0.118 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-28
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.222 (not (notfailed))
					0.778 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-29
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.44 (not (notfailed))
					0.56 (and (symbol_22 ?a) (not (symbol_17 ?a))))
	)

	(:action option-5-partition-0-30
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.238 (not (notfailed))
					0.762 (and (symbol_22 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-0-31
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.229 (not (notfailed))
					0.771 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-32
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.249 (not (notfailed))
					0.751 (and (symbol_22 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-33
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.269 (not (notfailed))
					0.731 (symbol_22 ?a))
	)

	(:action option-5-partition-1-34
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.847 (not (notfailed))
					0.153 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-35
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.862 (not (notfailed))
					0.138 (and (symbol_18 ?a) (not (symbol_17 ?a))))
	)

	(:action option-5-partition-1-36
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.8 (not (notfailed))
					0.2 (symbol_18 ?a))
	)

	(:action option-5-partition-1-37
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.842 (not (notfailed))
					0.158 (and (symbol_18 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-1-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.863 (not (notfailed))
					0.137 (and (symbol_18 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-1-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.817 (not (notfailed))
					0.183 (and (symbol_18 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-2-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_17 ?a))
		:effect 
			(probabilistic
					0.796 (not (notfailed))
					0.204 (and (symbol_21 ?a) (not (symbol_17 ?a))))
	)

	(:action option-5-partition-2-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_21 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-2-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.888 (not (notfailed))
					0.112 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)
)