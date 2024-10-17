      ******************************************************************
      *
      * (C) Copyright 2010-2024 Rocket Software, Inc. or one of its affiliates. All Rights Reserved.
      *
      * This sample code is supplied for demonstration purposes only
      * on an "as is" basis and is for use at your own risk.
      *
      ******************************************************************

      $set sourceformat(variable)
       program-id. ParameterizedSections.

       procedure division.
           display fibonacci(10)
           goback.

       fibonacci section (n as binary-long) returning result as binary-long.
           if n <= 1
               move n to result
               exit section
           end-if
           compute result = fibonacci(n - 1) + fibonacci(n - 2).

       end program.
