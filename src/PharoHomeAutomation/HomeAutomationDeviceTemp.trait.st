Trait {
	#name : #HomeAutomationDeviceTemp,
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
HomeAutomationDeviceTemp >> renderContentOn: html [
<renderContentOn: true>
	html paragraph: self asString.
	self flag: #TODO.
]

{ #category : #accessing }
HomeAutomationDeviceTemp >> temp [
	"comment stating purpose of message"
	self explicitRequirement.
]
