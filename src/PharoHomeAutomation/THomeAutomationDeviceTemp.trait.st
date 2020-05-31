Trait {
	#name : #THomeAutomationDeviceTemp,
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
THomeAutomationDeviceTemp >> renderContentOn: html [
<renderContentOn: true>
	html paragraph: self asString.
	self flag: #TODO.
]

{ #category : #accessing }
THomeAutomationDeviceTemp >> temp [
	"comment stating purpose of message"
	self explicitRequirement.
]
