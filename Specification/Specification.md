# Button log specification

## Description

Mobile App for log device buttons events.<br>
The App logs the name of physical button and the time when it was pressed.<br>
You can view your button events log and filter records.<br>


## Requirements

#### Main screen
1. User story. [TODO: issue reference]()<br>
The log text area.<br>
As a user, I want to view when physical buttons of my phone was pressed.<br>
I want to see it like log.<br>
   - Acceptance criteria:
     - When the log text area is empty - there should be transparent or gray text "log..." without quotes
     - When the log text area is not empty - there should not be text "log...", only log text
     - Lines should look like this: &lt;name of button> &lt;date and time of pressed event>
     - It should correspond to design requirements [TODO: link should be here]()
2. User story. [TODO: issue reference]()<br>
The filter text input.<br>
As a user, I want to have an option to use text search by the log.<br>
I want the filter text input to be at the top above the log text area,<br>
where I can write text and only lines with this text will be in the log view.<br>
   - Acceptance criteria:
     - When the filter text input is empty - there should be transparent or gray text "Filter..." without quotes
     - When the filter text input is not empty - there should not be text "Filter...", only entered text
     - It should correspond to design requirements [TODO: link should be here]()
3. User story. [TODO: issue reference]()<br>
The records number row.<br>
As a user, I want to have an option to see the number of records in the log.<br>
I want to have the records number row between the filter text input and the log text area.<br>
   - Acceptance criteria:
     - It should be a less prominent part of the UI than the rest
     - The records number row text should be one of the following (it is discussable):
       - &lt;number of records> records
       - records: &lt;number of records>
       - records number: &lt;number of records>
       - &lt;number of records> rows
       - rows: &lt;number of records>
       - rows number: &lt;number of records>
       - row count: &lt;number of records>
       - &lt;number of records> lines
       - lines: &lt;number of records>
       - lines number: &lt;number of records>
       - line count: &lt;number of records>
     - The records number row should show the whole size of the log when the filter text input is empty
     - The records number row should show a number of filtered lines when the filter text input is not empty
     - It should correspond to design requirements [TODO: link should be here]()
4. User story. [TODO: issue reference]()<br>
Clear log button.<br>
As a user, I want to run the clear log scenario by button.<br>
I want to have a button on top of the right corner of the log text area.<br>
It should be a less prominent part of the UI than the rest.<br>
   - Acceptance criteria:
     - It should be a less prominent part of the UI than the rest
     - It should be a small enough button with a symbol that let the user understand that it is a clear log button (it is discussable)
       For example:
       - recycle bin
       - two rounded arrows
     - It should correspond to design requirements [TODO: link should be here]()
5. User story. [TODO: issue reference]()<br>
Menu button.<br>
<br>

#### Menu screen
1. User story. [TODO: issue reference]()<br>
Menu button.<br>
2. User story. [TODO: issue reference]()<br>
Clear log menu item.<br>
3. User story. [TODO: issue reference]()<br>
About menu item.<br>
<br>

#### About App screen
1. User story. [TODO: issue reference]()<br>
About App screen background.<br>
2. User story. [TODO: issue reference]()<br>
About App info close button.<br>
3. User story. [TODO: issue reference]()<br>
About App info content area.<br>
4. User story. [TODO: issue reference]()<br>
About App info content.<br>
<br>

#### Windows
1. User story. [TODO: issue reference]()<br>
Windows background.<br>
2. User story. [TODO: issue reference]()<br>
Confirmation clear log window.<br>
As a user, I want to have an option to clear the log throw the confirmation window to be able to confirm or cancel the action.<br>
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
On device button event scenario.<br>
2. User story. [TODO: issue reference]()<br>
Clear log menu item scenario.<br>
3. User story. [TODO: issue reference]()<br>
Clear log scenario.<br>
As a user, I want to have an option to clear the log.<br>
When a clear log scenario is called - it opens the confirmation clear log window.<br>
4. User story. [TODO: issue reference]()<br>
Show About scenario.<br>
5. User story. [TODO: issue reference]()<br>
Open Menu scenario.<br>
6. User story. [TODO: issue reference]()<br>
Close Menu scenario.<br>
<br>
