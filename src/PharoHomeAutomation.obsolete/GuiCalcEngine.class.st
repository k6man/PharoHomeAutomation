"
Building Bloc class to manage Embedded Calculator Mangement Application.



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
	#name : #GuiCalcEngine,
	#superclass : #ComposablePresenter,
	#instVars : [
		'buttonReboot',
		'labelStatus'
	],
	#category : #'PharoHomeAutomation.obsolete'
}

{ #category : #specs }
GuiCalcEngine class >> defaultSpec [
	^ SpecLayout composed
		newRow: [ :row | row add: #buttonReboot ]
			origin: 0 @ 0
			corner: 1 @ 0.7;
		newRow: [ :row | row add: #labelStatus ]
			origin: 0 @ 0.7
			corner: 1 @ 1;
		yourself
]

{ #category : #initialization }
GuiCalcEngine >> buttonReboot [
	^ buttonReboot
]

{ #category : #initialization }
GuiCalcEngine >> initializePresenter [

	buttonReboot action: [ labelStatus  label: buttonReboot label ].

	
]

{ #category : #initialization }
GuiCalcEngine >> initializeWidgets [
	"widget instantiation and configuration"
	self title: 'Calc Gui' ; extent: 400@100.
	buttonReboot := self newButton
		label: 'Happy';
		icon: (self iconNamed: #thumbsUp) ;
		yourself .
	labelStatus := self newLabel
		label: '...';
		yourself .

"specification of order of focus"
	self focusOrder
	add: buttonReboot.

]

{ #category : #initialization }
GuiCalcEngine >> labelStatus [
	^ labelStatus
]
