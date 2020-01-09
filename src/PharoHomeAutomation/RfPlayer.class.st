Class {
	#name : #RfPlayer,
	#superclass : #Object,
	#instVars : [
		'serialport',
		'returnFormat',
		'returnPrefix'
	],
	#classInstVars : [
		'port'
	],
	#category : #PharoHomeAutomation
}

{ #category : #'open/close' }
RfPlayer class >> RfPlayerSetting: aBuilder [
	<systemsettings>
		(aBuilder group: #rfPlayer)
		label: 'RFplayer';
		description: 'All settings concerned RFplayer'.
		
	(aBuilder setting: #port) 
		label: 'RFplayer serial port';
		description: 'Serial Port of your RFplayer';
		setSelector: #port:;
		getSelector: #port;
		target: RfPlayer;
		parent: #rfPlayer.
		
]

{ #category : #'open/close' }
RfPlayer class >> newOnPort: comPortNumber [
	"comment stating purpose of message"
^ self new comPortNumber: comPortNumber ; postInitialise ; yourself.
]

{ #category : #'open/close' }
RfPlayer class >> port [
	^ port ifNil: [port := 'COM3']
]

{ #category : #'open/close' }
RfPlayer class >> port: anObject [
	port := anObject
]

{ #category : #accessing }
RfPlayer >> call: aCmd [
	"call cmd"
	^serialport call: 'ZIA++1234 ',aCmd.

]

{ #category : #initialization }
RfPlayer >> initialize [ 
	"comment stating purpose of message"
	serialport := RpcSerialPort new.
	returnFormat := 'JSON'. "Could be 'JSON' 'XML' or '' for simple string"
	returnPrefix := 'ZIA--'.
	
SerialPort allInstancesDo: [:port| 
	(port asString includesSubstring: (self class port))
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
        openPort: self class port.
]

{ #category : #accessing }
RfPlayer >> send: aCmd [
	"send cmd"
	^serialport send: 'ZIA++1234 ',aCmd.

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
RfPlayer >> somfyRts: aStatus [
	^aStatus
	ifTrue: [ 
		self send: 'FREQ L 433420'
	]
   ifFalse: [
		self send: 'FREQ L 433920'
	 ]
	 
]

{ #category : #accessing }
RfPlayer >> status [
	^ (serialport call: 'ZIA++1234 STATUS SYSTEM ',returnFormat) withoutPrefix: returnPrefix.
]
