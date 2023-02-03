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

	(:action option-0-partition-1-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.156 (not (notfailed))
					0.844 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.102 (not (notfailed))
					0.898 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.125 (not (notfailed))
					0.875 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-1-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_19 ?b) (symbol_18 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.088 (not (notfailed))
					0.912 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_18 ?c)) (not (symbol_19 ?b))))
	)

	(:action option-0-partition-2-4
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.403 (not (notfailed))
					0.597 (and (symbol_14 ?c) (symbol_15 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-5
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.739 (not (notfailed))
					0.261 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-6
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.777 (not (notfailed))
					0.223 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-7
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.6 (not (notfailed))
					0.4 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.733 (not (notfailed))
					0.267 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.768 (not (notfailed))
					0.232 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.735 (not (notfailed))
					0.265 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.771 (not (notfailed))
					0.229 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-0-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.766 (not (notfailed))
					0.234 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_1 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_12 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.807 (not (notfailed))
					0.193 (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c))))
	)

	(:action option-1-partition-0-17
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_17 ?c))
		:effect (and (symbol_13 ?c) (symbol_12 ?b) (not (symbol_17 ?c)) (not (symbol_18 ?b)))
	)

	(:action option-1-partition-1-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect (and (symbol_16 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-1-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.053 (not (notfailed))
					0.947 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.067 (not (notfailed))
					0.933 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.064 (not (notfailed))
					0.936 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.866 (not (notfailed))
					0.134 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.644 (not (notfailed))
					0.356 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-1-partition-2-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.697 (not (notfailed))
					0.303 (and (symbol_12 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-0-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-0-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_16 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_16 ?b)))
	)

	(:action option-2-partition-0-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.054 (not (notfailed))
					0.946 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-1-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.531 (not (notfailed))
					0.469 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.321 (not (notfailed))
					0.679 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.395 (not (notfailed))
					0.605 (and (symbol_18 ?b) (not (symbol_12 ?b))))
	)

	(:action option-3-partition-0-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.117 (not (notfailed))
					0.883 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_14 ?d))))
	)

	(:action option-3-partition-0-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.231 (not (notfailed))
					0.769 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_14 ?d))))
	)

	(:action option-3-partition-0-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.19 (not (notfailed))
					0.81 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_14 ?d))))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.199 (not (notfailed))
					0.801 (and (symbol_17 ?d) (symbol_18 ?c) (symbol_19 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_14 ?d))))
	)

	(:action option-3-partition-1-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.717 (not (notfailed))
					0.283 (and (symbol_13 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_21 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.321 (not (notfailed))
					0.679 (and (symbol_13 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-3-partition-1-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_16 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.471 (not (notfailed))
					0.529 (and (symbol_13 ?d) (symbol_12 ?c) (symbol_19 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?d)) (not (symbol_16 ?c))))
	)

	(:action option-4-partition-0-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.593 (not (notfailed))
					0.407 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.624 (not (notfailed))
					0.376 (symbol_20 ?a))
	)

	(:action option-4-partition-0-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.619 (not (notfailed))
					0.381 (and (symbol_20 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-0-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.614 (not (notfailed))
					0.386 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.606 (not (notfailed))
					0.394 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.802 (not (notfailed))
					0.198 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.845 (not (notfailed))
					0.155 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.675 (not (notfailed))
					0.325 (and (symbol_22 ?a) (not (symbol_21 ?a))))
	)

	(:action option-4-partition-1-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.648 (not (notfailed))
					0.352 (symbol_22 ?a))
	)

	(:action option-4-partition-1-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.669 (not (notfailed))
					0.331 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.774 (not (notfailed))
					0.226 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.807 (not (notfailed))
					0.193 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.817 (not (notfailed))
					0.183 (and (symbol_23 ?a) (not (symbol_21 ?a))))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.814 (not (notfailed))
					0.186 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.805 (not (notfailed))
					0.195 (symbol_23 ?a))
	)

	(:action option-5-partition-1-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.257 (not (notfailed))
					0.743 (and (symbol_21 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.211 (not (notfailed))
					0.789 (and (symbol_21 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_21 ?a))
		:effect 
			(probabilistic
					0.197 (not (notfailed))
					0.803 (symbol_21 ?a))
	)

	(:action option-5-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.202 (not (notfailed))
					0.798 (and (symbol_21 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.214 (not (notfailed))
					0.786 (and (symbol_21 ?a) (not (symbol_23 ?a))))
	)
)