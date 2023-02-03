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
		(symbol_19 ?a - type44)
		(symbol_20 ?a - type44)
		(symbol_21 ?a - type-1)
		(symbol_22 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.606 (not (notfailed))
					0.394 (and (symbol_19 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.87 (not (notfailed))
					0.13 (and (symbol_19 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.765 (not (notfailed))
					0.235 (and (symbol_19 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-0-partition-1-3
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.194 (not (notfailed))
					0.806 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-4
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.076 (not (notfailed))
					0.924 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-5
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.34 (not (notfailed))
					0.66 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-6
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.192 (not (notfailed))
					0.808 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-7
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.19 (not (notfailed))
					0.81 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.866 (not (notfailed))
					0.134 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.329 (not (notfailed))
					0.671 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.293 (not (notfailed))
					0.707 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-0-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.132 (not (notfailed))
					0.868 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-1-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.272 (not (notfailed))
					0.728 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-1-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.356 (not (notfailed))
					0.644 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-1-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.278 (not (notfailed))
					0.722 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-3-partition-0-17
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.377 (not (notfailed))
					0.623 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-18
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.81 (not (notfailed))
					0.19 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-19
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.255 (not (notfailed))
					0.745 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-20
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.161 (not (notfailed))
					0.839 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-21
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-1-22
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.08 (not (notfailed))
					0.92 (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-1-23
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.866 (not (notfailed))
					0.134 (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-24
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.866 (not (notfailed))
					0.134 (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.881 (not (notfailed))
					0.119 (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-1-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-1-27
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.192 (not (notfailed))
					0.808 (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-1-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.882 (not (notfailed))
					0.118 (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.881 (not (notfailed))
					0.119 (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c)))
	)

	(:action option-3-partition-1-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_19 ?d))
		:effect 
			(probabilistic
					0.084 (not (notfailed))
					0.916 (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?c)) (not (symbol_19 ?d))))
	)

	(:action option-3-partition-1-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.862 (not (notfailed))
					0.138 (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.861 (not (notfailed))
					0.139 (and (symbol_20 ?d) (symbol_17 ?c) (symbol_15 ?b) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-4-partition-0-34
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.57 (not (notfailed))
					0.43 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-35
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.538 (not (notfailed))
					0.462 (symbol_18 ?a))
	)

	(:action option-4-partition-0-36
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.61 (not (notfailed))
					0.39 (and (symbol_18 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-37
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.62 (not (notfailed))
					0.38 (and (symbol_18 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-1-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.685 (not (notfailed))
					0.315 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.757 (not (notfailed))
					0.243 (and (symbol_21 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-1-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.712 (not (notfailed))
					0.288 (symbol_21 ?a))
	)

	(:action option-4-partition-1-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.701 (not (notfailed))
					0.299 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_10 ?a)))
	)

	(:action option-5-partition-0-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_18 ?a)))
	)

	(:action option-5-partition-0-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_21 ?a)))
	)

	(:action option-5-partition-0-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect (symbol_22 ?a)
	)
)