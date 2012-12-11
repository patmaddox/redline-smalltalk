" Redline Smalltalk, Copyright (c) James C. Ladd. All rights reserved. See LICENSE in the root of this distribution "

Object < #STestCase.

+ newWithName: aString
    ^ self new name: aString; yourself.

- name: aString
    name := aString.

- setUp

- tearDown

- run
    self setUp.
    self perform: name.
    self tearDown.
    ^ TestResult new.

