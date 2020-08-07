Class {
	#name : #FibaroMotionSensor,
	#superclass : #HomeAutomationZwaveDevice,
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #accessing }
FibaroMotionSensor >> lux [
	^WorldHomeAutomation mqtt numberValueFromTopic: 'zwave/',room,'/',name,'/49/1/3'.
]

{ #category : #accessing }
FibaroMotionSensor >> move [
	"comment stating purpose of message"
	^WorldHomeAutomation mqtt booleanValueFromTopic: 'zwave/',room,'/',name,'/48/1/0'.

]

{ #category : #accessing }
FibaroMotionSensor >> printOn: aStream [
	super printOn: aStream.
	aStream 
	nextPutAll: ' lux: '; nextPutAll: self lux asString;
	nextPutAll: ' move: '; nextPutAll: self move asString;
	nextPutAll: ' temp: '; nextPutAll: self temp asString
]

{ #category : #accessing }
FibaroMotionSensor >> renderContentOn: html [ 
	"self traitConflict"
<renderContentOn: true>
	html paragraph: self asString.
	"self renderContentOnPir: html;
		renderContentOnLux: html;
		renderContentOnTemp: html."
	self flag: #TODO.
]

{ #category : #accessing }
FibaroMotionSensor >> temp [
	"comment stating purpose of message"
	^WorldHomeAutomation mqtt numberValueFromTopic: 'zwave/',room,'/',name,'/49/1/1'.
]
