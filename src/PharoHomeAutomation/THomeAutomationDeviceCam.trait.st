Trait {
	#name : #THomeAutomationDeviceCam,
	#category : #PharoHomeAutomation
}

{ #category : #API }
THomeAutomationDeviceCam >> renderContentOn: html [
<renderContentOn: true>
	html image form: (self snapshot seasideMimeDocument).

]

{ #category : #API }
THomeAutomationDeviceCam >> snapshot [
	"get a snapshot image"
	self explicitRequirement.
]
