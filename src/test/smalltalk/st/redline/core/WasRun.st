" Redline Smalltalk, Copyright (c) James C. Ladd. All rights reserved. See LICENSE in the root of this distribution "

STestCase < #WasRun
    instanceVariableNames: 'name wasRun wasSetUp'.

- initialize
    super initialize.
    wasRun := false.
    wasSetUp := false.

- setUp
    wasSetUp := true.

- testMethod
    wasRun := true.

- wasRun
    ^ wasRun.

- wasSetUp
    ^ wasSetUp.

