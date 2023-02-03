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
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.298 (not (notfailed))
					0.702 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.291 (not (notfailed))
					0.709 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.819 (not (notfailed))
					0.181 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.294 (not (notfailed))
					0.706 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.232 (not (notfailed))
					0.768 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_19 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.277 (not (notfailed))
					0.723 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_19 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.268 (not (notfailed))
					0.732 (and (symbol_11 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-7
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.131 (not (notfailed))
					0.869 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.109 (not (notfailed))
					0.891 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.279 (not (notfailed))
					0.721 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.725 (not (notfailed))
					0.275 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.303 (not (notfailed))
					0.697 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.681 (not (notfailed))
					0.319 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-1-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.683 (not (notfailed))
					0.317 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-1-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.819 (not (notfailed))
					0.181 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-1-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.698 (not (notfailed))
					0.302 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.177 (not (notfailed))
					0.823 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-17
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.338 (not (notfailed))
					0.662 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-18
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.493 (not (notfailed))
					0.507 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-19
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.358 (not (notfailed))
					0.642 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.126 (not (notfailed))
					0.874 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.117 (not (notfailed))
					0.883 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.366 (not (notfailed))
					0.634 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.864 (not (notfailed))
					0.136 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.114 (not (notfailed))
					0.886 (and (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_12 ?b)))
	)

	(:action option-2-partition-1-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_12 ?b)))
	)

	(:action option-2-partition-1-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_12 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_12 ?b)))
	)

	(:action option-3-partition-0-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.118 (not (notfailed))
					0.882 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.119 (not (notfailed))
					0.881 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.291 (not (notfailed))
					0.709 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.12 (not (notfailed))
					0.88 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.052 (not (notfailed))
					0.948 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.059 (not (notfailed))
					0.941 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.163 (not (notfailed))
					0.837 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.056 (not (notfailed))
					0.944 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.767 (not (notfailed))
					0.233 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.67 (not (notfailed))
					0.33 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.166 (not (notfailed))
					0.834 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_12 ?c))))
	)

	(:action option-3-partition-1-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_12 ?c)) (not (symbol_15 ?d)))
	)

	(:action option-4-partition-0-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.681 (not (notfailed))
					0.319 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.616 (not (notfailed))
					0.384 (symbol_20 ?a))
	)

	(:action option-4-partition-0-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.752 (not (notfailed))
					0.248 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.762 (not (notfailed))
					0.238 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.628 (not (notfailed))
					0.372 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.635 (not (notfailed))
					0.365 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.768 (not (notfailed))
					0.232 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.606 (not (notfailed))
					0.394 (and (symbol_22 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-1-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.64 (not (notfailed))
					0.36 (symbol_22 ?a))
	)

	(:action option-4-partition-1-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.779 (not (notfailed))
					0.221 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.366 (not (notfailed))
					0.634 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.138 (not (notfailed))
					0.862 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.161 (not (notfailed))
					0.839 (and (symbol_23 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.094 (not (notfailed))
					0.906 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.165 (not (notfailed))
					0.835 (symbol_23 ?a))
	)

	(:action option-5-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.848 (not (notfailed))
					0.152 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.86 (not (notfailed))
					0.14 (and (symbol_21 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.858 (not (notfailed))
					0.142 (symbol_21 ?a))
	)

	(:action option-5-partition-1-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.862 (not (notfailed))
					0.138 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.858 (not (notfailed))
					0.142 (and (symbol_21 ?a) (not (symbol_23 ?a))))
	)
)