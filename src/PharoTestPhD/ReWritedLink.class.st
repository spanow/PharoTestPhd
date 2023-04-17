"
Class: ReWritedLink

This is the rewrite of the link between elements of a rewritedLinkedList
"
Class {
	#name : #ReWritedLink,
	#superclass : #Object,
	#instVars : [
		'elem',
		'nextReWritedLink'
	],
	#category : #PharoTestPhD
}

{ #category : #accessing }
ReWritedLink >> elem [
	
	^elem
]

{ #category : #accessing }
ReWritedLink >> elem: newElem [
	
	elem := newElem 
]

{ #category : #accessing }
ReWritedLink >> nextReWritedLink [
	
	^nextReWritedLink
]

{ #category : #accessing }
ReWritedLink >> nextReWritedLink: newNextReWritedLink [
	
	nextReWritedLink := newNextReWritedLink 
]
