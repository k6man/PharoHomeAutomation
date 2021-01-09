Class {
	#name : #HomeAutomationSomfyRTSPortal,
	#superclass : #HomeAutomationMqttDevice,
	#instVars : [
		'id'
	],
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #'instance creation' }
HomeAutomationSomfyRTSPortal class >> newWithId: aId named: devicename inRoom: deviceroom [
	"comment stating purpose of message"
	^(self new id: aId ; name: devicename ; room: deviceroom ; yourself).

]

{ #category : #API }
HomeAutomationSomfyRTSPortal >> close [
<script: '(HomeAutomationSomfyRTSPortal newWithId: ''A1'' named: ''portail'' inRoom: ''jardin'' ) close'>
	"comment stating purpose of message"
	RfPlayerControler new somfyRts: true ;
	send: 'OFF ',id,' RTS QUALIFIER 1'.

]

{ #category : #accessing }
HomeAutomationSomfyRTSPortal >> id [
	^ id
]

{ #category : #accessing }
HomeAutomationSomfyRTSPortal >> id: anObject [
	id := anObject
]

{ #category : #API }
HomeAutomationSomfyRTSPortal >> open [
<script: '(HomeAutomationSomfyRTSPortal newWithId: ''A1'' named: ''portail'' inRoom: ''jardin'' ) open'>
	"comment stating purpose of message"
	RfPlayerControler new somfyRts: true ;
	send: 'ON ',id,' RTS QUALIFIER 1'.
]
