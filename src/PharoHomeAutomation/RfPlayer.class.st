Class {
	#name : #RfPlayer,
	#superclass : #Object,
	#instVars : [
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
RfPlayer class >> Setting: aBuilder [
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
	|serialPort return|
	serialPort := self openPort.
	return := (serialPort call: 'ZIA++1234 ',aCmd) withoutPrefix: returnPrefix.
	serialPort close.
	^return.
]

{ #category : #initialization }
RfPlayer >> initialize [ 
	"comment stating purpose of message"
	"serialport := RfPlayerSerialPort new."
	returnFormat := 'JSON'. "Could be 'JSON' 'XML' or '' for simple string"
	returnPrefix := 'ZIA--'.
	
"SerialPort allInstancesDo: [:port| 
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
        openPort: self class port."
]

{ #category : #accessing }
RfPlayer >> openPort [
^RfPlayerSerialPort new 
        baudRate: 115200;
        dataBits: 8;
        stopBitsType: 1;
        parityType: 0;
		  inputFlowControlType: 2;
		  outputFlowControlType: 2;
        openPort: RfPlayer port;
		yourself.
]

{ #category : #accessing }
RfPlayer >> send: aCmd [
	"send cmd"
	self openPort send: 'ZIA++1234 ',aCmd ; close.

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
<script: 'RfPlayer new status inspect'>
	^ (self call: 'STATUS SYSTEM ',returnFormat) withoutPrefix: returnPrefix.
]
