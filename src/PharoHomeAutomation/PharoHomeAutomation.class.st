"
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
		'announcer'
	],
	#category : #PharoHomeAutomation
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
	 item value name = deviceName and:  item value room = roomName]) value.
]

{ #category : #accessing }
PharoHomeAutomation >> devices [
	^ devices
]

{ #category : #initialization }
PharoHomeAutomation >> initialize [ 
<script: 'PharoHomeAutomation launch'>
	""
	devices := Dictionary new.
	notifiers := Dictionary new.
	announcer := Announcer new.
	announcer when: HomeAutomationAnnoucement send: #runScripts to: self.    

	HomeAutomationTimer terminate.
	timer := HomeAutomationTimer new.
		
	HomeAutomationMqtt terminate.
	mqtt := HomeAutomationMqtt new.

	Smalltalk at: #WorldHomeAutomation put: self.


]

{ #category : #initialization }
PharoHomeAutomation >> mqtt [
	^ mqtt.

]

{ #category : #accessing }
PharoHomeAutomation >> notify: aString [
	notifiers do: [ :n | n value notify: aString].
]

{ #category : #'as yet unclassified' }
PharoHomeAutomation >> runScripts [
	"Call all message class with pragma <HomeAutomationScriptToRun:true>"
((PragmaCollector filter: [:prg | 
		prg selector = #'HomeAutomationScriptToRun:' 
		and: [ (prg argumentAt: 1)  ] ]
) reset collected) do: [ :pragma | pragma methodClass executeMethod: pragma method].
]
