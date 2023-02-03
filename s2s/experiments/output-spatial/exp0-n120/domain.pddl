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
		(symbol_15 ?a - type44)
		(symbol_16 ?a - type33)
		(symbol_17 ?a - type14)
		(symbol_18 ?a - type33)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type44)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_16 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.092 (not (notfailed))
					0.908 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_15 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_16 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.14 (not (notfailed))
					0.86 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_15 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b) (symbol_16 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.197 (not (notfailed))
					0.803 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_15 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_16 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.205 (not (notfailed))
					0.795 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_15 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.201 (not (notfailed))
					0.799 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.22 (not (notfailed))
					0.78 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.314 (not (notfailed))
					0.686 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-0-partition-1-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.264 (not (notfailed))
					0.736 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-0-partition-2-8
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.245 (not (notfailed))
					0.755 (and (symbol_11 ?c) (symbol_17 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b) (symbol_12 ?c))
		:effect 
			(probabilistic
					0.728 (not (notfailed))
					0.272 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_1 ?b)) (not (symbol_12 ?c))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b) (symbol_12 ?c))
		:effect (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_12 ?c)) (not (symbol_13 ?b)))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b) (symbol_15 ?c))
		:effect 
			(probabilistic
					0.799 (not (notfailed))
					0.201 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b) (symbol_12 ?c))
		:effect 
			(probabilistic
					0.8 (not (notfailed))
					0.2 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_12 ?c))))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b) (symbol_12 ?c))
		:effect 
			(probabilistic
					0.751 (not (notfailed))
					0.249 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_1 ?b)) (not (symbol_12 ?c))))
	)

	(:action option-1-partition-0-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_13 ?b) (symbol_12 ?c))
		:effect (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_12 ?c)) (not (symbol_13 ?b)))
	)

	(:action option-1-partition-0-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_13 ?b) (symbol_15 ?c))
		:effect 
			(probabilistic
					0.815 (not (notfailed))
					0.185 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-0-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_16 ?b) (symbol_12 ?c))
		:effect 
			(probabilistic
					0.815 (not (notfailed))
					0.185 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_12 ?c))))
	)

	(:action option-1-partition-0-17
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b) (symbol_12 ?c))
		:effect 
			(probabilistic
					0.752 (not (notfailed))
					0.248 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_1 ?b)) (not (symbol_12 ?c))))
	)

	(:action option-1-partition-0-18
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_13 ?b) (symbol_12 ?c))
		:effect (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_12 ?c)) (not (symbol_13 ?b)))
	)

	(:action option-1-partition-0-19
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_13 ?b) (symbol_15 ?c))
		:effect 
			(probabilistic
					0.782 (not (notfailed))
					0.218 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-0-20
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_16 ?b) (symbol_12 ?c))
		:effect 
			(probabilistic
					0.783 (not (notfailed))
					0.217 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_12 ?c))))
	)

	(:action option-1-partition-0-21
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b) (symbol_12 ?c))
		:effect 
			(probabilistic
					0.892 (not (notfailed))
					0.108 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_1 ?b)) (not (symbol_12 ?c))))
	)

	(:action option-1-partition-0-22
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_13 ?b) (symbol_12 ?c))
		:effect 
			(probabilistic
					0.575 (not (notfailed))
					0.425 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_12 ?c)) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-0-23
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b) (symbol_12 ?c))
		:effect 
			(probabilistic
					0.759 (not (notfailed))
					0.241 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_1 ?b)) (not (symbol_12 ?c))))
	)

	(:action option-1-partition-0-24
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_13 ?b) (symbol_12 ?c))
		:effect 
			(probabilistic
					0.064 (not (notfailed))
					0.936 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_12 ?c)) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-0-25
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_13 ?b) (symbol_15 ?c))
		:effect 
			(probabilistic
					0.817 (not (notfailed))
					0.183 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-0-26
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_16 ?b) (symbol_12 ?c))
		:effect 
			(probabilistic
					0.821 (not (notfailed))
					0.179 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_12 ?c))))
	)

	(:action option-1-partition-1-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.151 (not (notfailed))
					0.849 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.176 (not (notfailed))
					0.824 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.312 (not (notfailed))
					0.688 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.177 (not (notfailed))
					0.823 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-2-partition-0-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.541 (not (notfailed))
					0.459 (and (symbol_13 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.462 (not (notfailed))
					0.538 (and (symbol_13 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-33
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.557 (not (notfailed))
					0.443 (and (symbol_13 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-1-34
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.104 (not (notfailed))
					0.896 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-35
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.109 (not (notfailed))
					0.891 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-36
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.136 (not (notfailed))
					0.864 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-37
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.101 (not (notfailed))
					0.899 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.079 (not (notfailed))
					0.921 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.158 (not (notfailed))
					0.842 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.11 (not (notfailed))
					0.89 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.222 (not (notfailed))
					0.778 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-4-partition-0-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.717 (not (notfailed))
					0.283 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.804 (not (notfailed))
					0.196 (symbol_19 ?a))
	)

	(:action option-4-partition-0-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.715 (not (notfailed))
					0.285 (and (symbol_19 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.7 (not (notfailed))
					0.3 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.773 (not (notfailed))
					0.227 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.656 (not (notfailed))
					0.344 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.717 (not (notfailed))
					0.283 (and (symbol_22 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.682 (not (notfailed))
					0.318 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.796 (not (notfailed))
					0.204 (symbol_22 ?a))
	)

	(:action option-4-partition-1-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.74 (not (notfailed))
					0.26 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.293 (not (notfailed))
					0.707 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.29 (not (notfailed))
					0.71 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.29 (not (notfailed))
					0.71 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.285 (not (notfailed))
					0.715 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.289 (not (notfailed))
					0.711 (symbol_23 ?a))
	)

	(:action option-5-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.873 (not (notfailed))
					0.127 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-1-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.84 (not (notfailed))
					0.16 (symbol_20 ?a))
	)

	(:action option-5-partition-1-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.726 (not (notfailed))
					0.274 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.845 (not (notfailed))
					0.155 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)
)