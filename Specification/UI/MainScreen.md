# Main screen UI requirements

1. User story. [TODO: issue reference]()<br>
**Log text area**.<br>
As a user, I want to view when physical buttons of my phone was pressed.<br>
I want to see it like log.<br>
   - Acceptance criteria:
     - when the **log text area** is empty - there should be transparent or gray text "log..." without quotes;
     - when the **log text area** is not empty - there should not be text "log...", only log text;
     - lines should look like this: &lt;name of button> &lt;date and time of pressed event>;
     - it should fill all the free space on the screen without crowding out the rest of the UI elements;
     - it should be scrollable if the content does not fit in the area;
     - it should correspond to design requirements [TODO: link should be here]();
2. User story. [TODO: issue reference]()<br>
**Filter text input**.<br>
As a user, I want to have an option to use text search by the log.<br>
I want the **filter text input** to be at the top above the **log text area**,<br>
where I can write text and only lines with this text will be in the log view.<br>
   - Acceptance criteria:
     - when the **filter text input** is empty - there should be transparent or gray text "Filter..." without quotes;
     - when the **filter text input** is not empty - there should not be text "Filter...", only entered text;
     - when the text inside the **filter text input** was changed - the **on filter text changed scenario** should be launched;
     - it should correspond to design requirements [TODO: link should be here]();
3. User story. [TODO: issue reference]()<br>
**Records number row**.<br>
As a user, I want to have an option to see the number of records in the log.<br>
I want to have the **records number row** between the **filter text input** and the **log text area**.<br>
   - Acceptance criteria:
     - it should be a **less** prominent part of the UI than the rest;
     - the **records number row** text should be "- records: &lt;number of records>";
     - the **records number row** should show the whole size of the log when the **filter text input** is empty;
     - the **records number row** should show a number of filtered lines when the **filter text input** is not empty;
     - it should correspond to design requirements [TODO: link should be here]();
4. User story. [TODO: issue reference]()<br>
**Clear log button**.<br>
As a user, I want to launch the **clear log scenario** by button.<br>
I want to have a button on top of the right corner of the **log text area**.<br>
   - Acceptance criteria:
     - it should be a **less** prominent part of the UI than the rest
     - it should be a small enough button with a symbol that let the user understand that it is a **clear log button** (for example, recycle bin);
     - it should correspond to design requirements [TODO: link should be here]();
5. Product Owner story. [TODO: issue reference]()<br>
**Info button**.<br>
As a PO, I want to make the user able to launch the **show About scenario** by button.<br>
I want to have the **info button** right under the **log text area**.<br>
   - Acceptance criteria:
     - it should be **as** prominent part of the UI as the rest;
     - it should be on the bottom area in the **left** half of the screen;
     - it should correspond to design requirements [TODO: link should be here]();
6. User story. [TODO: issue reference]()<br>
**Quit button**.<br>
As a User, I want to be able to launch the **quit app scenario** by button.<br>
I want to have the **quit button** right under the **log text area**.<br>
   - Acceptance criteria:
     - it should be **as** prominent part of the UI as the rest;
     - it should be on the bottom area in the **right** half of the screen;
     - it should correspond to design requirements [TODO: link should be here]();
<br>
