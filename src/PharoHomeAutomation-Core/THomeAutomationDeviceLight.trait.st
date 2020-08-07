Trait {
	#name : #THomeAutomationDeviceLight,
	#category : #'PharoHomeAutomation-Core'
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

html mdlAnchorButton
		callback: [ self on ];
		raised;
		rippleEffect;
		with: 'On'.
html mdlAnchorButton
		callback: [ self off ];
		raised;
		rippleEffect;
		with: 'Off'.
html mdlSwitchContainer
		rippleEffect;
		style: 'width: 150px;';
		for: html nextId;
		with: [ html mdlSwitch
				"value: true;"
				onTrue: [ self halt. self on ] onFalse: [ self halt. self off ];
				id: html lastId.
				html mdlSwitchLabel: 'On / Off'.
				].
	html mdlSlider  
		min: 0;
		max: 100;
		value: 75 ;
		callback: [ :value | value crLog . self brightness: value. self halt  ].
	 "html anchor
		callback: [ self on ] ;
      script: (html jQuery this button
         text: true;
         primaryIcon: 'ui-icon-caret-1-n').
	 html anchor
		callback: [ self off ] ;
      script: (html jQuery this button
         text: true;
         primary Unknown input at end ->Icon: 'ui-icon-caret-1-s')."  
]
