Trait {
	#name : #THomeAutomationDeviceDoor,
	#category : #'PharoHomeAutomation-Core'
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
	html paragraph: 'Porte ', self room,'.'.

html mdlAnchorButton
		callback: [ self open ];
		raised;
		rippleEffect;
		with: 'Ouverture'.
html mdlAnchorButton
		callback: [ self close ];
		raised;
		rippleEffect;
		with: 'Fermeture'.

	
]
