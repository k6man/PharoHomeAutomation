Trait {
	#name : #THomeAutomationDeviceDoor,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #API }
THomeAutomationDeviceDoor >> DoorRenderContentOn: html [
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

{ #category : #API }
THomeAutomationDeviceDoor >> close [
	"comment stating purpose of message"
	self explicitRequirement.

]

{ #category : #API }
THomeAutomationDeviceDoor >> isDoor [
 ^true.
]

{ #category : #API }
THomeAutomationDeviceDoor >> open [
	"comment stating purpose of message"
	self explicitRequirement.
]
