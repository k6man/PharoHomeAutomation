"
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
	ip:		ip of the AccesPoint on the local network
	passwd:		Password to log on the AccesPoint on the local network


    Implementation Points
"
Class {
	#name : #WifiAp,
	#superclass : #Object,
	#instVars : [
		'ip',
		'passwd'
	],
	#category : #PharoHomeAutomation
}

{ #category : #'as yet unclassified' }
WifiAp >> ip [
	"get ip"
	^ip
]

{ #category : #'as yet unclassified' }
WifiAp >> ip: aIp [
	"set ip"
	ip := aIp
	
]

{ #category : #'as yet unclassified' }
WifiAp >> off [
	"Disable Wifi Access Point"
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
WifiAp >> on [
	"Enable Wifi Access Point"
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
WifiAp >> passwd: aPasswd [
	"set password"
	passwd := aPasswd
	
]
