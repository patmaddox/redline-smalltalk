" Redline Smalltalk, Copyright (c) James C. Ladd. All rights reserved. See LICENSE in the root of this distribution "

STestCase < #WasRun
    instanceVariableNames: 'name log'.

- initialize
    super initialize.
    log := OrderedCollection new.

- setUp
    log add: #setUp.

- tearDown
    log add: #tearDown.

- testMethod
    log add: #testMethod.

- log
    ^ log.

