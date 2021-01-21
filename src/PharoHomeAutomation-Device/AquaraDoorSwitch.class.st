Class {
	#name : #AquaraDoorSwitch,
	#superclass : #HomeAutomationZigbeeDevice,
	#traits : 'THomeAutomationDeviceDoorSwitch',
	#classTraits : 'THomeAutomationDeviceDoorSwitch classTrait',
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #accessing }
AquaraDoorSwitch >> battery [
	^self json at:'battery'.
]

{ #category : #accessing }
AquaraDoorSwitch >> isClosed [
		^self json at: 'contact'.
]

{ #category : #accessing }
AquaraDoorSwitch >> isOpened [
		^(self json at: 'contact') not.
]

{ #category : #accessing }
AquaraDoorSwitch >> json [
	^WorldHomeAutomation mqtt jsonValueFromTopic: self rootTopic.
]

{ #category : #accessing }
AquaraDoorSwitch >> lux [
		^self json at: 'illuminance_lux'.
]

{ #category : #accessing }
AquaraDoorSwitch >> move [
	^self json at:'occupancy'.

]

{ #category : #accessing }
AquaraDoorSwitch >> printOn: aStream [
	super printOn: aStream.
	aStream 
	nextPutAll: ' opened: '; nextPutAll: self isOpened asString;
	nextPutAll: ' battery: '; nextPutAll: self battery asString
]

{ #category : #accessing }
AquaraDoorSwitch >> renderContentOn: html [ 
	"self traitConflict"
<renderContentOn: true>
	html paragraph: self asString.
	"self renderContentOnPir: html;
		renderContentOnLux: html;
		renderContentOnTemp: html."
	self flag: #TODO.
]
