Class {
	#name : #HomeAutomationDevice,
	#superclass : #Object,
	#instVars : [
		'name',
		'location',
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
HomeAutomationDevice >> location [
	^ location
]

{ #category : #accessing }
HomeAutomationDevice >> location: anObject [
	location := anObject
]

{ #category : #accessing }
HomeAutomationDevice >> name [
	^ name
]

{ #category : #accessing }
HomeAutomationDevice >> name: anObject [
	name := anObject
]
