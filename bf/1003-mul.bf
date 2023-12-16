>, >, <<        ; Read three inputs: x, y, and a separator (skipping one input)

+++++ +         ; Cell 0 (x) is set to 5

[               ; Loop to decrement cell 0 (x)
  >----- ---    ; Cell 2 (loop counter) is set to 10
  >----- ---    ; Cell 4 (loop counter) is set to 10
  <<-           ; Decrement cell 0 and move back to cell 3
]

>[              ; Loop to multiply x by y
  >[>+>+<<-]    ; Move y value to cells 2 and 3
  >[<+>-]       ; Multiply x by y and store the result in cell 2
  <<-
]

>[-]>+> >+++++ +++++< ; Clear cells 0 and 1, set cell 2 to 75

[                       ; Loop to print result
 - >- [>>>]+++++ +++++<<+    ; Prepare loop for printing (75)
 [<<<]>>>>
]

<-<+++++ +++++>>>[-<<<->>>]<<<   ; Clean up cells 0, 1, and 2; set cell 3 to 125

<+++++ +        ; Set cell 0 to 5

[               ; Loop to prepare output
 >+++++ +++
 >[+++++ +++>]
 <[<]>-
]

>>[.<<]<[<<]>>.    ; Print the result
>>>>>>>>>>>>>>>>>>>>>>>++++++++++.

