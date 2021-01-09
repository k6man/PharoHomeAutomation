Class {
	#name : #Cam,
	#superclass : #HomeAutomationMqttDevice,
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
