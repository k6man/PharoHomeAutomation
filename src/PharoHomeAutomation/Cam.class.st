Class {
	#name : #Cam,
	#superclass : #HomeAutomationDevice,
	#traits : 'HomeAutomationDeviceCam',
	#classTraits : 'HomeAutomationDeviceCam classTrait',
	#instVars : [
		'ip',
		'passwd',
		'login'
	],
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
Cam >> snapshot [
	self subclassResponsibility
]
