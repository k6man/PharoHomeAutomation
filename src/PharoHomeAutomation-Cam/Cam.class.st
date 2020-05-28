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
	#category : #'PharoHomeAutomation-Cam'
}

{ #category : #accessing }
Cam >> snapshot [
	self subclassResponsibility
]
