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

{ #category : #accessing }
HomeAutomationDeviceAnnoucement >> isDeviceAnnoucement [
	^true.
]

{ #category : #accessing }
HomeAutomationDeviceAnnoucement >> isDeviceAnnoucement: aBlock [
	^device ifNotNil: [ :dev |aBlock value: dev ].
]
