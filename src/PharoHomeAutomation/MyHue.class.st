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
MyHue >> cuisine [
<script: 'MyHue new cuisine inspect'>
| url |
url := ('https://',Hue ip,'/api/',Hue key,'/groups/6') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
MyHue >> cuisine: state [
^self group: '6' state: state.
]

{ #category : #accessing }
MyHue >> offCuisine [
<script: 'MyHue new offCuisine'>
self group: '6' state: false.
]

{ #category : #accessing }
MyHue >> offSalon [
<script: 'MyHue new offSalon'>
self group: '5' state: false.
]

{ #category : #accessing }
MyHue >> onCuisine [
<script: 'MyHue new onCuisine'>
self group: '6' state: true.
]

{ #category : #accessing }
MyHue >> onSalon [
<script: 'MyHue new onSalon'>
self group: '5' state: true.
]

{ #category : #accessing }
MyHue >> salon [
<script: 'MyHue new salon inspect'>
| url |
url := ('https://',Hue ip,'/api/',Hue key,'/groups/5') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
MyHue >> salon: state [
^self group: '5' state: state.
]
