      ******************************************************************
      *
      * (C) Copyright 2010-2023 Micro Focus or one of its affiliates.
      *
      * This sample code is supplied for demonstration purposes only
      * on an "as is" basis and is for use at your own risk.
      *
      ******************************************************************

      $set sourceformat(variable)
       program-id. MergeSort.

       working-storage section.
       01 numbers-t typedef.
         03 numbers-length binary-short.
         03 numbers-array.
           05 numbers-contents binary-long occurs 20.

         78 78-arr-len value 16.
       01 sample-numbers constant.
         03 binary-long occurs 78-arr-len values 2, 4, 1, 7, 8, 5, 15, 16, 10, 13, 3, 14, 12, 6, 9, 11.

       procedure division.
           declare numbers as numbers-t
           move 78-arr-len to numbers::numbers-length

           *>Populate the numbers array
           move sample-numbers to numbers::numbers-array

           declare sortedNumbers as numbers-t
           move 78-arr-len to sortedNumbers::numbers-length
           perform mergesort(reference numbers) returning sortedNumbers

           perform print-numbers(reference sortedNumbers)
           goback.

       mergesort section (reference arr as numbers-t) returning sortedArr as numbers-t.
           move arr::numbers-length to sortedArr::numbers-length
           if arr::numbers-length = 1
               *> At base case
               move arr to sortedArr
           else
               *> Split array, recurse further.
               *> Work out lengths of 2 subarrays
               declare sub1length as binary-short
               declare sub2length as binary-short
               compute sub1length = arr::numbers-length / 2
               if function mod (arr::numbers-length 2) = 1
                   compute sub2length = sub1length + 1
               else
                   compute sub2length = sub1length
               end-if
               *> Create the new subarrays according to their defined lengths
               declare sub1 as numbers-t
               declare sub2 as numbers-t

               move sub1length to sub1::numbers-length
               move sub2length to sub2::numbers-length

               *> Populate the subarrays with contents of the main array
               perform varying i as binary-short from 1 by 1 until i >
                 sub1length
                   move arr::numbers-contents(i)
                     to sub1::numbers-contents(i)
               end-perform
               perform varying i as binary-short from 1 by 1 until i >
                 sub2length
                   move arr::numbers-contents(sub1length + i)
                     to sub2::numbers-contents(i)
               end-perform
               *> Recursive step on subarrays
               perform mergesort(reference sub1) returning sub1
               perform mergesort(reference sub2) returning sub2

               *> Get sub1 and sub2 in order, now sort these
               declare sub1Index as binary-short = 1
               declare sub2Index as binary-short = 1
               perform varying i as binary-short from 1 by 1 until i >
                 arr::numbers-length
                   if sub1Index <= sub1Length and sub2Index <=
                     sub2Length
                       if sub1::numbers-contents(sub1Index) <= sub2::
                         numbers-contents(sub2Index)
                           move sub1::numbers-contents(sub1Index)
                             to sortedArr::numbers-contents(i)
                           compute sub1Index = sub1Index + 1
                       else
                           move sub2::numbers-contents(sub2Index)
                             to sortedArr::numbers-contents(i)
                           compute sub2Index = sub2Index + 1
                       end-if
                   else
                       if sub1Index <= sub1Length
                           *>sub1 hasn't reached the end
                           move sub1::numbers-contents(sub1Index)
                             to sortedArr::numbers-contents(i)
                           compute sub1Index = sub1Index + 1
                       else
                           *>sub2 hasn't reached the end
                           move sub2::numbers-contents(sub2Index)
                             to sortedArr::numbers-contents(i)
                           compute sub2Index = sub2Index + 1
                       end-if
                   end-if
               end-perform
           end-if.

       print-numbers section (reference arr as numbers-t).
           perform varying i as binary-short from 1 by 1 until i > arr::
             numbers-length
               display arr::numbers-contents(i)
           end-perform.

       end program.
