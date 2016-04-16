First 5 indices should store FiBuz
>>>>>>++++++>+++++++++++ store 6 in (6) and 11 in (7) for multiplication; pointer is now at (5)      
[
  <
  [  move (6) to (5) and (4)
    -<+<+>>
  ]
  << move pointer to (4)
  [  move (4) to (6)
    ->>+<<
  ]
  >>> move to (7)
  - decrement (7)
]
< move to (6)
[-] clear value at (6)
< move to (5)
[-<+<+<+<+<+>>>>>] move (5) to indices (0) to 4; pointer is at (5)

first 5 indices now store BBBBB

>>+++>+++++++++++++ store 3 at (7) and 13 at (8)
[
  < move pointer to (7)
  [
    -<+<+>> move (7) to (6) and (5)
  ]
  < move to (6)
  [  move (6) to (7)
    ->+<
  ]
  >> move to (8)
  - decrement (8)
]
< move to (7)
[-] clear value at (7)
<< move to (5)

(5) now stores 39; pointer is at (5)

[-<+<+<<+>>>>] move (5) to (1); (3); and (4)
First 5 indices now store BiBii

<<<<<++++ move to (0) and increment to 'F'
First 6 indices now store FiBii

>>>>>++++++++++++ move pointer to (5) and increment to 12
[-<+<+>>] move (5) to (4) and (3); making their values 'u'

<+++++ move pointer to (4) and increment to 'z'

First 5 indices now store 'FiBuz'