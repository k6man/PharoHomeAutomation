Trait {
	#name : #THomeAutomationNotify,
	#category : #PharoHomeAutomation
}

{ #category : #'error handling' }
THomeAutomationNotify >> notify: aString [
	"comment stating purpose of message"
	self explicitRequirement.
]
