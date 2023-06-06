# Colon-Colon syntax

## Overview

This is a sample program demonstrating the usage of Colon-Colon syntax, a feature available in Micro Focus COBOL.

Colon-Colon syntax is a member-access feature that allows a user to access members of a group by specifying the group before specifying the member.
<pre><i>group</i>::<i>member</i></pre>

This is different from the traditional syntax that specifies the member before specifying the group.
<pre><i>member</i> OF <i>group</i></pre>

Colon-Colon syntax is more concise and is aligned with other modern programming languages.


## Visual Studio Debugging
1. Open `ColonColonSyntax.sln`.
2. Under `Solution Explorer` select `ColonColonSyntax`, then `ColonColonSyntax.cbl` to view the program.
3. Place a breakpoint by clicking in the far left margin next to a non-commented line of code within the `PROCEDURE DIVISION`.
4. Debug the program.

## Eclipse Debugging
1. Open Enterprise Developer for Eclipse, launch a workspace, and close the welcome window.
2. Import the project by selecting `File`, `Import`, `General`, `Existing Projects into Workspace`. In `Select root directory` select `Browse` and navigate to where you cloned this github repository, select the `ColonColonSyntax` folder and `Finish`.
3. Open the debug perspective by selecting `Window`, `Perspective`, `Open Perspective`, `Other...`, `Debug`.
4. Under `Project Explorer` select `ColonColonSyntax`, `COBOL Programs`, then `ColonColonSyntax.cbl` to view the program.
5. Debug the program.

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