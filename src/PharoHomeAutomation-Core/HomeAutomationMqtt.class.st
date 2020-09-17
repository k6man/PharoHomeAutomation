Class {
	#name : #HomeAutomationMqtt,
	#superclass : #MQTTClient,
	#instVars : [
		'topicDictionnary',
		'process'
	],
	#classInstVars : [
		'ip',
		'key'
	],
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
HomeAutomationMqtt class >> ip [
	^ ip ifNil: [ip := 'localhost']

]

{ #category : #accessing }
HomeAutomationMqtt class >> ip: anObject [
	ip := anObject
]

{ #category : #accessing }
HomeAutomationMqtt class >> systemSettings: aBuilder [
	<systemsettings>
		(aBuilder group: #HomeAutomationMqtt)
		label: #HomeAutomationMqtt;
		description: 'All settings concerned Mqtt'.
		
	(aBuilder setting: #ip) 
		label: 'Mqtt Broker ip';
		description: 'Ip of your Mqtt Broker';
		setSelector: #ip:;
		getSelector: #ip;
		target: HomeAutomationMqtt;
		parent: #HomeAutomationMqtt.
		
]

{ #category : #accessing }
HomeAutomationMqtt class >> terminate [
	self allInstances do: [ :mqtt | mqtt terminate].

]

{ #category : #initialization }
HomeAutomationMqtt >> booleanValueFromTopic: aTopicString [ 
	"return the payload of the 'aTopicString'"
	^(topicDictionnary at: aTopicString ifAbsent: ['false']) asString = 'true'
		 ifTrue: [true]
		 ifFalse: [ false ]
]

{ #category : #initialization }
HomeAutomationMqtt >> initialize [ 
	"comment stating purpose of message"
	super initialize.
	topicDictionnary := Dictionary new.
	
	"clean old process"
	"Process allInstancesDo: [ :process | (process name = self className) ifTrue: process terminate  ]."
	"MQTTClientInterface  allInstances do: [ :e | e stop ]."
	" Create new process "
    process:= [  
		 self host: HomeAutomationMqtt ip;
       open;
       subscribeToTopic: 'zwave/#';
       runWith: [ :message |
			|topic device |
				topicDictionnary at: message topic put: message message.
				"HomeAutomationZwaveAnnoucement fromSTONJSON: ( STONJSON fromString: message message asString )"
				topic := message topic asZwaveTopic.
				device := WorldHomeAutomation deviceNamed: topic deviceName inRoom: topic roomName.
				self traceCr: message topic.
			WorldHomeAutomation announcer announce: (HomeAutomationDeviceAnnoucement new device: device) .
		 ]
	 ] forkNamed: self className.
]

{ #category : #initialization }
HomeAutomationMqtt >> numberValueFromTopic: aTopicString [ 
	"retunr the payload of the 'aTopicString'"
	^(topicDictionnary at: aTopicString ifAbsent: [0]) asString asNumber.
]

{ #category : #'initialize-release' }
HomeAutomationMqtt >> terminate [
	"comment stating purpose of message"
	^process terminate.
]

{ #category : #initialization }
HomeAutomationMqtt >> valueFromTopic: aTopicString [ 
	"retunr the payload of the 'aTopicString'"
	^topicDictionnary at: aTopicString.
]
