Class {
	#name : #RfPlayerSocketPort,
	#superclass : #SocketStream,
	#category : #PharoHomeAutomation
}

{ #category : #instructions }
RfPlayerSocketPort >> call: aCmd [
	"send cmd"
	self send: aCmd.
	"wait the end of the respond with cr"
	^self upToAll: (Character cr asString).
]

{ #category : #instructions }
RfPlayerSocketPort >> callOptim: aCmd [
	"send cmd"
	self send: aCmd.
	"wait the end of the respond with cr"
	^self upToAll: (Character cr asString).
]

{ #category : #instructions }
RfPlayerSocketPort >> send: aCmd [
	"send cmd"
	^self nextPutAll: aCmd ; nextPutAll: Character cr asString.

]
