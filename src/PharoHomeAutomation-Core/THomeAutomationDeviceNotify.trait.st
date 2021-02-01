Trait {
	#name : #THomeAutomationDeviceNotify,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #'error handling' }
THomeAutomationDeviceNotify >> isNotify [ 
 ^true.
]

{ #category : #'error handling' }
THomeAutomationDeviceNotify >> notify: aString [
	"comment stating purpose of message"
	self explicitRequirement.
]
