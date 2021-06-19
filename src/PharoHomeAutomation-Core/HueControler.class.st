"
Hue new groups.
Hue new lights.
HueWidget new openWithSpec .
Hue new group: '6' state: true. ""cuisine""
Hue new group: '6' state: false.
Hue new light: '5' state: true. ""cuisine""
Hue new light: '5' state: 255. ""cuisine""
Hue new light: '5' state: 50. ""cuisine""
Hue new light: '5' state: false.

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


    Implementation Points
"
Class {
	#name : #HueControler,
	#superclass : #Object,
	#classInstVars : [
		'ip',
		'key'
	],
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
HueControler class >> ip [
	^ ip ifNil: [ip := 'localhost']

]

{ #category : #accessing }
HueControler class >> ip: anObject [
	ip := anObject
]

{ #category : #accessing }
HueControler class >> key [
	^ key ifNil: [key := 'xxxxxxxxx']
]

{ #category : #accessing }
HueControler class >> key: anObject [
	key := anObject
]

{ #category : #accessing }
HueControler class >> systemSettings: aBuilder [
	<systemsettings>
	(aBuilder group: #hueBridge)
		label: 'Hue Bridge';
		description: 'All settings concerned Hue Bridge'.
		
	(aBuilder setting: #ip) 
		label: 'Hue Bridge ip';
		description: 'Ip of your Hue Bridge';
		setSelector: #ip:;
		getSelector: #ip;
		target: HueControler;
		parent: #hueBridge.
		
	(aBuilder setting: #key) 
		label: 'Hue Bridge key';
		description: 'key of your Hue Bridge';
		setSelector: #key:;
		getSelector: #key;
		target: HueControler;
		parent: #hueBridge.
]

{ #category : #accessing }
HueControler >> group: group state: state [
| url |
url := ('https://',HueControler ip,'/api/',HueControler key,'/groups/',group asString,'/action') asUrl.

^ ZnEasy put: url data: (state isNumber
	ifTrue: [ (ZnEntity json:'{"bri":',state asString,'}') ]
	ifFalse: [ (ZnEntity json:'{"on":',state asString,'}') ]). 
]

{ #category : #accessing }
HueControler >> groups [
<script: 'HueControler new groups inspect'>
| url |
url := ('https://',HueControler ip,'/api/',HueControler key,'/groups') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
HueControler >> gtInspectorHueIn: composite [
	<gtInspectorPresentationOrder: -10>
	self flag: #TODO.
	"comment stating purpose of message"
	composite morph morph: (Smalltalk ui theme builder newButtonFor: 'hello' action: [ Transcript show: 'hello' ; cr ]  label: 'hello' help: 'hrllo' ).
	"composite newButton ."

]

{ #category : #accessing }
HueControler >> idOfGroupNamed: aName [
	self flag: #TODO.
 ^self groups
]

{ #category : #accessing }
HueControler >> light: light state: state [
| url |
url := ('https://',HueControler ip,'/api/',HueControler key,'/lights/',light asString,'/state') asUrl.

^ ZnEasy put: url data: (state isNumber
	ifTrue: [ (ZnEntity json:'{"bri":',state asString,'}') ]
	ifFalse: [ (ZnEntity json:'{"on":',state asString,'}') ]). 
]

{ #category : #accessing }
HueControler >> lights [
<script: 'HueControler new lights inspect'>
| url |
url := ('https://',HueControler ip,'/api/',HueControler key,'/lights') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]
