local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Ploder = require(ReplicatedStorage.Packages.Ploder)

local Explosion = Ploder.new()

Explosion.BlastPressure = 1000
Explosion.DestroyJointRadiusPercent = 1
Explosion.Debug = true

local Behavior = Ploder.newBehavior()

Behavior.AffectBlastPressureDistance = true
Behavior.Tags = require(script.Parent.Tags)

Explosion.Hit:Connect(function(Hit)
    print(Hit.Name .. " got hit")
end)

for _ = 1, 10, 1 do
    task.wait(10)
    Explosion:Explode(Behavior)
end