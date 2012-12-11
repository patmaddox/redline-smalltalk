" Redline Smalltalk, Copyright (c) James C. Ladd. All rights reserved. See LICENSE in the root of this distribution "

TestCase < #SUnitTest.

- test
    | test |
    test := WasRun newWithName: 'testMethod'.
    self assertFalse: test wasRun withMessage: 'test wasRun should be false'.
    test run.
    self assertTrue: test wasRun withMessage: 'test wasRun should be true'.
