Class {
	#name : #NodonSoftRemote,
	#superclass : #HomeAutomationZwaveDevice,
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #'as yet unclassified' }
NodonSoftRemote >> ifIsMinusButton: aBlock [ 
	^ self isMinusButton ifTrue: [ aBlock value].
]

{ #category : #'as yet unclassified' }
NodonSoftRemote >> ifIsPlusButton: aBlock [ 
	^ self isAddButton ifTrue: [ aBlock value].
]

{ #category : #'as yet unclassified' }
NodonSoftRemote >> ifIsRoundAddButton: aBlock [ 
	^ self isRoundAddButton ifTrue: [ aBlock value].
]

{ #category : #'as yet unclassified' }
NodonSoftRemote >> ifIsRoundMinusButton: aBlock [ 
	^ self isRoundMinusButton ifTrue: [ aBlock value].
]

{ #category : #'as yet unclassified' }
NodonSoftRemote >> isAddButton [
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
NodonSoftRemote >> isMinusButton [
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
NodonSoftRemote >> isRoundAddButton [
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
NodonSoftRemote >> isRoundMinusButton [
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
	^WorldHomeAutomation mqtt numberValueFromTopic: 'zwave/',room,'/',name,'/scene_activation/endpoint_0/sceneId'	.
]
