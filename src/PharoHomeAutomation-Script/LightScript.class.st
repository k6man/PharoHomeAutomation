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
				'07:00:00 pm' asTime < Time now ifTrue: [ b:= 100].
				'21:30:00 pm' asTime < Time now ifTrue: [ b:= 70].
				'22:30:00 pm' asTime < Time now ifTrue: [ b:= 1].
				^b
]

{ #category : #running }
LightScript >> run: anAnnouncement [
(anAnnouncement className = #HomeAutomationDeviceAnnoucement) ifTrue: [ 
	(anAnnouncement device) ifNotNil: [ :moveSensor |
	(moveSensor name = 'pir') ifTrue: [ 
		(WorldHomeAutomation deviceNamed: 'lumiere' inRoom: moveSensor room) ifNotNil: [ :light |
			(moveSensor move and: ((moveSensor lux) < 60)) ifTrue: [ 
				light brightness: self brightness  ; on.
				 ] ifFalse: [ light off ].
			
			self trace: DateAndTime now;
				  trace:  moveSensor;
				  trace: ' => ';
				  traceCr: light.
			]
	]
]
]
]
