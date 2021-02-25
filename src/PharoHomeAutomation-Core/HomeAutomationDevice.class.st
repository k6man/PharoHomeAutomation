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
HomeAutomationDevice >> isCam: aBlock [
	self isCam ifTrue: [ aBlock value: self ].
]

{ #category : #accessing }
HomeAutomationDevice >> isDoor [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isDoor: aBlock [
	self isDoor ifTrue: [ aBlock value: self ].
]

{ #category : #accessing }
HomeAutomationDevice >> isDoorSwitch [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isDoorSwitch: aBlock [
	self isDoorSwitch ifTrue: [ aBlock value: self ].
]

{ #category : #accessing }
HomeAutomationDevice >> isHumidity [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isHumidity: aBlock [
	self isHumidity ifTrue: [ aBlock value: self ].
]

{ #category : #accessing }
HomeAutomationDevice >> isInRoom: aString [
	^(room = aString)
]

{ #category : #accessing }
HomeAutomationDevice >> isLight [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isLight: aBlock [
	self isLight ifTrue: [ aBlock value: self ].
]

{ #category : #accessing }
HomeAutomationDevice >> isLux [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isLux: aBlock [
	self isLux ifTrue: [ aBlock value: self ].
]

{ #category : #accessing }
HomeAutomationDevice >> isMqttDevice [
	^false.
]

{ #category : #accessing }
HomeAutomationDevice >> isMqttDevice: aBlock [
	self isMqttDevice  ifTrue: [ aBlock value: self ].
]

{ #category : #accessing }
HomeAutomationDevice >> isName: aString [
	^(name = aString)
]

{ #category : #accessing }
HomeAutomationDevice >> isNotify [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isNotify: aBlock [
	self isNotify ifTrue: [ aBlock value: self ].
]

{ #category : #accessing }
HomeAutomationDevice >> isPir [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isPir: aBlock [
	self isPir ifTrue: [ aBlock value: self ].
]

{ #category : #accessing }
HomeAutomationDevice >> isPressure [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isPressure: aBlock [
	self isPressure  ifTrue: [ aBlock value: self ].
]

{ #category : #accessing }
HomeAutomationDevice >> isTemperature [
	^ false.
]

{ #category : #accessing }
HomeAutomationDevice >> isTemperature: aBlock [
	self isTemperature  ifTrue: [ aBlock value: self ].
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
	"html paragraph: self asString."
	html strong: self name,' in ',self room.
]

{ #category : #accessing }
HomeAutomationDevice >> room [
	^ room
]

{ #category : #accessing }
HomeAutomationDevice >> room: aString [
	room := aString
]
