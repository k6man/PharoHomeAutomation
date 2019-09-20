"
Home Automation  Application:
PharoHomeAutomation new openWithSpec.




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
	#superclass : #ComposablePresenter,
	#instVars : [
		'wifiApList',
		'camList',
		'labelStatus'
	],
	#category : #PharoHomeAutomation
}

{ #category : #specs }
PharoHomeAutomation class >> defaultSpec [
	^ SpecLayout composed
		"newRow: [ :row | row add: #buttonWifiOn ; add: #buttonWifiOff ]
			origin: 0 @ 0
			corner: 1 @ 0.25;"
		"newRow: [ :row | row add: #imageCameraSalon ; add: #buttonUpdate ]
			origin: 0 @ 0.25
			corner: 1 @ 0.7;"
		newRow: [ :row | row add: #labelStatus ]
			origin: 1 @ 0.7
			corner: 1 @ 1;
		yourself
]

{ #category : #initialization }
PharoHomeAutomation >> addCam: aCam withName: aName [
	camList at: aName put: aName.
]

{ #category : #initialization }
PharoHomeAutomation >> addWifiAp: aWap withName: aName [
	wifiApList at: aName put: aWap.
]

{ #category : #initialization }
PharoHomeAutomation >> initializePresenter [
	"buttonWifiOn
		action: [ self wifiOn ].
	buttonWifiOff
		action: [ self wifiOff ]."
]

{ #category : #initialization }
PharoHomeAutomation >> initializeWidgets [
	"widget instantiation and configuration"
	wifiApList := Dictionary new.
	camList := Dictionary new.
	self
		title: 'Home';
		extent: 400 @ 400.
	"buttonWifiOn := self newButton
		label: 'Wifi On';
		icon: (self iconNamed: #arrowUp);
		yourself.
	buttonWifiOff := self newButton
		label: 'Wifi Off';
		icon: (self iconNamed: #arrowDown);
		yourself."
	"imageCameraSalon := self newImage image: self getCameraSalon yourself."
	"buttonUpdate := self newButton
		label: 'Update';
		icon: (self iconNamed: #thumbsUp);
		yourself."
	labelStatus := self newLabel
		label: '...';
		yourself.

	"specification of order of focus"
	"self focusOrder add: buttonWifiOn ; add: buttonWifiOff."
]

{ #category : #initialization }
PharoHomeAutomation >> labelStatus [
	^ labelStatus
]

{ #category : #initialization }
PharoHomeAutomation >> updateAllCamera [
	"imageCameraSalon image: (self getCameraSalon) "
]
