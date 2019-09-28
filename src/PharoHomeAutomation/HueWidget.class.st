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
		action: [ hue onSalon ].
	buttonSalonOff
		action: [ hue offSalon ].
]

{ #category : #initialization }
HueWidget >> initializeWidgets [
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
