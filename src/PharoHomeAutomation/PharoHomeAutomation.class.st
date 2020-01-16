"
Home Automation  Application:
PharoHomeAutomation new.

acces by global: 
WorldHomeAutomation


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
	buttonReboot:		<Object>
	labelStatus:		<Object>


    Implementation Points
"
Class {
	#name : #PharoHomeAutomation,
	#superclass : #Object,
	#instVars : [
		'devices'
	],
	#classVars : [
		'HomeAnnoucer'
	],
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
PharoHomeAutomation class >> launch [
	"Start a new global instance, called WorldHomeAutomation"
	^self new
]

{ #category : #initialization }
PharoHomeAutomation >> announcer [
	HomeAnnoucer ifNil: [ HomeAnnoucer := Announcer new ].
	^ HomeAnnoucer

]

{ #category : #initialization }
PharoHomeAutomation >> initialize [ 
<script: 'PharoHomeAutomation new'>
	""
	Smalltalk at: #WorldHomeAutomation put: self.

]
