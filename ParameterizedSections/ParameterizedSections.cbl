      ******************************************************************
      *
      * (C) Copyright 2010-2023 Micro Focus or one of its affiliates.
      *
      * This sample code is supplied for demonstration purposes only
      * on an "as is" basis and is for use at your own risk.
      *
      ******************************************************************

      $set sourceformat(variable)
       program-id. Fibonacci.

       procedure division.
           display fib(10)
           goback.

       fib section (n as binary-long) returning result as binary-long.
           if n <= 1
               move n to result
               exit section
           end-if
           compute result = fib(n - 1) + fib(n - 2).

       end program.
