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
(8) stores 99; this will be the main loop control var
>>>>++++++++++[->+>+<<]>[->[-<<+>>>+<]>[-<+>]<<]>[-]<<-
>++++++++++ Store newline in index (9)
>>++++++++++++++++++++++++++++++++++++++++++++++++ (11) stores 48 (ascii of 0)
<<<
Use (5) to store mod 3 and (6) to store mod 5
Use (10) to store whether or not it is a multiple of 3
(12) is a temp to store mod values temporarily
(13) stores the actual current value

(14) stores 10's place
(15) stores 1's place
(16) is flag for whether or not to carry over
[
  - decrement loop control var
  >>>>>+<<<<<<<+<+ increment current value; increment mod 5 and 3; pointer is now at (5) (index of mod 3)
  --- if mod 3 was equal to 3 this should now be 0 and not enter the loop
  >>>>>+<<<<< assume it is multiple of 3; if it is not multiple of 3; it will enter the loop
  [
    +++ undo subtracting 3
    [->>>>>>>+<<<<<<<] move (5) to (12)
    >>>>>-<<<<< make (10) false
  ]
  >>>>>>>[-<<<<<<<+>>>>>>>] move (12) back to (5)
  
  <<
  [ enter loop if its a multiple of 3
    <<<<<<<<<<.>.>>>..>>>>>> print 'Fizz'
    [-] clear value to exit loop
  ]
  <<<<
  ----- if mod 5 was equal to 5 this should now be 0 and not enter the loop
  >>>>+<<<< assume it is multiple of 5; if it is not multiple of 5; it will enter the loop
  [
    +++++ undo subtracting 5
    [->>>>>>+<<<<<<]move (6) to (12)
    >>>>-<<<< make (10) false
  ]
  >>>>>>[-<<<<<<+>>>>>>] move (12) back to (6)
  
  <<
  [ enter loop if its a multiple of 5
    <<<<<<<<.>.>..>>>>>> print 'Buzz'
    [-] clear value to exit loop
  ]pointer is at (10)
  
  >>>>>+ increment 1's place
  >+< initially set carry over flag (16) to true
  ---------- if it was 10; it is now 0 and will skip following loop
  [
    ++++++++++ undo subtract by 10
    >-< set carry over flag to false
    [-<<<+>>>] move to (12) to store temporarily
  ]
  <<<[->>>+<<<]>>> move (12) back to (15)
  > move to (16); carry over flag
  [ if loop is entered; carry over
    - set (16) back to false
    <<+>> increment 10's place
  ] currently at (16)
  <<<<<[->+>>+>+<<<<] move (11) to 10's and 1's place and to (12) to store temporarily
  >>>.>. move to (14) and (15) to print 10's and 1's place
  <<<[-<+>>>->-<<<] move (12) back to (11) while subtracting back from (14) and (15)

  <<<.< print newline and move back to loop control var index (8)
]