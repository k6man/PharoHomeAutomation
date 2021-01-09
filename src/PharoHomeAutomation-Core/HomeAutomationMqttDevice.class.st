Class {
	#name : #HomeAutomationMqttDevice,
	#superclass : #HomeAutomationDevice,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
HomeAutomationMqttDevice >> isMqttDevice [
	^true.
]

{ #category : #accessing }
HomeAutomationMqttDevice >> matchingTopic: aTopicString [ 
	^aTopicString asTopic matchingTopic: self rootTopic.
]

{ #category : #accessing }
HomeAutomationMqttDevice >> rootTopic [
" rootTopic must be define by all Mqtt device to retrive this device when message arrive "
	^ '#'
]
