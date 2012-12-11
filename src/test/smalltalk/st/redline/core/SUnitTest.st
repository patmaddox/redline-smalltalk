" Redline Smalltalk, Copyright (c) James C. Ladd. All rights reserved. See LICENSE in the root of this distribution "

TestCase < #SUnitTest.

- test
    self testRun.
    self testResult.

- testRun
    | test |
    test := WasRun newWithName: 'testMethod'.
    self assert: test log size equals: 0 withMessage: 'test log should be empty'.
    test run.
    self assert: test log size equals: 3 withMessage: 'test log should have 3 elements'.
    self assert: (test log at: 1) equals: #setUp withMessage: 'test log at: 1 should equal #setUp'.
    self assert: (test log at: 2) equals: #testMethod withMessage: 'test log at: 2 should equal #testMethod'.
    self assert: (test log at: 3) equals: #tearDown withMessage: 'test log at: 3 should equal #tearDown'.

- testResult
    | test result |
    test := WasRun newWithName: 'testMethod'.
    result := test run.
    self assert: result summary equals: '1 run, 0 failed' withMessage: 'Expected test result summary to report results'.
