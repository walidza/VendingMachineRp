
addEventHandler("onClientResourceStart", resourceRoot,
    function  ()
        b1 = guiCreateButton(429, 272, 136, 123, "", false)
        guiSetAlpha(b1, 0.00)
        guiSetProperty(b1, "NormalTextColour", "FFAAAAAA")


        b2 = guiCreateButton(600, 273, 136, 123, "", false)
        guiSetAlpha(b2, 0.00)
        guiSetProperty(b2, "NormalTextColour", "FFAAAAAA")


        b3 = guiCreateButton(772, 273, 136, 123, "", false)
        guiSetAlpha(b3, 0.00)
        guiSetProperty(b3, "NormalTextColour", "FFAAAAAA")


        b4 = guiCreateButton(430, 431, 136, 123, "", false)
        guiSetAlpha(b4, 0.00)
        guiSetProperty(b4, "NormalTextColour", "FFAAAAAA")


        b5 = guiCreateButton(600, 429, 136, 123, "", false)
        guiSetAlpha(b5, 0.00)
        guiSetProperty(b5, "NormalTextColour", "FFAAAAAA")


        b6 = guiCreateButton(772, 431, 136, 123, "", false)
        guiSetAlpha(b6, 0.00)
        guiSetProperty(b6, "NormalTextColour", "FFAAAAAA")


        --buy = guiCreateButton(569, 598, 203, 83, "", false)
        --guiSetAlpha(buy, 0.00)
        --guiSetProperty(buy, "NormalTextColour", "FFAAAAAA")


        Close = guiCreateButton(888, 205, 20, 19, "", false)
        guiSetAlpha(Close, 0.00)
        guiSetProperty(Close, "NormalTextColour", "FFAAAAAA")
    end
)


    function dxbutton()
        dxDrawLine(774 - 1, 431 - 1, 774 - 1, 553, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(911, 431 - 1, 774 - 1, 431 - 1, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(774 - 1, 553, 911, 553, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(911, 553, 911, 431 - 1, tocolor(62, 62, 62, 108), 1, false)
        dxDrawRectangle(774, 431, 137, 122, tocolor(85, 85, 85, 90), false)
        dxDrawLine(599 - 1, 430 - 1, 599 - 1, 552, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(736, 430 - 1, 599 - 1, 430 - 1, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(599 - 1, 552, 736, 552, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(736, 552, 736, 430 - 1, tocolor(62, 62, 62, 108), 1, false)
        dxDrawRectangle(599, 430, 137, 122, tocolor(85, 85, 85, 90), false)
        dxDrawLine(430 - 1, 431 - 1, 430 - 1, 553, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(567, 431 - 1, 430 - 1, 431 - 1, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(430 - 1, 553, 567, 553, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(567, 553, 567, 431 - 1, tocolor(62, 62, 62, 108), 1, false)
        dxDrawRectangle(430, 431, 137, 122, tocolor(85, 85, 85, 90), false)
        dxDrawLine(772 - 1, 273 - 1, 772 - 1, 395, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(909, 273 - 1, 772 - 1, 273 - 1, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(772 - 1, 395, 909, 395, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(909, 395, 909, 273 - 1, tocolor(62, 62, 62, 108), 1, false)
        dxDrawRectangle(772, 273, 137, 122, tocolor(85, 85, 85, 90), false)
        dxDrawLine(599 - 1, 273 - 1, 599 - 1, 395, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(736, 273 - 1, 599 - 1, 273 - 1, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(599 - 1, 395, 736, 395, tocolor(62, 62, 62, 108), 1, false)
        dxDrawLine(736, 395, 736, 273 - 1, tocolor(62, 62, 62, 108), 1, false)
        dxDrawRectangle(599, 273, 137, 122, tocolor(85, 85, 85, 90), false)
        dxDrawImage(772, 430, 139, 123, "img/8.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(597, 430, 139, 123, "img/11.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(428, 430, 138, 121, "img/12.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(772, 272, 137, 120, "img/13.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawImage(599, 271, 137, 124, "img/14.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawLine(428 - 1, 273 - 1, 428 - 1, 395, tocolor(62, 62, 62, 90), 1, false)
        dxDrawLine(565, 273 - 1, 428 - 1, 273 - 1, tocolor(62, 62, 62, 90), 1, false)
        dxDrawLine(428 - 1, 395, 565, 395, tocolor(62, 62, 62, 90), 1, false)
        dxDrawLine(565, 395, 565, 273 - 1, tocolor(62, 62, 62, 90), 1, false)
        dxDrawRectangle(428, 273, 137, 122, tocolor(85, 85, 85, 90), false)
        dxDrawImage(428, 271, 139, 124, "img/1.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawLine(567 - 1, 597 - 1, 567 - 1, 681, tocolor(51, 51, 51, 108), 1, false)
        --dxDrawLine(772, 597 - 1, 567 - 1, 597 - 1, tocolor(51, 51, 51, 108), 1, false)
        --dxDrawLine(567 - 1, 681, 772, 681, tocolor(51, 51, 51, 108), 1, false)
        --dxDrawLine(772, 681, 772, 597 - 1, tocolor(51, 51, 51, 108), 1, false)
        --dxDrawRectangle(567, 597, 205, 84, tocolor(51, 51, 51, 108), false)
        --dxDrawText("Buy", 568, 598, 772, 681, tocolor(4, 101, 0, 206), 3.00, "pricedown", "center", "center", false, false, false, false, false)
        dxDrawRectangle(886, 203, 23, 21, tocolor(87, 0, 0, 206), false)
        dxDrawText("X", 887, 204, 908, 224, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "center", false, false, false, false, false)
        dxDrawLine(429 - 1, 402 - 1, 429 - 1, 421, tocolor(43, 43, 43, 161), 1, false)
        dxDrawLine(908, 402 - 1, 429 - 1, 402 - 1, tocolor(43, 43, 43, 161), 1, false)
        dxDrawLine(429 - 1, 421, 908, 421, tocolor(43, 43, 43, 161), 1, false)
        dxDrawLine(908, 421, 908, 402 - 1, tocolor(43, 43, 43, 161), 1, false)
        dxDrawRectangle(429, 402, 479, 19, tocolor(74, 74, 74, 161), false)
        dxDrawLine(429 - 1, 562 - 1, 429 - 1, 581, tocolor(43, 43, 43, 161), 1, false)
        dxDrawLine(908, 562 - 1, 429 - 1, 562 - 1, tocolor(43, 43, 43, 161), 1, false)
        dxDrawLine(429 - 1, 581, 908, 581, tocolor(43, 43, 43, 161), 1, false)
        dxDrawLine(908, 581, 908, 562 - 1, tocolor(43, 43, 43, 161), 1, false)
        dxDrawRectangle(429, 562, 479, 19, tocolor(74, 74, 74, 161), false)
        dxDrawText("8$", 432, 403, 563, 421, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "top", false, false, false, false, false)
        dxDrawText("5$", 600, 403, 731, 421, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "top", false, false, false, false, false)
        dxDrawText("3$", 777, 402, 908, 420, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "top", false, false, false, false, false)
        dxDrawText("15$", 429, 563, 560, 581, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "top", false, false, false, false, false)
        dxDrawText("13$", 599, 564, 730, 582, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "top", false, false, false, false, false)
        dxDrawText("7$", 777, 563, 908, 581, tocolor(255, 255, 255, 255), 1.00, "default-bold", "center", "top", false, false, false, false, false)
        dxDrawLine(754, 563, 754, 580, tocolor(255, 255, 255, 255), 1, false)
        dxDrawLine(577, 562, 577, 579, tocolor(255, 255, 255, 255), 1, false)
        dxDrawLine(578, 403, 578, 420, tocolor(255, 255, 255, 255), 1, false)
        dxDrawLine(753, 402, 753, 419, tocolor(255, 255, 255, 255), 1, false)
end

function dXpanel ()
  			local showed = not showed
  		if showed then
  			addEventHandler("onClientRender",root,dxbutton)
  			showCursor ( true )
  		end
end
addEvent("onHitMarkerShowDxPanel",true)
addEventHandler("onHitMarkerShowDxPanel",localPlayer,dXpanel)
--bindKey ("F7","down", dXpanel)

function Closing ()
  if (source==Close) then
    removeEventHandler("onClientRender", root, dxbutton)
		showCursor ( false )
  end
end
addEventHandler ("onClientGUIClick",root,Closing)

function buttonFood1 ()
 if (source==b1)then
      setPedAnimation( localPlayer, "vending", "vend_use" )
       triggerServerEvent ( "takeMoneysB1", localPlayer)
    setTimer(function()
        setPedAnimation(localPlayer)
    end, 2600, 0)
  end
end
addEventHandler ("onClientGUIClick",root,buttonFood1)

function buttonFood2 ()
 if (source==b2)then
    setPedAnimation( localPlayer, "vending", "vend_use" )
       triggerServerEvent ( "takeMoneysB2", localPlayer)
    setTimer(function()
        setPedAnimation(localPlayer)
    end, 2600, 0)
  end
end
addEventHandler ("onClientGUIClick",root,buttonFood2)

function buttonFood3 ()
 if (source==b3)then
      setPedAnimation( localPlayer, "vending", "vend_use" )
       triggerServerEvent ( "takeMoneysB3", localPlayer)
    setTimer(function()
        setPedAnimation(localPlayer)
    end, 2600, 0)
  end
end
addEventHandler ("onClientGUIClick",root,buttonFood3)

function buttonFood4 ()
 if (source==b4)then
      setPedAnimation( localPlayer, "vending", "vend_use" )
       triggerServerEvent ( "takeMoneysB4", localPlayer)
    setTimer(function()
        setPedAnimation(localPlayer)
    end, 2600, 0)
  end
end
addEventHandler ("onClientGUIClick",root,buttonFood4)

function buttonFood5 ()
 if (source==b5)then
      setPedAnimation( localPlayer, "vending", "vend_use" )
       triggerServerEvent ( "takeMoneysB5", localPlayer)
    setTimer(function()
        setPedAnimation(localPlayer)
    end, 2600, 0)
  end
end
addEventHandler ("onClientGUIClick",root,buttonFood5)

function buttonFood6 ()
 if (source==b6)then
  setPedAnimation( localPlayer, "vending", "vend_use" )
    triggerServerEvent ( "takeMoneysB6", localPlayer)
    setTimer(function()
        setPedAnimation(localPlayer)
    end, 2600, 0)

  end
end
addEventHandler ("onClientGUIClick",root,buttonFood6)
