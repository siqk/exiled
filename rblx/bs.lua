local Workspace = game:GetService("Workspace")

-- === CONFIG ===
local SIZE = 40000
local THICKNESS = 10
local PART_SIZE = 2048
local GRID = math.ceil(SIZE / PART_SIZE)  -- 20 parts

-- === ORIGINAL POSITION LOWERED BY 2 ===
local BASE_CFRAME = CFrame.new(8, -10, -482.000031, 1, 0, 0, 0, 1, 0, 0, 0, 1)  -- Changed Y from -8 to -10
local BASE_Y_POSITION = BASE_CFRAME.Y  -- Now -10
local BASE_HEIGHT_OFFSET = THICKNESS / 2  -- 5

-- === DELETE OLD ===
local old = Workspace:FindFirstChild("Baseplate")
if old then old:Destroy() end

local mapFolder = Workspace:FindFirstChild("map")
if mapFolder then
    local extraRoom = mapFolder:FindFirstChild("extra_room")
    if extraRoom then
        for _, child in ipairs(extraRoom:GetChildren()) do
            child:Destroy()
        end
    end
end

-- === CREATE LOWERED BASEPLATE ===
for x = 0, GRID-1 do
    for z = 0, GRID-1 do
        local part = Instance.new("Part")
        part.Name = "BaseplateSection_" .. x .. "_" .. z
        part.Size = Vector3.new(PART_SIZE, THICKNESS, PART_SIZE)
        
        -- Position lowered by 2 studs
        part.Position = Vector3.new(
            (x * PART_SIZE) - (SIZE/2) + (PART_SIZE/2),
            BASE_Y_POSITION + BASE_HEIGHT_OFFSET,  -- Now -10 + 5 = -5
            (z * PART_SIZE) - (SIZE/2) + (PART_SIZE/2)
        )
        
        part.Anchored = true
        part.CanCollide = true
        part.Material = Enum.Material.Asphalt
        part.Color = Color3.fromRGB(100, 100, 100)
        part.CFrame = CFrame.new(part.Position) * BASE_CFRAME.Rotation
        part.Parent = Workspace
    end
end

print("Created 40k baseplate using " .. GRID*GRID .. " parts")
print("Base Y Position: " .. BASE_Y_POSITION .. " (2 studs lower than original)")
print("Top surface at Y = " .. (BASE_Y_POSITION + THICKNESS))  -- -10 + 10 = 0
print("Bottom surface at Y = " .. BASE_Y_POSITION)  -- -10
