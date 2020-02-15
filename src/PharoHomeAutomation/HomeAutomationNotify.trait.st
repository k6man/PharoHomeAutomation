Trait {
	#name : #HomeAutomationNotify,
	#category : #PharoHomeAutomation
}

{ #category : #'error handling' }
HomeAutomationNotify >> notify: aString [
	"comment stating purpose of message"
	self explicitRequirement.
]
