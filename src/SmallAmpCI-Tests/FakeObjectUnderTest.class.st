Class {
	#name : #FakeObjectUnderTest,
	#superclass : #Object,
	#category : #'SmallAmpCI-Tests'
}

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> doCrash [
	Smalltalk exitFailure
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> doCrash: anInt [
	[ 1 / anInt ] on: Error do:  [ self doCrash  ]
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> doFreeze [
	Semaphore new wait
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> doFreeze: anInt [
	[ 1 / anInt ] on: Error do:  [ self doFreeze  ] 
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> echo: obj [
	^ obj
]

{ #category : #'as yet unclassified' }
FakeObjectUnderTest >> someAction: anInt [
	anInt = 0 ifTrue: [ ^ 0 ] ifFalse: [ ^ 1 ]
]
