;Automatically generated AosmEnv domain PPDDL file.
(define (domain AosmEnv)
	(:requirements :fluents :typing :strips :probabilistic-effects :rewards)

	(:types 
		type0 - object
		type1 - object
		CounterTop - object
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
		Shelf - object
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
		CoffeeMachine - object
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
		Mug - object
	)


	(:predicates
		(notfailed)
		(MugEmptyOnShelf ?a - Mug)
		(MachineOffEmpty ?a - CoffeeMachine)
		(ShelfEmpty ?a - Shelf)
		(ShelfHoldingMug ?a - Shelf)
		(ShelfEmpty2 ?a - Shelf)
		(CounterEmpty ?a - CounterTop)
		(CounterEmpty2 ?a - CounterTop)
		(CounterEmpty3 ?a - CounterTop)
		(symbol_8 ?a - type0 ?b - type1 ?c - type3 ?d - type4 ?e - type5 ?f - type6 ?g - type7 ?h - type8 ?i - type9 ?j - type10 ?k - type11 ?l - type12 ?m - type13 ?n - type15 ?o - type16 ?p - type17 ?q - type18 ?r - type19 ?s - type20 ?t - type21 ?u - type22 ?v - type23 ?w - type24 ?x - type25 ?y - type26 ?z - type27 ?A - type28 ?B - type29 ?C - type30 ?D - type31 ?E - type32 ?F - type34 ?G - type35 ?H - type36 ?I - type37 ?J - type38 ?K - type39 ?L - type40 ?M - type41 ?N - type42 ?O - type43)
		(symbol_9 ?a - type0 ?b - type1 ?c - type3 ?d - type4 ?e - type5 ?f - type6 ?g - type7 ?h - type8 ?i - type9 ?j - type10 ?k - type11 ?l - type12 ?m - type13 ?n - type15 ?o - type16 ?p - type17 ?q - type18 ?r - type19 ?s - type20 ?t - type21 ?u - type22 ?v - type23 ?w - type24 ?x - type25 ?y - type26 ?z - type27 ?A - type28 ?B - type29 ?C - type30 ?D - type31 ?E - type32 ?F - type34 ?G - type35 ?H - type36 ?I - type37 ?J - type38 ?K - type39 ?L - type40 ?M - type41 ?N - type42 ?O - type43)
		(MugFilledHeld ?a - Mug)
		(MachineOnEmpty ?a - CoffeeMachine)
		(MachineOnHoldingMug ?a - CoffeeMachine)
		(MugEmptyHeld ?a - Mug)
		(ShelfEmpty3 ?a - Shelf)
		(MugFilledInMachine ?a - Mug)
		(CounterHoldingMug ?a - CounterTop)
		(MachineOffHoldingMug ?a - CoffeeMachine)
		(MugEmptyInMachine ?a - Mug)
	)

	(:action PickupMug-partition-0-0
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterHoldingMug ?a) (MachineOffHoldingMug ?b) (MugFilledInMachine ?c))
		:effect (and (MugFilledHeld ?c) (MachineOffEmpty ?b) (CounterEmpty2 ?a) (not (MugFilledInMachine ?c)) (not (CounterHoldingMug ?a)) (not (MachineOffHoldingMug ?b)))
	)

	(:action PickupMug-partition-1-1
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterHoldingMug ?a) (MachineOnHoldingMug ?b) (MugFilledInMachine ?c))
		:effect (and (MugFilledHeld ?c) (MachineOnEmpty ?b) (CounterEmpty2 ?a) (not (MachineOnHoldingMug ?b)) (not (MugFilledInMachine ?c)) (not (CounterHoldingMug ?a)))
	)

	(:action PickupMug-partition-2-2
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterHoldingMug ?a) (MachineOffHoldingMug ?b) (MugEmptyInMachine ?c))
		:effect (and (MugEmptyHeld ?c) (MachineOffEmpty ?b) (CounterEmpty2 ?a) (not (CounterHoldingMug ?a)) (not (MachineOffHoldingMug ?b)) (not (MugEmptyInMachine ?c)))
	)

	(:action PickupMug-partition-3-3
		:parameters (?a - Shelf ?b - Mug)
		:precondition (and (notfailed) (ShelfHoldingMug ?a) (MugEmptyOnShelf ?b))
		:effect (and (MugEmptyHeld ?b) (ShelfEmpty3 ?a) (not (MugEmptyOnShelf ?b)) (not (ShelfHoldingMug ?a)))
	)

	(:action MachineOn-partition-0-4
		:parameters (?a - CoffeeMachine ?b - Mug)
		:precondition (and (notfailed) (MachineOffHoldingMug ?a) (MugEmptyInMachine ?b))
		:effect (and (MugFilledInMachine ?b) (MachineOnHoldingMug ?a) (not (MachineOffHoldingMug ?a)) (not (MugEmptyInMachine ?b)))
	)

	(:action MachineOn-partition-1-5
		:parameters (?a - CoffeeMachine)
		:precondition (and (notfailed) (MachineOffEmpty ?a))
		:effect (and (MachineOnEmpty ?a) (not (MachineOffEmpty ?a)))
	)

	(:action MachineOff-partition-0-6
		:parameters (?a - CoffeeMachine)
		:precondition (and (notfailed) (MachineOnHoldingMug ?a))
		:effect (and (MachineOffHoldingMug ?a) (not (MachineOnHoldingMug ?a)))
	)

	(:action MachineOff-partition-1-7
		:parameters (?a - CoffeeMachine)
		:precondition (and (notfailed) (MachineOnEmpty ?a))
		:effect (and (MachineOffEmpty ?a) (not (MachineOnEmpty ?a)))
	)

	(:action PutMugInMachine-partition-0-8
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterEmpty2 ?a) (MachineOnEmpty ?b) (MugFilledHeld ?c))
		:effect (and (MugFilledInMachine ?c) (MachineOnHoldingMug ?b) (CounterHoldingMug ?a) (not (CounterEmpty2 ?a)) (not (MugFilledHeld ?c)) (not (MachineOnEmpty ?b)))
	)

	(:action PutMugInMachine-partition-0-9
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterEmpty2 ?a) (MachineOnEmpty ?b) (MugEmptyHeld ?c))
		:effect (and (MugFilledInMachine ?c) (MachineOnHoldingMug ?b) (CounterHoldingMug ?a) (not (CounterEmpty2 ?a)) (not (MachineOnEmpty ?b)) (not (MugEmptyHeld ?c)))
	)

	(:action PutMugInMachine-partition-1-10
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterEmpty2 ?a) (MachineOffEmpty ?b) (MugEmptyHeld ?c))
		:effect (and (MugEmptyInMachine ?c) (MachineOffHoldingMug ?b) (CounterHoldingMug ?a) (not (MachineOffEmpty ?b)) (not (CounterEmpty2 ?a)) (not (MugEmptyHeld ?c)))
	)
)