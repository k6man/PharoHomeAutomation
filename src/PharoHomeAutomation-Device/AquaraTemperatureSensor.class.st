Class {
	#name : #AquaraTemperatureSensor,
	#superclass : #HomeAutomationZigbeeDevice,
	#traits : 'THomeAutomationDeviceTemperature + THomeAutomationDeviceHumidity + THomeAutomationDevicePressure',
	#classTraits : 'THomeAutomationDeviceTemperature classTrait + THomeAutomationDeviceHumidity classTrait + THomeAutomationDevicePressure classTrait',
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #accessing }
AquaraTemperatureSensor >> battery [
	^self json at:'battery'.
]

{ #category : #accessing }
AquaraTemperatureSensor >> humidity [
		^self json at: 'humidity'.
]

{ #category : #accessing }
AquaraTemperatureSensor >> pressure [
		^self json at: 'pressure'.
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
AquaraTemperatureSensor >> renderContentOn: html [ 
	"self traitConflict"
<renderContentOn: true>
	html paragraph: self asString.
	"self renderContentOnPir: html;
		renderContentOnLux: html;
		renderContentOnTemp: html."
	self flag: #TODO.
]

{ #category : #accessing }
AquaraTemperatureSensor >> temperature [
		^self json at: 'temperature'.
]