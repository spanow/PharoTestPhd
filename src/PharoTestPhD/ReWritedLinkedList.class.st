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

{ #category : #requirements }
ReWritedLinkedList >> empty [
 ^ self size==0
	
]

{ #category : #comparing }
ReWritedLinkedList >> equalsLinkedList: linkedList [

	| currentSelf currentParam boolean size|
	
	size := self size = linkedList size.
	size
	ifFalse: [ ^false ].
	
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

{ #category : #comparing }
ReWritedLinkedList >> print [
	| currentSelf collection|

	
	
	self empty
	ifTrue: ['The linked list is empty' asMorph openInWindow]. 
	
	currentSelf := self firstElem.
	collection := OrderedCollection new.

	[ currentSelf isNotNil] whileTrue: [ collection add: currentSelf elem . 
													currentSelf := currentSelf nextReWritedLink.].
												
	collection asMorph openInWindow.
]

{ #category : #comparing }
ReWritedLinkedList >> printAsAnOrderedCollection [
	| currentSelf collection|

	
	
	self empty
	ifTrue: ['The linked list is empty' asMorph openInWindow]. 
	
	currentSelf := self firstElem.
	collection := OrderedCollection new.

	[ currentSelf isNotNil] whileTrue: [ collection add: currentSelf elem . 
													currentSelf := currentSelf nextReWritedLink.].
												
	collection asMorph openInWindow.
]

{ #category : #comparing }
ReWritedLinkedList >> remove: element [
	| currentSelf linkedList|
	
	linkedList:= ReWritedLinkedList new.

	currentSelf := self firstElem.
	[ currentSelf isNotNil] whileTrue:[ 
													currentSelf elem = element
													ifTrue: [ currentSelf := currentSelf nextReWritedLink.
														linkedList add:currentSelf.]
													ifFalse: [  linkedList add:currentSelf.].
													currentSelf isNotNil 
													ifTrue: [ currentSelf := currentSelf nextReWritedLink. ]
													].
	
	linkedList print
]

{ #category : #comparing }
ReWritedLinkedList >> size [

	| currentSelf size|
	
	size := 0.
	currentSelf := self firstElem.
	
	[ currentSelf isNotNil] whileTrue: [ size := size +1.
													currentSelf := currentSelf nextReWritedLink.].
	
	^size.
]
