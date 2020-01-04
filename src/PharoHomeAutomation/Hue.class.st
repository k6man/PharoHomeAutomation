Class {
	#name : #Hue,
	#superclass : #Object,
	#classInstVars : [
		'ip',
		'key'
	],
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
Hue class >> hueBridgeSetting: aBuilder [
	<systemsettings>
		(aBuilder group: #hueBridge)
		label: 'Hue Bridge';
		description: 'All settings concerned Hue Bridge'.
		
	(aBuilder setting: #ip) 
		label: 'Hue Bridge ip';
		description: 'Ip of your Hue Bridge';
		setSelector: #ip:;
		getSelector: #ip;
		target: Hue;
		parent: #hueBridge.
		
	(aBuilder setting: #key) 
		label: 'Hue Bridge key';
		description: 'key of your Hue Bridge';
		setSelector: #key:;
		getSelector: #key;
		target: Hue;
		parent: #hueBridge.
]

{ #category : #accessing }
Hue class >> ip [
	^ ip ifNil: [ip := 'localhost']

]

{ #category : #accessing }
Hue class >> ip: anObject [
	ip := anObject
]

{ #category : #accessing }
Hue class >> key [
	^ key ifNil: [key := 'xxxxxxxxx']
]

{ #category : #accessing }
Hue class >> key: anObject [
	key := anObject
]

{ #category : #accessing }
Hue >> group: group state: state [
| url |
url := ('https://',self class ip,'/api/',self class key,'/groups/',group,'/action') asUrl.
^ ZnEasy put: url data: (ZnEntity json:'{"on":',state asString,'}') .
]

{ #category : #accessing }
Hue >> groups [
| url |
url := ('https://',self class ip,'/api/',self class key,'/groups') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
Hue >> gtInspectorHueIn: composite [
	<gtInspectorPresentationOrder: -10>
	"comment stating purpose of message"
	composite morph morph: (Smalltalk ui theme builder newButtonFor: 'hello' action: [ Transcript show: 'hello' ; cr ]  label: 'hello' help: 'hrllo' ).
	"composite newButton ."

]

{ #category : #accessing }
Hue >> lights [
| url |
url := ('https://',self class ip,'/api/',self class key,'/lights') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
Hue >> offSalon [
self group: 'salon' state: false.
]

{ #category : #accessing }
Hue >> onSalon [
self group: 'salon' state: true.
]

{ #category : #accessing }
Hue >> salon [
| url |
url := ('https://',self class ip,'/api/',self class key,'/groups/salon') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
Hue >> salon: state [
^self group: 'salon' state: state.
]

{ #category : #accessing }
Hue >> setting [
	<systemsettings>
]
