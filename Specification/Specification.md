# Button log specification

## Description

Mobile App for log device buttons events.<br>
The App logs the name of physical button and the time when it was pressed.<br>
You can view your button events log and filter records.<br>

## Requirements

#### Main screen
1. User story.<br>
The log text area.<br>
As a user, I want to view when physical buttons of my phone was pressed.<br>
I want to see it like a log.<br>
   - Acceptance criteria:
     - When the log text area is empty - there should be transparent or gray text "log..." without quotes
     - Lines should looks like: &lt;name of button> &lt;date and time of pressed event>
     - It should correspond to design requirements [TODO: link should be here]()

2. User story.<br>
The filter text input.<br>
As a user, I want to have option use text search by the log.<br>
I want to have the filter text input on the top of the log,<br>
where I can write text and only lines with this text will be in the log view.<br>
   - Acceptance criteria:
     - When the filter text input is empty - there should be transparent or gray text "Filter..." without quotes
     - It should correspond to design requirements [TODO: link should be here]()

3. User story.<br>
The records number row.<br>
As a user, I want to have option to see a number of records that in the log.<br>
I want to have the records number row between the filter text input and the log text area.<br>
   - Acceptance criteria:
     - It should be a less prominent part of the UI than the rest
     - The records number row text should be one of following (it is discussable):
       - <number of records> records
       - records: <number of records>
       - records number: <number of records>
       - <number of records> rows
       - rows: <number of records>
       - rows number: <number of records>
       - row count: <number of records>
       - <number of records> lines
       - lines: <number of records>
       - lines number: <number of records>
       - line count: <number of records>
     - The records number row should show whole size of the log when the filter text input is empty
     - The records number row should show a number of filtered lines when the filter text input is not empty
     - It should correspond to design requirements [TODO: link should be here]()

4. User story.<br>
Clear log button.<br>
As a user, I want to run clear log scenario by button.<br>
I want to have a button ontop of the right corner of the log text area.<br>
It should be a less prominent part of the UI than the rest.<br>
   - Acceptance criteria:
     - It should be a less prominent part of the UI than the rest
     - It should be small enough button with symbol that let user understend that it is clear log button (it is discussable)
       For example:
       - recycle bin
       - two rounded arrows
     - It should correspond to proposed design [TODO: link should be here]()

5. User story.<br>
Menue button.<br>


#### Scenarios

?. User story.<br>
Clear log scenario.<br>
As a user, I want to have option to run clear log scenario.<br>
When clear log scenario is called - it opens confirmation clear log window.<br>

?. User story.<br>
Show About scenario.<br>

?. User story.<br>
Show Menu scenario.<br>

?. User story.<br>
Close Menu scenario.<br>


#### Menu screen

?. User story.<br>
Menue button.<br>

?. User story.<br>
Clear log menu item.<br>

?. User story.<br>
About menu item.<br>


#### About App screen

?. User story.<br>
About App screen background.<br>

?. User story.<br>
About App info close button.<br>

?. User story.<br>
About App info content area.<br>

?. User story.<br>
About App info content.<br>


#### Windows

?. User story.<br>
Windows background.<br>

?. User story.<br>
Confirmation clear log window.<br>
As a user, I want to have option to clear the log trow confirmation clear log window.<br>
When clear log scenario is called - it opens confirmation clear log window.<br>
   - Acceptance criteria:
     - In the window there should be a question "Are you sure you want to clear the log?" without quotes
     - In the window there should be two options which user can sellect:
       - Cancel
       - Clear
     - Options should be pressable and looks different for user,
       not only text but some additional properties should be different (it is discussable),
       (for example Cancel option can be blue and Clear option can be red)
     - When Cancel was pressed - the window close
     - When Clear was pressed - the log is cleared and then the window closes
     - It should correspond to design requirements [TODO: link should be here]()
