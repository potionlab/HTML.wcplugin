on run arguments
	tell application "Repla"

		set theTextBounds to the first item of arguments

		set originalTextItemDelimiters to AppleScript's text item delimiters
		set AppleScript's text item delimiters to ", "
		set theBounds to text items of theTextBounds
		set AppleScript's text item delimiters to originalTextItemDelimiters

		set arguments to rest of arguments
	
		if arguments is {} then
			set theWindow to window 1
		else
			set windowid to the first item of arguments
			set theWindow to window id windowid
		end if


		set the bounds of theWindow to theBounds
	end tell
end run
