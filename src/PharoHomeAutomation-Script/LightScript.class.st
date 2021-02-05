"
Light script management


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


    Implementation Points
"
Class {
	#name : #LightScript,
	#superclass : #HomeAutomationScript,
	#category : #'PharoHomeAutomation-Script'
}

{ #category : #accessing }
LightScript >> brightness [
" return brightness according to time "
		| b |
				b := 0.
				Time midnight  < Time now ifTrue: [ b:= 1].
				'06:00:00 am' asTime < Time now ifTrue: [ b:= 75].
				'08:00:00 am' asTime < Time now ifTrue: [ b:= 100].
				'21:30:00 pm' asTime < Time now ifTrue: [ b:= 70].
				'22:30:00 pm' asTime < Time now ifTrue: [ b:= 40].
				^b
]

{ #category : #accessing }
LightScript >> brightnessInRoom: aRoom [
" return brightness according to time "
				(aRoom = 'salon' or: aRoom = 'cuisine') ifTrue: [ ^ self brightness ].
				(aRoom = 'couloir') ifTrue: [ ^ self couloirBrightness ].
				^ 100.
]

{ #category : #accessing }
LightScript >> couloirBrightness [
" return brightness according to time "
		| b |
				b := 0.
				Time midnight  < Time now ifTrue: [ b:= 1].
				'07:00:00 am' asTime < Time now ifTrue: [ b:= 15].
				'09:00:00 am' asTime < Time now ifTrue: [ b:= 100].
				'21:30:00 pm' asTime < Time now ifTrue: [ b:= 70].
				'22:30:00 pm' asTime < Time now ifTrue: [ b:= 1].
				^b
]

{ #category : #running }
LightScript >> run: anAnnouncement [
anAnnouncement isDeviceAnnoucement: [ :sensor |
	sensor isPir: [ :pirDevice |
		((WorldHomeAutomation devicesInRoom: sensor room) select: [:d| d isLight]) do: [ :light |
			
			" 2 cases: "
			"- there is a lux sensor in room:"
			((WorldHomeAutomation devicesInRoom: sensor room) select: [:d| d isLux]) do: [  :luxSensor |
			
				(pirDevice move and: ((luxSensor lux) < 60)) ifTrue: [ 
					light brightness: (self brightnessInRoom: pirDevice room)  ; on.
				 	] ifFalse: [ light off ].
			].
		
			"- there no lux sensor in room:"
			(pirDevice move) ifTrue: [ 
				light brightness: (self brightnessInRoom: pirDevice room)  ; on.
				] ifFalse: [ light off ].			
			
			"Trace:"
			self trace: DateAndTime now;
				  traceCr:  sensor;
				  trace: ' => ';
				  traceCr: light.
			]
	]
]
]
