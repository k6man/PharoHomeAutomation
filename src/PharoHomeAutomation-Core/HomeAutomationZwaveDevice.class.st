Class {
	#name : #HomeAutomationZwaveDevice,
	#superclass : #HomeAutomationMqttDevice,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #'instance creation' }
HomeAutomationZwaveDevice class >> newNamed: aStringName inRoom: aStringRoom [
	"comment stating purpose of message"
	^self new name: aStringName; room: aStringRoom; yourself.
]

{ #category : #accessing }
HomeAutomationZwaveDevice >> rootTopic [
	^ 'zwave/',self room,'/',self name,'/#'
]
