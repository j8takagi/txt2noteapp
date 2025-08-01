# txt2memo.scpt

AppleScript to send the contents of a plain text (`.txt`) file to the macOS Notes app as a new note.

## Features

- Uses the first line of the file as the note title
- Converts each line of the text into a separate line in the note
- Optionally converts line breaks to `<br>` (HTML-style line breaks)
- Supports automatic tagging using lines that begin with `#` (Notes app tags)

## Requirements

- macOS 11.0 or later
- Notes app
- Terminal access (`osascript`)
- Input file must be a plain text file encoded in **UTF-8**.

## Installation

To install the AppleScript file:

```sh
make install

This will install the script to: `~/Library/Scripts/`


## Usage

From the terminal:

```sh
osascript ~/Library/Scripts/txt2memo.scpt /path/to/textfile.txt
