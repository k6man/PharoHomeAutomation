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

{ #category : #initialization }
MyHome >> initialize [ 
	super initialize.
	
	"comment stating purpose of message"
	devices := Dictionary newFrom: {
		 #LumiereSalon->(HomeAutomationHueGroup newWithId: 5).
		 #LumiereCuisine->(HomeAutomationHueGroup newWithId: 6).
	 }.
	

]
