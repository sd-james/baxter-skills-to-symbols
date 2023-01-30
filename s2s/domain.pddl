;Automatically generated AosmEnv domain PPDDL file.
(define (domain AosmEnv)
	(:requirements :strips :probabilistic-effects :rewards)

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
		(symbol_8 ?a - type0 ?b - type1 ?c - type3 ?d - type4 ?e - type5 ?f - type6 ?g - type7 ?h - type8 ?i - type9 ?j - type10 ?k - type11 ?l - type12 ?m - type13 ?n - type15 ?o - type16 ?p - type17 ?q - type18 ?r - type19 ?s - type20 ?t - type21 ?u - type22 ?v - type23 ?w - type24 ?x - type25 ?y - type26 ?z - type27 ?A - type28 ?B - type29 ?C - type30 ?D - type31 ?E - type32 ?F - type34 ?G - type35 ?H - type36 ?I - type37 ?J - type38 ?K - type39 ?L - type40 ?M - type41 ?N - type42 ?O - type43)
		(symbol_9 ?a - type0 ?b - type1 ?c - type3 ?d - type4 ?e - type5 ?f - type6 ?g - type7 ?h - type8 ?i - type9 ?j - type10 ?k - type11 ?l - type12 ?m - type13 ?n - type15 ?o - type16 ?p - type17 ?q - type18 ?r - type19 ?s - type20 ?t - type21 ?u - type22 ?v - type23 ?w - type24 ?x - type25 ?y - type26 ?z - type27 ?A - type28 ?B - type29 ?C - type30 ?D - type31 ?E - type32 ?F - type34 ?G - type35 ?H - type36 ?I - type37 ?J - type38 ?K - type39 ?L - type40 ?M - type41 ?N - type42 ?O - type43)
		(symbol_10 ?a - type44)
		(symbol_11 ?a - type33)
		(symbol_12 ?a - type33)
		(symbol_13 ?a - type44)
		(symbol_14 ?a - type14)
		(symbol_15 ?a - type44)
		(symbol_16 ?a - type2)
		(symbol_17 ?a - type33)
		(symbol_18 ?a - type44)
	)

	(:action option-0-partition-0-0
		:parameters ()
		:precondition (and (notfailed) (symbol_16 ?a - type2) (symbol_17 ?a - type33) (symbol_15 ?a - type44))
		:effect (and (symbol_10 ?a - type44) (symbol_1 ?a - type33) (symbol_6 ?a - type2) (not (symbol_15 ?a - type44)) (not (symbol_16 ?a - type2)) (not (symbol_17 ?a - type33)))
	)

	(:action option-0-partition-1-1
		:parameters ()
		:precondition (and (notfailed) (symbol_16 ?a - type2) (symbol_12 ?a - type33) (symbol_15 ?a - type44))
		:effect (and (symbol_10 ?a - type44) (symbol_11 ?a - type33) (symbol_6 ?a - type2) (not (symbol_12 ?a - type33)) (not (symbol_15 ?a - type44)) (not (symbol_16 ?a - type2)))
	)

	(:action option-0-partition-2-2
		:parameters ()
		:precondition (and (notfailed) (symbol_16 ?a - type2) (symbol_17 ?a - type33) (symbol_18 ?a - type44))
		:effect (and (symbol_13 ?a - type44) (symbol_1 ?a - type33) (symbol_6 ?a - type2) (not (symbol_16 ?a - type2)) (not (symbol_17 ?a - type33)) (not (symbol_18 ?a - type44)))
	)

	(:action option-0-partition-3-3
		:parameters ()
		:precondition (and (notfailed) (symbol_3 ?a - type14) (symbol_0 ?a - type44))
		:effect (and (symbol_13 ?a - type44) (symbol_14 ?a - type14) (not (symbol_0 ?a - type44)) (not (symbol_3 ?a - type14)))
	)

	(:action option-1-partition-0-4
		:parameters ()
		:precondition (and (notfailed) (symbol_17 ?a - type33) (symbol_18 ?a - type44))
		:effect (and (symbol_15 ?a - type44) (symbol_12 ?a - type33) (not (symbol_17 ?a - type33)) (not (symbol_18 ?a - type44)))
	)

	(:action option-1-partition-1-5
		:parameters ()
		:precondition (and (notfailed) (symbol_1 ?a - type33))
		:effect (and (symbol_11 ?a - type33) (not (symbol_1 ?a - type33)))
	)

	(:action option-2-partition-0-6
		:parameters ()
		:precondition (and (notfailed) (symbol_12 ?a - type33))
		:effect (and (symbol_17 ?a - type33) (not (symbol_12 ?a - type33)))
	)

	(:action option-2-partition-1-7
		:parameters ()
		:precondition (and (notfailed) (symbol_11 ?a - type33))
		:effect (and (symbol_1 ?a - type33) (not (symbol_11 ?a - type33)))
	)

	(:action option-3-partition-0-8
		:parameters ()
		:precondition (and (notfailed) (symbol_6 ?a - type2) (symbol_11 ?a - type33) (symbol_10 ?a - type44))
		:effect (and (symbol_15 ?a - type44) (symbol_12 ?a - type33) (symbol_16 ?a - type2) (not (symbol_6 ?a - type2)) (not (symbol_10 ?a - type44)) (not (symbol_11 ?a - type33)))
	)

	(:action option-3-partition-0-9
		:parameters ()
		:precondition (and (notfailed) (symbol_6 ?a - type2) (symbol_11 ?a - type33) (symbol_13 ?a - type44))
		:effect (and (symbol_15 ?a - type44) (symbol_12 ?a - type33) (symbol_16 ?a - type2) (not (symbol_6 ?a - type2)) (not (symbol_11 ?a - type33)) (not (symbol_13 ?a - type44)))
	)

	(:action option-3-partition-1-10
		:parameters ()
		:precondition (and (notfailed) (symbol_6 ?a - type2) (symbol_1 ?a - type33) (symbol_13 ?a - type44))
		:effect (and (symbol_18 ?a - type44) (symbol_17 ?a - type33) (symbol_16 ?a - type2) (not (symbol_1 ?a - type33)) (not (symbol_6 ?a - type2)) (not (symbol_13 ?a - type44)))
	)
)