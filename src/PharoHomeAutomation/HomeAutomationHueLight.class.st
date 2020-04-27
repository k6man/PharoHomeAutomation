Class {
	#name : #HomeAutomationHueLight,
	#superclass : #HomeAutomationDevice,
	#traits : 'HomeAutomationDeviceLight',
	#classTraits : 'HomeAutomationDeviceLight classTrait',
	#instVars : [
		'id',
		'state'
	],
	#category : #PharoHomeAutomation
}

{ #category : #'instance creation' }
HomeAutomationHueLight class >> newWithId: aId named: devicename inRoom: deviceroom [
	"comment stating purpose of message"
	^(self new id: aId ; name: devicename ; room: deviceroom ; yourself).

]

{ #category : #accessing }
HomeAutomationHueLight >> brightness: aLevel [
	HueControler new group: id state: aLevel.
]

{ #category : #accessing }
HomeAutomationHueLight >> id [
	^ id
]

{ #category : #accessing }
HomeAutomationHueLight >> id: anObject [
	id := anObject
]

{ #category : #accessing }
HomeAutomationHueLight >> off [
	HueControler new light: id state: false.
]

{ #category : #accessing }
HomeAutomationHueLight >> on [
	HueControler new light: id state: true.
]

{ #category : #accessing }
HomeAutomationHueLight >> printOn: aStream [
	super printOn: aStream.
	aStream 
	nextPutAll: ' stat: '; nextPutAll: self state asString
]

{ #category : #accessing }
HomeAutomationHueLight >> state [
	^ state
]
