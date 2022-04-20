#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallMouseHook
#MaxThreadsPerHotkey 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;---------------------------------------Rapid tap key-----------------------------------
#SingleInstance force
toggle := 0
; Create "Bound Functions" for each timer that pass the desired string
; Store these for later if you want to be able to turn the timers off
; You can use the BoundFunc Object to turn the timer off
2fn := Func("SendKey").Bind("e")
3fn := Func("SendKey").Bind("r")
4fn := Func("SendKey").Bind("a")

`::
    toggle := !toggle
    t := toggle ? 400 : "Off"
    ; Use the stored BoundFunc Objects to turn the timers on or off
    SetTimer, % 2fn, % t
    SetTimer, % 3fn, % t
	SetTimer, % 4fn, % t
    return

SendKey(key){
    Send % "{Blind}" key
}

#IfWinActive, Diablo III
^!s::Suspend  ; Suspend script with Ctrl+Alt+S  ; ctrl + alt + s 
^!r::Reload   ; Reload script with Ctrl+Alt+R	; ctrl + alt + r 

#IfWinActive, Diablo III
F8::
    toggle := !toggle
    While toggle {
	If !chatopen {
            ControlSend, , 2, Diablo III
            sleep 250
        }
    }
return

;---------------------------------------Rapid Salvage legendary-----------------------------------
; Click the hammer button first at blacksmith and then press ]

#IfWinActive, Diablo III 			
]::
    Click
    Send {Blind}{Enter}
return


;---------------------------------------Rapid LMB Key-----------------------------------

#IfWinActive, Diablo III
$LButton::										; left mouse button
    While GetKeyState("LButton", "p") { 		; While it is held down
        MouseClick Left
        Sleep 100
    }
return

;---------------------------------------Rapid RMB Key-----------------------------------

#IfWinActive, Diablo III
$RControl::
    While GetKeyState("RControl", "p") {   ; While it is held down
        MouseClick Right
        Sleep 50
    }
return


;---------------------------------------Function calling-----------------------------------
#IfWinActive, Diablo III 
;XButton2::Nemesisswap_Function()		 ; Top side mouse button 
;LAlt & 3::dropall_Function()			 ; left Alt + 3
LAlt & 1::sendStash_Function()			 ; left Alt + 1
LAlt & 2::sendBag_Function()			 ; left Alt + 2
LAlt & 5::salvageAll_Function()			 ; left Alt + 5

;---------------------------------------Nemesis Bracer Swap function-----------------------------------

Nemesisswap_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY
Send, c
MouseClick, right,  1477,  608

Send, c
MouseMove, StartX, StartY
}


;---------------------------------------Drop All Items From Player's Bag function-----------------------------------
dropall_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY
Send, i
MouseClick, left,  1432,  583 ; Column 1 Diablo 3 player's bag
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1425,  641 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1428,  680 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1426,  729 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1425,  784
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1437,  832 
MouseClick, left,  1201,  523 ; drop position 

MouseClick, left,  1472,  581 ; Column 2 Diablo 3 player's bag
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1474,  621 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1479,  668 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1476,  741 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1471,  784
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1474,  836 
MouseClick, left,  1201,  523 ; drop position 


MouseClick, left,  1532,  578 ; Column 3 Diablo 3 player's bag
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1521,  632 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1522,  678 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1521,  734 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1524,  774
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1539,  827 
MouseClick, left,  1201,  523 ; drop position 


MouseClick, left,  1584,  578 ; Column 4 Diablo 3 player's bag
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1583,  632 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1579,  680 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1573,  737 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1574,  780
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1587,  832
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1630,  579 ; Column 5 Diablo 3 player's bag
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1628,  637
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1623,  686
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1522,  738 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1624,  774
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1625,  824
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1682,  583 ; Column 6 Diablo 3 player's bag
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1682,  629
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1678,  680
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1680,  734 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1673,  791
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1676,  831
MouseClick, left,  1201,  523 ; drop position   

MouseClick, left,  1714,  587 ; Column 7 Diablo 3 player's bag
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1724,  639
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1724,  676
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1728,  731 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1724,  786
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1728,  840
MouseClick, left,  1201,  523 ; drop position   


MouseClick, left,  1780,  584 ; Column 8 Diablo 3 player's bag
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1779,  629
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1776,  679
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1776,  732 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1774,  780
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1774,  832
MouseClick, left,  1201,  523 ; drop position 

MouseClick, left,  1821,  578 ; Column 9 Diablo 3 player's bag
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1826,  628
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1823,  688
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1840,  735 
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1834,  779
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1829,  830
MouseClick, left,  1201,  523 ; drop position 

MouseClick, left,  1885,  580 ; Column 10 Diablo 3 player's bag
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1873,  631
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1882,  682
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1882,  732
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1888,  783
MouseClick, left,  1201,  523 ; drop position

MouseClick, left,  1889,  833
MouseClick, left,  1201,  523 ; drop position   


Send, i
MouseMove, StartX, StartY
}

;---------------------------------------Bag to Stash function-----------------------------------
bag2Stash(xcor, ycor){
	MouseClick, right,  xcor,  ycor
}

sendStash_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY

;COLUMN 1 BAG
bag2Stash(1427, 583) ;row1
bag2Stash(1427, 630) ;row2
bag2Stash(1427, 682) ;row3
bag2Stash(1427, 731) ;row4
bag2Stash(1427, 782) ;row5
bag2Stash(1427, 834) ;row6

;COLUMN 2 BAG
bag2Stash(1477, 585) ;row1
bag2Stash(1477, 632) ;row2
bag2Stash(1477, 683) ;row3
bag2Stash(1477, 727) ;row4
bag2Stash(1477, 780) ;row5
bag2Stash(1477, 837) ;row6

;COLUMN 3 BAG
bag2Stash(1526, 579) ;row1
bag2Stash(1526, 627) ;row2
bag2Stash(1526, 683) ;row3
bag2Stash(1526, 726) ;row4
bag2Stash(1526, 781) ;row5
bag2Stash(1526, 839) ;row6

;COLUMN 4 BAG
bag2Stash(1580, 580) ;row1
bag2Stash(1580, 629) ;row2
bag2Stash(1580, 681) ;row3
bag2Stash(1580, 732) ;row4
bag2Stash(1580, 776) ;row5
bag2Stash(1580, 830) ;row6

;COLUMN 5 BAG
bag2Stash(1629, 584) ;row1
bag2Stash(1629, 629) ;row2
bag2Stash(1629, 680) ;row3
bag2Stash(1629, 729) ;row4
bag2Stash(1629, 783) ;row5
bag2Stash(1629, 826) ;row6

;COLUMN 6 BAG
bag2Stash(1677, 581) ;row1
bag2Stash(1677, 628) ;row2
bag2Stash(1677, 680) ;row3
bag2Stash(1677, 732) ;row4
bag2Stash(1677, 777) ;row5
bag2Stash(1677, 828) ;row6

;COLUMN 7 BAG
bag2Stash(1729, 586) ;row1
bag2Stash(1729, 631) ;row2
bag2Stash(1729, 683) ;row3
bag2Stash(1729, 729) ;row4
bag2Stash(1729, 775) ;row5
bag2Stash(1729, 831) ;row6

;COLUMN 8 BAG
bag2Stash(1776, 581) ;row1
bag2Stash(1776, 630) ;row2
bag2Stash(1776, 678) ;row3
bag2Stash(1776, 730) ;row4
bag2Stash(1776, 777) ;row5
bag2Stash(1776, 829) ;row6

;COLUMN 9 BAG
bag2Stash(1832, 579) ;row1
bag2Stash(1832, 633) ;row2
bag2Stash(1832, 674) ;row3
bag2Stash(1832, 728) ;row4
bag2Stash(1832, 780) ;row5
bag2Stash(1832, 828) ;row6

;COLUMN 10 BAG
bag2Stash(1877, 578) ;row1
bag2Stash(1877, 627) ;row2
bag2Stash(1877, 680) ;row3
bag2Stash(1877, 725) ;row4
bag2Stash(1877, 780) ;row5
bag2Stash(1877, 833) ;row6
  
MouseMove, StartX, StartY
}

;---------------------------------------Stash To Bag function-----------------------------------
stash2Bag(xcor, ycor){
	MouseClick, right,  xcor,  ycor
}

sendBag_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY

;COL 1 STASH
stash2Bag(93, 248)
stash2Bag(93, 304)
stash2Bag(93, 363)
stash2Bag(93, 422)
stash2Bag(93, 474)
stash2Bag(93, 532)
stash2Bag(93, 590)
stash2Bag(93, 648)
stash2Bag(93, 708)
stash2Bag(93, 759)

;COL 2 STASH
stash2Bag(143, 246)
stash2Bag(143, 306)
stash2Bag(143, 361)
stash2Bag(143, 420)
stash2Bag(143, 481)
stash2Bag(143, 537)
stash2Bag(143, 592)
stash2Bag(143, 651)
stash2Bag(143, 702)
stash2Bag(143, 770)

;COL 3 STASH
stash2Bag(203, 244)
stash2Bag(203, 304)
stash2Bag(203, 360)
stash2Bag(203, 421)
stash2Bag(203, 475)
stash2Bag(203, 531)
stash2Bag(203, 592)
stash2Bag(203, 650)
stash2Bag(203, 706)
stash2Bag(203, 761)

;COL 4 STASH
stash2Bag(263, 249)
stash2Bag(263, 305)
stash2Bag(263, 364)
stash2Bag(263, 420)
stash2Bag(263, 474)
stash2Bag(263, 532)
stash2Bag(263, 586)
stash2Bag(263, 648)
stash2Bag(263, 704)
stash2Bag(263, 770)

;COL 5 STASH
stash2Bag(318, 246)
stash2Bag(318, 302)
stash2Bag(318, 359)
stash2Bag(318, 418)
stash2Bag(318, 473)
stash2Bag(318, 533)
stash2Bag(318, 592)
stash2Bag(318, 647)
stash2Bag(318, 703)
stash2Bag(318, 762)

;COL 6 STASH
stash2Bag(377, 250)
stash2Bag(377, 299)
stash2Bag(377, 355)
stash2Bag(377, 420)
stash2Bag(377, 477)
stash2Bag(377, 529)
stash2Bag(377, 589)
stash2Bag(377, 647)
stash2Bag(377, 708)
stash2Bag(377, 767)

;COL 7 STASH
stash2Bag(435, 247)
stash2Bag(435, 303)
stash2Bag(435, 361)
stash2Bag(435, 426)
stash2Bag(435, 472)
stash2Bag(435, 523)
stash2Bag(435, 586)
stash2Bag(435, 644)
stash2Bag(435, 709)
stash2Bag(435, 766)

MouseMove, StartX, StartY
}

;---------------------------------------Salvage All in bag function-----------------------------------
salvage(xcor, ycor){
	MouseClick, left,  158,  299
	MouseClick, left,  xcor,  ycor
	send {enter}
	sleep 0
	MouseClick, right,  xcor, ycor
	sleep 0
}

salvageAll_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY

;COLUMN 1 BAG
salvage(1427, 583) ;row1
salvage(1427, 630) ;row2
salvage(1427, 682) ;row3
salvage(1427, 731) ;row4
salvage(1427, 782) ;row5
salvage(1427, 834) ;row6

;COLUMN 2 BAG
salvage(1477, 585) ;row1
salvage(1477, 632) ;row2
salvage(1477, 683) ;row3
salvage(1477, 727) ;row4
salvage(1477, 780) ;row5
salvage(1477, 837) ;row6

;COLUMN 3 BAG
salvage(1526, 579) ;row1
salvage(1526, 627) ;row2
salvage(1526, 683) ;row3
salvage(1526, 726) ;row4
salvage(1526, 781) ;row5
salvage(1526, 839) ;row6

;COLUMN 4 BAG
salvage(1580, 580) ;row1
salvage(1580, 629) ;row2
salvage(1580, 681) ;row3
salvage(1580, 732) ;row4
salvage(1580, 776) ;row5
salvage(1580, 830) ;row6

;COLUMN 5 BAG
salvage(1629, 584) ;row1
salvage(1629, 629) ;row2
salvage(1629, 680) ;row3
salvage(1629, 729) ;row4
salvage(1629, 783) ;row5
salvage(1629, 826) ;row6

;COLUMN 6 BAG
salvage(1677, 581) ;row1
salvage(1677, 628) ;row2
salvage(1677, 680) ;row3
salvage(1677, 732) ;row4
salvage(1677, 777) ;row5
salvage(1677, 828) ;row6

;COLUMN 7 BAG
salvage(1729, 586) ;row1
salvage(1729, 631) ;row2
salvage(1729, 683) ;row3
salvage(1729, 729) ;row4
salvage(1729, 775) ;row5
salvage(1729, 831) ;row6

;COLUMN 8 BAG
salvage(1776, 581) ;row1
salvage(1776, 630) ;row2
salvage(1776, 678) ;row3
salvage(1776, 730) ;row4
salvage(1776, 777) ;row5
salvage(1776, 829) ;row6

;COLUMN 9 BAG
salvage(1832, 579) ;row1
salvage(1832, 633) ;row2
salvage(1832, 674) ;row3
salvage(1832, 728) ;row4
salvage(1832, 780) ;row5
salvage(1832, 828) ;row6

;COLUMN 10 BAG
salvage(1877, 578) ;row1
salvage(1877, 627) ;row2
salvage(1877, 680) ;row3
salvage(1877, 725) ;row4
salvage(1877, 780) ;row5
salvage(1877, 833) ;row6

MouseMove, StartX, StartY
}



/*--------------------- Equip Swapping Macro ---------------------
; Refer to this link for item placement https://drive.google.com/open?id=1eVmPZHs_0VFgjWMMVXfQQOx7DGih-Ty4



;---------------------------------------Aether & Cosmic Swap function-----------------------------------
Mbutton::AetherSwap_Function()   ; function calling

AetherSwap_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY
Send, c
MouseClick, right,  1479,  712   ; Aether walker

MouseClick, right,  1474,  810	 ; Cosmic Strand

Send, c
MouseMove, StartX, StartY
}


;---------------------------------------CODES-----------------------------------
Mbutton::Rainmentswap_Function()
`::Kyoshiroswap_Function()
F4::Teletown_Function()
F5::brokenCrownswap_Function()
F6::Neardeath_Function()
F7::Exaltedsoul_Function()
F2::Blindingspeed_Function()
F3::Fallingstar_Function()


