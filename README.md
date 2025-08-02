# txt2memo.scpt

AppleScript to send the contents of a plain text (`.txt`) file to the macOS Notes app as a new note.

## Features

- Sends the contents of the plain text (.txt) file specified as an argument to the macOS Notes app as a new note.
- Uses the first line of the file as the note title

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

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE.txt) file for details.
