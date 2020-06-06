Trait {
	#name : #THomeAutomationDeviceLight,
	#category : #PharoHomeAutomation
}

{ #category : #API }
THomeAutomationDeviceLight >> brightness: pourcent [ 
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #API }
THomeAutomationDeviceLight >> off [
	"comment stating purpose of message"
	self explicitRequirement.

]

{ #category : #API }
THomeAutomationDeviceLight >> on [
	"comment stating purpose of message"
	self explicitRequirement.
]

{ #category : #API }
THomeAutomationDeviceLight >> renderContentOn: html [
<renderContentOn: true>
	html paragraph: 'Lumière ', self room,'.'.
	self flag: #TODO.
	
html mdlSwitchContainer
		rippleEffect;
		style: 'width: 150px;';
		for: html nextId;
		with: [ html mdlSwitch
				"value: true;"
				id: html lastId;
				onTrue: [ self halt. self on ] onFalse: [ self off ].
			html mdlSwitchLabel: 'On / Off' ].
	
	 "html anchor
		callback: [ self on ] ;
      script: (html jQuery this button
         text: true;
         primaryIcon: 'ui-icon-caret-1-n').
	 html anchor
		callback: [ self off ] ;
      script: (html jQuery this button
         text: true;
         primaryIcon: 'ui-icon-caret-1-s')."
]