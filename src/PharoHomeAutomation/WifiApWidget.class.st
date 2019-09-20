Class {
	#name : #WifiApWidget,
	#superclass : #ComposablePresenter,
	#instVars : [
		'labelStatus',
		'buttonWifiOn',
		'buttonWifiOff'
	],
	#category : #PharoHomeAutomation
}

{ #category : #specs }
WifiApWidget class >> defaultSpec [
	^ SpecLayout composed
		newRow: [ :row | row add: #buttonWifiOn ; add: #buttonWifiOff ]
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
WifiApWidget >> buttonWifiOff [
	^ buttonWifiOff
]

{ #category : #initialization }
WifiApWidget >> buttonWifiOn [
	^ buttonWifiOn
]

{ #category : #initialization }
WifiApWidget >> initializePresenter [
	buttonWifiOn
		action: [ self wifiOn ].
	buttonWifiOff
		action: [ self wifiOff ].
]

{ #category : #initialization }
WifiApWidget >> initializeWidgets [
	"widget instantiation and configuration"
	self
		title: 'Home';
		extent: 400 @ 400.
	buttonWifiOn := self newButton
		label: 'Wifi On';
		icon: (self iconNamed: #arrowUp);
		yourself.
	buttonWifiOff := self newButton
		label: 'Wifi Off';
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
	self focusOrder add: buttonWifiOn ; add: buttonWifiOff.
]

{ #category : #initialization }
WifiApWidget >> labelStatus [
	^ labelStatus
]
