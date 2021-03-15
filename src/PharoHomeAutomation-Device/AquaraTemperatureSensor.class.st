Class {
	#name : #AquaraTemperatureSensor,
	#superclass : #HomeAutomationZigbeeDevice,
	#traits : 'THomeAutomationDeviceTemperature + THomeAutomationDeviceHumidity + THomeAutomationDevicePressure + THomeAutomationDeviceBattery',
	#classTraits : 'THomeAutomationDeviceTemperature classTrait + THomeAutomationDeviceHumidity classTrait + THomeAutomationDevicePressure classTrait + THomeAutomationDeviceBattery classTrait',
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #accessing }
AquaraTemperatureSensor >> battery [
	^self json at:'battery' ifAbsent: [nil].
]

{ #category : #accessing }
AquaraTemperatureSensor >> humidity [
		^self json at: 'humidity' ifAbsent: [nil].
]

{ #category : #accessing }
AquaraTemperatureSensor >> pressure [
		^self json at: 'pressure' ifAbsent: [nil].
]

{ #category : #accessing }
AquaraTemperatureSensor >> printOn: aStream [
	super printOn: aStream.
	aStream 
	nextPutAll: ' temperature: '; nextPutAll: self temperature asString;
	nextPutAll: ' humidity '; nextPutAll: self humidity  asString;
	nextPutAll: ' pressure '; nextPutAll: self pressure asString;
	nextPutAll: ' battery: '; nextPutAll: self battery asString
]

{ #category : #accessing }
AquaraTemperatureSensor >> temperature [
		^self json at: 'temperature' ifAbsent: [nil].
]
