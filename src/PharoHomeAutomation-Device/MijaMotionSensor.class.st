Class {
	#name : #MijaMotionSensor,
	#superclass : #HomeAutomationZigbeeDevice,
	#traits : 'THomeAutomationDevicePir + THomeAutomationDeviceBattery',
	#classTraits : 'THomeAutomationDevicePir classTrait + THomeAutomationDeviceBattery classTrait',
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #accessing }
MijaMotionSensor >> battery [
	^self json at:'battery'.
]

{ #category : #accessing }
MijaMotionSensor >> move [
	^self json at:'occupancy'.

]

{ #category : #accessing }
MijaMotionSensor >> printOn: aStream [
	super printOn: aStream.
	aStream 
	nextPutAll: ' move: '; nextPutAll: self move asString;
	nextPutAll: ' battery: '; nextPutAll: self battery asString
]
