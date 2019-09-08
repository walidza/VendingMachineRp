--[[
██╗====██╗=█████╗=██╗=====██╗██████╗=====██████╗=███████╗██╗===██╗
██║====██║██╔══██╗██║=====██║██╔══██╗====██╔══██╗██╔════╝██║===██║
██║=█╗=██║███████║██║=====██║██║==██║====██║==██║█████╗==██║===██║
██║███╗██║██╔══██║██║=====██║██║==██║====██║==██║██╔══╝==╚██╗=██╔╝
╚███╔███╔╝██║==██║███████╗██║██████╔╝====██████╔╝███████╗=╚████╔╝=
=╚══╝╚══╝=╚═╝==╚═╝╚══════╝╚═╝╚═════╝=====╚═════╝=╚══════╝==╚═══╝==
==================================================================
command list (
--addvending [create new vending machine]-"TrialAdmin"
--showvending [show all the vending machine in server]-"TrialAdmin"
--delvending [remove vending machine ID]-"TrialAdmin"
--delallvending [ remove all vinding machine in the server]-"LeadScripter"
)

rank list (
isPlayerLeadScripter
isPlayerScripter
isPlayerLeadAdmin
isPlayerSeniorAdmin
isPlayerAdmin
isPlayerTrialAdmin
isPlayerSupportManager
isPlayerSupporter
isPlayerVCTMember



)
]]--


maxe = 1
mysql = exports.mysql
local allMarkers = createElement("machinesMarker")

mysql:query ( "CREATE TABLE IF NOT EXISTS machins ( ID INT AUTO_INCREMENT KEY,x INT,y INT,z INT,rotation INT,dimension INT,interior INT)"  ); 
addCommandHandler("addvending", function(thePlayer, commandName, id)
    local rank = exports.integration
    if rank:isPlayerTrialAdmin(thePlayer) then
        local dim = getElementDimension(thePlayer)
        local int = getElementInterior(thePlayer)
        local _, _, rot = getElementRotation(thePlayer)
        local objectPosition = thePlayer.matrix.position + thePlayer.matrix.forward * 1.5
        local x, y, z = objectPosition:getX(), objectPosition:getY(), objectPosition:getZ()
        local adminUsername = getElementData(thePlayer, "account:username")
        local adminTitle = exports.global:getPlayerAdminTitle(thePlayer)
        local objectMachineFood = createObject(1776, x, y, z-0.2, 0, 0, rot-180)
        local theMarker = createMarker(objectMachineFood.matrix.position + objectMachineFood.matrix.right * 0.3 - objectMachineFood.matrix.forward * 1, "cylinder", 0.30000001, 255, 255, 0, 0)
        setElementParent(theMarker, allMarkers)
        local query = mysql:query_free("INSERT INTO machins (x,y,z,rotation,dimension,interior) VALUES ('"..x.."','"..y.."',' "..z.."',' "..rot.."',' "..dim.."',' "..int.."')")
        if query then
          query = mysql:query("SELECT ID FROM machins ORDER BY ID DESC LIMIT 1")
            if query then
                while true do
                    local row = mysql:fetch_assoc(query)
                    if not row then break end
                    exports.global:sendMessageToAdmins("[Vending]: "..adminTitle.." "..getPlayerName(thePlayer):gsub("_", " ").." ("..adminUsername..") has create new vending machin #"..row["ID"]..".")
                    outputChatBox("vending machine created with ID #"..row["ID"].."!", thePlayer, 0, 255, 0)
                end
            end
        end
    end
end)




addEvent("takeMoneysB1",true)
				addEventHandler("takeMoneysB1",root,function ()
			exports.global:takeMoney(client,8)
      exports.global:giveItem(source, 1, maxe)
end)

addEvent("takeMoneysB2",true)
				addEventHandler("takeMoneysB2",root,function ()
			exports.global:takeMoney(client,5)
      exports.global:giveItem(source, 14, maxe)
end)

addEvent("takeMoneysB3",true)
				addEventHandler("takeMoneysB3",root,function ()
			exports.global:takeMoney(client,3)
      exports.global:giveItem(source, 13, maxe)
end)

addEvent("takeMoneysB4",true)
				addEventHandler("takeMoneysB4",root,function ()
			exports.global:takeMoney(client,15)
      exports.global:giveItem(source,12, maxe)
end)

