" Redline Smalltalk, Copyright (c) James C. Ladd. All rights reserved. See LICENSE in the root of this distribution "

TestCase < #SUnitTest.

- test
    self testRun.
    self testSetUp.

- testRun
    | test |
    test := WasRun newWithName: 'testMethod'.
    self assertFalse: test wasRun withMessage: 'test wasRun should be false'.
    test run.
    self assertTrue: test wasRun withMessage: 'test wasRun should be true'.

- testSetUp
    | test |
    test := WasRun newWithName: 'testMethod'.
    self assertFalse: test wasSetUp withMessage: 'test wasSetUp should be false'.
    test run.
    self assertTrue: test wasSetUp withMessage: 'test wasSetUp should be true'.