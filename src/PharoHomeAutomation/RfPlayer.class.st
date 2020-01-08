Class {
	#name : #RfPlayer,
	#superclass : #Object,
	#instVars : [
		'serialport',
		'comPortNumber',
		'returnFormat',
		'returnPrefix'
	],
	#classInstVars : [
		'returnPrefix'
	],
	#category : #PharoHomeAutomation
}

{ #category : #'open/close' }
RfPlayer class >> newOnPort: comPortNumber [
	"comment stating purpose of message"
^ self new comPortNumber: comPortNumber ; postInitialise ; yourself.
]

{ #category : #accessing }
RfPlayer >> comPortNumber [
	^ comPortNumber
]

{ #category : #accessing }
RfPlayer >> comPortNumber: anObject [
	comPortNumber := anObject
]

{ #category : #initialization }
RfPlayer >> initialize [ 
	"comment stating purpose of message"
	serialport := RpcSerialPort new.
	returnFormat := 'JSON'. "Could be 'JSON' 'XML' or '' for simple string"
	returnPrefix := 'ZIA--'.
]

{ #category : #initialization }
RfPlayer >> postInitialise [ 
	"comment stating purpose of message"
SerialPort allInstancesDo: [:port| 
	(port asString includesSubstring: comPortNumber)
	 ifTrue: 
		[port close ]
	].
serialport 
        baudRate: 115200;
        dataBits: 8;
        stopBitsType: 1;
        parityType: 0;
		  inputFlowControlType: 2;
		  outputFlowControlType: 2;
        openPort: comPortNumber.
]

{ #category : #accessing }
RfPlayer >> serialport [
	^ serialport
]

{ #category : #accessing }
RfPlayer >> serialport: anObject [
	serialport := anObject
]

{ #category : #accessing }
RfPlayer >> status [
	^ (serialport call: 'ZIA++1234 STATUS SYSTEM ',returnFormat) withoutPrefix: returnPrefix.
]
