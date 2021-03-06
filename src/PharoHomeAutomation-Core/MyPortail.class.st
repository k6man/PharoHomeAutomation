"
rf := MyRfPlayer new.
rf openPortal .
rf closePortal .

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
	#name : #MyPortail,
	#superclass : #RfPlayerControler,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #API }
MyPortail >> AssocPortal [
<script: 'MyRfPlayer__old new AssocPortal'>
	self somfyRts: true.
	^self send: 'ASSOC A1 RTS QUALIFIER 1'.
]

{ #category : #API }
MyPortail >> closePortal [
<script: 'MyRfPlayer__old new closePortal'>
	self somfyRts: true.
	^self send: 'OFF A1 RTS QUALIFIER 1'.
]

{ #category : #API }
MyPortail >> openPortal [
<script: 'MyRfPlayer__old new openPortal'>
	self somfyRts: true.
	^self send: 'ON A1 RTS QUALIFIER 1'.
]
