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
			spec baseline: 'TaskIt' with: [ spec repository: 'github://pharo-contributions/taskit' ].	
			spec baseline: 'MaterialDesignLite' with: [ spec repository: 'github://DuneSt/MaterialDesignLite:v2.2.4/src' ].					
			spec package: 'PharoHomeAutomation'with: [ spec requires: #('MQTT-Core' 'MQTT-Client' ) ].
			spec package: 'PharoHomeAutomation-Core' with: [ spec requires: #('PharoHomeAutomation' ) ].
   		   spec package: 'PharoHomeAutomation-Cam' with: [ spec requires: #('PharoHomeAutomation-Core' ) ].
			spec package: 'PharoHomeAutomation-Device' with: [ spec requires: #('PharoHomeAutomation-Core' ) ].
			spec package: 'PharoHomeAutomation-Script' with: [ spec requires: #('PharoHomeAutomation-Core' ) ].
   		   spec package: 'PharoHomeAutomation-Notify' with: [ spec requires: #('PharoHomeAutomation-Core' ) ].
   		   spec package: 'PharoHomeAutomation-Web' with: [ spec requires: #('PharoHomeAutomation-Core' 'MaterialDesignLite') ].
   		   spec package: 'PharoHomeAutomation-UI' with: [ spec requires: #('PharoHomeAutomation-Core' ) ].
			spec package: 'PharoHomeAutomation-Tests' with: [ spec requires: #('PharoHomeAutomation-Core' ) ]. 				
			spec group: 'default' with: #(#'MQTT-Core' #'MQTT-Client' #'MQTT-Tests' 
			                              #'PharoHomeAutomation' 
													#'PharoHomeAutomation-Core'
													#'PharoHomeAutomation-Cam'
													#'PharoHomeAutomation-Device'
													#'PharoHomeAutomation-Script'
													#'PharoHomeAutomation-Notify'
													#'PharoHomeAutomation-Web'
				 #'PharoHomeAutomation-Tests').
			]
]
