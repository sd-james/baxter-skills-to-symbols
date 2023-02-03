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
		(symbol_15 ?a - type14)
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
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.197 (not (notfailed))
					0.803 (and (symbol_21 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.198 (not (notfailed))
					0.802 (and (symbol_21 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.358 (not (notfailed))
					0.642 (and (symbol_21 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_14 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.383 (not (notfailed))
					0.617 (and (symbol_21 ?d) (symbol_12 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_14 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.201 (not (notfailed))
					0.799 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.181 (not (notfailed))
					0.819 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.27 (not (notfailed))
					0.73 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-1-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.243 (not (notfailed))
					0.757 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c)) (not (symbol_18 ?b))))
	)

	(:action option-0-partition-2-8
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.348 (not (notfailed))
					0.652 (and (symbol_11 ?c) (symbol_15 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.846 (not (notfailed))
					0.154 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.867 (not (notfailed))
					0.133 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.076 (not (notfailed))
					0.924 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.855 (not (notfailed))
					0.145 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.873 (not (notfailed))
					0.127 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.111 (not (notfailed))
					0.889 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.854 (not (notfailed))
					0.146 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.861 (not (notfailed))
					0.139 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-17
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.093 (not (notfailed))
					0.907 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-18
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.713 (not (notfailed))
					0.287 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-0-19
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.863 (not (notfailed))
					0.137 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?b)) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-20
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.881 (not (notfailed))
					0.119 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c))))
	)

	(:action option-1-partition-0-21
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.157 (not (notfailed))
					0.843 (and (symbol_13 ?c) (symbol_14 ?b) (not (symbol_16 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-1-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.6 (not (notfailed))
					0.4 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-1-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.572 (not (notfailed))
					0.428 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-1-partition-2-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.16 (not (notfailed))
					0.84 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.145 (not (notfailed))
					0.855 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.266 (not (notfailed))
					0.734 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.152 (not (notfailed))
					0.848 (and (symbol_12 ?b) (not (symbol_1 ?b))))
	)

	(:action option-2-partition-0-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.238 (not (notfailed))
					0.762 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.156 (not (notfailed))
					0.844 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.209 (not (notfailed))
					0.791 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.765 (not (notfailed))
					0.235 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.164 (not (notfailed))
					0.836 (and (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-33
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_12 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_12 ?b)))
	)

	(:action option-2-partition-1-34
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.058 (not (notfailed))
					0.942 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-35
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.092 (not (notfailed))
					0.908 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-2-partition-1-36
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_12 ?b))
		:effect 
			(probabilistic
					0.06 (not (notfailed))
					0.94 (and (symbol_1 ?b) (not (symbol_12 ?b))))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.064 (not (notfailed))
					0.936 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.115 (not (notfailed))
					0.885 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.071 (not (notfailed))
					0.929 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.182 (not (notfailed))
					0.818 (and (symbol_16 ?d) (symbol_17 ?c) (symbol_18 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-4-partition-0-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.753 (not (notfailed))
					0.247 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.673 (not (notfailed))
					0.327 (symbol_19 ?a))
	)

	(:action option-4-partition-0-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.673 (not (notfailed))
					0.327 (and (symbol_19 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.731 (not (notfailed))
					0.269 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.698 (not (notfailed))
					0.302 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.754 (not (notfailed))
					0.246 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.731 (not (notfailed))
					0.269 (and (symbol_22 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.62 (not (notfailed))
					0.38 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.827 (not (notfailed))
					0.173 (symbol_22 ?a))
	)

	(:action option-4-partition-1-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.774 (not (notfailed))
					0.226 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.153 (not (notfailed))
					0.847 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.248 (not (notfailed))
					0.752 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.18 (not (notfailed))
					0.82 (and (symbol_23 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.389 (not (notfailed))
					0.611 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.216 (not (notfailed))
					0.784 (symbol_23 ?a))
	)

	(:action option-5-partition-1-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.781 (not (notfailed))
					0.219 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.78 (not (notfailed))
					0.22 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-1-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.779 (not (notfailed))
					0.221 (symbol_20 ?a))
	)

	(:action option-5-partition-1-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.829 (not (notfailed))
					0.171 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.777 (not (notfailed))
					0.223 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)
)