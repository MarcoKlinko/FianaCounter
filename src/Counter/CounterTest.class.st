Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'Counter',
	#package : 'Counter'
}

{ #category : 'tests' }
CounterTest >> testAlternateCreationMethod [ 
	self assert: ((Counter startingAt: 19)increment; count) equals: 20
]

{ #category : 'tests' }
CounterTest >> testCountIsSetAndRead [ 
	| c |
	c := Counter new.
	c count: 6.
	self assert: c count equals: 6
]

{ #category : 'tests' }
CounterTest >> testCounterStartingAt5 [ 
	self assert: (Counter startingAt: 5) count equals: 5
]

{ #category : 'tests' }
CounterTest >> testDecrement [ 
	| c |
	c:= Counter new.
	c count: 0; decrement; decrement .
	self assert: c count equals: -2
]

{ #category : 'tests' }
CounterTest >> testIncrement [ 
	| c |
	c:= Counter new.
	c count:0; increment; increment.
	self assert: c count equals: 2
]

{ #category : 'tests' }
CounterTest >> testInitialize [ 
	self assert: Counter new count equals: 0
]
