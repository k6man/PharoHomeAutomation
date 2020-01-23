Class {
	#name : #HomeAutomationZwaveDevice,
	#superclass : #HomeAutomationDevice,
	#instVars : [
		'id'
	],
	#category : #PharoHomeAutomation
}

{ #category : #'instance creation' }
HomeAutomationZwaveDevice class >> newNamed: aStringName inRoom: aStringRoom [
	"comment stating purpose of message"
	^self new name: aStringName; room: aStringRoom; yourself.
]

{ #category : #accessing }
HomeAutomationZwaveDevice >> id [
	^ id
]

{ #category : #accessing }
HomeAutomationZwaveDevice >> id: anObject [
	id := anObject
]
