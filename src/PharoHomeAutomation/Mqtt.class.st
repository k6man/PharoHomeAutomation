Class {
	#name : #Mqtt,
	#superclass : #MQTTClientInterface,
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
Mqtt class >> mqttSetting: aBuilder [
	<systemsettings>
		(aBuilder group: #mqtt)
		label: 'mqtt';
		description: 'All settings concerned Mqtt'.
		
	(aBuilder setting: #ip) 
		label: 'Mqtt Broker ip';
		description: 'Ip of your Mqtt Broker';
		setSelector: #ip:;
		getSelector: #ip;
		target: Mqtt;
		parent: #mqtt.
		
]

{ #category : #accessing }
Mqtt class >> open [ 
		"open a client on host from Mqtt setting"
    ^self openOnHostName: (self ip) keepAlive: 300
]
