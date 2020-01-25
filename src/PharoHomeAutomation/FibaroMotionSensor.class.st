Class {
	#name : #FibaroMotionSensor,
	#superclass : #HomeAutomationZwaveDevice,
	#traits : 'HomeAutomationDevicePir + HomeAutomationDeviceLux + HomeAutomationDeviceTemp',
	#classTraits : 'HomeAutomationDevicePir classTrait + HomeAutomationDeviceLux classTrait + HomeAutomationDeviceTemp classTrait',
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
FibaroMotionSensor >> lux [
	^WorldHomeAutomation mqtt numberValueFromTopic: 'zwave/',room,'/',name,'/49/1/3'.
]

{ #category : #accessing }
FibaroMotionSensor >> move [
	"comment stating purpose of message"
	^WorldHomeAutomation mqtt booleanValueFromTopic: 'zwave/',room,'/',name,'/48/1/0'.

]

{ #category : #accessing }
FibaroMotionSensor >> temp [
	"comment stating purpose of message"
	^WorldHomeAutomation mqtt numberValueFromTopic: 'zwave/',room,'/',name,'/49/1/1'.
]
