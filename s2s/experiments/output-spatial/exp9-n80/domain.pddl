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
		(symbol_17 ?a - type44)
		(symbol_18 ?a - type33)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type44)
		(symbol_22 ?a - type2)
		(symbol_23 ?a - type-1)
		(symbol_24 ?a - type-1)
		(symbol_25 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.101 (not (notfailed))
					0.899 (and (symbol_21 ?d) (symbol_1 ?c) (symbol_22 ?b) (not (symbol_14 ?c)) (not (symbol_15 ?b)) (not (symbol_17 ?d))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.14 (not (notfailed))
					0.86 (and (symbol_21 ?d) (symbol_1 ?c) (symbol_22 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?d)) (not (symbol_18 ?c))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.344 (not (notfailed))
					0.656 (and (symbol_21 ?d) (symbol_1 ?c) (symbol_22 ?b) (not (symbol_14 ?c)) (not (symbol_15 ?b)) (not (symbol_17 ?d))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.497 (not (notfailed))
					0.503 (and (symbol_21 ?d) (symbol_1 ?c) (symbol_22 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?d)) (not (symbol_18 ?c))))
	)

	(:action option-0-partition-0-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.594 (not (notfailed))
					0.406 (and (symbol_21 ?d) (symbol_1 ?c) (symbol_22 ?b) (not (symbol_14 ?c)) (not (symbol_15 ?b)) (not (symbol_17 ?d))))
	)

	(:action option-0-partition-0-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_17 ?d))
		:effect 
			(probabilistic
					0.619 (not (notfailed))
					0.381 (and (symbol_21 ?d) (symbol_1 ?c) (symbol_22 ?b) (not (symbol_15 ?b)) (not (symbol_17 ?d)) (not (symbol_18 ?c))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.18 (not (notfailed))
					0.82 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-0-partition-1-7
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.657 (not (notfailed))
					0.343 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.162 (not (notfailed))
					0.838 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.217 (not (notfailed))
					0.783 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.327 (not (notfailed))
					0.673 (and (symbol_16 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-11
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.784 (not (notfailed))
					0.216 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-1-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.101 (not (notfailed))
					0.899 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.851 (not (notfailed))
					0.149 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.823 (not (notfailed))
					0.177 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-1-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.897 (not (notfailed))
					0.103 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-1-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.711 (not (notfailed))
					0.289 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-17
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.859 (not (notfailed))
					0.141 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-18
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.798 (not (notfailed))
					0.202 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-1-19
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.136 (not (notfailed))
					0.864 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-20
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.855 (not (notfailed))
					0.145 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-21
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.832 (not (notfailed))
					0.168 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-1-22
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.821 (not (notfailed))
					0.179 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-23
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.795 (not (notfailed))
					0.205 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-1-24
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.139 (not (notfailed))
					0.861 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-25
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_14 ?b) (symbol_17 ?c))
		:effect 
			(probabilistic
					0.846 (not (notfailed))
					0.154 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-1-26
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_18 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.829 (not (notfailed))
					0.171 (and (symbol_17 ?c) (symbol_18 ?b) (not (symbol_13 ?c))))
	)

	(:action option-2-partition-0-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.075 (not (notfailed))
					0.925 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.691 (not (notfailed))
					0.309 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.094 (not (notfailed))
					0.906 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.839 (not (notfailed))
					0.161 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-0-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.085 (not (notfailed))
					0.915 (and (symbol_14 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.117 (not (notfailed))
					0.883 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-1-33
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.199 (not (notfailed))
					0.801 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-2-partition-1-34
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_16 ?b))
		:effect 
			(probabilistic
					0.302 (not (notfailed))
					0.698 (and (symbol_1 ?b) (not (symbol_16 ?b))))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.16 (not (notfailed))
					0.84 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.23 (not (notfailed))
					0.77 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_25 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.202 (not (notfailed))
					0.798 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-4-partition-0-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.526 (not (notfailed))
					0.474 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.857 (not (notfailed))
					0.143 (symbol_19 ?a))
	)

	(:action option-4-partition-0-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.56 (not (notfailed))
					0.44 (and (symbol_19 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.451 (not (notfailed))
					0.549 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-0-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.693 (not (notfailed))
					0.307 (and (symbol_19 ?a) (not (symbol_24 ?a))))
	)

	(:action option-4-partition-0-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_25 ?a))
		:effect 
			(probabilistic
					0.792 (not (notfailed))
					0.208 (and (symbol_19 ?a) (not (symbol_25 ?a))))
	)

	(:action option-4-partition-1-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.85 (not (notfailed))
					0.15 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.848 (not (notfailed))
					0.152 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.884 (not (notfailed))
					0.116 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.848 (not (notfailed))
					0.152 (symbol_23 ?a))
	)

	(:action option-4-partition-1-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.86 (not (notfailed))
					0.14 (and (symbol_23 ?a) (not (symbol_24 ?a))))
	)

	(:action option-4-partition-1-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_25 ?a))
		:effect 
			(probabilistic
					0.872 (not (notfailed))
					0.128 (and (symbol_23 ?a) (not (symbol_25 ?a))))
	)

	(:action option-5-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.162 (not (notfailed))
					0.838 (and (symbol_25 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.457 (not (notfailed))
					0.543 (and (symbol_25 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.165 (not (notfailed))
					0.835 (and (symbol_25 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.169 (not (notfailed))
					0.831 (and (symbol_25 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.22 (not (notfailed))
					0.78 (and (symbol_25 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-0-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_25 ?a))
		:effect 
			(probabilistic
					0.243 (not (notfailed))
					0.757 (symbol_25 ?a))
	)

	(:action option-5-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.846 (not (notfailed))
					0.154 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.793 (not (notfailed))
					0.207 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-1-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.832 (not (notfailed))
					0.168 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-1-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.769 (not (notfailed))
					0.231 (and (symbol_20 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-1-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_25 ?a))
		:effect 
			(probabilistic
					0.887 (not (notfailed))
					0.113 (and (symbol_20 ?a) (not (symbol_25 ?a))))
	)

	(:action option-5-partition-2-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.835 (not (notfailed))
					0.165 (and (symbol_24 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-2-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.849 (not (notfailed))
					0.151 (and (symbol_24 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-2-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_25 ?a))
		:effect 
			(probabilistic
					0.893 (not (notfailed))
					0.107 (and (symbol_24 ?a) (not (symbol_25 ?a))))
	)
)