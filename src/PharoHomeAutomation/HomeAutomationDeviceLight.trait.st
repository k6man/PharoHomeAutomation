Trait {
	#name : #HomeAutomationDeviceLight,
	#category : #PharoHomeAutomation
}

{ #category : #API }
HomeAutomationDeviceLight >> brightness: pourcent [ 
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #API }
HomeAutomationDeviceLight >> off [
	"comment stating purpose of message"
	self explicitRequirement.

]

{ #category : #API }
HomeAutomationDeviceLight >> on [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #API }
HomeAutomationDeviceLight >> renderContentOn: html [
<renderContentOn: true>
	self flag: #TODO.
]
