on run argv
    set theTitle to "Notification"
    set theMessage to "Hello from the command line"
    
    if (count of argv) > 0 then
        set theMessage to item 1 of argv
    end if
    
    if (count of argv) > 1 then
        set theTitle to item 2 of argv
    end if
    
    display notification theMessage with title theTitle
end run