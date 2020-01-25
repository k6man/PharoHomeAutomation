Class {
	#name : #MyHome,
	#superclass : #PharoHomeAutomation,
	#category : #PharoHomeAutomation
}

{ #category : #initialization }
MyHome >> initialize [ 
	super initialize.
	
	"comment stating purpose of message"
	devices := Dictionary newFrom: {
		 #LumiereSalon->(HomeAutomationHueGroup newWithId: 5).
		 #LumiereCuisine->(HomeAutomationHueGroup newWithId: 6).
		 #LumiereChambreSarah->(HomeAutomationHueGroup newWithId: 2).
		 #LumiereChambreParent->(HomeAutomationHueGroup newWithId: 3).
		 #LumierePoubelle->(HomeAutomationHueGroup newWithId: 8).
		 #LumiereEntree->(HomeAutomationHueGroup newWithId: 4).
		 #LumiereTerrasse->(HomeAutomationHueGroup newWithId: 3).
		 #LumierePortail->(HomeAutomationHueGroup newWithId: 1).
		
		 #Portail->(HomeAutomationSomfyRTSPortal newWithId: 'A1').
    	 
	    #CapteurSalon->(FibaroMotionSensor newNamed: 'pir' inRoom: 'salon' ).
	    #CapteurCuisine->(FibaroMotionSensor newNamed: 'pir' inRoom: 'cuisine' ).
	    #CapteurCouloir->(FibaroMotionSensor newNamed: 'pir' inRoom: 'couloir' ).		
	 }.


	

]
