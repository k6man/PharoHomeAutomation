Class {
	#name : #HomeAutomationDevice,
	#superclass : #Object,
	#instVars : [
		'name',
		'room',
		'interface'
	],
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
HomeAutomationDevice >> interface [
	^ interface
]

{ #category : #accessing }
HomeAutomationDevice >> interface: anObject [
	interface := anObject
]

{ #category : #accessing }
HomeAutomationDevice >> name [
	^ name
]

{ #category : #accessing }
HomeAutomationDevice >> name: aString [
	name := aString
]

{ #category : #accessing }
HomeAutomationDevice >> room [
	^ room
]

{ #category : #accessing }
HomeAutomationDevice >> room: aString [
	room := aString
]
