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
		(symbol_16 ?a - type33)
		(symbol_17 ?a - type2)
		(symbol_18 ?a - type-1)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type44)
		(symbol_22 ?a - type14)
		(symbol_23 ?a - type-1)
		(symbol_24 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.322 (not (notfailed))
					0.678 (and (symbol_21 ?c) (symbol_22 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-0-partition-1-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.332 (not (notfailed))
					0.668 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.561 (not (notfailed))
					0.439 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.698 (not (notfailed))
					0.302 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.447 (not (notfailed))
					0.553 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.37 (not (notfailed))
					0.63 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-2-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.697 (not (notfailed))
					0.303 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-2-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.762 (not (notfailed))
					0.238 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-2-8
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.735 (not (notfailed))
					0.265 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-2-9
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.763 (not (notfailed))
					0.237 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-2-10
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_17 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.632 (not (notfailed))
					0.368 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect (and (symbol_12 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.205 (not (notfailed))
					0.795 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.171 (not (notfailed))
					0.829 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.165 (not (notfailed))
					0.835 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.096 (not (notfailed))
					0.904 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.534 (not (notfailed))
					0.466 (and (symbol_14 ?b) (not (symbol_16 ?b))))
	)

	(:action option-1-partition-1-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.573 (not (notfailed))
					0.427 (and (symbol_14 ?b) (not (symbol_16 ?b))))
	)

	(:action option-1-partition-1-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.61 (not (notfailed))
					0.39 (and (symbol_14 ?b) (not (symbol_16 ?b))))
	)

	(:action option-1-partition-1-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.731 (not (notfailed))
					0.269 (and (symbol_14 ?b) (not (symbol_16 ?b))))
	)

	(:action option-1-partition-1-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.603 (not (notfailed))
					0.397 (and (symbol_14 ?b) (not (symbol_16 ?b))))
	)

	(:action option-1-partition-2-21
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b) (symbol_15 ?c))
		:effect 
			(probabilistic
					0.095 (not (notfailed))
					0.905 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_15 ?c)) (not (symbol_16 ?b))))
	)

	(:action option-1-partition-2-22
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_16 ?b) (symbol_15 ?c))
		:effect 
			(probabilistic
					0.314 (not (notfailed))
					0.686 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_15 ?c)) (not (symbol_16 ?b))))
	)

	(:action option-1-partition-2-23
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_16 ?b) (symbol_15 ?c))
		:effect 
			(probabilistic
					0.578 (not (notfailed))
					0.422 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_15 ?c)) (not (symbol_16 ?b))))
	)

	(:action option-1-partition-2-24
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_16 ?b) (symbol_15 ?c))
		:effect 
			(probabilistic
					0.554 (not (notfailed))
					0.446 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_15 ?c)) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.051 (not (notfailed))
					0.949 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-0-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.274 (not (notfailed))
					0.726 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-0-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.27 (not (notfailed))
					0.73 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-0-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.308 (not (notfailed))
					0.692 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-0-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.197 (not (notfailed))
					0.803 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect (and (symbol_16 ?b) (not (symbol_14 ?b)))
	)

	(:action option-2-partition-1-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.296 (not (notfailed))
					0.704 (and (symbol_16 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.217 (not (notfailed))
					0.783 (and (symbol_16 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-33
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.194 (not (notfailed))
					0.806 (and (symbol_16 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-34
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.123 (not (notfailed))
					0.877 (and (symbol_16 ?b) (not (symbol_14 ?b))))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect (and (symbol_15 ?d) (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d)))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.111 (not (notfailed))
					0.889 (and (symbol_15 ?d) (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.752 (not (notfailed))
					0.248 (and (symbol_15 ?d) (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect (and (symbol_15 ?d) (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d)))
	)

	(:action option-3-partition-0-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect (and (symbol_15 ?d) (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d)))
	)

	(:action option-3-partition-1-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.316 (not (notfailed))
					0.684 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.107 (not (notfailed))
					0.893 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-1-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.375 (not (notfailed))
					0.625 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.476 (not (notfailed))
					0.524 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-1-44
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.558 (not (notfailed))
					0.442 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-45
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.537 (not (notfailed))
					0.463 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-1-46
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.679 (not (notfailed))
					0.321 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-47
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.254 (not (notfailed))
					0.746 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-1-48
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.426 (not (notfailed))
					0.574 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-49
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.219 (not (notfailed))
					0.781 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-4-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.632 (not (notfailed))
					0.368 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.603 (not (notfailed))
					0.397 (symbol_18 ?a))
	)

	(:action option-4-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.749 (not (notfailed))
					0.251 (and (symbol_18 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.33 (not (notfailed))
					0.67 (and (symbol_18 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.637 (not (notfailed))
					0.363 (and (symbol_18 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-0-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.757 (not (notfailed))
					0.243 (and (symbol_18 ?a) (not (symbol_24 ?a))))
	)

	(:action option-4-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.889 (not (notfailed))
					0.111 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.846 (not (notfailed))
					0.154 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.833 (not (notfailed))
					0.167 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.88 (not (notfailed))
					0.12 (symbol_23 ?a))
	)

	(:action option-4-partition-1-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.883 (not (notfailed))
					0.117 (and (symbol_23 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-0-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.349 (not (notfailed))
					0.651 (and (symbol_24 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.34 (not (notfailed))
					0.66 (and (symbol_24 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-0-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.324 (not (notfailed))
					0.676 (and (symbol_24 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.336 (not (notfailed))
					0.664 (and (symbol_24 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.344 (not (notfailed))
					0.656 (and (symbol_24 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-66
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.337 (not (notfailed))
					0.663 (symbol_24 ?a))
	)

	(:action option-5-partition-1-67
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.669 (not (notfailed))
					0.331 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-68
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.674 (not (notfailed))
					0.326 (and (symbol_20 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-1-69
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.73 (not (notfailed))
					0.27 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-1-70
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.703 (not (notfailed))
					0.297 (symbol_20 ?a))
	)

	(:action option-5-partition-1-71
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.668 (not (notfailed))
					0.332 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-1-72
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.697 (not (notfailed))
					0.303 (and (symbol_20 ?a) (not (symbol_24 ?a))))
	)
)