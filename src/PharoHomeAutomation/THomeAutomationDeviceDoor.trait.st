Trait {
	#name : #THomeAutomationDeviceDoor,
	#category : #PharoHomeAutomation
}

{ #category : #API }
THomeAutomationDeviceDoor >> close [
	"comment stating purpose of message"
	self explicitRequirement.

]

{ #category : #API }
THomeAutomationDeviceDoor >> open [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #API }
THomeAutomationDeviceDoor >> renderContentOn: html [
<renderContentOn: true>
	html paragraph: self asString.
	self flag: #TODO.
]
