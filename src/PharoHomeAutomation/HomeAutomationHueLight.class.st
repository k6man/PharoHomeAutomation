Class {
	#name : #HomeAutomationHueLight,
	#superclass : #HomeAutomationDevice,
	#traits : 'HomeAutomationDeviceLight',
	#classTraits : 'HomeAutomationDeviceLight classTrait',
	#instVars : [
		'id'
	],
	#category : #PharoHomeAutomation
}

{ #category : #'instance creation' }
HomeAutomationHueLight class >> newWithId: aId [
	"comment stating purpose of message"
	^self new id: aId ; yourself.

]

{ #category : #accessing }
HomeAutomationHueLight >> brightness: aLevel [
	Hue new group: id state: aLevel.
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
	Hue new light: id state: false.
]

{ #category : #accessing }
HomeAutomationHueLight >> on [
	Hue new light: id state: true.
]