addEvent("takeMoneysB5",true)
				addEventHandler("takeMoneysB5",root,function ()
			exports.global:takeMoney(client,13)
      exports.global:giveItem(source, 11, maxe)
end)

addEvent("takeMoneysB6",true)
        addEventHandler("takeMoneysB6",root,function ( thePlayer, itemID, itemValue)
            exports.global:takeMoney(client,7)
	          exports.global:giveItem(source, 8, maxe)
end)

function loadSQL()
    local query = mysql:query("SELECT  * FROM machins")
    if query then
        while true do
        local row = mysql:fetch_assoc(query)
        if not row then break end
        local x = tonumber(row["x"])
        local y = tonumber(row["y"])
        local z = tonumber(row["z"])
        local rot = tonumber(row["rotation"]) 
        local dim = tonumber(row["dimension"])
        local int = tonumber(row["interior"])
        local objectMachineFood = createObject(1776, x, y, z-0.3, 0, 0, rot)
        local theMarker = createMarker(objectMachineFood.matrix.position + objectMachineFood.matrix.right * 0.3 - objectMachineFood.matrix.forward * 1, "cylinder", 0.30000001, 255, 255, 0, 0)
        setElementParent(theMarker, allMarkers)
        setElementDimension(objectMachineFood, dim)
        setElementInterior(objectMachineFood, int)
        setElementDimension(theMarker, dim)
        setElementInterior(theMarker, int)
    end
  end
end
addEventHandler("onResourceStart", resourceRoot, loadSQL)

function MarkerHit( thePlayer,hitElement)
    triggerClientEvent (thePlayer,  "onHitMarkerShowDxPanel", thePlayer)
end
addEventHandler( "onMarkerHit", allMarkers, MarkerHit )


addCommandHandler("showvending",function (thePlayer,commandName)
  local rank = exports.integration
  if (rank:isPlayerTrialAdmin(thePlayer)) then
                local sqlshow = mysql:query ( "SELECT ID FROM machins")
                 if (sqlshow) then
            local continue = true
            while continue do
               local row = mysql:fetch_assoc(sqlshow)
                if not row then break end

            outputChatBox("All vending Mashin in the server IDS #" .. row["ID"] .. "!", thePlayer, 0, 255, 0)
          end
      end
    end
end)


addCommandHandler("delvending",function (thePlayer,_,id)
    local rank = exports.integration
      if (rank:isPlayerTrialAdmin(thePlayer)) then
  local adminUsername = getElementData(thePlayer, "account:username")
  local adminTitle = exports.global:getPlayerAdminTitle(thePlayer)
        local id = tonumber(id)
	if id then
        		local query = mysql:query_free("DELETE FROM machins WHERE ID='" .. id .. "'")
		if query then
      			  exports.global:sendMessageToAdmins("[Vending]: "..adminTitle.." ".. getPlayerName(thePlayer):gsub("_", " ").." ("..adminUsername..") has removed the vending machin #".. id ..".")
		end
		return query
    	end
			outputChatBox("SYNTAX: /delvending [ID]", thePlayer, 255, 194, 14)
    end
end)


addCommandHandler("delallvending",function (thePlayer,commandName)
    local rank = exports.integration
    if (rank:isPlayerLeadScripter(thePlayer)) then
  local adminUsername = getElementData(thePlayer, "account:username")
  local adminTitle = exports.global:getPlayerAdminTitle(thePlayer)
                local delAllvend = mysql:query ( "DELETE FROM machins WHERE ID")
                 if (delAllvend) then
            local continue = true
            while continue do
               local row = mysql:fetch_assoc(delAllvend)
                  exports.global:sendMessageToAdmins("[Vending]: "..adminTitle.." ".. getPlayerName(thePlayer):gsub("_", " ").." ("..adminUsername..") has removed all the vending machins #")
                  executeCommandHandler ( "restartres coding", thePlayer )
                if not row then break end
          end
      end
    end
end)

function restartResCommand (thePlayer)  
      local rank = exports.integration
      if (rank:isPlayerTrialAdmin(thePlayer)) then
        restartResource(getThisResource())
    end
  end
addCommandHandler ("addvending",restartResCommand)
addCommandHandler ("delvending",restartResCommand)

function restartResCommandDev (thePlayer)  
      local rank = exports.integration
      if (rank:isPlayerLeadScripter(thePlayer)) then
        restartResource(getThisResource())
    end
  end
addCommandHandler ("delallvending",restartResCommandDev)
