Class {
	#name : #Mqtt,
	#superclass : #Object,
	#classInstVars : [
		'ip',
		'key'
	],
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
Mqtt class >> ip [
	^ ip ifNil: [ip := 'localhost']

]

{ #category : #accessing }
Mqtt class >> ip: anObject [
	ip := anObject
]

{ #category : #accessing }
Mqtt class >> open [ 
		"open a client on host from Mqtt setting"
    "^self openOnHostName: (self ip) port: 1883 keepAlive: 300"
]

{ #category : #accessing }
Mqtt class >> systemSettings: aBuilder [
	<systemsettings>
		(aBuilder group: #Mqtt)
		label: 'Mqtt';
		description: 'All settings concerned Mqtt'.
		
	(aBuilder setting: #ip) 
		label: 'Mqtt Broker ip';
		description: 'Ip of your Mqtt Broker';
		setSelector: #ip:;
		getSelector: #ip;
		target: Mqtt;
		parent: #Mqtt.
		
]

{ #category : #initialization }
Mqtt >> initialize [ 
	"comment stating purpose of message"
	| stop "count"|
	"count := 0."
	stop := true.
MQTTClient new
		 host: Mqtt ip;
       open;
       subscribeToTopic: 'zwave/cuisine/pir/48/1/0';
       runWith: [ :message |
			"WorldHomeAutomation announcer announce: (
				HomeAutomationZwaveAnnoucement fromSTONJSON: ( STONJSON fromString: message message asString )
			)."
			"message inspect."
			
			Transcript cr.
			Transcript show: message topic;cr.
			Transcript show: message message asString;cr.
			message message asString inspect.
			"count := count +1."
         "(count >= 1) ifTrue: [ ConnectionClosed signal ]."
			message message asString == 'true' ifTrue:[ MyHue new onCuisine].
			message message asString == 'false' ifTrue:[ MyHue new offCuisine].
		 ]
]
