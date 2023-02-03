 (define (problem p1)
	(:domain AosmEnv)

	(:objects
		object-0 - type0
		object-1 - type0
		object-2 - type0
		object-3 - type0
		object-4 - type1
		object-5 - type1
		object-6 - type1
		object-7 - type1
		object-8 - type1
		object-9 - type1
		object-10 - type1
		object-11 - type1
		object-12 - type1
		CounterTop-13 - type2
		CounterTop-14 - type2
		CounterTop-15 - type2
		object-16 - type3
		object-17 - type3
		object-18 - type3
		object-19 - type3
		object-20 - type3
		object-21 - type3
		object-22 - type3
		object-23 - type3
		object-24 - type3
		object-25 - type4
		object-26 - type4
		object-27 - type4
		object-28 - type4
		object-29 - type5
		object-30 - type6
		object-31 - type7
		object-32 - type8
		object-33 - type9
		object-34 - type10
		object-35 - type11
		object-36 - type12
		object-37 - type13
		Shelf-38 - type14
		Shelf-39 - type14
		Shelf-40 - type14
		object-41 - type15
		object-42 - type16
		object-43 - type17
		object-44 - type18
		object-45 - type19
		object-46 - type20
		object-47 - type21
		object-48 - type22
		object-49 - type23
		object-50 - type23
		object-51 - type24
		object-52 - type25
		object-53 - type26
		object-54 - type27
		object-55 - type28
		object-56 - type29
		object-57 - type30
		object-58 - type31
		object-59 - type32
		CoffeeMachine-60 - type33
		object-61 - type34
		object-62 - type35
		object-63 - type36
		object-64 - type37
		object-65 - type38
		object-66 - type39
		object-67 - type40
		object-68 - type41
		object-69 - type42
		object-70 - type43
		Mug-71 - type44
		object-72 - type45
		object-73 - type46
		object-74 - type47
		object-75 - type47
		object-76 - type48
	)

	(:init
		(notfailed)
		(symbol_5 CounterTop-13)
		(symbol_6 CounterTop-14)
		(symbol_7 CounterTop-15)
		(symbol_2 Shelf-38)
		(symbol_4 Shelf-39)
		(symbol_3 Shelf-40)
		(symbol_1 CoffeeMachine-60)
		(symbol_0 Mug-71)
	)

	(:goal
		(and (notfailed) (symbol_1 CoffeeMachine-60) (symbol_13 Mug-71))
	)
)