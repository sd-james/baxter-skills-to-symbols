;Automatically generated AosmEnv domain PPDDL file.
(define (domain AosmEnv)
	(:requirements :fluents :typing :strips :probabilistic-effects :rewards)

	(:types 
		CoffeeMachine - object
		CounterTop - object
		Mug - object
		Shelf - object
	)


	(:predicates
		(notfailed)
		(MugFilledHeld ?a - Mug)
		(MachineOnEmpty ?a - CoffeeMachine)
		(CounterTopEmpty ?a - CounterTop)
		(MachineOnHoldingMug ?a - CoffeeMachine)
		(MugEmptyHeld ?a - Mug)
		(ShelfEmpty ?a - Shelf)
		(MachineOffEmpty ?a - CoffeeMachine)
		(MugFilledInMachine ?a - Mug)
		(CounterTopHoldingMug ?a - CounterTop)
		(MachineOffHoldingMug ?a - CoffeeMachine)
		(MugEmptyInMachine ?a - Mug)
	)

	(:action PickupMug-partition-0-0
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterTopHoldingMug ?a) (MachineOffHoldingMug ?b) (MugFilledInMachine ?c))
		:effect (and (MugFilledHeld ?c) (MachineOffEmpty ?b) (CounterTopEmpty ?a) (not (MugFilledInMachine ?c)) (not (CounterTopHoldingMug ?a)) (not (MachineOffHoldingMug ?b)))
	)

	(:action PickupMug-partition-1-1
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterTopHoldingMug ?a) (MachineOnHoldingMug ?b) (MugFilledInMachine ?c))
		:effect (and (MugFilledHeld ?c) (MachineOnEmpty ?b) (CounterTopEmpty ?a) (not (MachineOnHoldingMug ?b)) (not (MugFilledInMachine ?c)) (not (CounterTopHoldingMug ?a)))
	)

	(:action PickupMug-partition-2-2
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterTopHoldingMug ?a) (MachineOffHoldingMug ?b) (MugEmptyInMachine ?c))
		:effect (and (MugEmptyHeld ?c) (MachineOffEmpty ?b) (CounterTopEmpty ?a) (not (CounterTopHoldingMug ?a)) (not (MachineOffHoldingMug ?b)) (not (MugEmptyInMachine ?c)))
	)

	(:action MachineOn-partition-0-3
		:parameters (?a - CoffeeMachine ?b - Mug)
		:precondition (and (notfailed) (MachineOffHoldingMug ?a) (MugEmptyInMachine ?b))
		:effect (and (MugFilledInMachine ?b) (MachineOnHoldingMug ?a) (not (MachineOffHoldingMug ?a)) (not (MugEmptyInMachine ?b)))
	)

	(:action MachineOn-partition-1-4
		:parameters (?a - CoffeeMachine)
		:precondition (and (notfailed) (MachineOffEmpty ?a))
		:effect (and (MachineOnEmpty ?a) (not (MachineOffEmpty ?a)))
	)

	(:action MachineOff-partition-0-5
		:parameters (?a - CoffeeMachine)
		:precondition (and (notfailed) (MachineOnHoldingMug ?a))
		:effect (and (MachineOffHoldingMug ?a) (not (MachineOnHoldingMug ?a)))
	)

	(:action MachineOff-partition-1-6
		:parameters (?a - CoffeeMachine)
		:precondition (and (notfailed) (MachineOnEmpty ?a))
		:effect (and (MachineOffEmpty ?a) (not (MachineOnEmpty ?a)))
	)

	(:action PutMugInMachine-partition-0-7
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterTopEmpty ?a) (MachineOnEmpty ?b) (MugFilledHeld ?c))
		:effect (and (MugFilledInMachine ?c) (MachineOnHoldingMug ?b) (CounterTopHoldingMug ?a) (not (MugFilledHeld ?c)) (not (MachineOnEmpty ?b)) (not (CounterTopEmpty ?a)))
	)

	(:action PutMugInMachine-partition-0-8
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterTopEmpty ?a) (MachineOnEmpty ?b) (MugEmptyHeld ?c))
		:effect (and (MugFilledInMachine ?c) (MachineOnHoldingMug ?b) (CounterTopHoldingMug ?a) (not (MachineOnEmpty ?b)) (not (CounterTopEmpty ?a)) (not (MugEmptyHeld ?c)))
	)

	(:action PutMugInMachine-partition-1-9
		:parameters (?a - CounterTop ?b - CoffeeMachine ?c - Mug)
		:precondition (and (notfailed) (CounterTopEmpty ?a) (MachineOffEmpty ?b) (MugEmptyHeld ?c))
		:effect (and (MugEmptyInMachine ?c) (MachineOffHoldingMug ?b) (CounterTopHoldingMug ?a) (not (CounterTopEmpty ?a)) (not (MugEmptyHeld ?c)) (not (MachineOffEmpty ?b)))
	)
)