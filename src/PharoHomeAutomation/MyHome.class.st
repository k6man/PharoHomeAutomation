Class {
	#name : #MyHome,
	#superclass : #PharoHomeAutomation,
	#instVars : [
		'mqtt',
		'hue',
		'rfplayer'
	],
	#category : #PharoHomeAutomation
}

{ #category : #initialization }
MyHome >> initialize [ 
	super initialize.
	
	"comment stating purpose of message"
	devices := Dictionary newFrom: {
		 #LumiereSalon->(HomeAutomationHueGroup newWithId: 5).
		 #LumiereCuisine->(HomeAutomationHueGroup newWithId: 6).
	 }.
	
	"MQTTClientInterface  allInstances do: [ :e | e stop ].
	mqtt := Mqtt open."
	hue := MyHue new.
	rfplayer := MyRfPlayer new.
	

]
