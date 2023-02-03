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
		(symbol_14 ?a - type14)
		(symbol_15 ?a - type44)
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
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.198 (not (notfailed))
					0.802 (and (symbol_11 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.633 (not (notfailed))
					0.367 (and (symbol_11 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.659 (not (notfailed))
					0.341 (and (symbol_11 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_19 ?b) (symbol_12 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.66 (not (notfailed))
					0.34 (and (symbol_11 ?d) (symbol_16 ?c) (symbol_6 ?b) (not (symbol_12 ?c)) (not (symbol_15 ?d)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.137 (not (notfailed))
					0.863 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.116 (not (notfailed))
					0.884 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.092 (not (notfailed))
					0.908 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.09 (not (notfailed))
					0.91 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_15 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-8
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.788 (not (notfailed))
					0.212 (and (symbol_13 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-9
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.733 (not (notfailed))
					0.267 (and (symbol_13 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-10
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.823 (not (notfailed))
					0.177 (and (symbol_13 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_17 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-3-11
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.301 (not (notfailed))
					0.699 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.076 (not (notfailed))
					0.924 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-0-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.164 (not (notfailed))
					0.836 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-0-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.149 (not (notfailed))
					0.851 (and (symbol_15 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-1-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect (and (symbol_16 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-1-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.146 (not (notfailed))
					0.854 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.239 (not (notfailed))
					0.761 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.233 (not (notfailed))
					0.767 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.382 (not (notfailed))
					0.618 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.625 (not (notfailed))
					0.375 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.696 (not (notfailed))
					0.304 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-0-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.056 (not (notfailed))
					0.944 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-0-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-0-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-1-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect (and (symbol_18 ?b) (not (symbol_12 ?b)))
	)

	(:action option-2-partition-1-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.138 (not (notfailed))
					0.862 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.245 (not (notfailed))
					0.755 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-3-partition-0-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.059 (not (notfailed))
					0.941 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_13 ?d))))
	)

	(:action option-3-partition-0-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.175 (not (notfailed))
					0.825 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_13 ?d))))
	)

	(:action option-3-partition-0-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.21 (not (notfailed))
					0.79 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_13 ?d))))
	)

	(:action option-3-partition-0-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.361 (not (notfailed))
					0.639 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_13 ?d))))
	)

	(:action option-3-partition-1-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.109 (not (notfailed))
					0.891 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.255 (not (notfailed))
					0.745 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_13 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.088 (not (notfailed))
					0.912 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.18 (not (notfailed))
					0.82 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_13 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.074 (not (notfailed))
					0.926 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.229 (not (notfailed))
					0.771 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_13 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.076 (not (notfailed))
					0.924 (and (symbol_15 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-4-partition-0-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.503 (not (notfailed))
					0.497 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.648 (not (notfailed))
					0.352 (symbol_20 ?a))
	)

	(:action option-4-partition-0-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.727 (not (notfailed))
					0.273 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.736 (not (notfailed))
					0.264 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.681 (not (notfailed))
					0.319 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.809 (not (notfailed))
					0.191 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.896 (not (notfailed))
					0.104 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.616 (not (notfailed))
					0.384 (and (symbol_22 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-1-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.617 (not (notfailed))
					0.383 (symbol_22 ?a))
	)

	(:action option-4-partition-1-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.61 (not (notfailed))
					0.39 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.792 (not (notfailed))
					0.208 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.835 (not (notfailed))
					0.165 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.844 (not (notfailed))
					0.156 (and (symbol_23 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.837 (not (notfailed))
					0.163 (symbol_23 ?a))
	)

	(:action option-5-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.277 (not (notfailed))
					0.723 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.179 (not (notfailed))
					0.821 (and (symbol_21 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-1-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.166 (not (notfailed))
					0.834 (symbol_21 ?a))
	)

	(:action option-5-partition-1-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.166 (not (notfailed))
					0.834 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.175 (not (notfailed))
					0.825 (and (symbol_21 ?a) (not (symbol_23 ?a))))
	)
)