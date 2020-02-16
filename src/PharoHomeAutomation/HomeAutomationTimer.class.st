Class {
	#name : #HomeAutomationTimer,
	#superclass : #Object,
	#instVars : [
		'process'
	],
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
HomeAutomationTimer class >> terminate [
	self allInstances do: [ :mqtt | mqtt terminate].

]

{ #category : #initialization }
HomeAutomationTimer >> initialize [ 
	"comment stating purpose of message"
	super initialize.
	
	" Create new process "
    process:= [ [
			(Duration minutes: 1) wait.
			WorldHomeAutomation announcer announce: HomeAutomationTimeMinuteAnnoucement.
	 ] repeat ] forkNamed: self className.
]

{ #category : #'initialize-release' }
HomeAutomationTimer >> terminate [
	"comment stating purpose of message"
	^process terminate.
]
