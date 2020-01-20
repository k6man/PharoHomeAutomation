Class {
	#name : #HomeAutomationZwaveAnnoucement,
	#superclass : #HomeAutomationDeviceAnnoucement,
	#instVars : [
		'message'
	],
	#category : #PharoHomeAutomation
}

{ #category : #'instance creation' }
HomeAutomationZwaveAnnoucement class >> fromSTONJSON: aSTONJSON [
	"comment stating purpose of message"
	^self new message: aSTONJSON.
]

{ #category : #accessing }
HomeAutomationZwaveAnnoucement >> message [
	^ message
]

{ #category : #accessing }
HomeAutomationZwaveAnnoucement >> message: anObject [
	message := anObject
]
