Class {
	#name : #HomeAutomationHueGroup,
	#superclass : #HomeAutomationDevice,
	#traits : 'THomeAutomationDeviceLight',
	#classTraits : 'THomeAutomationDeviceLight classTrait',
	#instVars : [
		'id',
		'state'
	],
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #'instance creation' }
HomeAutomationHueGroup class >> newWithId: aId named: devicename inRoom: deviceroom [
	"comment stating purpose of message"
	^(self new id: aId ; name: devicename ; room: deviceroom ; yourself).

]

{ #category : #accessing }
HomeAutomationHueGroup >> brightness: aLevel [
	HueControler new group: id state: ((aLevel * 255 / 100) truncated).
]

{ #category : #accessing }
HomeAutomationHueGroup >> id [
	^ id
]

{ #category : #accessing }
HomeAutomationHueGroup >> id: anObject [
	id := anObject
]

{ #category : #accessing }
HomeAutomationHueGroup >> off [
	HueControler new group: id state: false.
	state := false.
]

{ #category : #accessing }
HomeAutomationHueGroup >> on [
	HueControler new group: id state: true.
	state := true.
]

{ #category : #accessing }
HomeAutomationHueGroup >> printOn: aStream [
	super printOn: aStream.
	aStream 
	nextPutAll: ' stat: '; nextPutAll: self state asString
]

{ #category : #accessing }
HomeAutomationHueGroup >> state [
	^ state
]
