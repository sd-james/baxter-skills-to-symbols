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
		(symbol_14 ?a - type44)
		(symbol_15 ?a - type14)
		(symbol_16 ?a - type33)
		(symbol_17 ?a - type44)
		(symbol_18 ?a - type33)
		(symbol_19 ?a - type2)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type-1)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.89 (not (notfailed))
					0.11 (and (symbol_11 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_13 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.154 (not (notfailed))
					0.846 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.095 (not (notfailed))
					0.905 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.118 (not (notfailed))
					0.882 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.093 (not (notfailed))
					0.907 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-5
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.304 (not (notfailed))
					0.696 (and (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-6
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.173 (not (notfailed))
					0.827 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-0-7
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.858 (not (notfailed))
					0.142 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.17 (not (notfailed))
					0.83 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.17 (not (notfailed))
					0.83 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.222 (not (notfailed))
					0.778 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-1-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect (and (symbol_16 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-1-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.102 (not (notfailed))
					0.898 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.186 (not (notfailed))
					0.814 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.158 (not (notfailed))
					0.842 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.686 (not (notfailed))
					0.314 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.723 (not (notfailed))
					0.277 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-0-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-0-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-0-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-1-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.18 (not (notfailed))
					0.82 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.198 (not (notfailed))
					0.802 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.265 (not (notfailed))
					0.735 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-3-partition-0-24
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.144 (not (notfailed))
					0.856 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_14 ?d))))
	)

	(:action option-3-partition-0-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.206 (not (notfailed))
					0.794 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_14 ?d))))
	)

	(:action option-3-partition-0-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.194 (not (notfailed))
					0.806 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_14 ?d))))
	)

	(:action option-3-partition-0-27
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.246 (not (notfailed))
					0.754 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_14 ?d))))
	)

	(:action option-3-partition-1-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.737 (not (notfailed))
					0.263 (and (symbol_13 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.367 (not (notfailed))
					0.633 (and (symbol_13 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.512 (not (notfailed))
					0.488 (and (symbol_13 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-4-partition-0-31
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.525 (not (notfailed))
					0.475 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-32
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.639 (not (notfailed))
					0.361 (symbol_20 ?a))
	)

	(:action option-4-partition-0-33
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.64 (not (notfailed))
					0.36 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-34
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.62 (not (notfailed))
					0.38 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-35
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.613 (not (notfailed))
					0.387 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-36
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.814 (not (notfailed))
					0.186 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-37
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.84 (not (notfailed))
					0.16 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.775 (not (notfailed))
					0.225 (and (symbol_22 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-1-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.77 (not (notfailed))
					0.23 (symbol_22 ?a))
	)

	(:action option-4-partition-1-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.762 (not (notfailed))
					0.238 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.856 (not (notfailed))
					0.144 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.825 (not (notfailed))
					0.175 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.82 (not (notfailed))
					0.18 (and (symbol_23 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.824 (not (notfailed))
					0.176 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.832 (not (notfailed))
					0.168 (symbol_23 ?a))
	)

	(:action option-5-partition-1-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.244 (not (notfailed))
					0.756 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.199 (not (notfailed))
					0.801 (and (symbol_21 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-1-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.192 (not (notfailed))
					0.808 (symbol_21 ?a))
	)

	(:action option-5-partition-1-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.198 (not (notfailed))
					0.802 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.211 (not (notfailed))
					0.789 (and (symbol_21 ?a) (not (symbol_23 ?a))))
	)
)