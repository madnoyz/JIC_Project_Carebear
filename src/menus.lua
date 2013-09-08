function statusmenuvar()
	chosen = 1
	a1 = ">"
	a2 = "<"
	a3 = " "
	a4 = " "
	a5 = ""
	
end

function statusmenuupdate()
	if love.keyboard.isDown("a") and timer == 0 then
    timer = 30
    --move left
    chosen = chosen - 1
	end
	if love.keyboard.isDown("d") and timer == 0 then
    timer = 30
    --move right --
    chosen = chosen + 1
	end
	
	if chosen < 1 then chosen = 1 end
	if chosen > 4 then chosen = 4 end
	
	if chosen == 1 then
    a1 = ">"
    a2, a3, a4, a5= "<"," "," "," "
	end
	
	if chosen == 2 then
    a2 = ">"
    a1, a3, a4, a5 =" ","<"," "," "
	end
	
	if chosen == 3 then
    a3 = ">"
    a1,a2,a4, a5 = " "," ","<"," "
	end
	
	if chosen == 4 then
    a4 = ">"
    a1, a2, a3, a5 = " "," "," ","<"
	end	
	
	character = "CHARACTER"
	suits = "SUITS"
	stats = "STATS"
	library = "LIBRARY OF PHOBIAS"
end


function drawmainmenu1()
  love.graphics.print("Programmer:", 0, 0)
	love.graphics.print("Creator of Game:", 0, 20)
	love.graphics.print("Adventure Bear!",0, 40)
	love.graphics.print("Main Menu:", 50, 60)
	love.graphics.print("Start Game", 70, 100)
	love.graphics.print("Load Game", 70, 140)
	love.graphics.print("Exit", 70, 180)
	love.graphics.print("Version 1.1", 50, 300)
end

function drawsavemenu()
	love.graphics.print("-SAVE-", 125, 0)
	love.graphics.print("-BACK TO MENU-", 325, 0)
	love.graphics.print("gamesave1", 100, 50)
	love.graphics.print("gamesave2", 100, 150)
	love.graphics.print("gamesave3", 100, 150)
end

function drawloadmenu()
	love.graphics.print("-LOAD-", 125, 0)
	love.graphics.print("-BACK TO MENU-", 325, 0)
	love.graphics.print("gamesave1", 100, 50)
	love.graphics.print("gamesave2", 100, 150)
	love.graphics.print("gamesave3", 100, 150)
end

function drawstatusmenu()
	love.graphics.print(a1 .. " ".. character.. " " .. a2 .. suits.. " " ..a3.. stats.. " " ..a4 ..library..a5,300,0)
	
	if chosen == 1 then
	love.graphics.print("CHARACTER: ".. "EMPTY",300,50)
	love.graphics.print("DESCRIPTION ".. "EMPTY",350,75)
	love.graphics.print("ABILITIES ".. "EMPTY",350,100)
	love.graphics.print("TIER ".. "EMPTY",350,125)
	love.graphics.print("EXPERIENCE ".. "EMPTY",350,150)
	love.graphics.print("EXP TO NEXT TIER ".. "EMPTY",350,175)
	elseif chosen == 2 then
	love.graphics.print("CURRENT SUIT: ".. "EMPTY",300,50)
	love.graphics.print("DESCRIPTION ".. "EMPTY",350,75)
	love.graphics.print("ABILITIES ".. "EMPTY",350,100)
	love.graphics.print("TIER ".. "EMPTY",350,125)
	love.graphics.print("EXPERIENCE ".. "EMPTY",350,150)
	love.graphics.print("EXP TO NEXT TIER ".. "EMPTY",350,175)
	love.graphics.print("ADDITIONAL INFO ".. "EMPTY",350,200)
	elseif chosen == 3 then
	love.graphics.print("TIME PLAYED: ".. "EMPTY",300,50)
	love.graphics.print("MOST USED SUIT ".. "EMPTY",350,75)
	love.graphics.print("MOST DEVELOPED SUIT".. "EMPTY",350,100)
	love.graphics.print("TOTAL EXPERIENCE ".. "EMPTY",350,125)
	love.graphics.print("LAST SAVED ".. "EMPTY",350,150)
	else
	love.graphics.print("PHOBIAS FOUND ".. "EMPTY",350,50)
	love.graphics.print("PHOBIAS DEFEATED ".. "EMPTY",350,75)
	love.graphics.print( "ENEMY1 " .. "EMPTY",350,125)
	love.graphics.print( "ENEMY2 " .. "EMPTY",450,125)
	love.graphics.print( "ENEMY3 " .. "EMPTY",350,150)
	love.graphics.print( "ENEMY4 " .. "EMPTY",450,150)
	end
end	


function drawingamemenu()
--code for game menu -- 
end

function mapinit()
dreamfields = "???"
badbreathswamp = "???"
reclusiveforest = "???"
silouettecaves = "???"
snowcrystalmountains = "???"
magmariver = "???"
smithyfactory = "???"
forgottenplayhouse = "???"
diamondstarspace = "???"
marshmallowclouds = "???"
end

