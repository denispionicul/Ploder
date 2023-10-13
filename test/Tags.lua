local TweenService = game:GetService("TweenService")

local Tags = {
    ["Flamable"] = function(Hit: BasePart, Distance)
        local Fire = Instance.new("Fire")
        Fire.Parent = Hit
        Hit.Color = Color3.new(0, 0, 0)

        local Tween = TweenService:Create(Hit, TweenInfo.new(5), {Transparency = 1})

        Tween:Play()
        Tween.Completed:Connect(function(playbackState)
            Hit:Destroy()
            Tween:Destroy()
        end)
    end,
    ["Explodible"] = function(Hit: BasePart)
        Hit:Destroy()
    end,
}

return Tags