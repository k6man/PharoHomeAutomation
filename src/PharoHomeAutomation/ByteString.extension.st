Extension { #name : #ByteString }

{ #category : #'*PharoHomeAutomation' }
ByteString >> asTopic [
	| t |
	t := Topic new.
	^t,self.
]

{ #category : #'*PharoHomeAutomation' }
ByteString >> asZwaveTopic [
	| t |
	t := ZwaveTopic new.
	^t,self.
]
