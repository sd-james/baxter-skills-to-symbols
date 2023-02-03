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

	(:action option-0-partition-0-0
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-0-partition-0-1
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_14 ?c)) (not (symbol_15 ?b)) (not (symbol_16 ?d))))
	)

	(:action option-0-partition-0-2
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_15 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-0-partition-0-3
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_16 ?d)) (not (symbol_17 ?c)))
	)

	(:action option-0-partition-0-4
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_16 ?d))))
	)

	(:action option-0-partition-0-5
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.837 (not (notfailed))
					0.163 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-0-partition-0-6
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.837 (not (notfailed))
					0.163 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_14 ?c)) (not (symbol_15 ?b)) (not (symbol_16 ?d))))
	)

	(:action option-0-partition-0-7
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.837 (not (notfailed))
					0.163 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_15 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-0-partition-0-8
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_16 ?d)) (not (symbol_17 ?c)))
	)

	(:action option-0-partition-0-9
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.838 (not (notfailed))
					0.162 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_16 ?d))))
	)

	(:action option-0-partition-0-10
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.839 (not (notfailed))
					0.161 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-0-partition-0-11
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.839 (not (notfailed))
					0.161 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_14 ?c)) (not (symbol_15 ?b)) (not (symbol_16 ?d))))
	)

	(:action option-0-partition-0-12
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.839 (not (notfailed))
					0.161 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_15 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-0-partition-0-13
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_16 ?d)) (not (symbol_17 ?c)))
	)

	(:action option-0-partition-0-14
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.839 (not (notfailed))
					0.161 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_16 ?d))))
	)

	(:action option-0-partition-0-15
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.497 (not (notfailed))
					0.503 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_16 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-0-partition-0-16
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.843 (not (notfailed))
					0.157 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_16 ?d)) (not (symbol_17 ?c))))
	)

	(:action option-0-partition-0-17
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_15 ?b) (symbol_14 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.844 (not (notfailed))
					0.156 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_14 ?c)) (not (symbol_15 ?b)) (not (symbol_16 ?d))))
	)

	(:action option-0-partition-0-18
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_13 ?d))
		:effect 
			(probabilistic
					0.842 (not (notfailed))
					0.158 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_13 ?d)) (not (symbol_15 ?b)) (not (symbol_17 ?c))))
	)

	(:action option-0-partition-0-19
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_15 ?b) (symbol_17 ?c) (symbol_16 ?d))
		:effect (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_16 ?d)) (not (symbol_17 ?c)))
	)

	(:action option-0-partition-0-20
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_15 ?b) (symbol_18 ?c) (symbol_16 ?d))
		:effect 
			(probabilistic
					0.842 (not (notfailed))
					0.158 (and (symbol_21 ?d) (symbol_18 ?c) (symbol_6 ?b) (not (symbol_15 ?b)) (not (symbol_16 ?d))))
	)

	(:action option-0-partition-1-21
		:parameters (?a - type-1 ?b - type14 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_3 ?b) (symbol_0 ?c))
		:effect 
			(probabilistic
					0.264 (not (notfailed))
					0.736 (and (symbol_11 ?c) (symbol_12 ?b) (not (symbol_0 ?c)) (not (symbol_3 ?b))))
	)

	(:action option-1-partition-0-22
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.782 (not (notfailed))
					0.218 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-23
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.068 (not (notfailed))
					0.932 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-24
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.834 (not (notfailed))
					0.166 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-25
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.835 (not (notfailed))
					0.165 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-26
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.805 (not (notfailed))
					0.195 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-27
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.118 (not (notfailed))
					0.882 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-28
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.848 (not (notfailed))
					0.152 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-29
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.849 (not (notfailed))
					0.151 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-30
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.793 (not (notfailed))
					0.207 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-31
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.085 (not (notfailed))
					0.915 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-32
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.811 (not (notfailed))
					0.189 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-33
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_17 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.812 (not (notfailed))
					0.188 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-34
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-35
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_22 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.627 (not (notfailed))
					0.373 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-36
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.856 (not (notfailed))
					0.144 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-37
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.311 (not (notfailed))
					0.689 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-38
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-39
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_17 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-40
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.806 (not (notfailed))
					0.194 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_1 ?b)) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-0-41
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_14 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.149 (not (notfailed))
					0.851 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c)) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-42
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_14 ?b) (symbol_16 ?c))
		:effect 
			(probabilistic
					0.847 (not (notfailed))
					0.153 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_14 ?b))))
	)

	(:action option-1-partition-0-43
		:parameters (?a - type-1 ?b - type33 ?c - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_17 ?b) (symbol_13 ?c))
		:effect 
			(probabilistic
					0.849 (not (notfailed))
					0.151 (and (symbol_16 ?c) (symbol_17 ?b) (not (symbol_13 ?c))))
	)

	(:action option-1-partition-1-44
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.165 (not (notfailed))
					0.835 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-45
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.155 (not (notfailed))
					0.845 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-46
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.322 (not (notfailed))
					0.678 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-47
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.832 (not (notfailed))
					0.168 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-1-partition-1-48
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_1 ?b))
		:effect 
			(probabilistic
					0.214 (not (notfailed))
					0.786 (and (symbol_18 ?b) (not (symbol_1 ?b))))
	)

	(:action option-2-partition-0-49
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.53 (not (notfailed))
					0.47 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-0-50
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.399 (not (notfailed))
					0.601 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-0-51
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_17 ?b))
		:effect 
			(probabilistic
					0.592 (not (notfailed))
					0.408 (and (symbol_14 ?b) (not (symbol_17 ?b))))
	)

	(:action option-2-partition-1-52
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.133 (not (notfailed))
					0.867 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-53
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.164 (not (notfailed))
					0.836 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-54
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.145 (not (notfailed))
					0.855 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-55
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.825 (not (notfailed))
					0.175 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-2-partition-1-56
		:parameters (?a - type-1 ?b - type33)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_18 ?b))
		:effect 
			(probabilistic
					0.235 (not (notfailed))
					0.765 (and (symbol_1 ?b) (not (symbol_18 ?b))))
	)

	(:action option-3-partition-0-57
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_10 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.089 (not (notfailed))
					0.911 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-58
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_19 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.209 (not (notfailed))
					0.791 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-59
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_20 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.106 (not (notfailed))
					0.894 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-60
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_23 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.442 (not (notfailed))
					0.558 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-3-partition-0-61
		:parameters (?a - type-1 ?b - type2 ?c - type33 ?d - type44)
		:precondition (and (notfailed) (symbol_24 ?a) (symbol_6 ?b) (symbol_1 ?c) (symbol_11 ?d))
		:effect 
			(probabilistic
					0.256 (not (notfailed))
					0.744 (and (symbol_13 ?d) (symbol_14 ?c) (symbol_15 ?b) (not (symbol_1 ?c)) (not (symbol_6 ?b)) (not (symbol_11 ?d))))
	)

	(:action option-4-partition-0-62
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.812 (not (notfailed))
					0.188 (and (symbol_19 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-0-63
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.798 (not (notfailed))
					0.202 (symbol_19 ?a))
	)

	(:action option-4-partition-0-64
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.812 (not (notfailed))
					0.188 (and (symbol_19 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-0-65
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.811 (not (notfailed))
					0.189 (and (symbol_19 ?a) (not (symbol_22 ?a))))
	)

	(:action option-4-partition-0-66
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.807 (not (notfailed))
					0.193 (and (symbol_19 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-0-67
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.802 (not (notfailed))
					0.198 (and (symbol_19 ?a) (not (symbol_24 ?a))))
	)

	(:action option-4-partition-1-68
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.633 (not (notfailed))
					0.367 (and (symbol_22 ?a) (not (symbol_10 ?a))))
	)

	(:action option-4-partition-1-69
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.691 (not (notfailed))
					0.309 (and (symbol_22 ?a) (not (symbol_19 ?a))))
	)

	(:action option-4-partition-1-70
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.732 (not (notfailed))
					0.268 (and (symbol_22 ?a) (not (symbol_20 ?a))))
	)

	(:action option-4-partition-1-71
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.865 (not (notfailed))
					0.135 (symbol_22 ?a))
	)

	(:action option-4-partition-1-72
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.71 (not (notfailed))
					0.29 (and (symbol_22 ?a) (not (symbol_23 ?a))))
	)

	(:action option-4-partition-1-73
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.72 (not (notfailed))
					0.28 (and (symbol_22 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-0-74
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.264 (not (notfailed))
					0.736 (and (symbol_24 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-0-75
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.24 (not (notfailed))
					0.76 (and (symbol_24 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-0-76
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.23 (not (notfailed))
					0.77 (and (symbol_24 ?a) (not (symbol_20 ?a))))
	)

	(:action option-5-partition-0-77
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.531 (not (notfailed))
					0.469 (and (symbol_24 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-0-78
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.511 (not (notfailed))
					0.489 (and (symbol_24 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-0-79
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.265 (not (notfailed))
					0.735 (symbol_24 ?a))
	)

	(:action option-5-partition-1-80
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_10 ?a))
		:effect 
			(probabilistic
					0.886 (not (notfailed))
					0.114 (and (symbol_20 ?a) (not (symbol_10 ?a))))
	)

	(:action option-5-partition-1-81
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.875 (not (notfailed))
					0.125 (and (symbol_20 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-1-82
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_20 ?a))
		:effect 
			(probabilistic
					0.884 (not (notfailed))
					0.116 (symbol_20 ?a))
	)

	(:action option-5-partition-1-83
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_22 ?a))
		:effect 
			(probabilistic
					0.708 (not (notfailed))
					0.292 (and (symbol_20 ?a) (not (symbol_22 ?a))))
	)

	(:action option-5-partition-1-84
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.771 (not (notfailed))
					0.229 (and (symbol_20 ?a) (not (symbol_23 ?a))))
	)

	(:action option-5-partition-1-85
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.872 (not (notfailed))
					0.128 (and (symbol_20 ?a) (not (symbol_24 ?a))))
	)

	(:action option-5-partition-2-86
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_19 ?a))
		:effect 
			(probabilistic
					0.899 (not (notfailed))
					0.101 (and (symbol_23 ?a) (not (symbol_19 ?a))))
	)

	(:action option-5-partition-2-87
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_23 ?a))
		:effect 
			(probabilistic
					0.84 (not (notfailed))
					0.16 (symbol_23 ?a))
	)

	(:action option-5-partition-2-88
		:parameters (?a - type-1)
		:precondition (and (notfailed) (symbol_24 ?a))
		:effect 
			(probabilistic
					0.898 (not (notfailed))
					0.102 (and (symbol_23 ?a) (not (symbol_24 ?a))))
	)
)