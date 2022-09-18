# Button log specification

## Description

Mobile App for log device buttons events.<br>
The App logs the name of physical button and the time when it was pressed.<br>
You can view your button events log and filter records.<br>

## Requirements

1. User story.<br>
The log text area.<br>
As a user, I want to view when physical buttons of my phone was pressed.<br>
I want to see it like a log.<br>
   - Acceptance criteria:
     - When the log text area is empty - there should be transparent or gray text "log..." without quotes
     - Lines should looks like: &lt;name of button> &lt;date and time of pressed event>
     - It should correspond to proposed design [TODO: link should be here]()

2. User story.<br>
The filter text input.<br>
As a user, I want to have option use text search by the log.<br>
I want to have the filter text input on the top of the log,<br>
where I can write text and only lines with this text will be in the log view.<br>
   - Acceptance criteria:
     - When the filter text input is empty - there should be transparent or gray text "Filter..." without quotes
     - It should correspond to proposed design [TODO: link should be here]()

3. User story.<br>
The records number row.<br>
As a user, I want to have option to see a number of records that in the log.<br>
I want to have the records number row between the filter text input and the log text area.<br>
It should be a less prominent part of the UI than the rest.<br>
   - Acceptance criteria:
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
     - It should correspond to proposed design [TODO: link should be here]()

4. User story.<br>
Clear log scenario.<br>
As a user, I want to have option to clear the log.<br>
When clear log scenario is called - appiers a confirmation window.<br>
   - Acceptance criteria:
     - In the window there should be e question "Are you sure you want to clear the log?" without quotes
     - The records number row should show whole size of the log when the filter text input is empty
     - The records number row should show a number of filtered lines when the filter text input is not empty
     - It should correspond to proposed design [TODO: link should be here]()

5. User story.<br>
Clear log feature.<br>
As a user, I want to have option to cleanup the log.<br>
I want to have a button ontop of the right.<br>
It should be a less prominent part of the UI than the rest.<br>
   - Acceptance criteria:
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
     - It should correspond to proposed design [TODO: link should be here]()

menue button

menue:

clear log

about

about screen
