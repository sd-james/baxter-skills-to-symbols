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
		(symbol_13 ?a - type33)
		(symbol_14 ?a - type44)
		(symbol_15 ?a - type33)
		(symbol_16 ?a - type44)
		(symbol_17 ?a - type33)
		(symbol_18 ?a - type2)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type44)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_13 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.612 (not (notfailed))
					0.388 (and (symbol_21 ?d) (symbol_15 ?c) (symbol_6 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?d)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_13 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.7 (not (notfailed))
					0.3 (and (symbol_21 ?d) (symbol_15 ?c) (symbol_6 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?d)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_18 ?b) (symbol_13 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.708 (not (notfailed))
					0.292 (and (symbol_21 ?d) (symbol_15 ?c) (symbol_6 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?d)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_13 ?c) (symbol_14 ?d))
		:effect 
			(probabilistic
					0.647 (not (notfailed))
					0.353 (and (symbol_21 ?d) (symbol_15 ?c) (symbol_6 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?d)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.444 (not (notfailed))
					0.556 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-5
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.752 (not (notfailed))
					0.248 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-6
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.788 (not (notfailed))
					0.212 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-7
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b)))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.896 (not (notfailed))
					0.104 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.451 (not (notfailed))
					0.549 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.757 (not (notfailed))
					0.243 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_13 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.792 (not (notfailed))
					0.208 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b)))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.757 (not (notfailed))
					0.243 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_13 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.791 (not (notfailed))
					0.209 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b)))
	)

	(:action option-1-partition-0-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.77 (not (notfailed))
					0.23 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-17
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_13 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.808 (not (notfailed))
					0.192 (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-18
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect (and (symbol_14 ?c) (symbol_13 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b)))
	)

	(:action option-1-partition-1-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect (and (symbol_15 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-1-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect (and (symbol_15 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-1-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect (and (symbol_15 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-1-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect (and (symbol_15 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-2-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_13 ?b) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-2-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.656 (not (notfailed))
					0.344 (and (symbol_13 ?b) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-2-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.733 (not (notfailed))
					0.267 (and (symbol_13 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-0-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_15 ?b)))
	)

	(:action option-2-partition-0-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.083 (not (notfailed))
					0.917 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.092 (not (notfailed))
					0.908 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.082 (not (notfailed))
					0.918 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-1-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.418 (not (notfailed))
					0.582 (and (symbol_17 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.341 (not (notfailed))
					0.659 (and (symbol_17 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.434 (not (notfailed))
					0.566 (and (symbol_17 ?b) (not (symbol_13 ?b))))
	)

	(:action option-3-partition-0-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.896 (not (notfailed))
					0.104 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.896 (not (notfailed))
					0.104 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.896 (not (notfailed))
					0.104 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.08 (not (notfailed))
					0.92 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.096 (not (notfailed))
					0.904 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-4-partition-0-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.623 (not (notfailed))
					0.377 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.628 (not (notfailed))
					0.372 (symbol_19 ?a))
	)

	(:action option-4-partition-0-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.633 (not (notfailed))
					0.367 (and (symbol_19 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.633 (not (notfailed))
					0.367 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.628 (not (notfailed))
					0.372 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.692 (not (notfailed))
					0.308 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.728 (not (notfailed))
					0.272 (and (symbol_22 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.528 (not (notfailed))
					0.472 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.501 (not (notfailed))
					0.499 (symbol_22 ?a))
	)

	(:action option-4-partition-1-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.503 (not (notfailed))
					0.497 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.56 (not (notfailed))
					0.44 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.809 (not (notfailed))
					0.191 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.833 (not (notfailed))
					0.167 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.825 (not (notfailed))
					0.175 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.706 (not (notfailed))
					0.294 (symbol_23 ?a))
	)

	(:action option-5-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.266 (not (notfailed))
					0.734 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.176 (not (notfailed))
					0.824 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.187 (not (notfailed))
					0.813 (symbol_20 ?a))
	)

	(:action option-5-partition-1-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.198 (not (notfailed))
					0.802 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.302 (not (notfailed))
					0.698 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)
)