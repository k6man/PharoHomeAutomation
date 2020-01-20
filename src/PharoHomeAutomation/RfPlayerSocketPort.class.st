Class {
	#name : #RfPlayerSocketPort,
	#superclass : #SocketStream,
	#category : #PharoHomeAutomation
}

{ #category : #instructions }
RfPlayerSocketPort >> call: aCmd [
	"send cmd"
	self send: aCmd ; send: Character cr.
	"wait the end of the respond with cr"
	^self upTo: (Character cr).
]

{ #category : #instructions }
RfPlayerSocketPort >> callOptim: aCmd [
	"send cmd"
	self send: aCmd; send: Character cr.
	"wait the end of the respond with cr"
	^self upTo: (Character cr).
]

{ #category : #instructions }
RfPlayerSocketPort >> send: aCmd [
	"send cmd"
	^self nextPutAll: aCmd ; nextPutAll: Character cr asString.

]
