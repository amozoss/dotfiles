## History

,u undo tree
q: command history

## normal mode navigation

Ctrl + Home : # Move to the beginning of the file
Ctrl + End : # Move to the end of the file
Ctrl + Right Arrow: # Move one word forward
Ctrl + Left Arrow : # Move one word backward
Ctrl + y : # Move to the top of the screen
Ctrl + e : # Move to the bottom of the screen
Ctrl + u : # Scroll the screen up one line
Ctrl + d : # Scroll the screen down one line
Ctrl + w w : # Move to the next window
Ctrl + w W : # Move to the previous window
Ctrl + w s : # Split window horizontally
Ctrl + w v : # Split window vertically
Ctrl + w c : # Close current window

## File

Ctrl+g information about the current file with

## Indentation

```
>> : Indent the current line or selected lines to the right
<< : Indent the current line or selected lines to the left
= : Auto-indent the current line or selected lines
```

## Registers

"ayy : Yank (copy) the current line into register 'a'
"ap : Paste the contents of register 'a'
:reg : List all registers and their contents

## Tabs

:tabnew : Open a new tab
:tabc : Close the current tab
:tabn : Move to the next tab
:tabp : Move to the previous tab
:tabs : List all open tabs

## Macros

q<register> : Start recording a macro into the specified register
q : Stop recording the macro
@<register> : Play the macro from the specified register
@@ : Repeat the last played macro

## Search and Replace

/ : Start searching forward
? : Start searching backward
n : Repeat search in the same direction
N : Repeat search in the opposite direction
:%s/old/new/g : Replace all occurrences of 'old' with 'new' in the file
:%s/old/new/gc : Replace all occurrences with confirmation

## Buffers

:ls : List all open buffers
:b <buffer_number> : Switch to buffer with specified number
:bd <buffer_number> : Delete (close) buffer with specified number
:bn : Move to the next buffer
:bp : Move to the previous buffer

## Fold

za " Toggle fold under the cursor
zc " Close fold under the cursor
zo " Open fold under the cursor
zM " Close all folds
zR " Open all folds
zm " Close more folds
zr " Open more folds
zA " Toggle all folds under the cursor recursively
zC " Close all folds under the cursor recursively
zO " Open all folds under the cursor recursively
[z " Move to start of open fold
]z " Move to end of open fold

## Command Line Mode

q: : Open command-line window for command history
q/ : Open command-line window for search history
Ctrl + f : Open command-line window for editing the command
