# Parameterized Sections

## Overview

This is a sample program demonstrating the usage of Parameterized Sections, a feature available in Rocket® Visual COBOL®.

Parameterized Sections are sections that allow parameters to be passed into them without the need for the value to be stored inside a variable first.

Historically a variable would need to be declared in the `DATA DIVISION` and then be appropriately defined to pass data into a section. This approach is quite verbose code and can also lead to bugs and harder-to-maintain code due to the fact that these variables are often shared across different section calls.

Parameterized sections can also return a value using the `RETURNING` keyword, once again reducing the need for extra variables.

## Visual Studio Debugging
1. Open `ParameterizedSections.sln`.
2. Under `Solution Explorer` select `ParameterizedSections`, then `ParameterizedSections.cbl` to view the program.
3. Place a breakpoint by clicking in the far left margin next to a non-commented line of code within the `PROCEDURE DIVISION`.
4. Debug the program.

## Eclipse Debugging
1. Open Enterprise Developer for Eclipse, launch a new workspace, and close the welcome window.
2. Import the project by selecting `File`, `Import`, `General`, `Existing Projects into Workspace`. In `Select root directory` select `Browse` and navigate to where you cloned this github repository, select the `ParameterizedSections` folder and `Finish`.
4. Open the debug perspective by selecting `Window`, `Perspective`, `Open Perspective`, `Other...`, `Debug`.
5. Under `Project Explorer` select `ParameterizedSections`, `COBOL Programs`, then `ParameterizedSections.cbl` to view the program.
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
