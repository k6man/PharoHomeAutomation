Trait {
	#name : #THomeAutomationNotify,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #'error handling' }
THomeAutomationNotify >> notify: aString [
	"comment stating purpose of message"
	self explicitRequirement.
]
