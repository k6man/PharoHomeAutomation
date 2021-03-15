Class {
	#name : #AquaraDoorSwitch,
	#superclass : #HomeAutomationZigbeeDevice,
	#traits : 'THomeAutomationDeviceDoorSwitch + THomeAutomationDeviceBattery',
	#classTraits : 'THomeAutomationDeviceDoorSwitch classTrait + THomeAutomationDeviceBattery classTrait',
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #accessing }
AquaraDoorSwitch >> battery [
	^self json at:'battery' ifAbsent: [nil].
]

{ #category : #accessing }
AquaraDoorSwitch >> isClosed [
		^self json at: 'contact' ifAbsent: [nil].
]

{ #category : #accessing }
AquaraDoorSwitch >> isOpened [
		^self isClosed ifNil: [ nil ] ifNotNil: [ :stat | stat not ].
]

{ #category : #accessing }
AquaraDoorSwitch >> lux [
		^self json at: 'illuminance_lux' ifAbsent: [nil].
]

{ #category : #accessing }
AquaraDoorSwitch >> move [
	^self json at:'occupancy' ifAbsent: [nil].

]

{ #category : #accessing }
AquaraDoorSwitch >> printOn: aStream [
	super printOn: aStream.
	aStream 
	nextPutAll: ' opened: '; nextPutAll: self isOpened asString;
	nextPutAll: ' battery: '; nextPutAll: self battery asString
]
