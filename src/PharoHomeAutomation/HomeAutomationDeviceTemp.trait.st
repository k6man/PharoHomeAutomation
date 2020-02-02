Trait {
	#name : #HomeAutomationDeviceTemp,
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
HomeAutomationDeviceTemp >> renderContentOn: html [
	self flag: #TODO.
]

{ #category : #accessing }
HomeAutomationDeviceTemp >> temp [
	"comment stating purpose of message"
	self explicitRequirement.
]
