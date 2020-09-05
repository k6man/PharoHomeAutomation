Trait {
	#name : #THomeAutomationDeviceCam,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #API }
THomeAutomationDeviceCam >> renderContentOn: html [
<renderContentOn: true>
	html image form: (self snapshot scaledToSize: 320 @ 240) .

]

{ #category : #API }
THomeAutomationDeviceCam >> snapshot [
	"get a snapshot image"
	self explicitRequirement.
]
