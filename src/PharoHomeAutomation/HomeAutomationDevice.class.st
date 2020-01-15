Class {
	#name : #HomeAutomationDevice,
	#superclass : #Object,
	#instVars : [
		'name',
		'location'
	],
	#category : #PharoHomeAutomation
}

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
