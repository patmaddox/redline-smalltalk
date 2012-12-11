" Redline Smalltalk, Copyright (c) James C. Ladd. All rights reserved. See LICENSE in the root of this distribution "

TestCase < #ArrayTest.

- test
    self testSize.
    self testAt.
    self testDo.

- testSize
    | array |
    array := #().
    self assert: array size equals: 0 withMessage: 'New Array#size should be 0'.
    array := #(1 'one' 17 symbol $f 3).
    self assert: array size equals: 6 withMessage: 'Array#size should report correct # of elements'.

- testAt
    | array element |

    array := #(1 'one' 17 symbol $f 3).
    element := array at: 3.

    self assert: element equals: 17 withMessage: 'Array test failed'.

- testDo
    | array lastElement passes |

    "How do we test this?"
    array := #(1 2 3 4 5).
    lastElement := 1.
    passes := 0.
    array do: [ :each |
      self assertTrue: (each == lastElement) withMessage: 'should be equal'.
      lastElement := each + 1.
      passes := passes + 1.
    ].

    self assert: passes equals: 5 withMessage: 'should be 5 items iterated over in the array.'.


