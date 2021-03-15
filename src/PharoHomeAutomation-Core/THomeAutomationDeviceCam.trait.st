Trait {
	#name : #THomeAutomationDeviceCam,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #API }
THomeAutomationDeviceCam >> camRenderContentOn: html [
<renderContentOn: true>
	html image form: (self snapshot scaledToSize: 320 @ 240) .

]

{ #category : #API }
THomeAutomationDeviceCam >> isCam [
 ^true.

]

{ #category : #API }
THomeAutomationDeviceCam >> snapshot [
	"get a snapshot image"
	self explicitRequirement.
]
