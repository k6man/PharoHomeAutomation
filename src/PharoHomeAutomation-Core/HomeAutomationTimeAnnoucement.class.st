Class {
	#name : #HomeAutomationTimeAnnoucement,
	#superclass : #HomeAutomationAnnoucement,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #testing }
HomeAutomationTimeAnnoucement >> isTimeAnnoucement [
	^true.
]

{ #category : #testing }
HomeAutomationTimeAnnoucement >> isTimeAnnoucement: aBlock [
	^[ aBlock value: self  ].
]
