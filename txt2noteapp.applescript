on run argv
    set filePath to item 1 of argv
    try
        open for access filePath
        set fileContent to read filePath as «class utf8»
    on error
    end try
    close access filepath

    if (count of paragraphs of fileContent) = 0 then
        display dialog "The file is empty." buttons {"OK"} default button "OK"
        return
    end if

    set titleLine to paragraph 1 of fileContent
    set bodyLines to rest of paragraphs of fileContent

    my createNote(titleLine, my addBr(bodyLines))
end run

on addBr(linesList)
    set outputText to ""
    repeat with aLine in linesList
        set outputText to outputText & aLine & "<br>" & return
    end repeat
    return outputText
end addBr

on createNote(titleText, bodyText)
    tell application "Notes"
        tell account "iCloud"
            tell folder "Notes"
                make new note with properties {name:titleText, body:bodyText}
            end tell
        end tell
    end tell
end createNote
