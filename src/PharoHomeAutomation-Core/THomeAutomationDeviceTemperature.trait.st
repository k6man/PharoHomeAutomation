Trait {
	#name : #THomeAutomationDeviceTemperature,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
THomeAutomationDeviceTemperature >> isTemperature [ 
 ^true.
]

{ #category : #accessing }
THomeAutomationDeviceTemperature >> temperature [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
THomeAutomationDeviceTemperature >> temperatureRenderContentOn: html [
<renderContentOn: true>
	html paragraph: self temperature,'°C'.
]
