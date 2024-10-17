# Local Variables

## Overview

This is a sample program demonstrating the usage of Local Variables, a feature available in Rocket® Visual COBOL®.

The Local Variables feature allows for the creation of variables that are scoped to the sections in which they are declared. These variables are allocated when the section is `PERFORM`ed, and deallocated when the `PERFORM` of the section exits. This allows the user to create temporary variables for doing work inside sections without having to declare globally visible variables in the `DATA DIVISION`. This can be a cause of bugs. Local variables make the code easier to understand and maintain.

An example of this is found in `LocalVariables.cbl` with the local variable `result` being used for computation and displaying.

## Visual Studio Debugging
1. Open `LocalVariables.sln`.
2. Under `Solution Explorer` select `LocalVariables`, then `LocalVariables.cbl` to view the program.
3. Place a breakpoint by clicking in the far left margin next to a non-commented line of code within the `PROCEDURE DIVISION`.
4. Debug the program.

## Eclipse Debugging
1. Open Enterprise Developer for Eclipse, launch a new workspace, and close the welcome window.
2. Import the project by selecting `File`, `Import`, `General`, `Existing Projects into Workspace`. In `Select root directory` select `Browse` and navigate to where you cloned this github repository, select the `LocalVariables` folder and `Finish`.
4. Open the debug perspective by selecting `Window`, `Perspective`, `Open Perspective`, `Other...`, `Debug`.
5. Under `Project Explorer` select `LocalVariables`, `COBOL Programs`, then `LocalVariables.cbl` to view the program.
6. Debug the program.

## License

Copyright 2023-2024 Rocket Software, Inc. or its affiliates.
This software may be used, modified, and distributed
(provided this notice is included without modification)
solely for internal demonstration purposes with other
Rocket® products, and is otherwise subject to the EULA at
https://www.rocketsoftware.com/company/trust/agreements.

THIS SOFTWARE IS PROVIDED "AS IS" AND ALL IMPLIED
WARRANTIES, INCLUDING THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE,
SHALL NOT APPLY.
TO THE EXTENT PERMITTED BY LAW, IN NO EVENT WILL
ROCKET SOFTWARE HAVE ANY LIABILITY WHATSOEVER IN CONNECTION
WITH THIS SOFTWARE.
