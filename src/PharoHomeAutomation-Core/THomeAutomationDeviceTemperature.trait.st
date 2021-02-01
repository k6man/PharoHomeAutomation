Trait {
	#name : #THomeAutomationDeviceTemperature,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
THomeAutomationDeviceTemperature >> isTemperature [ 
 ^true.
]

{ #category : #accessing }
THomeAutomationDeviceTemperature >> renderContentOn: html [
<renderContentOn: true>
	html paragraph: self asString.
	self flag: #TODO.
]

{ #category : #accessing }
THomeAutomationDeviceTemperature >> temperature [
	"comment stating purpose of message"
	self explicitRequirement.
]
