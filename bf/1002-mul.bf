,>,          ; Read two ASCII digits into cells 0 and 1

[            ; Start a loop
  -          ; Decrement cell 0 (the first digit)
  >          ; Move to cell 2
  [          ; Start another loop
    -        ; Decrement cell 2 (loop counter)
    >+       ; Increment cell 3 (accumulator)
    <        ; Move back to cell 2
  ]          ; End of the inner loop
  <<         ; Move back to cell 0
  >          ; Move to cell 1
  [          ; Start another loop
    -        ; Decrement cell 1 (the second digit)
    <+       ; Increment cell 4 (accumulator for the second digit)
    >        ; Move to cell 2
  ]          ; End of the inner loop
  <          ; Move back to cell 0
  [>+<-]     ; Multiply cell 3 by cell 4, store result in cell 3
  >.         ; Print the result (ASCII character)
]

