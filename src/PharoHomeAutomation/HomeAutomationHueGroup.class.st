Class {
	#name : #HomeAutomationHueGroup,
	#superclass : #HomeAutomationLight,
	#instVars : [
		'id'
	],
	#category : #PharoHomeAutomation
}

{ #category : #'instance creation' }
HomeAutomationHueGroup class >> newWithId: aId [
	"comment stating purpose of message"
	^self new id: aId ; yourself.

]

{ #category : #accessing }
HomeAutomationHueGroup >> id [
	^ id
]

{ #category : #accessing }
HomeAutomationHueGroup >> id: anObject [
	id := anObject
]

{ #category : #accessing }
HomeAutomationHueGroup >> level: aLevel [
	Hue new group: id state: aLevel.
]

{ #category : #accessing }
HomeAutomationHueGroup >> off [
	Hue new group: id state: false.
]

{ #category : #accessing }
HomeAutomationHueGroup >> on [
	Hue new group: id state: true.
]
