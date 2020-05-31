Trait {
	#name : #THomeAutomationDevicePir,
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
THomeAutomationDevicePir >> move [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
THomeAutomationDevicePir >> renderContentOn: html [
<renderContentOn: true>
	html paragraph: self asString.
	self flag: #TODO.
]
