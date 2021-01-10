Class {
	#name : #Cam,
	#superclass : #HomeAutomationMqttDevice,
	#traits : 'THomeAutomationDeviceCam',
	#classTraits : 'THomeAutomationDeviceCam classTrait',
	#instVars : [
		'ip',
		'passwd',
		'login'
	],
	#category : #'PharoHomeAutomation-Cam'
}

{ #category : #accessing }
Cam >> snapshot [
	self subclassResponsibility
]
