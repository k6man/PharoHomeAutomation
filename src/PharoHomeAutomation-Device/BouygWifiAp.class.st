"
wifiap := BouygWifiAp ip: '192.168.1.254'  passwd: 'xxxxxxxx' .
wifiap on.
wifiap off.
wifiap := nil.

Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	url_login:		<Object>
	url_wireless:		<Object>


    Implementation Points
"
Class {
	#name : #BouygWifiAp,
	#superclass : #WifiAp,
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #initialize }
BouygWifiAp class >> ip: aIp passwd: aPasswd [
	"return new camera object"

	^ self new ip: aIp ; passwd: aPasswd ; yourself 
]

{ #category : #private }
BouygWifiAp class >> urlLogin [
	^ '/api/v1/login'
]

{ #category : #private }
BouygWifiAp class >> urlWireless [
	^ '/api/v1/wireless'
]

{ #category : #api }
BouygWifiAp >> off [
	"Disable Wifi Access Point"

	ZnClient new
		http;
		host: ip;
		post: self class urlLogin contents: 'password=' , passwd;
		put: self class urlWireless contents: 'radio.enable=0';
		close
]

{ #category : #api }
BouygWifiAp >> on [
	"Enable Wifi Access Point"

	ZnClient new
		http;
		host: ip;
		post: self class urlLogin contents: 'password=' , passwd;
		put: self class urlWireless contents: 'radio.enable=1';
		close
]
