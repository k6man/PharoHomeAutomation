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
HomeAutomationDevice >> printOn: aStream [
	"Append to the argument, aStream, a sequence of characters that  
	identifies the receiver."

	aStream
		nextPutAll: self class name ;
		nextPutAll: ' named ''';
		nextPutAll: self name;
		nextPutAll: ''' in room ''';
		nextPutAll: self room;
		nextPutAll: ''''
]

{ #category : #accessing }
HomeAutomationDevice >> room [
	^ room
]

{ #category : #accessing }
HomeAutomationDevice >> room: aString [
	room := aString
]
