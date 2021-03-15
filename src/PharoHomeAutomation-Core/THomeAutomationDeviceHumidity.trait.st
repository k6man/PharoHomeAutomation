Trait {
	#name : #THomeAutomationDeviceHumidity,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
THomeAutomationDeviceHumidity >> humidity [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
THomeAutomationDeviceHumidity >> humidityRenderContentOn: html [
<renderContentOn: true>
	html paragraph: self humidity,'%'.
]

{ #category : #accessing }
THomeAutomationDeviceHumidity >> isHumidity [ 
 ^true.
]
