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
		(symbol_14 ?a - type33)
		(symbol_15 ?a - type44)
		(symbol_16 ?a - type14)
		(symbol_17 ?a - type2)
		(symbol_18 ?a - type-1)
		(symbol_19 ?a - type44)
		(symbol_20 ?a - type33)
		(symbol_21 ?a - type-1)
		(symbol_22 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.081 (not (notfailed))
					0.919 (and (symbol_11 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_17 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.191 (not (notfailed))
					0.809 (and (symbol_11 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.28 (not (notfailed))
					0.72 (and (symbol_11 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.093 (not (notfailed))
					0.907 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b)) (not (symbol_20 ?c))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.102 (not (notfailed))
					0.898 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b)) (not (symbol_20 ?c))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_20 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.076 (not (notfailed))
					0.924 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b)) (not (symbol_20 ?c))))
	)

	(:action option-0-partition-2-6
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.229 (not (notfailed))
					0.771 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-7
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.076 (not (notfailed))
					0.924 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.099 (not (notfailed))
					0.901 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.102 (not (notfailed))
					0.898 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b))
		:effect 
			(probabilistic
					0.801 (not (notfailed))
					0.199 (and (symbol_13 ?b) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-1-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b))
		:effect 
			(probabilistic
					0.858 (not (notfailed))
					0.142 (and (symbol_13 ?b) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-1-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b))
		:effect 
			(probabilistic
					0.857 (not (notfailed))
					0.143 (and (symbol_13 ?b) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-2-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_20 ?b) (symbol_19 ?c))
		:effect 
			(probabilistic
					0.157 (not (notfailed))
					0.843 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_19 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-2-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_20 ?b) (symbol_19 ?c))
		:effect 
			(probabilistic
					0.731 (not (notfailed))
					0.269 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_19 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-2-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_20 ?b) (symbol_19 ?c))
		:effect 
			(probabilistic
					0.165 (not (notfailed))
					0.835 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_19 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-1-partition-2-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_20 ?b) (symbol_19 ?c))
		:effect 
			(probabilistic
					0.115 (not (notfailed))
					0.885 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_19 ?c)) (not (symbol_20 ?b))))
	)

	(:action option-2-partition-0-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.059 (not (notfailed))
					0.941 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.192 (not (notfailed))
					0.808 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.185 (not (notfailed))
					0.815 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.174 (not (notfailed))
					0.826 (and (symbol_20 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.16 (not (notfailed))
					0.84 (and (symbol_20 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.086 (not (notfailed))
					0.914 (and (symbol_20 ?b) (not (symbol_13 ?b))))
	)

	(:action option-3-partition-0-23
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.397 (not (notfailed))
					0.603 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-0-24
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.184 (not (notfailed))
					0.816 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.288 (not (notfailed))
					0.712 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-0-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.209 (not (notfailed))
					0.791 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-27
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.149 (not (notfailed))
					0.851 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-0-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.242 (not (notfailed))
					0.758 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.183 (not (notfailed))
					0.817 (and (symbol_19 ?d) (symbol_20 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.283 (not (notfailed))
					0.717 (and (symbol_19 ?d) (symbol_20 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.298 (not (notfailed))
					0.702 (and (symbol_19 ?d) (symbol_20 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-4-partition-0-32
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.525 (not (notfailed))
					0.475 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-33
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.614 (not (notfailed))
					0.386 (symbol_18 ?a))
	)

	(:action option-4-partition-0-34
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.759 (not (notfailed))
					0.241 (and (symbol_18 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-35
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.751 (not (notfailed))
					0.249 (and (symbol_18 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-1-36
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.81 (not (notfailed))
					0.19 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-37
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.749 (not (notfailed))
					0.251 (and (symbol_21 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-1-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.845 (not (notfailed))
					0.155 (symbol_21 ?a))
	)

	(:action option-4-partition-1-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.842 (not (notfailed))
					0.158 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_10 ?a)))
	)

	(:action option-5-partition-0-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_18 ?a)))
	)

	(:action option-5-partition-0-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect (and (symbol_22 ?a) (not (symbol_21 ?a)))
	)

	(:action option-5-partition-0-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect (symbol_22 ?a)
	)
)