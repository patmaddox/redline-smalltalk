" Redline Smalltalk, Copyright (c) James C. Ladd. All rights reserved. See LICENSE in the root of this distribution "

TestCase < #OrderedCollectionTest.

- test
    self testSize.
    self testAddChangesSize.
    self testAt.

- testSize
    | collection |
    collection := OrderedCollection new.
    self assert: collection size equals: 0 withMessage: 'New OrderedCollection#size should be 0'.

- testAddChangesSize
    | collection |
    collection := OrderedCollection new.
    collection add: #foo.
    self assert: collection size equals: 1 withMessage: 'OrderedCollection#add: should change size'.

- testAt
    | collection |
    collection := OrderedCollection new.
    collection add: #foo.
    self assert: (collection at: 1) equals: #foo withMessage: 'OrderedCollection#at: should return the correct value'.
