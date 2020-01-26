Class {
	#name : #MyHome,
	#superclass : #PharoHomeAutomation,
	#category : #PharoHomeAutomation
}

{ #category : #'as yet unclassified' }
MyHome class >> scriptLumiere [
<HomeAutomationScriptToRun: true>
| moveSensor light |
	moveSensor := WorldHomeAutomation deviceNamed: 'pir' inRoom: 'cuisine'.
	light := WorldHomeAutomation deviceNamed: 'lumiere' inRoom: 'cuisine'.
	(moveSensor move and: ((moveSensor lux) < 60)) ifTrue: [ light on ] ifFalse: [ light off ].
	moveSensor := WorldHomeAutomation deviceNamed: 'pir' inRoom: 'salon'.
	light := WorldHomeAutomation deviceNamed: 'lumiere' inRoom: 'salon'.
	(moveSensor move and: ((moveSensor lux) < 60)) ifTrue: [ light on ] ifFalse: [ light off ].
	"Transcript crShow: 'run script lumiere'"

]

{ #category : #initialization }
MyHome >> initialize [
	<script: 'MyHome launch'> 
	super initialize.
	
	"comment stating purpose of message"
	devices addAll: {
		 #Portail->(HomeAutomationSomfyRTSPortal newWithId: 'A1' named: 'portail' inRoom: 'portail').
    	 #CapteurSalon->(FibaroMotionSensor newNamed: 'pir' inRoom: 'salon' ).
	    #CapteurCuisine->(FibaroMotionSensor newNamed: 'pir' inRoom: 'cuisine' ).
	    #CapteurCouloir->(FibaroMotionSensor newNamed: 'pir' inRoom: 'couloir' ).
		 #Telecommande->(NodonSoftRemote newNamed: 'telecommande' inRoom: 'salon' ).
		 #LumiereSalon->(HomeAutomationHueGroup newWithId: 5 named: 'lumiere' inRoom: 'salon').
		 #LumiereCuisine->(HomeAutomationHueGroup newWithId: 6 named: 'lumiere' inRoom: 'cuisine').
		 #LumiereChambreSarah->(HomeAutomationHueGroup newWithId: 2 named: 'lumiere' inRoom: 'chambreSarah').
		 #LumiereChambreParent->(HomeAutomationHueGroup newWithId: 3 named: 'lumiere' inRoom:  'chambreParent').
		 #LumierePoubelle->(HomeAutomationHueGroup newWithId: 8 named: 'lumiere' inRoom: 'poubelle').
		 #LumiereEntree->(HomeAutomationHueGroup newWithId: 4 named: 'lumiere' inRoom:  'entree').
		 #LumiereTerrasse->(HomeAutomationHueGroup newWithId: 3 named: 'lumiere' inRoom: 'terrasse').
		 #LumierePortail->(HomeAutomationHueGroup newWithId: 1 named: 'lumiere' inRoom: 'portail').
	 }.


	

]
