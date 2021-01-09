Class {
	#name : #Topic,
	#superclass : #ByteString,
	#type : #bytes,
	#category : #'PharoHomeAutomation-Core'
}

{ #category : #'as yet unclassified' }
Topic >> matchTopicNode: aTopicNodeString [
"compare two topic node"
^ aTopicNodeString = '+' or: [
            aTopicNodeString = '#' or: aTopicNodeString = self           
            ].
]

{ #category : #'as yet unclassified' }
Topic >> matchingTopic: aTopicString [
"compare two topic"
|raw_split aTopicString_split|
^ (self matchTopicNode: aTopicString) or: [
             raw_split:= '/' split: self.
            aTopicString_split :=  '/' split: aTopicString.
            1 to: (aTopicString_split size) do: [ :item |
            ((raw_split at: item) matchTopicNode: (aTopicString_split at: item)) ifFalse: [^false].
            ].
 ^true.
].
]
