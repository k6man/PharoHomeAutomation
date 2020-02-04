Class {
	#name : #HomeAutomationWebUi,
	#superclass : #WAComponent,
	#category : #PharoHomeAutomation
}

{ #category : #'class initialization' }
HomeAutomationWebUi class >> initialize [ 
	self register.
]

{ #category : #'tools registry' }
HomeAutomationWebUi class >> register [ 
	| application |
	application := WAAdmin register: self asApplicationAt: 'welcome'.
	WAAdmin defaultDispatcher defaultName: 'welcome'.
	application
		addLibrary: JQDeploymentLibrary;
		addLibrary: JQUiDeploymentLibrary;
		addLibrary: JQUiLightnessTheme;
		addLibrary: WAWelcomeFiles;
		scriptGeneratorClass: JQScriptGenerator
]

{ #category : #rendering }
HomeAutomationWebUi >> renderContentOn: html [
	html image url: 'http://www.seaside.st/styles/logo-plain.png'.
	html paragraph: 'Pharo Home Automation.'.
	html paragraph: [ 
		html text: 'To learn more about Seaside components follow the link to the book: '.
		html anchor
			url: 'http://book.seaside.st/book/fundamentals/rendering-components';
			with: 'Dynamic Web Development with Seaside'.
		html text: '.' ].
	   html anchor
      onClick: ( "html javascript
         alert: 'Nothing to configure right now.'."
			Transcript crShow: 'click Configure'
		);
      script: (html jQuery this button
         text: false;
         primaryIcon: 'ui-icon-gear');
      with: 'Configure'.
	"WorldHomeAutomation devices valuesDo: [ :item | item value renderContentOn: html]."

]
