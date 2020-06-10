set shell = createobject ("wscript.shell")
msgbox "Hallo :) Ich bin HvRibbecK und wünsche dir viel Spaß mit meinem Spambot Klicke auf OK wenn du bereit bist :) "
strtext = inputbox (" Hier kannst du deine Nachricht eingeben die gespamt werden soll. ")
strtimes = inputbox (" Hier gibst du eine Zahl ein. Bei 1 wird 1mal gespamt und bei 200 wird 200mal gespamt. ")
strtdelay = inputbox (" Hier würde ich dir empfehlen, gar nichts einzugeben. Gib nur etwas ein, wenn du eine Verzögerung zwischen den Nachrichten willst. ")
if not isnumeric(strtimes) then
wscript.quit
end if
msgbox "Danke fürs benutzen :) Wenn du auf Ok klickst, hast du 10 Sekunden Zeit um auf die Chatleiste von dem Kontakt zu klicken, den du zuspamen willst."
wscript.sleep( 10000 )
for i=1 to strtimes
shell.sendkeys(strtext & "{enter}")
wscript.sleep(strdelay)
next