      ******************************************************************
      *
      * (C) Copyright 2010-2024 Rocket Software, Inc. or one of its affiliates. All Rights Reserved.
      *
      * This sample code is supplied for demonstration purposes only
      * on an "as is" basis and is for use at your own risk.
      *
      ******************************************************************

      $set sourceformat(variable)
       program-id. ColonColonSyntax.

       local-storage section.
       01 vector-t typedef.
         03 x float-long.
         03 y float-long.
       01 disp.
         03 value '('.
         03 x pic 9.99.
         03 value ', '.
         03 y pic 9.99.
         03 value ')'.

       01 v vector-t.
       01 res vector-t.
       01 total float-long.

       procedure division.
      *>Assigning values using :: to reference members of group item
           move 5 to v::x
           move 3 to v::y

      *>First compute the total, taking x and y from v
           compute total = v::x + v::y

      *>Now compute the components of the unit vector, store in res
           compute res::x = v::x / total
           compute res::y = v::y / total

      *>Move these components to be displayed
           move res::x to disp::x
           move res::y to disp::y
           display disp
           goback.
       end program.
