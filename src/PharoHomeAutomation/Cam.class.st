Class {
	#name : #Cam,
	#superclass : #Object,
	#instVars : [
		'ip',
		'passwd',
		'login'
	],
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
Cam >> snapshot [
	self subclassResponsibility
]
