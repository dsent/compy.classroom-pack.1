# Shape Sticker

Open Shape Sticker and type `dofile 'one.lua'` to reveal a picture.
Try `dofile 'two.lua'` and `dofile 'three.lua'` too.
For a short drawing to follow on paper, try `dofile 'pizza.lua'`.
Check the other paper riddles with `dofile 'rocket.lua'` and
`dofile 'cat.lua'`.

| File | Picture | Numbered grid for drawing it on paper |
| --- | --- | --- |
| `one.lua` | Antenna friend | 0–18 across, 0–20 down |
| `two.lua` | Dancing bird | 0–24 across, 0–24 down |
| `three.lua` | Snail on wheels | 0–24 across, 0–24 down |
| `pizza.lua` | Pizza slice | 0–26 across, 0–16 down |

`pizza.lua` has ten commands, including setup and color changes.
Draw the crust, add the cheese, then add three round toppings.

Each example uses whole numbers. Read from top to bottom: each shape
covers any earlier shapes beneath it. Change a number or a color and
run the file again to see what happens.

Draw a straight line between two points with `line(ax, ay, bx, by)`.
Read each point across first, then down, from the top-left corner.

```lua
require("shapes")
clear()
color("blue")
line(3, 1, 7, 3)
```

You get a blue line from `(3, 1)` to `(7, 3)`. Lines use the current
color. `clear()` sets their width to 0.25 drawing units and selects miter
joins for connected segments. The example pictures use 12.5 pixels per
drawing unit.

Draw a small filled circle centered at a point with `dot(x, y)`:

```lua
color("red")
dot(5, 4)
```

You get a red dot centered at `(5, 4)`. Dots use the current color and
have a radius of 0.25 drawing units: half a grid cell across.

## Make your picture

At the Compy prompt, enter these commands, pressing Enter after each:

```lua
project 'shapesticker'
edit 'my.lua'
```

`my.lua` is ready to edit. It loads the shape commands, clears the screen,
adds a numbered paper grid, and chooses blue. Add your shapes below
those four lines.

1. Use Up or Down to select the last line. Press Ctrl+Enter to add a block
   below it. Type a shape command and press Enter to save it.
2. Press Shift+Esc to leave the editor. At the prompt, enter
   `dofile 'my.lua'` to draw your picture.
3. Enter `edit 'my.lua'` to return. Select a command and press
   Enter to change it. Save with Enter, leave with Shift+Esc, then run the
   file again with `dofile`.
4. At an empty prompt, use Up to recall earlier commands.

When you want another drawing, copy the reusable starter:

```lua
writefile('new.lua', readfile('blank.lua'))
edit 'new.lua'
```

Choose a fresh name in place of `new.lua` if that file already exists:
`writefile` replaces the file with that name.

The project launcher prints hints and stops. Ctrl+T runs that launcher;
use `dofile` to run the drawing file you are editing.

If Enter shows an error, press Esc, correct the text, and press Enter
again. Shift+Esc leaves an unaccepted edit; if a discard question appears,
Enter discards it and Esc returns to typing.

## Check a paper riddle

Add `dofile("paper.lua")` immediately after `clear()` in a drawing file,
before its colors and shapes. The starting file already includes it.
For example:

```lua
require("shapes")
clear()
dofile("paper.lua")
color("blue")
line(2, 3, 5, 6)
```

Run your drawing file with `dofile` and compare its numbered lines with
your paper. Change the shape command and run the file again to check
another answer. Remove the `dofile("paper.lua")` line when finished.

The grid runs from 0 to 48 across and 0 to 24 down, with x above the
columns. It uses 20-pixel cells. The grid does not clear the
screen itself: your drawing's `clear()` starts each new picture and resets
the drawing scale before the grid is added.
