Trait {
	#name : #HomeAutomationDeviceCam,
	#category : #PharoHomeAutomation
}

{ #category : #API }
HomeAutomationDeviceCam >> renderContentOn: html [
<renderContentOn: true>
	self flag: #TODO.
]

{ #category : #API }
HomeAutomationDeviceCam >> snapshot [
	"get a snapshot image"
	self explicitRequirement.
]
