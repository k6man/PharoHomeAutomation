Class {
	#name : #HomeAutomationDeviceAnnoucement,
	#superclass : #HomeAutomationAnnoucement,
	#instVars : [
		'device'
	],
	#category : #PharoHomeAutomation
}

{ #category : #'instance creation' }
HomeAutomationDeviceAnnoucement class >> for: aHomeAutomationDevice [
^self new device: aHomeAutomationDevice.
]

{ #category : #accessing }
HomeAutomationDeviceAnnoucement >> device [
	^ device
]

{ #category : #accessing }
HomeAutomationDeviceAnnoucement >> device: anObject [
	device := anObject
]
