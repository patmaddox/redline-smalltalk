Object < #STestCase
    instanceVariableNames: 'name wasRun'.

+ newWithName: aString
    ^ self new name: aString; yourself.

- initialize
    wasRun := 'false'.

- run
  self perform: #testMethod.

- testMethod
  wasRun := 'true'.

- name: aString
    name := aString.

- wasRun
    ^ wasRun.
