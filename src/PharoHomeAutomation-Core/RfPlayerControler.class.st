Class {
	#name : #RfPlayerControler,
	#superclass : #Object,
	#instVars : [
		'returnFormat',
		'returnPrefix'
	],
	#classInstVars : [
		'serialport',
		'ip',
		'port'
	],
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
RfPlayerControler class >> ip [
	^ ip ifNil: [ip := '']
]

{ #category : #accessing }
RfPlayerControler class >> ip: anObject [
	ip := anObject
]

{ #category : #'open/close' }
RfPlayerControler class >> port [
	^ port ifNil: [port := '2003']
]

{ #category : #'open/close' }
RfPlayerControler class >> port: anObject [
	port := anObject
]

{ #category : #accessing }
RfPlayerControler class >> serialport [
	^ serialport ifNil: [serialport := 'COM3']
]

{ #category : #accessing }
RfPlayerControler class >> serialport: anObject [
	serialport := anObject
]

{ #category : #'open/close' }
RfPlayerControler class >> systemSettings: aBuilder [
	<systemsettings>
	(aBuilder group: #rfPlayer)
		label: 'RFplayer';
		description: 'All settings concerned RFplayer'.	
	(aBuilder setting: #serialport) 
		label: 'RFplayer serial port';
		description: 'Serial Port of your RFplayer';
		setSelector: #serialport:;
		getSelector: #serialport;
		target: RfPlayerControler;
		parent: #rfPlayer.
	(aBuilder setting: #ip) 
		label: 'RFplayer ip adress';
		description: 'Ip adress of your RFplayer';
		setSelector: #ip:;
		getSelector: #ip;
		target: RfPlayerControler;
		parent: #rfPlayer.
	(aBuilder setting: #port) 
		label: 'RFplayer tcp port';
		description: 'Tcp Port of your RFplayer';
		setSelector: #port:;
		getSelector: #port;
		target: RfPlayerControler;
		parent: #rfPlayer.		
]

{ #category : #accessing }
RfPlayerControler >> call: aCmd [
	"call cmd"
	|serialPort return|
	serialPort := self openPort.
	return := (serialPort call: 'ZIA++1234 ',aCmd) withoutPrefix: returnPrefix.
	serialPort close.
	^return.
]

{ #category : #initialization }
RfPlayerControler >> initialize [ 
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
RfPlayerControler >> openPort [
^RfPlayerControler ip isEmpty ifFalse: [
	RfPlayerSocketPort openConnectionToHostNamed: RfPlayerControler ip port: RfPlayerControler port asNumber.
	 ] 
 ifTrue: [
	RfPlayerSerialPort new 
        baudRate: 115200;
        dataBits: 8;
        stopBitsType: 1;
        parityType: 0;
		  inputFlowControlType: 2;
		  outputFlowControlType: 2;
        openPort: RfPlayerControler serialport;
		yourself.
	 ] 
]

{ #category : #accessing }
RfPlayerControler >> send: aCmd [
	"send cmd"
	self openPort send: 'ZIA++1234 ',aCmd ; close.

]

{ #category : #accessing }
RfPlayerControler >> somfyRts: aStatus [
	^aStatus
	ifTrue: [ 
		self send: 'FREQ L 433420'
	]
   ifFalse: [
		self send: 'FREQ L 433920'
	 ]
	 
]

{ #category : #accessing }
RfPlayerControler >> status [
<script: 'RfPlayerControler new status inspect'>
	^ (self call: 'STATUS SYSTEM ',returnFormat) withoutPrefix: returnPrefix.
]
