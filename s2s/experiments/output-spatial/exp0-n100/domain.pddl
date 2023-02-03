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
		(symbol_16 ?a - type44)
		(symbol_17 ?a - type33)
		(symbol_18 ?a - type33)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type-1)
		(symbol_21 ?a - type44)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
		(symbol_24 ?a - type-1)
	)

	(:action option-0-partition-1-0
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.9 (not (notfailed))
					0.1 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-1
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.784 (not (notfailed))
					0.216 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-2
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.068 (not (notfailed))
					0.932 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-3
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.835 (not (notfailed))
					0.165 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-4
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.836 (not (notfailed))
					0.164 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-5
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.809 (not (notfailed))
					0.191 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-6
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.123 (not (notfailed))
					0.877 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-7
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.852 (not (notfailed))
					0.148 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.852 (not (notfailed))
					0.148 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.795 (not (notfailed))
					0.205 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.087 (not (notfailed))
					0.913 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.813 (not (notfailed))
					0.187 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-12
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.813 (not (notfailed))
					0.187 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-13
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.649 (not (notfailed))
					0.351 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-14
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.857 (not (notfailed))
					0.143 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-15
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.315 (not (notfailed))
					0.685 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-16
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-17
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.887 (not (notfailed))
					0.113 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-18
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.809 (not (notfailed))
					0.191 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-19
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.143 (not (notfailed))
					0.857 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-20
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.849 (not (notfailed))
					0.151 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-21
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_17 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.851 (not (notfailed))
					0.149 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-1-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.143 (not (notfailed))
					0.857 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.203 (not (notfailed))
					0.797 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-24
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.296 (not (notfailed))
					0.704 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-25
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.848 (not (notfailed))
					0.152 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-26
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.193 (not (notfailed))
					0.807 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-2-partition-0-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.536 (not (notfailed))
					0.464 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-0-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.487 (not (notfailed))
					0.513 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-0-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.561 (not (notfailed))
					0.439 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-1-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.104 (not (notfailed))
					0.896 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.127 (not (notfailed))
					0.873 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.113 (not (notfailed))
					0.887 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-33
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.825 (not (notfailed))
					0.175 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-34
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.106 (not (notfailed))
					0.894 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.82 (not (notfailed))
					0.18 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.82 (not (notfailed))
					0.18 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.82 (not (notfailed))
					0.18 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.857 (not (notfailed))
					0.143 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-0-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.856 (not (notfailed))
					0.144 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.858 (not (notfailed))
					0.142 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d)))
	)

	(:action option-3-partition-0-44
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.828 (not (notfailed))
					0.172 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-0-45
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.829 (not (notfailed))
					0.171 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-46
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.829 (not (notfailed))
					0.171 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-47
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.894 (not (notfailed))
					0.106 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-48
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.086 (not (notfailed))
					0.914 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-49
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.068 (not (notfailed))
					0.932 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-50
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.855 (not (notfailed))
					0.145 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_21 ?d))))
	)

	(:action option-3-partition-0-51
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.856 (not (notfailed))
					0.144 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-52
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_15 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.854 (not (notfailed))
					0.146 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_11 ?d))))
	)

	(:action option-4-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.869 (not (notfailed))
					0.131 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.763 (not (notfailed))
					0.237 (symbol_19 ?a))
	)

	(:action option-4-partition-0-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.867 (not (notfailed))
					0.133 (and (symbol_19 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.864 (not (notfailed))
					0.136 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-57
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.83 (not (notfailed))
					0.17 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-0-58
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.767 (not (notfailed))
					0.233 (and (symbol_19 ?a) (not (symbol_24 ?a))))
	)

	(:action option-4-partition-1-59
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.758 (not (notfailed))
					0.242 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-60
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.69 (not (notfailed))
					0.31 (and (symbol_22 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-61
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.755 (not (notfailed))
					0.245 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.599 (not (notfailed))
					0.401 (symbol_22 ?a))
	)

	(:action option-4-partition-1-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.716 (not (notfailed))
					0.284 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.671 (not (notfailed))
					0.329 (and (symbol_22 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-0-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.251 (not (notfailed))
					0.749 (and (symbol_24 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-66
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.282 (not (notfailed))
					0.718 (and (symbol_24 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-67
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.224 (not (notfailed))
					0.776 (and (symbol_24 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-68
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.418 (not (notfailed))
					0.582 (and (symbol_24 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-69
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.415 (not (notfailed))
					0.585 (and (symbol_24 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-70
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.296 (not (notfailed))
					0.704 (symbol_24 ?a))
	)

	(:action option-5-partition-1-71
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.858 (not (notfailed))
					0.142 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-72
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.849 (not (notfailed))
					0.151 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-1-73
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.851 (not (notfailed))
					0.149 (symbol_20 ?a))
	)

	(:action option-5-partition-1-74
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.804 (not (notfailed))
					0.196 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-75
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.821 (not (notfailed))
					0.179 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-1-76
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.849 (not (notfailed))
					0.151 (and (symbol_20 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-2-77
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.808 (not (notfailed))
					0.192 (symbol_23 ?a))
	)
)