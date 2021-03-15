Trait {
	#name : #THomeAutomationDevicePir,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
THomeAutomationDevicePir >> isPir [
 ^true.
]

{ #category : #accessing }
THomeAutomationDevicePir >> move [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #accessing }
THomeAutomationDevicePir >> pirRenderContentOn: html [
<renderContentOn: true>
		html paragraph: [ :h | 
		h strong: 'mouvement:'.
			(self move) ifTrue: [ html mdlIconBadge dataBadge: '!'; overlap; 	with: 'account_box'. ]
				 ifFalse: [ html mdlIconBadge with: 'account_box'. ]
		 ].
]
