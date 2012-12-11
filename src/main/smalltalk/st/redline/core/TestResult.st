" Redline Smalltalk, Copyright (c) James C. Ladd. All rights reserved. See LICENSE in the root of this distribution "

Object < #TestResult
    instanceVariableNames: 'count fail'.

- initialize
    count := 1.
    fail  := 0.

- summary
    ^ '1 run, 0 failed'.
    "^ count asString , ' run, 0 failed'."