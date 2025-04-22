local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()



function Script()
    local Window = Library.CreateLib("SubZero", "Synapse")



    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("All scripts created by Stunedx5")


    -- Script

    MainSection:NewSlider("Walkspeed", "Changes how fast you walk.", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    MainSection:NewSlider("JumpPower", "Changes how fast you jump.", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    MainSection:NewButton("Infinite Yield", "Give you infinite yield script.", function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
    end)

    MainSection:NewToggle("Infinite Jump", "Lets you infinitely jump", function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
    end)


    -- Credits


    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Credits")


    CreditsSection:NewLabel("Created by Stuned")
    


end
    local Tab = Window:NewTab("Visuals")
    local TabSection = Tab:NewSection("Player ESP")

    -- Visuals
    local function createESP(player)
    local drawing = Drawing.new("Text")
    drawing.Text = player.Name
    drawing.Size = 14
    drawing.Color = Color3.fromRGB(255, 0, 0)
    drawing.Center = true
    drawing.Outline = true
    drawing.Visible = false

    espTable[player] = drawing
end


if game.PlaceId == 17625359962 then
    Script()
end