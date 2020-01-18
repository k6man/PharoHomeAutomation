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
