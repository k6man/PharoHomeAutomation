"
HueWidget new openWithSpec.

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
	buttonSalonOff:		<Object>
	buttonSalonOn:		<Object>
	hue:		<Object>
	labelStatus:		<Object>


    Implementation Points
"
Class {
	#name : #HueWidget,
	#superclass : #ComposablePresenter,
	#instVars : [
		'hue',
		'labelStatus',
		'buttonSalonOn',
		'buttonSalonOff'
	],
	#category : #PharoHomeAutomation
}

{ #category : #specs }
HueWidget class >> defaultSpec [
	^ SpecLayout composed
		newRow: [ :row | row add: #buttonSalonOn ; add: #buttonSalonOff ]
			origin: 0 @ 0
			corner: 1 @ 0.25;
		"newRow: [ :row | row add: #imageCameraSalon ; add: #buttonUpdate ]
			origin: 0 @ 0.25
			corner: 1 @ 0.7;"
		newRow: [ :row | row add: #labelStatus ]
			origin: 1 @ 0.7
			corner: 1 @ 1;
		yourself
]

{ #category : #initialization }
HueWidget >> buttonSalonOff [
	^ buttonSalonOff
]

{ #category : #initialization }
HueWidget >> buttonSalonOn [
	^ buttonSalonOn
]

{ #category : #initialization }
HueWidget >> initializePresenter [
	buttonSalonOn
		action: [ MyHue__old new onSalon ].
	buttonSalonOff
		action: [ MyHue__old new offSalon ].
]

{ #category : #initialization }
HueWidget >> initializeWidgets [
<script: 'HueWidget new openWithSpec.'>
	"widget instantiation and configuration"
	hue := Hue new.
	self
		title: 'Home';
		extent: 400 @ 400.
	buttonSalonOn := self newButton
		label: 'Salon On';
		icon: (self iconNamed: #arrowUp);
		yourself.
	buttonSalonOff := self newButton
		label: 'Salon Off';
		icon: (self iconNamed: #arrowDown);
		yourself.
	"imageCameraSalon := self newImage image: self getCameraSalon yourself."
	"buttonUpdate := self newButton
		label: 'Update';
		icon: (self iconNamed: #thumbsUp);
		yourself."
	labelStatus := self newLabel
		label: '...';
		yourself.

	"specification of order of focus"
	self focusOrder add: buttonSalonOn ; add: buttonSalonOff.
]

{ #category : #initialization }
HueWidget >> labelStatus [
	^ labelStatus
]
