Class {
	#name : #ReWritedLinkedListTest,
	#superclass : #TestCase,
	#category : #'PharoTestPhD-Tests'
}

{ #category : #tests }
ReWritedLinkedListTest >> testAdding [
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
