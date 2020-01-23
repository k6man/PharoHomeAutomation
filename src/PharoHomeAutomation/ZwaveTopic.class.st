Class {
	#name : #ZwaveTopic,
	#superclass : #Topic,
	#type : #bytes,
	#category : #PharoHomeAutomation
}

{ #category : #'as yet unclassified' }
ZwaveTopic >> roomName [
^ ('/' split: self) at: 2.
]

{ #category : #'as yet unclassified' }
ZwaveTopic >> sensorName [
^ ('/' split: self) at: 3.
]
