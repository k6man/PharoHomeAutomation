Class {
	#name : #RpcSerialPort,
	#superclass : #SerialPort,
	#category : #PharoHomeAutomation
}

{ #category : #instructions }
RpcSerialPort >> call: aCmd [
	|  d buffer  return |
	d := Delay forMilliseconds: 100.
	"send cmd"
	self nextPutAll: aCmd ; nextPutAll: Character cr asString.
	"wait the starting of a respond"
	buffer := ''.
	[buffer isEmpty] whileTrue: [
		d wait. 
		buffer := self readString.
	].
	"wait the end of the respond no new string"
	return := buffer.
	[buffer isEmpty] whileFalse: [
		d wait. 
		buffer := self readString.
		return := return,buffer.
	].
	^return.
]

{ #category : #instructions }
RpcSerialPort >> send: aCmd [
	"send cmd"
	^self nextPutAll: aCmd ; nextPutAll: Character cr asString.

]