Rainmentswap_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY
Send, c
MouseClick, right,  1527,  614 ; Rainment (anything swap)

MouseClick, right,  1578,  713 ; Legs 

MouseClick, right,  1527,  702 ; Legendary Helm (anything swap)

MouseClick, right,  1526,  820 ; Rainment (anything swap)

MouseClick, right,  1582,  616 ; Rainment (anything swap)

Send {LAlt down}
MouseClick, right,  1574,  803 ; Right Weapon
Send {LAlt up}

MouseClick, right,  1622,  581 ; left Ring 

Send {LAlt down}
MouseClick, right,  1626,  630 ; Right Ring 
Send {LAlt up}

MouseClick, right,  1626,  677 ; Amulet

MouseClick, right ,  1636, 759 ; Left Weapon

MouseClick, right ,  1684, 805 ; Bracer

Send, c
MouseMove, StartX, StartY
}

Kyoshiroswap_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY
Send, c
MouseClick, right,  1479,  712

Send, c
MouseMove, StartX, StartY
}


Teletown_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY
Send, c
MouseClick, right,  1576,  707

Send, t
Send, c
MouseMove, StartX, StartY
}

brokenCrownswap_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY
Send, c
MouseClick, right,  1474,  810

Send, c
MouseMove, StartX, StartY
}

Neardeath_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY
Send, s
MouseClick, left,  1075,  700

MouseClick, left,  1007,  630

MouseClick, left,  860,  819

Send, s
MouseMove, StartX, StartY
}

Exaltedsoul_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY
Send, s
MouseClick, left,  1071,  686

MouseClick, left,  1004,  317

MouseClick, left,  840,  810

Send, s
MouseMove, StartX, StartY
}

Blindingspeed_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY
Send, s
MouseClick, left,  815,  375

MouseClick, left,  886,  437

MouseClick, left,  840,  810

Send, s
MouseMove, StartX, StartY
}

Fallingstar_Function(){
WinWait, Diablo III, 
IfWinNotActive, Diablo III, , WinActivate, Diablo III, 
WinWaitActive, Diablo III, 
MouseGetPos, StartX, StartY
Send, s
MouseClick, left,  815,  375

MouseClick, left,  744,  427

MouseClick, left,  840,  810

Send, s
MouseMove, StartX, StartY
}


----------------------------------------------------------- */