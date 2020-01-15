Class {
	#name : #HomeAutomationActuator,
	#superclass : #HomeAutomationDevice,
	#category : #PharoHomeAutomation
}

{ #category : #api }
HomeAutomationActuator >> level: aLevel [
	"comment stating purpose of message"
self isSubclassResponsibility.
]

{ #category : #api }
HomeAutomationActuator >> off [
	"comment stating purpose of message"
self isSubclassResponsibility.
]

{ #category : #api }
HomeAutomationActuator >> on [
	"comment stating purpose of message"
self isSubclassResponsibility.
]
