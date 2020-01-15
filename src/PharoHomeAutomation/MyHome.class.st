Class {
	#name : #MyHome,
	#superclass : #PharoHomeAutomation,
	#category : #PharoHomeAutomation
}

{ #category : #'as yet unclassified' }
MyHome class >> stopMQTT [
	"stop all mqtt client instance"
MQTTClientInterface  allInstances do: [ :e | e stop ].

]
