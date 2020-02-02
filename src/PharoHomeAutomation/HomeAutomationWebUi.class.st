Class {
	#name : #HomeAutomationWebUi,
	#superclass : #WAComponent,
	#category : #PharoHomeAutomation
}

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
	
	WorldHomeAutomation devices valuesDo: [ :item | item value renderContentOn: html].

]
