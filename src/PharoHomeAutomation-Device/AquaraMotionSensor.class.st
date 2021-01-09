Class {
	#name : #AquaraMotionSensor,
	#superclass : #HomeAutomationZigbeeDevice,
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #accessing }
AquaraMotionSensor >> battery [
	^self json at:'battery'.
]

{ #category : #accessing }
AquaraMotionSensor >> json [
	^WorldHomeAutomation mqtt jsonValueFromTopic: self rootTopic.
]

{ #category : #accessing }
AquaraMotionSensor >> lux [
		^self json at: 'illuminance_lux'.
]

{ #category : #accessing }
AquaraMotionSensor >> move [
	^self json at:'occupancy'.

]

{ #category : #accessing }
AquaraMotionSensor >> printOn: aStream [
	super printOn: aStream.
	aStream 
	nextPutAll: ' lux: '; nextPutAll: self lux asString;
	nextPutAll: ' move: '; nextPutAll: self move asString;
	nextPutAll: ' battery: '; nextPutAll: self battery asString
]

{ #category : #accessing }
AquaraMotionSensor >> renderContentOn: html [ 
	"self traitConflict"
<renderContentOn: true>
	html paragraph: self asString.
	"self renderContentOnPir: html;
		renderContentOnLux: html;
		renderContentOnTemp: html."
	self flag: #TODO.
]
