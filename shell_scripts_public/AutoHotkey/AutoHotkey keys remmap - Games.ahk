; Proprietário: Antonio Vandré Pedrosa Furtunato Gomes.

; Script AutoHotkey útil para games.

; Última atualização: 04-02-2022. (Sem considerar mappings elementares)

; _____

; Configuração dos botões do Neo-Geo: A: "u", B: "i", C: "j", D: "k".

; Configuração dos botões da Capcom: A: "u", B: "o", C: "i", D: "j", E: "l", F: "k".

; ____________________

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Com a tecla "p", pressionar as teclas "u", "i" e "o".

p::
{
Send, {u down}{i down}{o down}{o up}{i up}{u up}
return
}

; Com a tecla ".", pressionar simultaneamente as teclas "j", "k" e "l".

*;::
{
Send, {j down}{k down}{l down}{l up}{k up}{j up}
return
}

; Com a tecla "g", pressionar simultaneamente as teclas "u" e "j".

*g::
{
Send, {j down}{u down}{u up}{j up}
return
}

; Com a tecla "t", pressionar simultaneamente as teclas "i" e "k".

*t::
{
Send, {k down}{i down}{i up}{k up}
return
}

; Diagonal superior esquerda.

*q::
{
Send, {a down}{w down}{w up}{a up}
return
}

; Diagonal superior direita.

*e::
{
Send, {d down}{w down}{w up}{d up}
return
}

; Diagonal inferior esquerda.

*z::
{
Send, {a down}{s down}{s up}{a up}
return
}

; Diagonal inferior direita.

*c::
{
Send {d down}{s down}{s up}{d up}
return
}

; Com a tecla "y", A+B no Neo-Geo.

*y::
{
Send, {u down}{i down}{i up}{u up}
return
}

; Com a tecla "h", C+D no Neo-Geo.

*h::
{
Send, {j down}{k down}{k up}{j up}
return
}

; Com a tecla "n", B+C no Neo-Geo.

*n::
{
Send, {i down}{j down}{j up}{i up}
return
}

; Com a tecla "m", A+B+C no Neo-Geo.

*m::
{
Send, {u down}{i down}{j down}{j up}{i up}{u up}
return
}

; Meia-lua, lado esquerdo.

7::
{
Send a
Send {a down}{s down}
Send {a up}{s up}
Send s
Send {d down}{s down}
Send {d up}{s up}
Send d
return
}

; Meia-lua, lado direito.

8::
{
Send d
Send {d down}{s down}
Send {d up}{s up}
Send s
Send {a down}{s down}
Send {a up}{s up}
Send a
return
}

; Raging Storm de Geese Howard, B + C, lado esquerdo.

,::
{
Send {a down}{s down}
Send {a up}{s up}
Send d
Send {d down}{s down}
Send {d up}{s up}
Send s
Send {a down}{s down}
Send {a up}{s up}
Send a
Send {d down}{s down}{i down}{j down}
Send {j up}{i up}{d up}{s up}
return
}

; Raging Storm de Geese Howard, B + C, lado direito.

.::
{
Send {d down}{s down}
Send {d up}{s up}
Send a
Send {a down}{s down}
Send {a up}{s up}
Send s
Send {d down}{s down}
Send {d up}{s up}
Send d
Send {a down}{s down}{i down}{j down}
Send {a up}{s up}{j up}{i up}
return
}

; 360 graus de Zangief + tecla "i", lado esquerdo.

9::
{
Send d
Send {d down}{s down}
Send {d up}{s up}
Send s
Send {a down}{s down}
Send {a up}{s up}
Send a
Send {a down}{w down}{i down}
Send {i up}{a up}{w up}
; Send w
; Send {d down}{w down}
; Send {d up}{w up}
; Send d
; Send o
return
}

; 360 graus de Zangief + tecla "i", lado direito.

0::
{
Send a
Send {a down}{s down}
Send {a up}{s up}
Send s
Send {d down}{s down}
Send {d up}{s up}
Send d
Send {d down}{w down}{i down}
Send {i up}{d up}{w up}
; Send w
; Send {a down}{w down}
; Send {a up}{w up}
; Send a
; Send o
return
}
