set shell = createobject ("wscript.shell")
msgbox "Hello :) Press OK when you're ready."
strtext = inputbox (" Type in your message you want to spam. ")
strtimes = inputbox (" How many times you wish to send/spam the message? ")
strtdelay = inputbox (" If you want a delay between the message type the number in miliseconds. ")
if not isnumeric(strtimes) then
wscript.quit
end if
msgbox "All set!! After you hit OK you have 10 seconds to click on the target chatbox"
wscript.sleep( 10000 )
for i=1 to strtimes
shell.sendkeys(strtext & "{enter}")
wscript.sleep(strdelay)
next