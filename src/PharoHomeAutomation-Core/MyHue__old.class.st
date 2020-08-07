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
	#name : #'MyHue__old',
	#superclass : #HueControler,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #accessing }
MyHue__old >> cuisine [
<script: 'MyHue new cuisine inspect'>
| url |
url := ('https://',HueControler ip,'/api/',HueControler key,'/groups/6') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
MyHue__old >> cuisine: state [
"
MyHue new cuisine: 255
MyHue new cuisine: true
MyHue new cuisine: false
"
^self group: '6' state: state.
]

{ #category : #accessing }
MyHue__old >> offCuisine [
<script: 'MyHue new offCuisine'>
self group: '6' state: false.
]

{ #category : #accessing }
MyHue__old >> offSalon [
<script: 'MyHue new offSalon'>
self group: '5' state: false.
]

{ #category : #accessing }
MyHue__old >> onCuisine [
<script: 'MyHue new onCuisine'>
self group: '6' state: true.
]

{ #category : #accessing }
MyHue__old >> onSalon [
<script: 'MyHue new onSalon'>
self group: '5' state: true.
]

{ #category : #accessing }
MyHue__old >> salon [
<script: 'MyHue new salon inspect'>
| url |
url := ('https://',HueControler ip,'/api/',HueControler key,'/groups/5') asUrl.
^ STONJSON fromString: (ZnEasy get: url) entity contents.
]

{ #category : #accessing }
MyHue__old >> salon: state [
"
MyHue new salon: 255
MyHue new salon: true
MyHue new salon: false
"
^self group: '5' state: state.
]
