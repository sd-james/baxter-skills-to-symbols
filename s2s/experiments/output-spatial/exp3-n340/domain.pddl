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
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type-1)
		(symbol_22 ?a - type33)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_22 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.105 (not (notfailed))
					0.895 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_22 ?c))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_22 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.483 (not (notfailed))
					0.517 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_22 ?c))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b) (symbol_22 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.374 (not (notfailed))
					0.626 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_22 ?c))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_17 ?b) (symbol_22 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.314 (not (notfailed))
					0.686 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_17 ?b)) (not (symbol_22 ?c))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.056 (not (notfailed))
					0.944 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.887 (not (notfailed))
					0.113 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b)))
	)

	(:action option-0-partition-1-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b)))
	)

	(:action option-0-partition-1-8
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_17 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_17 ?b)))
	)

	(:action option-0-partition-2-9
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.216 (not (notfailed))
					0.784 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.085 (not (notfailed))
					0.915 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.35 (not (notfailed))
					0.65 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.223 (not (notfailed))
					0.777 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.179 (not (notfailed))
					0.821 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_22 ?b))
		:effect 
			(probabilistic
					0.375 (not (notfailed))
					0.625 (and (symbol_14 ?b) (not (symbol_22 ?b))))
	)

	(:action option-1-partition-1-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_22 ?b))
		:effect 
			(probabilistic
					0.506 (not (notfailed))
					0.494 (and (symbol_14 ?b) (not (symbol_22 ?b))))
	)

	(:action option-1-partition-1-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_22 ?b))
		:effect 
			(probabilistic
					0.377 (not (notfailed))
					0.623 (and (symbol_14 ?b) (not (symbol_22 ?b))))
	)

	(:action option-1-partition-1-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_22 ?b))
		:effect 
			(probabilistic
					0.393 (not (notfailed))
					0.607 (and (symbol_14 ?b) (not (symbol_22 ?b))))
	)

	(:action option-2-partition-0-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.106 (not (notfailed))
					0.894 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-0-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.468 (not (notfailed))
					0.532 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-0-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.287 (not (notfailed))
					0.713 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-0-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.245 (not (notfailed))
					0.755 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.067 (not (notfailed))
					0.933 (and (symbol_22 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.107 (not (notfailed))
					0.893 (and (symbol_22 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.069 (not (notfailed))
					0.931 (and (symbol_22 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.055 (not (notfailed))
					0.945 (and (symbol_22 ?b) (not (symbol_14 ?b))))
	)

	(:action option-3-partition-0-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c)))
	)

	(:action option-3-partition-0-27
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d)))
	)

	(:action option-3-partition-0-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.163 (not (notfailed))
					0.837 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-0-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.266 (not (notfailed))
					0.734 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c)))
	)

	(:action option-3-partition-0-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.227 (not (notfailed))
					0.773 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c)))
	)

	(:action option-3-partition-0-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.17 (not (notfailed))
					0.83 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-4-partition-0-34
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.668 (not (notfailed))
					0.332 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-35
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.755 (not (notfailed))
					0.245 (symbol_18 ?a))
	)

	(:action option-4-partition-0-36
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.792 (not (notfailed))
					0.208 (and (symbol_18 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-0-37
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.722 (not (notfailed))
					0.278 (and (symbol_18 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.732 (not (notfailed))
					0.268 (and (symbol_18 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-1-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.834 (not (notfailed))
					0.166 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.809 (not (notfailed))
					0.191 (and (symbol_20 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-1-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.835 (not (notfailed))
					0.165 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.793 (not (notfailed))
					0.207 (symbol_20 ?a))
	)

	(:action option-4-partition-1-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.809 (not (notfailed))
					0.191 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-2-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.858 (not (notfailed))
					0.142 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-2-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.867 (not (notfailed))
					0.133 (symbol_19 ?a))
	)

	(:action option-4-partition-2-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.868 (not (notfailed))
					0.132 (and (symbol_19 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-2-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.877 (not (notfailed))
					0.123 (and (symbol_19 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.053 (not (notfailed))
					0.947 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect (and (symbol_21 ?a) (not (symbol_18 ?a)))
	)

	(:action option-5-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect (and (symbol_21 ?a) (not (symbol_19 ?a)))
	)

	(:action option-5-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect (and (symbol_21 ?a) (not (symbol_20 ?a)))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect (symbol_21 ?a)
	)
)