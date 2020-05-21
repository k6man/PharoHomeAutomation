Class {
	#name : #BaselineOfPharoHomeAutomation,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoHomeAutomation
}

{ #category : #baselines }
BaselineOfPharoHomeAutomation >> baselineOf: spec [
	<baseline>
	spec
		for: #'common'
		do: [
			spec package: 'MQTT-Core'.
			spec package: 'MQTT-Client' with: [ spec requires: #('MQTT-Core' ) ].
			spec package: 'MQTT-Tests' with: [ spec requires: #('MQTT-Core' 'MQTT-Client' ) ].
			"spec baseline:'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside:v3.3.4/repository' ]."
			spec baseline: 'MaterialDesignLite' with: [ spec repository: 'github://DuneSt/MaterialDesignLite:v2.2.1/src' ].					
			spec package: 'PharoHomeAutomation'with: [ spec requires: #('MQTT-Core' 'MQTT-Client' ) ].
			spec package: 'PharoHomeAutomation-Tests' with: [ spec requires: #('PharoHomeAutomation' ) ]. 				
			spec group: 'default' with: #(#'MQTT-Core' #'MQTT-Client' #'MQTT-Tests' #'Seaside3'
			                              #'PharoHomeAutomation' #'PharoHomeAutomation-Tests').
			]
]
