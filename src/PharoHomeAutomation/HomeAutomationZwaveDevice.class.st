Class {
	#name : #HomeAutomationZwaveDevice,
	#superclass : #HomeAutomationDevice,
	#category : #PharoHomeAutomation
}

{ #category : #'instance creation' }
HomeAutomationZwaveDevice class >> newNamed: aStringName inRoom: aStringRoom [
	"comment stating purpose of message"
	^self new name: aStringName; room: aStringRoom; yourself.
]
