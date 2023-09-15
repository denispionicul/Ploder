local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Ploder = require(ReplicatedStorage.Packages.Ploder)

local Explosion = Ploder.new()

Explosion.BlastPressure = 1000
Explosion.DestroyJointRadiusPercent = 1

local Behavior = Ploder.newBehavior()

Behavior.AffectBlastPressureDistance = true

Explosion.Hit:Connect(function(Hit: BasePart)
    print(Hit.Name .. " got hit")
end)

for _ = 1, 10, 1 do
    task.wait(10)
    Explosion:Explode(Behavior)
end