,>,    ; Read two ASCII digits into cells 0 and 1

>+++++ ; Initialize a loop counter in cell 2 (value = 5)
[
  >++++++++<- ; Loop to subtract 5 from cell 2 until it's zero
]

> ; Move to cell 3

[   ; Start a loop
  - ; Decrement cell 0 (the first digit)
  << - ; Move to cell 2 and decrement the loop counter
  >> ; Move back to cell 0

]   ; End of the loop

<< ; Move back to cell 0

[   ; Start another loop
  - ; Decrement cell 0
  <+ ; Increment cell 1 (the second digit)
  > ; Move to cell 3

]   ; End of the loop

<.  ; Print the result in cell 0 (should be the sum)

