"
MyHue new salon: true.
MyHue new salon: false.
MyHue new onSalon.
MyHue new offSalon.
MyHue new salon.

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
	#name : #MyHue,
	#superclass : #Hue,
	#category : #PharoHomeAutomation
}

{ #category : #accessing }
MyHue >> offSalon [
self group: '5' state: false.
]

{ #category : #accessing }
MyHue >> onSalon [
self group: '5' state: true.
]

{ #category : #accessing }
MyHue >> salon [
| url |
url := ('https://',Hue ip,'/api/',Hue key,'/groups/5') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
MyHue >> salon: state [
^self group: '5' state: state.
]
