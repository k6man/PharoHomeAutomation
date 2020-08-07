Class {
	#name : #ZwaveTopic,
	#superclass : #Topic,
	#type : #bytes,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #'as yet unclassified' }
ZwaveTopic >> deviceName [
^ ('/' split: self) at: 3.
]

{ #category : #'as yet unclassified' }
ZwaveTopic >> roomName [
^ ('/' split: self) at: 2.
]
