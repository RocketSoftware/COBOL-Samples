# Local Variables

## Overview

This is a sample program demonstrating the usage of Local Variables, a feature available in Micro Focus COBOL.

The Local Variables feature allows for the creation of variables that are scoped to the sections in which they are declared. This allows the user to create temporary variables for doing work inside sections without having to declare permanent variables in the data division which has historically been a cause of bugs and harder-to-maintain code.

An example of this is found in `LocalVariables.cbl` with the local variable `result` being used for computation and displaying.

## Visual Studio Debugging
1. Open `LocalVariables.sln`
2. Under `Solution Explorer` select `LocalVariables`, then `LocalVariables.cbl` to view the program
3. Place a breakpoint by clicking in the far left margin next to a non-commented line of code within the `procedure division`
4. Debug the program

## Eclipse Debugging
1. Open Enterprise Developer for Eclipse, launch a workspace, and close the welcome window
2. Import the project by selecting `File`, `Import`, `General`, `Existing projects into workspace`. In `Select root directory` select `Browse` and navigate to where you cloned this github repository, select the `LocalVariables` folder and `Finish`
4. Open a debug perspective by selecting `Window`, `Perspective`, `Open Perspective`, `Other...`, `Debug`
5. Under `Project Explorer` select `LocalVariables`, `COBOL Programs`, then `LocalVariables.cbl` to view the program
6. Debug the program

## License

Copyright (C) 2023 Micro Focus. All Rights Reserved.
This software may be used, modified, and distributed
(provided this notice is included without modification)
solely for internal demonstration purposes with other
Micro Focus software, and is otherwise subject to the EULA at
https://www.microfocus.com/en-us/legal/software-licensing.

THIS SOFTWARE IS PROVIDED "AS IS" AND ALL IMPLIED
WARRANTIES, INCLUDING THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE,
SHALL NOT APPLY.
TO THE EXTENT PERMITTED BY LAW, IN NO EVENT WILL
MICRO FOCUS HAVE ANY LIABILITY WHATSOEVER IN CONNECTION
WITH THIS SOFTWARE.