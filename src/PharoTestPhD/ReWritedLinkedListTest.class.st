Class {
	#name : #ReWritedLinkedListTest,
	#superclass : #TestCase,
	#category : #'PharoTestPhD-Tests'
}

{ #category : #tests }
ReWritedLinkedListTest >> testAddLast [
	| reWritedLinkedList reWritedLink reWritedLink2 |
	reWritedLinkedList  := ReWritedLinkedList new.
	reWritedLink := ReWritedLink new.
	reWritedLink elem:5.
	reWritedLinkedList add: reWritedLink.
	reWritedLink2 := ReWritedLink new.
	reWritedLink2 elem:8.
	reWritedLinkedList add: reWritedLink2.
	self assert: reWritedLinkedList lastElem elem equals:8
]

{ #category : #test }
ReWritedLinkedListTest >> testEmpty [
		| linkedList |
		
	linkedList := ReWritedLinkedList new.
	self assert: linkedList empty equals:true
]

{ #category : #test }
ReWritedLinkedListTest >> testEmpty2 [
		| linkedList reWritedLink |
		
	linkedList := ReWritedLinkedList new.
	reWritedLink := ReWritedLink  new.
	reWritedLink elem: 5.
	linkedList add: reWritedLink .
	self assert: linkedList empty equals:false
]

{ #category : #tests }
ReWritedLinkedListTest >> testEqualsLinkedList [

| reWritedLinkedList reWritedLink reWritedLink2 reWritedLink3  linkedList boolean|
	reWritedLinkedList  := ReWritedLinkedList new.
	reWritedLink := ReWritedLink new.
	reWritedLink elem:5.
	reWritedLinkedList add: reWritedLink.
	reWritedLink2 := ReWritedLink new.
	reWritedLink2 elem:8.
	reWritedLinkedList add: reWritedLink2.
	reWritedLink3 := ReWritedLink new.
	reWritedLink3 elem:5.
	linkedList := ReWritedLinkedList new.
	linkedList add:reWritedLink3; add: reWritedLink2 .
	boolean := reWritedLinkedList equalsLinkedList: linkedList.
	self assert:boolean equals:true
]

{ #category : #tests }
ReWritedLinkedListTest >> testRemove [
		
		| linkedList linkedList2 reWritedLink reWritedLink2 reWritedLink3 equality |
		
	linkedList := ReWritedLinkedList new.
	reWritedLink := ReWritedLink new.
	reWritedLink elem:5.
	reWritedLink2 := ReWritedLink new.
	reWritedLink2 elem:6.
	reWritedLink3 := ReWritedLink new.
	reWritedLink3 elem:7.
	linkedList add: reWritedLink; add: reWritedLink2; add: reWritedLink3.
	linkedList remove:7.
	linkedList2 := ReWritedLinkedList new.
	linkedList2 add: reWritedLink; add: reWritedLink2.
	equality := linkedList equalsLinkedList: linkedList2.
	self assert: equality equals: true
]

{ #category : #test }
ReWritedLinkedListTest >> testSize [
		| linkedList reWritedLink reWritedLink2 |
		
	linkedList := ReWritedLinkedList new.
	reWritedLink := ReWritedLink new.
	reWritedLink elem:5.
	reWritedLink2 := ReWritedLink new.
	reWritedLink2 elem:6.
	linkedList add: reWritedLink; add: reWritedLink2.
	self assert: linkedList size equals:2
]

{ #category : #tests }
ReWritedLinkedListTest >> testSize2 [
		| linkedList reWritedLink |
		
	linkedList := ReWritedLinkedList new.
	reWritedLink := ReWritedLink new.
	reWritedLink elem:5.
	linkedList add: reWritedLink.
	self assert: linkedList size equals:1
]
