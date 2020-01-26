Class {
	#name : #HomeAutomationHueGroup,
	#superclass : #HomeAutomationDevice,
	#traits : 'HomeAutomationDeviceLight',
	#classTraits : 'HomeAutomationDeviceLight classTrait',
	#instVars : [
		'id'
	],
	#category : #PharoHomeAutomation
}

{ #category : #'instance creation' }
HomeAutomationHueGroup class >> newWithId: aId named: devicename inRoom: deviceroom [
	"comment stating purpose of message"
	^(self new id: aId ; name: devicename ; room: deviceroom ; yourself).

]

{ #category : #accessing }
HomeAutomationHueGroup >> brightness: aLevel [
	Hue new group: id state: aLevel.
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
	Hue new group: id state: false.
]

{ #category : #accessing }
HomeAutomationHueGroup >> on [
	Hue new group: id state: true.
]
