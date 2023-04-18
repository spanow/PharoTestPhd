"
Class: ReWritedLinkedList
                                                                                                    
Rewrited version of the linked list

"
Class {
	#name : #ReWritedLinkedList,
	#superclass : #Object,
	#instVars : [
		'firstElem',
		'lastElem'
	],
	#category : #PharoTestPhD
}

{ #category : #comparing }
ReWritedLinkedList class >> equalsLinkedList2: linkedList [

	| currentSelf currentParam boolean |
	
	
	currentSelf := self firstElem .
	currentParam := linkedList firstElem  .
	
	[ currentSelf isNotNil] whileTrue: [ boolean := currentSelf elem = currentParam elem.
													boolean
													ifFalse: [ ^false ].
													Halt now.
													currentSelf := currentSelf nextReWritedLink.
													currentParam := currentParam nextReWritedLink. ].
	
	^true.
]

{ #category : #comparing }
ReWritedLinkedList class >> equalsLinkedList2: linkedList secondList: linkedList2 [

	| currentSelf currentParam boolean |
	
	
	currentSelf := linkedList2 firstElem .
	currentParam := linkedList firstElem  .
	
	[ currentSelf isNotNil] whileTrue: [ boolean := currentSelf elem = currentParam elem.
													boolean
													ifFalse: [ ^false ].
													Halt now.
													currentSelf := currentSelf nextReWritedLink.
													currentParam := currentParam nextReWritedLink. ].
	
	^true.
]

{ #category : #accessing }
ReWritedLinkedList class >> getFirstElem: linkedList [ 
	^linkedList firstElem
]

{ #category : #adding }
ReWritedLinkedList >> add:element [
	^ self addLast: element  
]

{ #category : #adding }
ReWritedLinkedList >> addLast:aLink [
	|link|
	link := aLink.
	lastElem ifNotNil: [ lastElem nextReWritedLink: aLink ].
	firstElem ifNil: [ firstElem := aLink ].
	lastElem  := aLink.
	^ link
]

{ #category : #comparing }
ReWritedLinkedList >> equalsLinkedList: linkedList [

	| currentSelf currentParam boolean |
	
	
	currentSelf := self firstElem.
	currentParam := linkedList firstElem  .
	[ currentSelf isNotNil] whileTrue: [ boolean := currentSelf elem = currentParam elem.
													boolean
													ifFalse: [ ^false ].
													
													currentSelf := currentSelf nextReWritedLink.
													currentParam := currentParam nextReWritedLink. ].
	
	^true.
]

{ #category : #comparing }
ReWritedLinkedList >> firstElem [
	
	^firstElem.
]

{ #category : #accessing }
ReWritedLinkedList >> firstElem: element [
	^ element firstElem. 
]

{ #category : #accessing }
ReWritedLinkedList >> lastElem [
	^lastElem
]

{ #category : #accessing }
ReWritedLinkedList >> lastElem: element [
	lastElem:= element 
]
