Trait {
	#name : #HomeAutomationDeviceLux,
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
HomeAutomationDeviceLux >> lux [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
HomeAutomationDeviceLux >> renderContentOn: html [
<renderContentOn: true>
	self flag: #TODO.
]
