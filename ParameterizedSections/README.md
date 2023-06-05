# Parameterized Sections

## Overview

This is a sample program demonstrating the usage of Parameterized Sections, a feature available in Micro Focus COBOL.

Parameterized sections are sections that allow parameters to be passed into them without the need for the value to be stored inside a variable first.

Historically a variable would need to be declared in the data division and then be appropriately defined to pass data into a section. This approach is quite verbose code and can also lead to bugs and harder-to-maintain code due to the fact that these variables are often shared across different section calls.

Parameterized sections can also return a value using the `returning` keyword, once again reducing the need for extra variables.

## Visual Studio Debugging
1. Open `ParameterizedSections.sln`
2. Under `Solution Explorer` select `ParameterizedSections`, then `ParameterizedSections.cbl` to view the program
3. Place a breakpoint by clicking in the far left margin next to a non-commented line of code within the `procedure division`
4. Debug the program

## Eclipse Debugging
1. Open Enterprise Developer for Eclipse, launch a workspace, and close the welcome window
2. Import the project by selecting `File`, `Import`, `General`, `Existing projects into workspace`. In `Select root directory` select `Browse` and navigate to where you cloned this github repository, select the `ParameterizedSections` folder and `Finish`
4. Open a debug perspective by selecting `Window`, `Perspective`, `Open Perspective`, `Other...`, `Debug`
5. Under `Project Explorer` select `ParameterizedSections`, `COBOL Programs`, then `ParameterizedSections.cbl` to view the program
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