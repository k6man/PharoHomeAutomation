Class {
	#name : #AquaraMotionSensor,
	#superclass : #HomeAutomationZigbeeDevice,
	#traits : 'THomeAutomationDevicePir + THomeAutomationDeviceLux + THomeAutomationDeviceBattery',
	#classTraits : 'THomeAutomationDevicePir classTrait + THomeAutomationDeviceLux classTrait + THomeAutomationDeviceBattery classTrait',
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #accessing }
AquaraMotionSensor >> battery [
	^self json at:'battery' ifAbsent: [nil].
]

{ #category : #accessing }
AquaraMotionSensor >> lux [
		^self json at: 'illuminance_lux' ifAbsent: [nil].
]

{ #category : #accessing }
AquaraMotionSensor >> move [
	^self json at:'occupancy' ifAbsent: [nil].

]

{ #category : #accessing }
AquaraMotionSensor >> printOn: aStream [
	super printOn: aStream.
	aStream 
	nextPutAll: ' lux: '; nextPutAll: self lux asString;
	nextPutAll: ' move: '; nextPutAll: self move asString;
	nextPutAll: ' battery: '; nextPutAll: self battery asString
]
