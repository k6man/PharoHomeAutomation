Class {
	#name : #HomeAutomationZigbeeDevice,
	#superclass : #HomeAutomationMqttDevice,
	#instVars : [
		'id'
	],
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #'instance creation' }
HomeAutomationZigbeeDevice class >> newWithId: aId named: devicename inRoom: deviceroom [
	"comment stating purpose of message"
	^(self new id: aId ; name: devicename ; room: deviceroom ; yourself).
]

{ #category : #accessing }
HomeAutomationZigbeeDevice >> id [
	^ id
]

{ #category : #accessing }
HomeAutomationZigbeeDevice >> id: anObject [
	id := anObject
]

{ #category : #accessing }
HomeAutomationZigbeeDevice >> json [
	^WorldHomeAutomation mqtt jsonValueFromTopic: self rootTopic.
]

{ #category : #accessing }
HomeAutomationZigbeeDevice >> rootTopic [
	^ 'zigbee2mqtt/',self id.
]
