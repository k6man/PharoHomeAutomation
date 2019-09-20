Class {
	#name : #Hue,
	#superclass : #Object,
	#instVars : [
		'ip',
		'key'
	],
	#category : #PharoHomeAutomation
}

{ #category : #initalize }
Hue class >> withIp: ip andKey: key [
	"comment stating purpose of message"
	^self new ip: ip ; key: key  ; yourself.


]

{ #category : #accessing }
Hue >> group: group state: state [
| url |
url := ('https://',ip,'/api/',key,'/groups/',group,'/action') asUrl.
^ ZnEasy put: url data: (ZnEntity json:'{"on":',state asString,'}') .
]

{ #category : #accessing }
Hue >> groups [
| url |
url := ('https://',ip,'/api/',key,'/groups') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
Hue >> ip [
	^ ip
]

{ #category : #accessing }
Hue >> ip: anObject [
	ip := anObject
]

{ #category : #accessing }
Hue >> key [
	^ key
]

{ #category : #accessing }
Hue >> key: anObject [
	key := anObject
]

{ #category : #accessing }
Hue >> lights [
| url |
url := ('https://',ip,'/api/',key,'/lights') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
Hue >> offSalon [
self group: 'salon' state: false.
]

{ #category : #accessing }
Hue >> onSalon [
self group: 'salon' state: false.
]

{ #category : #accessing }
Hue >> salon [
| url |
url := ('https://',ip,'/api/',key,'/groups/salon') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
Hue >> salon: state [
^self group: 'salon' state: state.
]
