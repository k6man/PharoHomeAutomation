Class {
	#name : #RfPlayerSerialPort,
	#superclass : #SerialPort,
	#category : #PharoHomeAutomation
}

{ #category : #instructions }
RfPlayerSerialPort >> call: aCmd [
	|  d return |
	d := Delay forMilliseconds: 10.
	"send cmd"
	self send: aCmd.
	"wait the end of the respond with cr"
	return := ''.
	[return endsWith: (Character cr asString)] whileFalse: [
		d wait. 
		return := return,self readString.
	].
	^return.
]

{ #category : #instructions }
RfPlayerSerialPort >> callOptim: aCmd [
	|  d return |
	d := Delay forMilliseconds: 10.
	"send cmd"
	self send: aCmd.
	"wait the end of the respond with cr"
	return := ''.
	[return endsWith: (Character cr)] whileFalse: [
		d wait. 
		return := return,self readString.
	].
	^return.
]

{ #category : #instructions }
RfPlayerSerialPort >> send: aCmd [
	"send cmd"
	^self nextPutAll: aCmd ; nextPutAll: Character cr asString.

]
