Trait {
	#name : #HomeAutomationDevicePir,
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
HomeAutomationDevicePir >> move [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
HomeAutomationDevicePir >> renderContentOn: html [
<renderContentOn: true>
	html paragraph: self asString.
	self flag: #TODO.
]
