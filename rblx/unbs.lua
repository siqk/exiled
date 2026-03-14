local Workspace = game:GetService("Workspace")

-- === CONFIG ===
local SIZE = 40000
local THICKNESS = 10
local PART_SIZE = 2048
local GRID = math.ceil(SIZE / PART_SIZE)

-- === LARGE BASEPLATE POSITION ===
local BASE_CFRAME = CFrame.new(8, -10, -482.000031, 1,0,0, 0,1,0, 0,0,1)
local BASE_Y_POSITION = BASE_CFRAME.Y
local BASE_HEIGHT_OFFSET = THICKNESS / 2

-- === CHECK IF CUSTOM BASEPLATE EXISTS ===
local existingSections = Workspace:FindFirstChild("BaseplateSection_0_0")

if existingSections then

	-- Remove generated baseplate
	for _, obj in ipairs(Workspace:GetChildren()) do
		if obj.Name:match("^BaseplateSection_") then
			obj:Destroy()
		end
	end

	-- Restore default baseplate
	local base = Instance.new("Part")
	base.Name = "Baseplate"
	base.Size = Vector3.new(648, 16, 648)
	base.Anchored = true
	base.CanCollide = true
	base.Material = Enum.Material.Grass
	base.Color = Color3.fromRGB(115,231,117)
	base.TopSurface = Enum.SurfaceType.Smooth
	base.BottomSurface = Enum.SurfaceType.Smooth

	base.CFrame = CFrame.new(
		8, -8, -482.000031,
		1,0,0,
		0,1,0,
		0,0,1
	)

	base.Parent = Workspace

	print("Restored normal grass baseplate.")
	return
end

-- Remove original baseplate
local old = Workspace:FindFirstChild("Baseplate")
if old then
	old:Destroy()
end

-- === CLEAN extra_room ===
local mapFolder = Workspace:FindFirstChild("map")
if mapFolder then
	local extraRoom = mapFolder:FindFirstChild("extra_room")
	if extraRoom then
		for _, child in ipairs(extraRoom:GetChildren()) do
			child:Destroy()
		end
	end
end

-- === CREATE LARGE BASEPLATE ===
for x = 0, GRID-1 do
	for z = 0, GRID-1 do

		local part = Instance.new("Part")

		part.Name = "BaseplateSection_" .. x .. "_" .. z
		part.Size = Vector3.new(PART_SIZE, THICKNESS, PART_SIZE)

		part.Position = Vector3.new(
			(x * PART_SIZE) - (SIZE/2) + (PART_SIZE/2),
			BASE_Y_POSITION + BASE_HEIGHT_OFFSET,
			(z * PART_SIZE) - (SIZE/2) + (PART_SIZE/2)
		)

		part.Anchored = true
		part.CanCollide = true
		part.Material = Enum.Material.Asphalt
		part.Color = Color3.fromRGB(100,100,100)

		part.CFrame = CFrame.new(part.Position) * BASE_CFRAME.Rotation
		part.Parent = Workspace
	end
end
