      ******************************************************************
      *
      * (C) Copyright 2010-2023 Micro Focus or one of its affiliates.
      *
      * This sample code is supplied for demonstration purposes only
      * on an "as is" basis and is for use at your own risk.
      *
      ******************************************************************

      $set sourceformat(variable)
       program-id. LocalVariableAdd.

       working-storage section.
       01 numTd pic 9(5) typedef.
       01 ws-num1 pic 9(4) comp-5.
       01 ws-num2 pic 9(4) comp-5.

       procedure division.
           move 2 to ws-num1
           move 5 to ws-num2
           perform addNums

           move 1 to ws-num1
           move 2 to ws-num2
           perform addNums

           goback.

       addNums section.
           declare result as numTd = ws-num1 + ws-num2
           display result.

       end program.
