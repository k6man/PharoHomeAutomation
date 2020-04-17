"
MyHome launch.
MyHome new.
MyHome allInstances. 
WorldHomeAutomation.

Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	externalIp:		<Object>


    Implementation Points
"
Class {
	#name : #MyHome,
	#superclass : #PharoHomeAutomation,
	#instVars : [
		'externalIp'
	],
	#category : #PharoHomeAutomation
}

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
		
		"il faut rajouter les parametres des camera C1 dans les settings"
		"#CameraSalon->((WebCamC1 ip: '192.168.1.4' login: '' passwd: '' ) name: 'camera' ; room: 'salon')."
	 }.

	notifiers addAll: {
		#ifft->(IfftControler new).
	}.
	
	externalIp := ''.

]

{ #category : #'as yet unclassified' }
MyHome >> scriptExternalIp: anAnnouncement [
<homeAutomationScriptToRunWhen: #HomeAutomationTimeMinuteAnnoucement>
| currentIp |
currentIp := WorldHomeAutomation externalIp.
(currentIp = externalIp) ifFalse: [  
	externalIp :=  currentIp.
	WorldHomeAutomation notify: 'Home external IP has changed: ',externalIp.
	Transcript crShow: 'run scriptExternalIp: ','Home external IP has changed: ',externalIp. 
	 ].
 

]

{ #category : #'as yet unclassified' }
MyHome >> scriptLumiere: anAnnouncement [
<homeAutomationScriptToRunWhen: #HomeAutomationDeviceAnnoucement>
| moveSensor light |
	moveSensor := WorldHomeAutomation deviceNamed: 'pir' inRoom: 'cuisine'.
	light := WorldHomeAutomation deviceNamed: 'lumiere' inRoom: 'cuisine'.
	(moveSensor move and: ((moveSensor lux) < 40)) ifTrue: [ light on ] ifFalse: [ light off ].
	moveSensor := WorldHomeAutomation deviceNamed: 'pir' inRoom: 'salon'.
	light := WorldHomeAutomation deviceNamed: 'lumiere' inRoom: 'salon'.
	(moveSensor move and: ((moveSensor lux) < 40)) ifTrue: [ light on ] ifFalse: [ light off ].
	Transcript crShow: 'run scriptLumiere ', moveSensor asString,' ',(moveSensor lux asString),' lux => state: ',((moveSensor move and: ((moveSensor lux) < 60)) asString).

]
