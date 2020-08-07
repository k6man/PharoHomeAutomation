Class {
	#name : #HomeAutomationDeviceAnnoucement,
	#superclass : #HomeAutomationAnnoucement,
	#instVars : [
		'device'
	],
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
HomeAutomationDeviceAnnoucement >> device [
	^ device
]

{ #category : #accessing }
HomeAutomationDeviceAnnoucement >> device: anObject [
	device := anObject
]
