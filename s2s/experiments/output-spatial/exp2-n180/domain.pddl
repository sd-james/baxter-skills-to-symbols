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
		(symbol_17 ?a - type33)
		(symbol_18 ?a - type-1)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type44)
		(symbol_21 ?a - type44)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.615 (not (notfailed))
					0.385 (and (symbol_20 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.844 (not (notfailed))
					0.156 (and (symbol_20 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.798 (not (notfailed))
					0.202 (and (symbol_20 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-1-3
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.279 (not (notfailed))
					0.721 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-4
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.064 (not (notfailed))
					0.936 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-5
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.195 (not (notfailed))
					0.805 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-6
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.522 (not (notfailed))
					0.478 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-7
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.144 (not (notfailed))
					0.856 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.153 (not (notfailed))
					0.847 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.82 (not (notfailed))
					0.18 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.518 (not (notfailed))
					0.482 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.13 (not (notfailed))
					0.87 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.313 (not (notfailed))
					0.687 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-0-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.094 (not (notfailed))
					0.906 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.303 (not (notfailed))
					0.697 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.06 (not (notfailed))
					0.94 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-1-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.409 (not (notfailed))
					0.591 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-1-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.461 (not (notfailed))
					0.539 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-1-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.598 (not (notfailed))
					0.402 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-1-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.36 (not (notfailed))
					0.64 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-3-partition-0-21
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.376 (not (notfailed))
					0.624 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-22
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.825 (not (notfailed))
					0.175 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-23
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.08 (not (notfailed))
					0.92 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-24
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.519 (not (notfailed))
					0.481 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.169 (not (notfailed))
					0.831 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-1-27
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_20 ?d))
		:effect (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_20 ?d)))
	)

	(:action option-3-partition-1-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.64 (not (notfailed))
					0.36 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.837 (not (notfailed))
					0.163 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.64 (not (notfailed))
					0.36 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.837 (not (notfailed))
					0.163 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.776 (not (notfailed))
					0.224 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-1-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_20 ?d))
		:effect (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_20 ?d)))
	)

	(:action option-3-partition-1-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.73 (not (notfailed))
					0.27 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.72 (not (notfailed))
					0.28 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.733 (not (notfailed))
					0.267 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.72 (not (notfailed))
					0.28 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-1-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.149 (not (notfailed))
					0.851 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.713 (not (notfailed))
					0.287 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-44
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.712 (not (notfailed))
					0.288 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-45
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-1-46
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_20 ?d))
		:effect (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_20 ?d)))
	)

	(:action option-3-partition-1-47
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.645 (not (notfailed))
					0.355 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-48
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.762 (not (notfailed))
					0.238 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-49
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.644 (not (notfailed))
					0.356 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-50
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.756 (not (notfailed))
					0.244 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_16 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-4-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.607 (not (notfailed))
					0.393 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.593 (not (notfailed))
					0.407 (symbol_18 ?a))
	)

	(:action option-4-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.621 (not (notfailed))
					0.379 (and (symbol_18 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.606 (not (notfailed))
					0.394 (and (symbol_18 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.618 (not (notfailed))
					0.382 (and (symbol_18 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.832 (not (notfailed))
					0.168 (and (symbol_22 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.855 (not (notfailed))
					0.145 (symbol_22 ?a))
	)

	(:action option-4-partition-2-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-2-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.894 (not (notfailed))
					0.106 (and (symbol_19 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-2-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.88 (not (notfailed))
					0.12 (symbol_19 ?a))
	)

	(:action option-4-partition-2-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.883 (not (notfailed))
					0.117 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-2-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.884 (not (notfailed))
					0.116 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect (and (symbol_23 ?a) (not (symbol_10 ?a)))
	)

	(:action option-5-partition-0-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect (and (symbol_23 ?a) (not (symbol_18 ?a)))
	)

	(:action option-5-partition-0-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect (and (symbol_23 ?a) (not (symbol_19 ?a)))
	)

	(:action option-5-partition-0-66
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect (and (symbol_23 ?a) (not (symbol_22 ?a)))
	)

	(:action option-5-partition-0-67
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect (symbol_23 ?a)
	)
)