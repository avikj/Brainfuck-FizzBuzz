>>++++++++++>++++++++++[-<[-<+<+>>]<[->+<]>>]<[-]<<- store 99 in (0); (0) is the loop control var

(2) = 10's place; (3) = 1's

(4) is a temp boolean for whether or not to carry over
(5) is temp to store digit

>>>>>>++++++++++ (6) stores newline char
>++++++++++++++++++++++++++++++++++++++++++++++++ (7) stores 48 (ascii of 0)
<<<<<<<
[
  - decrement loop control var
  >>>+ move to and increment 1's place
  >+< assume carry over; set to false later if it shouldnt carry over
  ---------- if it was 10; it should now be 0 and skip loop
  [
    ++++++++++ undo subtract by 10
    >-< set (4) to false to not carry over
    [->>+<<] move (3) to (5)
  ]
  >>[-<<+>>] move (5) back to (3)  

  < move to (4)
  [ if loop is entered; it should carry over
    - set (4) back to false
    <<+ increment 10's
    >>
  ]
   #
  >>. print newline and move to (6)
  >[-<<<<+<+<+>>>>>>]move (7) to (3); (2); and (1)

  <<<<<.>. move to (2) and (3) and print 10's and 1's place
  <<[->->->>>>+<<<<<<] move (1) to (7) and subtract from (2) and (3)
  <
]