Class {
	#name : #HomeAutomationDevice,
	#superclass : #Object,
	#instVars : [
		'name',
		'room',
		'interface'
	],
	#category : #'PharoHomeAutomation-Core'
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
HomeAutomationDevice >> isCam [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isDoor [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isDoorSwitch [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isHumidity [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isLight [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isLux [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isMqttDevice [
	^false.
]

{ #category : #accessing }
HomeAutomationDevice >> isNotify [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isPir [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isPressure [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isTemperature [
	^ false.
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
HomeAutomationDevice >> renderContentOn: html [
	html paragraph: self asString.

]

{ #category : #accessing }
HomeAutomationDevice >> room [
	^ room
]

{ #category : #accessing }
HomeAutomationDevice >> room: aString [
	room := aString
]
