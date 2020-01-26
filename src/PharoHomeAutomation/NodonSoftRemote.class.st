Class {
	#name : #NodonSoftRemote,
	#superclass : #HomeAutomationZwaveDevice,
	#category : #PharoHomeAutomation
}

{ #category : #'as yet unclassified' }
NodonSoftRemote >> minusButton [
	"comment stating purpose of message"
"
10 appuie:12 relache:11  roundAddButton
20 appuie:22 relache:21  plusButton
30 appuie:32 relache:31  roundMinusButton
40 appuie:42 relache:41  minusButton
"
	^self value = 40.
]

{ #category : #'as yet unclassified' }
NodonSoftRemote >> plusButton [
	"comment stating purpose of message"
"
10 appuie:12 relache:11  roundAddButton
20 appuie:22 relache:21  plusButton
30 appuie:32 relache:31  roundMinusButton
40 appuie:42 relache:41  minusButton
"
	^self value = 20.
]

{ #category : #'as yet unclassified' }
NodonSoftRemote >> roundAddButton [
	"comment stating purpose of message"
"
10 appuie:12 relache:11  roundAddButton
20 appuie:22 relache:21  plusButton
30 appuie:32 relache:31  roundMinusButton
40 appuie:42 relache:41  minusButton
"
	^self value = 10.
]

{ #category : #'as yet unclassified' }
NodonSoftRemote >> roundMinusButton [
	"comment stating purpose of message"
"
10 appuie:12 relache:11  roundAddButton
20 appuie:22 relache:21  plusButton
30 appuie:32 relache:31  roundMinusButton
40 appuie:42 relache:41  minusButton
"
	^self value = 30.
]

{ #category : #'as yet unclassified' }
NodonSoftRemote >> value [
	"comment stating purpose of message"
"
10 appuie:12 relache:11  roundAddButton
20 appuie:22 relache:21  plusButton
30 appuie:32 relache:31  roundMinusButton
40 appuie:42 relache:41  minusButton
"
	^WorldHomeAutomation mqtt numberValueFromTopic: 'zwave/',room,'/',name,'/scene/event'.
]