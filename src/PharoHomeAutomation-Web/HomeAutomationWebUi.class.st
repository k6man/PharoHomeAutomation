Class {
	#name : #HomeAutomationWebUi,
	#superclass : #MDLApplication,
	#category : #'PharoHomeAutomation-Web'
}

{ #category : #'class initialization' }
HomeAutomationWebUi class >> initialize [ 
	self register.
]

{ #category : #'tools registry' }
HomeAutomationWebUi class >> register [ 
	| application |
	application := WAAdmin register: self asApplicationAt: 'home'.
	WAAdmin defaultDispatcher defaultName: 'home'.
	application
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary;
		"addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQUiLightnessTheme;
		addLibrary: WAWelcomeFiles;"
		scriptGeneratorClass: JQScriptGenerator
]

{ #category : #rendering }
HomeAutomationWebUi >> canBeRoot [
	^ true
]

{ #category : #rendering }
HomeAutomationWebUi >> initialize [
	super initialize. 
	self primaryColor: MDLColor indigo secondaryColor: MDLColor pink.
]

{ #category : #rendering }
HomeAutomationWebUi >> renderContentOn: html [
"	html image url: 'http://www.seaside.st/styles/logo-plain.png'.
	html paragraph: 'Pharo Home Automation.'.
	html paragraph: [ 
		html text: 'To learn more about Seaside components follow the link to the book: '.
		html anchor
			url: 'http://book.seaside.st/book/fundamentals/rendering-components';
			with: 'Dynamic Web Development with Seaside'.
		html text: '.' ]."
"	   html anchor
      onClick: ( html javascript
         alert: 'Nothing to configure right now.'
		);
		callback: [ Transcript crShow: 'click Configure' ] ;
      script: (html jQuery this button
         text: false;
         primaryIcon: 'ui-icon-gear');
      with: 'Configure'.
"
	self renderRoomsOn: html.

]

{ #category : #rendering }
HomeAutomationWebUi >> renderRoomsOn: html [
"| mdltw |
mdltw := MDLTabWidget new.
WorldHomeAutomation rooms do: [ :room | mdltw  addTabNamed: room content: [
		(WorldHomeAutomation devicesInRoom:room) valuesDo: [ :device | device renderContentOn: html].
		]
	].
html render: mdltw.
"
WorldHomeAutomation rooms do: [ :room | 
	(WorldHomeAutomation devicesInRoom:room) valuesDo: [ :device | device renderContentOn: html].
		].


"	html
		render:
			(MDLTabWidget new
				addTabNamed: 'Tab 1' content: 'First tab';
				addTabNamed: 'Tab 2' content: 'Second tab';
				yourself).
		WorldHomeAutomation devices valuesDo: [ :item | item value renderContentOn: html].
		
	"


]

{ #category : #rendering }
HomeAutomationWebUi >> style [
	^ '.mdl-pagination__current{
        box-shadow: inset 0px -4px 0px 0px #E91E63 !important;
    }'
]

{ #category : #rendering }
HomeAutomationWebUi >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'Home Automation'.
	anHtmlRoot meta
		attributeAt: 'name' put: 'viewport';
		content: 'width=device-width, initial-scale=1'.
	self updateTabIconRoot: anHtmlRoot.
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://code.getmdl.io/1.3.0/material.light_blue-blue.min.css').
	anHtmlRoot javascript add: 'hljs.initHighlightingOnLoad();'
]

{ #category : #rendering }
HomeAutomationWebUi >> updateTabIconRoot: anHtmlRoot [
	anHtmlRoot link
		relationship: 'apple-touch-icon';
		attributeAt: 'sizes' put: '120x120';
		url: (MDLDemoLibrary urlOf: 'appleicon120x120Png').
	#('32x32' '16x16')
		do: [ :size | 
			anHtmlRoot link
				relationship: 'icon';
				type: 'image/png';
				url: (MDLDemoLibrary urlOf: 'favicon' , size , 'Png');
				attributeAt: 'sizes' put: size ].
	anHtmlRoot link
		relationship: 'manifest';
		url: (MDLDemoLibrary urlOf: 'siteWebmanifest').
	anHtmlRoot meta
		name: 'msapplication-TileColor';
		content: '#da532c'.
	anHtmlRoot link
		relationship: 'mask-icon';
		attributeAt: 'color' put: '#5bbad5';
		url: (MDLDemoLibrary urlOf: 'safaripinnedtabSvg').
	anHtmlRoot meta
		name: 'theme-color';
		content: '#ffffff'
]
