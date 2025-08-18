; Proprietário: Antonio Vandré Pedrosa Furtunato Gomes.

; Script AutoHotkey para o sistema

; Última atualização: 18-05-2022. (Sem considerar mappings elementares)

; ____________________

^!p::
FormatTime, CurrentDateTime,, dd-MM-yyyy
SendInput {Enter}%CurrentDateTime%{Enter}__{Enter}{Enter}{Enter}_____{Enter}
return
