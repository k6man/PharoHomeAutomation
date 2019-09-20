Class {
	#name : #WebCamC1,
	#superclass : #WebCam,
	#category : #PharoHomeAutomation
}

{ #category : #initialize }
WebCamC1 class >> ip: aIp login: aLogin passwd: aPasswd [
	"return new camera object"

	^ self new ip: aIp ; login: aLogin ; passwd: aPasswd ; yourself 
]

{ #category : #accessing }
WebCamC1 >> snapshot [
	"get a snapshot image"

	^ (ZnEasy
		getJpeg:
			'http://' , ip , ':88/cgi-bin/CGIProxy.fcgi?cmd=snapPicture2&usr='
				, login , '&<pwd=' , passwd) scaledToSize: 320 @ 320
]
