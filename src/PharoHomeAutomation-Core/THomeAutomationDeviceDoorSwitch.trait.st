Trait {
	#name : #THomeAutomationDeviceDoorSwitch,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
THomeAutomationDeviceDoorSwitch >> isClosed [ 
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
THomeAutomationDeviceDoorSwitch >> isDoorSwitch [ 
 ^true.
]

{ #category : #accessing }
THomeAutomationDeviceDoorSwitch >> isOpened [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
THomeAutomationDeviceDoorSwitch >> renderContentOn: html [
<renderContentOn: true>
	html paragraph: self asString.
	self flag: #TODO.
]
