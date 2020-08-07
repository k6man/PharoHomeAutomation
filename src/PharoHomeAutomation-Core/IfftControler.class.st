Class {
	#name : #IfftControler,
	#superclass : #Object,
	#traits : 'THomeAutomationNotify',
	#classTraits : 'THomeAutomationNotify classTrait',
	#classInstVars : [
		'key',
		'notify_event'
	],
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
IfftControler class >> key [
	^ key ifNil: [key := '']
]

{ #category : #accessing }
IfftControler class >> key: anObject [
	key := anObject
]

{ #category : #accessing }
IfftControler class >> notify_event [
^ notify_event ifNil: [notify_event := '']
]

{ #category : #accessing }
IfftControler class >> notify_event: anObject [
	notify_event := anObject
]

{ #category : #accessing }
IfftControler class >> systemSettings: aBuilder [
	<systemsettings>
	(aBuilder group: #ifft)
		label: 'IFFT';
		description: 'All settings concerned IFFT'.
		
	(aBuilder setting: #key) 
		label: 'IFFT key';
		description: 'key of your IFFT Account';
		setSelector: #key:;
		getSelector: #key;
		target: IfftControler;
		parent: #ifft.
	(aBuilder setting: #notify_event) 
		label: 'IFFT notify event';
		description: 'IFFT notify event';
		setSelector: #notify_event:;
		getSelector: #notify_event;
		target: IfftControler;
		parent: #ifft.
]

{ #category : #'as yet unclassified' }
IfftControler >> notify: aString [
| url |
url := ('https://maker.ifttt.com/trigger/',IfftControler notify_event ,'/with/key/',IfftControler key) asUrl.

^ ZnEasy post: url data: (ZnEntity json:'{"value1" : "',aString,'"}'). 
]
