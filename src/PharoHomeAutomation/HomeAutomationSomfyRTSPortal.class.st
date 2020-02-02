Class {
	#name : #HomeAutomationSomfyRTSPortal,
	#superclass : #HomeAutomationDevice,
	#traits : 'HomeAutomationDeviceDoor',
	#classTraits : 'HomeAutomationDeviceDoor classTrait',
	#instVars : [
		'id'
	],
	#category : #PharoHomeAutomation
}

{ #category : #'instance creation' }
HomeAutomationSomfyRTSPortal class >> newWithId: aId named: devicename inRoom: deviceroom [
	"comment stating purpose of message"
	^(self new id: aId ; name: devicename ; room: deviceroom ; yourself).

]

{ #category : #API }
HomeAutomationSomfyRTSPortal >> close [
<script: '(HomeAutomationSomfyRTSPortal newWithid: ''A1'') close'>
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
<script: '(HomeAutomationSomfyRTSPortal newWithid: ''A1'') open'>
	"comment stating purpose of message"
	RfPlayerControler new somfyRts: true ;
	send: 'ON ',id,' RTS QUALIFIER 1'.
]
