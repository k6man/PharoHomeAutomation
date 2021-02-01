Trait {
	#name : #THomeAutomationDeviceLux,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
THomeAutomationDeviceLux >> isLux [
 ^true.
]

{ #category : #accessing }
THomeAutomationDeviceLux >> lux [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
THomeAutomationDeviceLux >> renderContentOn: html [
<renderContentOn: true>
	html paragraph: self asString.
	self flag: #TODO.
]
