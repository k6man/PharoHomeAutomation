Class {
	#name : #FibaroMotionSensor,
	#superclass : #HomeAutomationZwaveDevice,
	#traits : 'HomeAutomationDevicePir + HomeAutomationDeviceLux + HomeAutomationDeviceTemp',
	#classTraits : 'HomeAutomationDevicePir classTrait + HomeAutomationDeviceLux classTrait + HomeAutomationDeviceTemp classTrait',
	#instVars : [
		'move',
		'lux',
		'temp'
	],
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
FibaroMotionSensor >> lux [
	^lux.
]

{ #category : #accessing }
FibaroMotionSensor >> move [
	"comment stating purpose of message"
	^move.
]

{ #category : #accessing }
FibaroMotionSensor >> temp [
	"comment stating purpose of message"
	^temp.
]
