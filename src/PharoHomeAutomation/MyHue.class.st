Class {
	#name : #MyHue,
	#superclass : #Hue,
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
MyHue >> offSalon [
self group: 'salon' state: false.
]

{ #category : #accessing }
MyHue >> onSalon [
self group: 'salon' state: true.
]

{ #category : #accessing }
MyHue >> salon [
| url |
url := ('https://',Hue ip,'/api/',Hue key,'/groups/salon') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
MyHue >> salon: state [
^self group: 'salon' state: state.
]
