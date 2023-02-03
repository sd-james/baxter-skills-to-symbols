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
		(symbol_15 ?a - type33)
		(symbol_16 ?a - type14)
		(symbol_17 ?a - type33)
		(symbol_18 ?a - type-1)
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type44)
		(symbol_21 ?a - type44)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_17 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.683 (not (notfailed))
					0.317 (and (symbol_20 ?d) (symbol_15 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_17 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_17 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.779 (not (notfailed))
					0.221 (and (symbol_20 ?d) (symbol_15 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_17 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b) (symbol_17 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_20 ?d) (symbol_15 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_17 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_17 ?c) (symbol_21 ?d))
		:effect 
			(probabilistic
					0.762 (not (notfailed))
					0.238 (and (symbol_20 ?d) (symbol_15 ?c) (symbol_6 ?b) (not (symbol_14 ?b)) (not (symbol_17 ?c)) (not (symbol_21 ?d))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.708 (not (notfailed))
					0.292 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.41 (not (notfailed))
					0.59 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.425 (not (notfailed))
					0.575 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-0-partition-2-7
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.1 (not (notfailed))
					0.9 (and (symbol_11 ?c) (symbol_16 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-8
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect (and (symbol_15 ?b) (not (symbol_1 ?b)))
	)

	(:action option-1-partition-0-9
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.106 (not (notfailed))
					0.894 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-10
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.245 (not (notfailed))
					0.755 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-11
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.111 (not (notfailed))
					0.889 (and (symbol_15 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-12
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.06 (not (notfailed))
					0.94 (and (symbol_17 ?b) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-1-13
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.055 (not (notfailed))
					0.945 (and (symbol_17 ?b) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-1-14
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.078 (not (notfailed))
					0.922 (and (symbol_17 ?b) (not (symbol_13 ?b))))
	)

	(:action option-1-partition-1-15
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.057 (not (notfailed))
					0.943 (and (symbol_17 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-0-16
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b))
		:effect (and (symbol_1 ?b) (not (symbol_15 ?b)))
	)

	(:action option-2-partition-0-17
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.1 (not (notfailed))
					0.9 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.109 (not (notfailed))
					0.891 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-0-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_15 ?b))
		:effect 
			(probabilistic
					0.057 (not (notfailed))
					0.943 (and (symbol_1 ?b) (not (symbol_15 ?b))))
	)

	(:action option-2-partition-1-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.109 (not (notfailed))
					0.891 (and (symbol_13 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-1-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.252 (not (notfailed))
					0.748 (and (symbol_13 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-1-22
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.224 (not (notfailed))
					0.776 (and (symbol_13 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-1-23
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.119 (not (notfailed))
					0.881 (and (symbol_13 ?b) (not (symbol_17 ?b))))
	)

	(:action option-3-partition-0-24
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.471 (not (notfailed))
					0.529 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-25
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.461 (not (notfailed))
					0.539 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-26
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.431 (not (notfailed))
					0.569 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_14 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-1-27
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect (and (symbol_21 ?d) (symbol_17 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c)))
	)

	(:action option-3-partition-1-28
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.131 (not (notfailed))
					0.869 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-29
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect (and (symbol_21 ?d) (symbol_17 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c)))
	)

	(:action option-3-partition-1-30
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.466 (not (notfailed))
					0.534 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-31
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect (and (symbol_21 ?d) (symbol_17 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c)))
	)

	(:action option-3-partition-1-32
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.104 (not (notfailed))
					0.896 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-3-partition-1-33
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_11 ?d))
		:effect (and (symbol_21 ?d) (symbol_17 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_15 ?c)))
	)

	(:action option-3-partition-1-34
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_15 ?c) (symbol_20 ?d))
		:effect 
			(probabilistic
					0.092 (not (notfailed))
					0.908 (and (symbol_21 ?d) (symbol_17 ?c) (symbol_14 ?b) (not (symbol_6 ?b)) (not (symbol_15 ?c)) (not (symbol_20 ?d))))
	)

	(:action option-4-partition-0-35
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.591 (not (notfailed))
					0.409 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-36
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.576 (not (notfailed))
					0.424 (symbol_18 ?a))
	)

	(:action option-4-partition-0-37
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.659 (not (notfailed))
					0.341 (and (symbol_18 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-0-38
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.652 (not (notfailed))
					0.348 (and (symbol_18 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-39
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.646 (not (notfailed))
					0.354 (and (symbol_18 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-40
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.738 (not (notfailed))
					0.262 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-41
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.809 (not (notfailed))
					0.191 (and (symbol_22 ?a) (not (symbol_18 ?a))))
	)

	(:action option-4-partition-1-42
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.67 (not (notfailed))
					0.33 (and (symbol_22 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-43
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.668 (not (notfailed))
					0.332 (symbol_22 ?a))
	)

	(:action option-4-partition-1-44
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.676 (not (notfailed))
					0.324 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-45
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.177 (not (notfailed))
					0.823 (and (symbol_23 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-46
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.151 (not (notfailed))
					0.849 (and (symbol_23 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-0-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.127 (not (notfailed))
					0.873 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.174 (not (notfailed))
					0.826 (and (symbol_23 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.168 (not (notfailed))
					0.832 (symbol_23 ?a))
	)

	(:action option-5-partition-1-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.815 (not (notfailed))
					0.185 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.849 (not (notfailed))
					0.151 (and (symbol_19 ?a) (not (symbol_18 ?a))))
	)

	(:action option-5-partition-1-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.847 (not (notfailed))
					0.153 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)
)