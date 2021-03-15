Trait {
	#name : #THomeAutomationDeviceDoorSwitch,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
THomeAutomationDeviceDoorSwitch >> doorSwitchRenderContentOn: html [
<renderContentOn: true>
		html paragraph: [ :h | 
		h strong: 'porte:'.
			(self move) ifTrue: [ html mdlIconBadge dataBadge: '!'; overlap; 	with: 'account_box'. ]
				 ifFalse: [ html mdlIconBadge with: 'account_box'. ]
		 ].
]

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
