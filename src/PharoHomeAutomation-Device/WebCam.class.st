Class {
	#name : #WebCam,
	#superclass : #Cam,
	#category : #'PharoHomeAutomation-Device'
}

{ #category : #'as yet unclassified' }
WebCam >> ip [
	"get ip"
	^ip
]

{ #category : #'as yet unclassified' }
WebCam >> ip: aIp [
	"set ip"
	ip := aIp
	
]

{ #category : #accessing }
WebCam >> login: aLogin [
	"set login"
	login := aLogin
	
]

{ #category : #'as yet unclassified' }
WebCam >> passwd: aPasswd [
	"set password"
	passwd := aPasswd
	
]

{ #category : #accessing }
WebCam >> snapshot [
	"get a snapshot image"
	self subclassResponsibility
]
