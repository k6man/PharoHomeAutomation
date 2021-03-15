Trait {
	#name : #THomeAutomationDeviceBattery,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
THomeAutomationDeviceBattery >> battery [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
THomeAutomationDeviceBattery >> batteryRenderContentOn: html [
<renderContentOn: true>
	html paragraph: [ :h | 
		(self battery > 50 ) ifTrue: [ html mdlIconBadge dataBadge: 'ok'; overlap; 	with: 'battery_std'. ]
				 ifFalse: [ html mdlIconBadge dataBadge: self battery; overlap; with: 'battery_std'. ]
		 ].

]

{ #category : #accessing }
THomeAutomationDeviceBattery >> isBattery [ 
 ^true.
]
