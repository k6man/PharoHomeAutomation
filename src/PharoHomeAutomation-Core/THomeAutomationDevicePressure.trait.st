Trait {
	#name : #THomeAutomationDevicePressure,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
THomeAutomationDevicePressure >> isPressure [ 
 ^true.
]

{ #category : #accessing }
THomeAutomationDevicePressure >> pressure [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
THomeAutomationDevicePressure >> pressureRenderContentOn: html [
<renderContentOn: true>
	html paragraph: self pressure,' P'.

]
