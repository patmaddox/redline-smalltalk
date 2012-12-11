" Redline Smalltalk, Copyright (c) James C. Ladd. All rights reserved. See LICENSE in the root of this distribution "

STestCase < #WasRun
    instanceVariableNames: 'name wasRun'.

- initialize
    super initialize.
    wasRun := false.

- wasRun
    ^ wasRun.

- testMethod
    wasRun := true.
