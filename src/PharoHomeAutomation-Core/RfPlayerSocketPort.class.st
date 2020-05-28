Class {
	#name : #RfPlayerSocketPort,
	#superclass : #SocketStream,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #instructions }
RfPlayerSocketPort >> call: aCmd [
	"send cmd"
	self send: aCmd.
	"wait the end of the respond with cr"
	^self upTo: (Character cr).
]

{ #category : #instructions }
RfPlayerSocketPort >> send: aCmd [
	"send cmd"
	^self nextPutAll: aCmd ; nextPutAll: Character cr asString ; flush.

]
