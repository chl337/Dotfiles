# Common/Useful keybindings


## Vimdiff

nvim -d [-o] file1 file2
* -o: horizontal split
* Normal Mode:
        * z+o: unfold (common) lines
        * z+c: fold (common) lines
        * ]+c: move to next change
        * [+c: move to prev change
        * diffget: apply diff from other file in same line
        * diffput: apply diff from this file to other
        * u: undo
        * Ctrl+r: redo


## Buffers

A buffer is an area of Vim's memory used to hold text read from a file.
In addition, an empty buffer with no associated file can be created to allow
the entry of text.

### Create buffer
* new: empty buffer
* e file: open file in active buffer
* badd file: open file in background buffer

### List buffers
* ls:
        % -> Buffer in current window
        # -> Last modified file in current window
        a -> Active buffer
        h -> Hidden buffer (unsaved modifications)
        u -> Unlisted buffers (non-used files in cur-dir tree.)
             eqv. to ':ls!' 
        = -> Read only buffer
        + -> Modified buffer
* file:
* buffers:

### Split buffers
* ball: horizontal
* vertical ball: vertical

### Delete buffers
* bd file: remove buffer that hosts file
* n,mbd: remove buffers in range: [n.m]


### Switch buffer
* b file: switch to buffer file
* bN: switch to buffer number N
* bn: switch to next buffer
* bp: switch to prev buffer
* bf: switch to first buffer
* bl: switch to last buffer
