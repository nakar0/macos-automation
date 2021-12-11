on run
	tell application "Notes"
		set theFolder to folder id "x-coredata://9A0D5F77-10E8-4DD3-B04D-3C999FB18CD9/ICFolder/p2045"
		repeat with theNote in (selection as list)
			move theNote to theFolder
		end repeat
	end tell
end run
