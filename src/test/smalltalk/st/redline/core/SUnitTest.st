" Redline Smalltalk, Copyright (c) James C. Ladd. All rights reserved. See LICENSE in the root of this distribution "

Object < #SUnitTest.

- test
    | test |
    test := STestCase newWithName: 'testMethod'.
    Transcript show: 'wasRun is: '.
    Transcript show: test wasRun.
    test run.
    Transcript show: 'wasRun is: '.
    Transcript show: test wasRun.