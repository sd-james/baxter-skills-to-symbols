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
		(symbol_15 ?a - type14)
		(symbol_16 ?a - type44)
		(symbol_17 ?a - type33)
		(symbol_18 ?a - type33)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type2)
		(symbol_22 ?a - type44)
		(symbol_23 ?a - type-1)
		(symbol_24 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_21 ?b) (symbol_18 ?c) (symbol_22 ?d))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_21 ?b) (not (symbol_18 ?c)) (not (symbol_22 ?d))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_21 ?b) (symbol_18 ?c) (symbol_22 ?d))
		:effect 
			(probabilistic
					0.893 (not (notfailed))
					0.107 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_21 ?b) (not (symbol_18 ?c)) (not (symbol_22 ?d))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_21 ?b) (symbol_18 ?c) (symbol_22 ?d))
		:effect 
			(probabilistic
					0.896 (not (notfailed))
					0.104 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_21 ?b) (not (symbol_18 ?c)) (not (symbol_22 ?d))))
	)

	(:action option-0-partition-1-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.439 (not (notfailed))
					0.561 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.392 (not (notfailed))
					0.608 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.366 (not (notfailed))
					0.634 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-0-partition-2-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_18 ?c) (symbol_22 ?d))
		:effect 
			(probabilistic
					0.597 (not (notfailed))
					0.403 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_18 ?c)) (not (symbol_22 ?d))))
	)

	(:action option-0-partition-2-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_18 ?c) (symbol_22 ?d))
		:effect 
			(probabilistic
					0.549 (not (notfailed))
					0.451 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_18 ?c)) (not (symbol_22 ?d))))
	)

	(:action option-0-partition-2-8
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b) (symbol_18 ?c) (symbol_22 ?d))
		:effect 
			(probabilistic
					0.552 (not (notfailed))
					0.448 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_18 ?c)) (not (symbol_22 ?d))))
	)

	(:action option-0-partition-3-9
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.317 (not (notfailed))
					0.683 (and (symbol_11 ?c) (symbol_15 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect (and (symbol_17 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.105 (not (notfailed))
					0.895 (and (symbol_17 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.084 (not (notfailed))
					0.916 (and (symbol_17 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.186 (not (notfailed))
					0.814 (and (symbol_17 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.214 (not (notfailed))
					0.786 (and (symbol_18 ?b) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-1-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.149 (not (notfailed))
					0.851 (and (symbol_18 ?b) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-1-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.144 (not (notfailed))
					0.856 (and (symbol_18 ?b) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-1-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.662 (not (notfailed))
					0.338 (and (symbol_18 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-0-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.14 (not (notfailed))
					0.86 (and (symbol_1 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-0-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.101 (not (notfailed))
					0.899 (and (symbol_1 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-0-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.087 (not (notfailed))
					0.913 (and (symbol_1 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-0-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.162 (not (notfailed))
					0.838 (and (symbol_1 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-1-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.212 (not (notfailed))
					0.788 (and (symbol_13 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.232 (not (notfailed))
					0.768 (and (symbol_13 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.202 (not (notfailed))
					0.798 (and (symbol_13 ?b) (not (symbol_18 ?b))))
	)

	(:action option-3-partition-0-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.127 (not (notfailed))
					0.873 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.188 (not (notfailed))
					0.812 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-27
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.199 (not (notfailed))
					0.801 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.177 (not (notfailed))
					0.823 (and (symbol_22 ?d) (symbol_18 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-3-partition-1-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.104 (not (notfailed))
					0.896 (and (symbol_22 ?d) (symbol_18 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-3-partition-1-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.118 (not (notfailed))
					0.882 (and (symbol_22 ?d) (symbol_18 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-3-partition-1-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.13 (not (notfailed))
					0.87 (and (symbol_22 ?d) (symbol_18 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-3-partition-1-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.101 (not (notfailed))
					0.899 (and (symbol_22 ?d) (symbol_18 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-3-partition-1-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.143 (not (notfailed))
					0.857 (and (symbol_22 ?d) (symbol_18 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-3-partition-1-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.87 (not (notfailed))
					0.13 (and (symbol_22 ?d) (symbol_18 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-3-partition-1-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.731 (not (notfailed))
					0.269 (and (symbol_22 ?d) (symbol_18 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-3-partition-1-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.808 (not (notfailed))
					0.192 (and (symbol_22 ?d) (symbol_18 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_16 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-4-partition-0-37
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.815 (not (notfailed))
					0.185 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.73 (not (notfailed))
					0.27 (symbol_19 ?a))
	)

	(:action option-4-partition-0-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.717 (not (notfailed))
					0.283 (and (symbol_19 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.805 (not (notfailed))
					0.195 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-0-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.633 (not (notfailed))
					0.367 (and (symbol_19 ?a) (not (symbol_24 ?a))))
	)

	(:action option-4-partition-1-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.575 (not (notfailed))
					0.425 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.611 (not (notfailed))
					0.389 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.603 (not (notfailed))
					0.397 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.565 (not (notfailed))
					0.435 (symbol_23 ?a))
	)

	(:action option-4-partition-1-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.63 (not (notfailed))
					0.37 (and (symbol_23 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-0-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.728 (not (notfailed))
					0.272 (and (symbol_24 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.819 (not (notfailed))
					0.181 (and (symbol_24 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.818 (not (notfailed))
					0.182 (and (symbol_24 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.818 (not (notfailed))
					0.182 (and (symbol_24 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.711 (not (notfailed))
					0.289 (symbol_24 ?a))
	)

	(:action option-5-partition-1-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.33 (not (notfailed))
					0.67 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.186 (not (notfailed))
					0.814 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-1-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.194 (not (notfailed))
					0.806 (symbol_20 ?a))
	)

	(:action option-5-partition-1-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.183 (not (notfailed))
					0.817 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.341 (not (notfailed))
					0.659 (and (symbol_20 ?a) (not (symbol_24 ?a))))
	)
)