"
Load by:
Metacello new
  baseline: 'PharoHomeAutomation';
  repository: 'github://k6man/PharoHomeAutomation';
load.

Home Automation  Application:
PharoHomeAutomation new.

acces by global: 
WorldHomeAutomation


Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	buttonReboot:		<Object>
	labelStatus:		<Object>


    Implementation Points
"
Class {
	#name : #PharoHomeAutomation,
	#superclass : #Object,
	#instVars : [
		'devices',
		'notifiers',
		'timer',
		'mqtt',
		'announcer',
		'scripts'
	],
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
PharoHomeAutomation class >> launch [
<script>
	"Start a new global instance, called WorldHomeAutomation"
	^self new
]

{ #category : #accessing }
PharoHomeAutomation class >> systemSettings: aBuilder [
	<systemsettings>
		(aBuilder group: #PharoHomeAutomation)
		label: 'Pharo Home Automation';
		description: 'All settings concerned Pharo Home Automation'.

		
]

{ #category : #initialization }
PharoHomeAutomation >> announcer [
	^ announcer

]

{ #category : #accessing }
PharoHomeAutomation >> deviceNamed: deviceName inRoom: roomName [
	^(devices detect: [ :item |
	 item name = deviceName and:  item room = roomName] ifNone: [ ^nil]).

]

{ #category : #accessing }
PharoHomeAutomation >> devices [
<script: 'WorldHomeAutomation devices inspect'>
	^ devices
]

{ #category : #accessing }
PharoHomeAutomation >> devicesInRoom: roomName [
	^devices select: [ :device | device room = roomName].

]

{ #category : #'as yet unclassified' }
PharoHomeAutomation >> externalIp [
<script: 'WorldHomeAutomation externalIp inspect'>
	"Ip seen from internet"
^ (ZnEasy get: 'https://ipecho.net/plain' asUrl) contents. 
]

{ #category : #initialization }
PharoHomeAutomation >> initialize [
	""

	<script: 'PharoHomeAutomation launch'>
	devices := Dictionary new.
	scripts := Dictionary new.
	notifiers := Dictionary new.
	announcer := Announcer new.
	announcer weak
		when: HomeAutomationAnnoucement
		send: #runScriptsFor:
		to: self.
	HomeAutomationTimer terminate.
	timer := HomeAutomationTimer new.
	HomeAutomationMqtt terminate.
	mqtt := HomeAutomationMqtt new.
	WorldHomeAutomation
		ifNil: [ Smalltalk at: #WorldHomeAutomation put: self ]
		ifNotNil: [ WorldHomeAutomation becomeForward: self ]
]

{ #category : #initialization }
PharoHomeAutomation >> mqtt [
	^ mqtt.

]

{ #category : #accessing }
PharoHomeAutomation >> notify: aString [
	('notify: ',aString) traceCr. 
	notifiers valuesDo: [ :n | n notify: aString].
]

{ #category : #accessing }
PharoHomeAutomation >> rooms [
<script: 'WorldHomeAutomation rooms inspect'>
	| rooms |
	rooms := Set new.
	devices valuesDo: [ :d |
	  rooms add: d room].
	^rooms
]

{ #category : #'as yet unclassified' }
PharoHomeAutomation >> runScriptsFor: anAnnouncement [
"plus utilisé: 
Call all message class with pragma <homeAutomationScriptToRunWhen: anAnnouncement className asSymbol>"
"((PragmaCollector filter: [:prg | 
		prg selector = #'homeAutomationScriptToRunWhen:' 
		and: [ 
			(prg argumentAt: 1) = anAnnouncement className asSymbol
			]
	 ]
) reset collected) do: [ :pragma | 
	pragma methodClass allInstancesDo: [ :object |
	 object withArgs: { anAnnouncement } executeMethod: pragma method] ]."

	"Call all script object"
	scripts do: [ :s| s run: anAnnouncement ].
]
