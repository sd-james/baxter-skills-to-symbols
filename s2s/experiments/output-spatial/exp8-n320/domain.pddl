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
		(symbol_19 ?a - type-1)
		(symbol_20 ?a - type44)
		(symbol_21 ?a - type33)
		(symbol_22 ?a - type-1)
		(symbol_23 ?a - type-1)
	)

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.064 (not (notfailed))
					0.936 (and (symbol_11 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.081 (not (notfailed))
					0.919 (and (symbol_11 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.202 (not (notfailed))
					0.798 (and (symbol_11 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_13 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.243 (not (notfailed))
					0.757 (and (symbol_11 ?d) (symbol_14 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_13 ?c)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_21 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.879 (not (notfailed))
					0.121 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_21 ?c))))
	)

	(:action option-0-partition-1-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_1 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.879 (not (notfailed))
					0.121 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_21 ?c) (symbol_12 ?d))
		:effect (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b)) (not (symbol_21 ?c)))
	)

	(:action option-0-partition-1-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_17 ?b) (symbol_21 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.672 (not (notfailed))
					0.328 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b)) (not (symbol_21 ?c))))
	)

	(:action option-0-partition-1-8
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_21 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.847 (not (notfailed))
					0.153 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_21 ?c))))
	)

	(:action option-0-partition-1-9
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_1 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.848 (not (notfailed))
					0.152 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-10
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_21 ?c) (symbol_12 ?d))
		:effect (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b)) (not (symbol_21 ?c)))
	)

	(:action option-0-partition-1-11
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_21 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_21 ?c))))
	)

	(:action option-0-partition-1-12
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_1 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.887 (not (notfailed))
					0.113 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-13
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_17 ?b) (symbol_21 ?c) (symbol_12 ?d))
		:effect (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b)) (not (symbol_21 ?c)))
	)

	(:action option-0-partition-1-14
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_21 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.845 (not (notfailed))
					0.155 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_21 ?c))))
	)

	(:action option-0-partition-1-15
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_1 ?c) (symbol_12 ?d))
		:effect 
			(probabilistic
					0.844 (not (notfailed))
					0.156 (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b))))
	)

	(:action option-0-partition-1-16
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_21 ?c) (symbol_12 ?d))
		:effect (and (symbol_11 ?d) (symbol_1 ?c) (symbol_6 ?b) (not (symbol_12 ?d)) (not (symbol_17 ?b)) (not (symbol_21 ?c)))
	)

	(:action option-0-partition-2-17
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.214 (not (notfailed))
					0.786 (and (symbol_15 ?c) (symbol_16 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-18
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.111 (not (notfailed))
					0.889 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-19
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.111 (not (notfailed))
					0.889 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-20
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.151 (not (notfailed))
					0.849 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-0-21
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.121 (not (notfailed))
					0.879 (and (symbol_14 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-2-22
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_21 ?b) (symbol_20 ?c))
		:effect 
			(probabilistic
					0.14 (not (notfailed))
					0.86 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_20 ?c)) (not (symbol_21 ?b))))
	)

	(:action option-1-partition-2-23
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_18 ?a) (symbol_21 ?b) (symbol_20 ?c))
		:effect 
			(probabilistic
					0.665 (not (notfailed))
					0.335 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_20 ?c)) (not (symbol_21 ?b))))
	)

	(:action option-1-partition-2-24
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_21 ?b) (symbol_20 ?c))
		:effect (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_20 ?c)) (not (symbol_21 ?b)))
	)

	(:action option-1-partition-2-25
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_21 ?b) (symbol_20 ?c))
		:effect 
			(probabilistic
					0.2 (not (notfailed))
					0.8 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_20 ?c)) (not (symbol_21 ?b))))
	)

	(:action option-1-partition-2-26
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_21 ?b) (symbol_20 ?c))
		:effect 
			(probabilistic
					0.087 (not (notfailed))
					0.913 (and (symbol_12 ?c) (symbol_13 ?b) (not (symbol_20 ?c)) (not (symbol_21 ?b))))
	)

	(:action option-2-partition-0-27
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.062 (not (notfailed))
					0.938 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-28
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.088 (not (notfailed))
					0.912 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-29
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.225 (not (notfailed))
					0.775 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-0-30
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b))
		:effect 
			(probabilistic
					0.164 (not (notfailed))
					0.836 (and (symbol_1 ?b) (not (symbol_14 ?b))))
	)

	(:action option-2-partition-1-31
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.289 (not (notfailed))
					0.711 (and (symbol_21 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-32
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.268 (not (notfailed))
					0.732 (and (symbol_21 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-33
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.342 (not (notfailed))
					0.658 (and (symbol_21 ?b) (not (symbol_13 ?b))))
	)

	(:action option-2-partition-1-34
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_13 ?b))
		:effect 
			(probabilistic
					0.212 (not (notfailed))
					0.788 (and (symbol_21 ?b) (not (symbol_13 ?b))))
	)

	(:action option-3-partition-0-35
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.896 (not (notfailed))
					0.104 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-0-36
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.181 (not (notfailed))
					0.819 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-37
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.053 (not (notfailed))
					0.947 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-0-38
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_15 ?d))
		:effect (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?c)) (not (symbol_15 ?d)))
	)

	(:action option-3-partition-0-39
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.845 (not (notfailed))
					0.155 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-0-40
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.335 (not (notfailed))
					0.665 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-0-41
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.275 (not (notfailed))
					0.725 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_11 ?d)) (not (symbol_14 ?c))))
	)

	(:action option-3-partition-0-42
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_14 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.204 (not (notfailed))
					0.796 (and (symbol_12 ?d) (symbol_13 ?c) (symbol_17 ?b) (not (symbol_6 ?b)) (not (symbol_14 ?c)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-43
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.739 (not (notfailed))
					0.261 (and (symbol_20 ?d) (symbol_21 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-44
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.071 (not (notfailed))
					0.929 (and (symbol_20 ?d) (symbol_21 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-45
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.861 (not (notfailed))
					0.139 (and (symbol_20 ?d) (symbol_21 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-3-partition-1-46
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_15 ?d))
		:effect 
			(probabilistic
					0.411 (not (notfailed))
					0.589 (and (symbol_20 ?d) (symbol_21 ?c) (symbol_17 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_15 ?d))))
	)

	(:action option-4-partition-0-47
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.741 (not (notfailed))
					0.259 (and (symbol_18 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-48
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect 
			(probabilistic
					0.742 (not (notfailed))
					0.258 (symbol_18 ?a))
	)

	(:action option-4-partition-0-49
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.737 (not (notfailed))
					0.263 (and (symbol_18 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-0-50
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.74 (not (notfailed))
					0.26 (and (symbol_18 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-51
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.739 (not (notfailed))
					0.261 (and (symbol_18 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-52
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect (and (symbol_23 ?a) (not (symbol_10 ?a)))
	)

	(:action option-5-partition-0-53
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_18 ?a))
		:effect (and (symbol_23 ?a) (not (symbol_18 ?a)))
	)

	(:action option-5-partition-0-54
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect (and (symbol_23 ?a) (not (symbol_19 ?a)))
	)

	(:action option-5-partition-0-55
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect (and (symbol_23 ?a) (not (symbol_22 ?a)))
	)

	(:action option-5-partition-0-56
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect (symbol_23 ?a)
	)
)