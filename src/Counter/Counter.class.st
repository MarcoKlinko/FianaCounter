"
'Counter' is a simple concrete class which upports incrementing and decrementing.
Its API is
- 'decrement' and 'increment'
- 'count'
- Its creation message is 'startAt:'
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'Counter',
	#package : 'Counter'
}

{ #category : 'accessing' }
Counter class >> startingAt: anInteger [
	^self new count: anInteger 
]

{ #category : 'accessing' }
Counter >> count [
	^ count 
]

{ #category : 'accessing' }
Counter >> count: anInteger [
	count := anInteger .
]

{ #category : 'API' }
Counter >> decrement [ 
	count := count -1
]

{ #category : 'accessing' }
Counter >> increment [ 
	count := count +1 
	
]

{ #category : 'initialization' }
Counter >> initialize [ 
	super initialize .
	count := 0
]

{ #category : 'printing' }
Counter >> printOn: aStream [
	super printOn: aStream .
	aStream nextPutAll: 'with value: ', count printString. 
]
