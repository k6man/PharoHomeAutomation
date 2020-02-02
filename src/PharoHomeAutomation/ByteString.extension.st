Extension { #name : #ByteString }

{ #category : #'*PharoHomeAutomation' }
ByteString >> asTopic [
	| t |
	t := Topic new.
	^t,self.
]
