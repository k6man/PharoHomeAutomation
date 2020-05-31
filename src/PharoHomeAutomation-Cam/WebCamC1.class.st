"
(WebCamC1 ip: '192.168.1.4' login:'c1' passwd:'passwd') snapshot inspect

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


    Implementation Points
"
Class {
	#name : #WebCamC1,
	#superclass : #WebCam,
	#category : #'PharoHomeAutomation-Cam'
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
				, login , '&<pwd=' , passwd) 
]
