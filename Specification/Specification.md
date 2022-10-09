# Button log specification

## Description

Mobile App for log device buttons events.<br>
The App logs the name of physical button and the time when it was pressed.<br>
You can view your button events log and filter records.<br>


## Requirements

#### Main screen
1. User story. [TODO: issue reference]()<br>
**Log text area**.<br>
As a user, I want to view when physical buttons of my phone was pressed.<br>
I want to see it like log.<br>
   - Acceptance criteria:
     - When the **log text area** is empty - there should be transparent or gray text "log..." without quotes
     - When the **log text area** is not empty - there should not be text "log...", only log text
     - Lines should look like this: &lt;name of button> &lt;date and time of pressed event>
     - It should be scrollable if the content does not fit in the area
     - It should correspond to design requirements [TODO: link should be here]()
2. User story. [TODO: issue reference]()<br>
**Filter text input**.<br>
As a user, I want to have an option to use text search by the log.<br>
I want the **filter text input** to be at the top above the **log text area**,<br>
where I can write text and only lines with this text will be in the log view.<br>
   - Acceptance criteria:
     - When the **filter text input** is empty - there should be transparent or gray text "Filter..." without quotes
     - When the **filter text input** is not empty - there should not be text "Filter...", only entered text
     - When the text inside the **filter text input** was changed - the **on filter text changed scenario** should be launched
     - It should correspond to design requirements [TODO: link should be here]()
3. User story. [TODO: issue reference]()<br>
**Records number row**.<br>
As a user, I want to have an option to see the number of records in the log.<br>
I want to have the **records number row** between the **filter text input** and the **log text area**.<br>
   - Acceptance criteria:
     - It should be a **less** prominent part of the UI than the rest
     - The **records number row** text should be "- records: &lt;number of records>"
     - The **records number row** should show the whole size of the log when the **filter text input** is empty
     - The **records number row** should show a number of filtered lines when the **filter text input** is not empty
     - It should correspond to design requirements [TODO: link should be here]()
4. User story. [TODO: issue reference]()<br>
**Clear log button**.<br>
As a user, I want to launche the **clear log scenario** by button.<br>
I want to have a button on top of the right corner of the **log text area**.<br>
   - Acceptance criteria:
     - It should be a **less** prominent part of the UI than the rest
     - It should be a small enough button with a symbol that let the user understand that it is a **clear log button** (it is discussable)<br>
       For example:
       - recycle bin
       - two rounded arrows
     - It should correspond to design requirements [TODO: link should be here]()
5. Product Owner story. [TODO: issue reference]()<br>
**Info button**.<br>
As a PO, I want to make the user able to launch the **show About scenario** by button.<br>
I want to have the **info button** right under the **log text area**.<br>
   - Acceptance criteria:
     - It should be **as** prominent a part of the UI as the rest
     - It should be on the bottom area in the **left** half of the screen
     - It should correspond to design requirements [TODO: link should be here]()
6. User story. [TODO: issue reference]()<br>
**Quit button**.<br>
As a User, I want to be able to launch the **quit app scenario** by button.<br>
I want to have the **quit button** right under the **log text area**.<br>
   - Acceptance criteria:
     - It should be **as** prominent a part of the user interface as the rest
     - It should be on the bottom area in the **right** half of the screen
     - It should correspond to design requirements [TODO: link should be here]()
<br>

#### About app screen
1. User story. [TODO: issue reference]()<br>
**About app title**.<br>
2. User story. [TODO: issue reference]()<br>
**About app info close button**.<br>
3. User story. [TODO: issue reference]()<br>
**About app info text area**.<br>
It should be scrollable if the content does not fit in the area
4. User story. [TODO: issue reference]()<br>
**About app info content**.<br>
<br>

#### Windows
1. User story. [TODO: issue reference]()<br>
**Windows background**.<br>
2. User story. [TODO: issue reference]()<br>
**Clear log confirmation window**.<br>
As a user, I want to have an option to clear the log through the confirmation window to be able to confirm or cancel the action.<br>
   - Acceptance criteria:
     - In the window, there should be a question "Are you sure you want to clear the log?" without quotes
     - In the window there should be two options that the user can select:
       - Cancel
       - Clear
     - Options should be pressable and look different for the user,
       not only text but some additional properties should be different (it is discussable),
       (for example, the Cancel option can be blue and the Clear option can be red)
     - When Cancel was pressed - the window close
     - When Clear was pressed - the log is cleared and then the window closes
     - It should correspond to design requirements [TODO: link should be here]()
<br>

#### Scenarios
1. User story. [TODO: issue reference]()<br>
**On device button event scenario**.<br>
2. User story. [TODO: issue reference]()<br>
**Clear log scenario**.<br>
As a user, I want to have an option to clear the log.<br>
When a **clear log scenario** is launched - it opens the **Clear log confirmation window**.<br>
4. User story. [TODO: issue reference]()<br>
**On filter text changed scenario**.<br>
4. User story. [TODO: issue reference]()<br>
**Show About scenario**.<br>
5. User story. [TODO: issue reference]()<br>
**Close About scenario**.<br>
6. User story. [TODO: issue reference]()<br>
**Quit app scenario**.<br>
<br>
