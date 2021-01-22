Trait {
	#name : #THomeAutomationDevicePressure,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
THomeAutomationDevicePressure >> pressure [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
THomeAutomationDevicePressure >> renderContentOn: html [
<renderContentOn: true>
	html paragraph: self asString.
	self flag: #TODO.
]
