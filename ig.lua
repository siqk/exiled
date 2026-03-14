-- Wealthy UI Library
-- COMPLETE PRESERVATION - Exact same toggle as your GUI

local WealthyUI = {}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

function WealthyUI:CreateLibrary(title, config)
    config = config or {}
    
    -- StarterGui.ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ScreenGui"
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    
    -- StarterGui.ScreenGui.TopFrame
    local TopFrame = Instance.new("Frame")
    TopFrame.Name = "TopFrame"
    TopFrame.BorderSizePixel = 0
    TopFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    TopFrame.Size = UDim2.new(0, 516, 0, 34)
    TopFrame.Position = UDim2.new(0.31235, 0, 0.23221, 0)
    TopFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TopFrame.Parent = ScreenGui
    
    local TopCorner = Instance.new("UICorner")
    TopCorner.Parent = TopFrame
    
    -- StarterGui.ScreenGui.TopFrame.HomeFrame
    local HomeFrame = Instance.new("Frame")
    HomeFrame.Name = "HomeFrame"
    HomeFrame.BorderSizePixel = 0
    HomeFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    HomeFrame.Size = UDim2.new(0, 590, 0, 394)
    HomeFrame.Position = UDim2.new(-0.07949, 0, 1.25743, 0)
    HomeFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    HomeFrame.Parent = TopFrame
    
    local HomeCorner = Instance.new("UICorner")
    HomeCorner.Parent = HomeFrame
    
    -- StarterGui.ScreenGui.TopFrame.HomeFrame.ScrollingFrame
    local ContentFrame = Instance.new("ScrollingFrame")
    ContentFrame.Name = "ScrollingFrame"
    ContentFrame.Active = true
    ContentFrame.BorderSizePixel = 0
    ContentFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ContentFrame.Size = UDim2.new(0, 590, 0, 368)
    ContentFrame.Position = UDim2.new(0, 0, 0.02427, 0)
    ContentFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ContentFrame.ScrollBarThickness = 3
    ContentFrame.BackgroundTransparency = 1
    ContentFrame.Parent = HomeFrame
    
    local ContentPadding = Instance.new("UIPadding")
    ContentPadding.PaddingTop = UDim.new(0, 5)
    ContentPadding.PaddingLeft = UDim.new(0, 17)
    ContentPadding.Parent = ContentFrame
    
    local ContentLayout = Instance.new("UIListLayout")
    ContentLayout.Padding = UDim.new(0, 10)
    ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
    ContentLayout.Parent = ContentFrame
    
    -- StarterGui.ScreenGui.TopFrame.SideFrame
    local SideFrame = Instance.new("Frame")
    SideFrame.Name = "SideFrame"
    SideFrame.BorderSizePixel = 0
    SideFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    SideFrame.Size = UDim2.new(0, 38, 0, 329)
    SideFrame.Position = UDim2.new(-0.17184, 0, 2.19643, 0)
    SideFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SideFrame.Parent = TopFrame
    
    local SideCorner = Instance.new("UICorner")
    SideCorner.Parent = SideFrame
    
    -- StarterGui.ScreenGui.TopFrame.SideFrame.ScrollingFrame
    local TabsFrame = Instance.new("ScrollingFrame")
    TabsFrame.Name = "ScrollingFrame"
    TabsFrame.Active = true
    TabsFrame.BorderSizePixel = 0
    TabsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabsFrame.Size = UDim2.new(0, 38, 0, 315)
    TabsFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    TabsFrame.Position = UDim2.new(0, 0, 0.021, 0)
    TabsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabsFrame.ScrollBarThickness = 0
    TabsFrame.BackgroundTransparency = 1
    TabsFrame.Parent = SideFrame
    
    local TabsLayout = Instance.new("UIListLayout")
    TabsLayout.Padding = UDim.new(0, 20)
    TabsLayout.SortOrder = Enum.SortOrder.LayoutOrder
    TabsLayout.Parent = TabsFrame
    
    local TabsPadding = Instance.new("UIPadding")
    TabsPadding.PaddingTop = UDim.new(0, 3)
    TabsPadding.PaddingLeft = UDim.new(0, 7)
    TabsPadding.Parent = TabsFrame
    
    -- Title TextLabel
    local Title = Instance.new("TextLabel")
    Title.TextWrapped = true
    Title.BorderSizePixel = 0
    Title.TextSize = 22
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(0, 71, 0, 23)
    Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Title.Text = title or "wealthy"
    Title.Position = UDim2.new(0.42944, 0, 0.13562, 0)
    Title.Parent = TopFrame
    
    -- Version TextLabel
    local Version = Instance.new("TextLabel")
    Version.TextWrapped = true
    Version.BorderSizePixel = 0
    Version.TextSize = 14
    Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Version.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Version.TextColor3 = Color3.fromRGB(131, 131, 131)
    Version.BackgroundTransparency = 1
    Version.Size = UDim2.new(0, 41, 0, 15)
    Version.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Version.Text = config.version or "v1.0.1"
    Version.Position = UDim2.new(0.364, 0, 0.387, 0)
    Version.Parent = TopFrame
    
    -- Close button
    local CloseBtn = Instance.new("ImageButton")
    CloseBtn.BorderSizePixel = 0
    CloseBtn.BackgroundTransparency = 1
    CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CloseBtn.Image = "rbxassetid://10747384394"
    CloseBtn.Size = UDim2.new(0, 25, 0, 23)
    CloseBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    CloseBtn.Position = UDim2.new(0.939, 0, 0.139, 0)
    CloseBtn.Parent = TopFrame
    
    -- Minimize button
    local MinimizeBtn = Instance.new("ImageButton")
    MinimizeBtn.BorderSizePixel = 0
    MinimizeBtn.BackgroundTransparency = 1
    MinimizeBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MinimizeBtn.Image = "rbxassetid://10734896206"
    MinimizeBtn.Size = UDim2.new(0, 25, 0, 23)
    MinimizeBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MinimizeBtn.Position = UDim2.new(0.88228, 0, 0.14706, 0)
    MinimizeBtn.Parent = TopFrame
    
    -- UIDrag script functionality
    local function setupDrag()
        local UIS = UserInputService
        local frame = TopFrame
        local dragToggle = nil
        local dragSpeed = 0.25
        local dragStart = nil
        local startPos = nil
        
        local function updateInput(input)
            local delta = input.Position - dragStart
            local position = UDim2.new(
                startPos.X.Scale, 
                startPos.X.Offset + delta.X,
                startPos.Y.Scale, 
                startPos.Y.Offset + delta.Y
            )
            TweenService:Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
        end
        
        frame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or 
               input.UserInputType == Enum.UserInputType.Touch then 
                dragToggle = true
                dragStart = input.Position
                startPos = frame.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)
        
        UIS.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or 
               input.UserInputType == Enum.UserInputType.Touch then
                if dragToggle then
                    updateInput(input)
                end
            end
        end)
    end
    setupDrag()
    
    -- Minimize functionality
    local isMinimized = false
    MinimizeBtn.MouseButton1Click:Connect(function()
        isMinimized = not isMinimized
        HomeFrame.Visible = not isMinimized
        SideFrame.Visible = not isMinimized
    end)
    
    -- Close functionality
    CloseBtn.MouseButton1Click:Connect(function()
        ScreenGui:Destroy()
    end)
    
    -- Sound system
    local function addHoverSound(button)
        local hoverSound = Instance.new("Sound")
        hoverSound.SoundId = "rbxassetid://10066931761"
        hoverSound.Volume = 1
        hoverSound.Parent = button
        
        local clickSound = Instance.new("Sound")
        clickSound.SoundId = "rbxassetid://876939830"
        clickSound.Volume = 1
        clickSound.Parent = button
        
        button.MouseEnter:Connect(function()
            hoverSound:Play()
        end)
        
        button.MouseButton1Click:Connect(function()
            clickSound:Play()
        end)
    end
    
    -- Library object
    local Library = {
        ScreenGui = ScreenGui,
        TopFrame = TopFrame,
        HomeFrame = HomeFrame,
        ContentFrame = ContentFrame,
        SideFrame = SideFrame,
        TabsFrame = TabsFrame,
        CurrentTab = nil,
        Tabs = {},
        
        -- Create a new tab
        CreateTab = function(self, name, icon)
            local tabButton = Instance.new("ImageButton")
            tabButton.BorderSizePixel = 0
            tabButton.BackgroundTransparency = 1
            tabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            tabButton.Image = icon or "rbxassetid://10723407389"
            tabButton.Size = UDim2.new(0, 25, 0, 23)
            tabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            tabButton.Position = UDim2.new(-0.03125, 0, 0.02748, 0)
            tabButton.Parent = TabsFrame
            
            addHoverSound(tabButton)
            
            local tabContent = Instance.new("Frame")
            tabContent.Name = name .. "Content"
            tabContent.BorderSizePixel = 0
            tabContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            tabContent.Size = UDim2.new(0, 590, 0, 368)
            tabContent.Position = UDim2.new(0, 0, 0.02427, 0)
            tabContent.BorderColor3 = Color3.fromRGB(0, 0, 0)
            tabContent.BackgroundTransparency = 1
            tabContent.Visible = false
            tabContent.Parent = HomeFrame
            
            local tabPadding = Instance.new("UIPadding")
            tabPadding.PaddingTop = UDim.new(0, 5)
            tabPadding.PaddingLeft = UDim.new(0, 17)
            tabPadding.Parent = tabContent
            
            local tabLayout = Instance.new("UIListLayout")
            tabLayout.Padding = UDim.new(0, 10)
            tabLayout.SortOrder = Enum.SortOrder.LayoutOrder
            tabLayout.Parent = tabContent
            
            local tabObj = {
                Name = name,
                Button = tabButton,
                Container = tabContent,
                Layout = tabLayout
            }
            
            table.insert(self.Tabs, tabObj)
            
            tabButton.MouseButton1Click:Connect(function()
                if self.CurrentTab then
                    self.CurrentTab.Container.Visible = false
                end
                tabContent.Visible = true
                self.CurrentTab = tabObj
            end)
            
            if #self.Tabs == 1 then
                tabContent.Visible = true
                self.CurrentTab = tabObj
            end
            
            return tabObj
        end,
        
        -- Create Button (EXACT same as your TextButton)
        CreateButton = function(self, tab, text, callback)
            if not tab or not tab.Container then return end
            
            local button = Instance.new("TextButton")
            button.TextWrapped = true
            button.BorderSizePixel = 0
            button.TextSize = 18
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
            button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            button.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            button.BackgroundTransparency = 0.5
            button.Size = UDim2.new(0, 557, 0, 36)
            button.BorderColor3 = Color3.fromRGB(0, 0, 0)
            button.Position = UDim2.new(0, 0, 0.05931, 0)
            button.Text = "  " .. text
            button.Parent = tab.Container
            
            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0, 5)
            corner.Parent = button
            
            addHoverSound(button)
            
            button.MouseButton1Click:Connect(function()
                if callback then
                    callback()
                end
            end)
            
            return button
        end,
        
        -- Create Toggle (EXACT same as your GUI - Moving part on top)
CreateToggle = function(self, tab, text, default, callback)
    if not tab or not tab.Container then return end
    
    -- Main toggle button (TextButton with "Toggle:" text)
    local button = Instance.new("TextButton")
    button.BorderSizePixel = 0
    button.TextXAlignment = Enum.TextXAlignment.Left
    button.TextSize = 18
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    button.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    button.BackgroundTransparency = 0.5
    button.Size = UDim2.new(0, 557, 0, 36)
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.Text = "  " .. text .. ":"
    button.Position = UDim2.new(0.01085, 0, 0.01441, 0)
    button.Parent = tab.Container
    
    -- UICorner
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 4)
    corner.Parent = button
    
    -- UIStroke
    local stroke = Instance.new("UIStroke")
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Thickness = 1.8
    stroke.Parent = button
    
    -- Frame (main container for toggle elements)
    local frame = Instance.new("Frame")
    frame.BorderSizePixel = 0
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.Size = UDim2.new(0, 536, 0, 36)
    frame.Position = UDim2.new(-0.00423, 0, -0.00904, 0)
    frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
    frame.BackgroundTransparency = 1
    frame.Name = "Frame"
    frame.Parent = button
    
    -- Set attribute for toggle state
    frame:SetAttribute("isOn", default or false)
    
    -- RedFrame (background when off) - ZIndex = 1
    local redFrame = Instance.new("Frame")
    redFrame.ZIndex = 1
    redFrame.BorderSizePixel = 0
    redFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red when off
    redFrame.Size = UDim2.new(0, 49, 0, 26)
    redFrame.Position = UDim2.new(0.94371, 0, 0.12105, 0)
    redFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    redFrame.Name = "RedFrame"
    redFrame.Parent = frame
    
    local redCorner = Instance.new("UICorner")
    redCorner.CornerRadius = UDim.new(0, 17)
    redCorner.Parent = redFrame
    
    -- GreenFrame (background when on) - ZIndex = 1
    local greenFrame = Instance.new("Frame")
    greenFrame.ZIndex = 1
    greenFrame.BorderSizePixel = 0
    greenFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Green when on
    greenFrame.Size = UDim2.new(0, 49, 0, 26)
    greenFrame.Position = UDim2.new(0.9441, 0, 0.12078, 0)
    greenFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    greenFrame.Name = "GreenFrame"
    greenFrame.Visible = default or false -- Only show green when on
    greenFrame.Parent = frame
    
    local greenCorner = Instance.new("UICorner")
    greenCorner.CornerRadius = UDim.new(0, 17)
    greenCorner.Parent = greenFrame
    
    -- MovingPart (the toggle thumb) - ZIndex = 3 (on top of everything)
    local movingPart = Instance.new("Frame")
    movingPart.ZIndex = 3
    movingPart.BorderSizePixel = 0
    movingPart.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- White thumb
    movingPart.Size = UDim2.new(0, 23, 0, 22) -- Slightly smaller to fit nicely
    movingPart.Position = default and UDim2.new(0.97, 0, 0.12, 0) or UDim2.new(0.03, 0, 0.12, 0)
    movingPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
    movingPart.Name = "MovingPart"
    movingPart.Parent = frame
    
    local moveCorner = Instance.new("UICorner")
    moveCorner.CornerRadius = UDim.new(0, 17)
    moveCorner.Parent = movingPart
    
    -- OffPos marker (invisible, for tweening reference)
    local offPos = Instance.new("Frame")
    offPos.ZIndex = 1
    offPos.BorderSizePixel = 0
    offPos.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
    offPos.Size = UDim2.new(0, 23, 0, 22)
    offPos.Position = UDim2.new(0.03, 0, 0.12, 0)
    offPos.BorderColor3 = Color3.fromRGB(0, 0, 0)
    offPos.Name = "OffPos"
    offPos.BackgroundTransparency = 1
    offPos.Parent = frame
    
    -- OnPos marker (invisible, for tweening reference)
    local onPos = Instance.new("Frame")
    onPos.ZIndex = 1
    onPos.BorderSizePixel = 0
    onPos.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
    onPos.Size = UDim2.new(0, 23, 0, 22)
    onPos.Position = UDim2.new(0.97, 0, 0.12, 0)
    onPos.BorderColor3 = Color3.fromRGB(0, 0, 0)
    onPos.Name = "OnPos"
    onPos.BackgroundTransparency = 1
    onPos.Parent = frame
    
    -- Interact button (covers the toggle area) - ZIndex = 4 (above moving part for clicking)
    local interact = Instance.new("TextButton")
    interact.ZIndex = 4
    interact.BorderSizePixel = 0
    interact.TextSize = 14
    interact.TextColor3 = Color3.fromRGB(0, 0, 0)
    interact.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    interact.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    interact.Size = UDim2.new(0, 49, 0, 26)
    interact.BorderColor3 = Color3.fromRGB(0, 0, 0)
    interact.Text = ""
    interact.BackgroundTransparency = 1
    interact.Name = "interact"
    interact.Position = UDim2.new(0.9441, 0, 0.12078, 0)
    interact.Parent = frame
    
    local interactCorner = Instance.new("UICorner")
    interactCorner.CornerRadius = UDim.new(0, 17)
    interactCorner.Parent = interact
    
    -- Toggle logic
    local function updateVisuals(isOn)
        if isOn then
            -- ON state: moving part moves to OnPos, show green frame, hide red frame
            movingPart:TweenPosition(onPos.Position, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
            greenFrame.Visible = true
            redFrame.Visible = false
        else
            -- OFF state: moving part moves to OffPos, show red frame, hide green frame
            movingPart:TweenPosition(offPos.Position, Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
            greenFrame.Visible = false
            redFrame.Visible = true
        end
    end
    
    -- Click handlers
    button.MouseButton1Click:Connect(function()
        local current = frame:GetAttribute("isOn")
        frame:SetAttribute("isOn", not current)
    end)
    
    interact.MouseButton1Click:Connect(function()
        local current = frame:GetAttribute("isOn")
        frame:SetAttribute("isOn", not current)
    end)
    
    -- Attribute change handler
    frame:GetAttributeChangedSignal("isOn"):Connect(function()
        local newState = frame:GetAttribute("isOn")
        updateVisuals(newState)
        if callback then
            callback(newState)
        end
    end)
    
    -- Add hover sounds
    addHoverSound(button)
    addHoverSound(interact)
    
    -- Initialize visuals
    updateVisuals(default or false)
    
        return frame
    end,
        
        -- Create Slider (EXACT same as your TextSlider)
        CreateSlider = function(self, tab, text, min, max, default, callback)
            if not tab or not tab.Container then return end
            
            min = min or 0
            max = max or 1
            default = default or 0
            
            local button = Instance.new("TextButton")
            button.BorderSizePixel = 0
            button.TextXAlignment = Enum.TextXAlignment.Left
            button.TextSize = 18
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
            button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            button.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            button.BackgroundTransparency = 0.5
            button.Size = UDim2.new(0, 557, 0, 36)
            button.BorderColor3 = Color3.fromRGB(0, 0, 0)
            button.Text = "  " .. text
            button.Name = "TextSlider"
            button.Position = UDim2.new(0, 0, 0.059, 0)
            button.Parent = tab.Container
            
            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0, 4)
            corner.Parent = button
            
            local frame = Instance.new("Frame")
            frame.BorderSizePixel = 0
            frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            frame.Size = UDim2.new(0, 536, 0, 36)
            frame.Position = UDim2.new(-0.00423, 0, -0.00904, 0)
            frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
            frame.BackgroundTransparency = 1
            frame.Name = "Frame"
            frame.Parent = button
            
            local sliderFrame = Instance.new("Frame")
            sliderFrame.BorderSizePixel = 0
            sliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            sliderFrame.Size = UDim2.new(0, 107, 0, 10)
            sliderFrame.Position = UDim2.new(0.82276, 0, 0.36111, 0)
            sliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            sliderFrame.Name = "SliderFrame"
            sliderFrame.Parent = frame
            
            local sliderCorner = Instance.new("UICorner")
            sliderCorner.Parent = sliderFrame
            
            local fillFrame = Instance.new("Frame")
            fillFrame.BorderSizePixel = 0
            fillFrame.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
            fillFrame.Size = UDim2.new(0, 0, 0, 10)
            fillFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            fillFrame.Name = "FillFrame"
            fillFrame.Parent = sliderFrame
            
            local fillCorner = Instance.new("UICorner")
            fillCorner.Parent = fillFrame
            
            local knob = Instance.new("TextButton")
            knob.BorderSizePixel = 0
            knob.TextSize = 14
            knob.TextColor3 = Color3.fromRGB(0, 0, 0)
            knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            knob.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            knob.BackgroundTransparency = 1
            knob.Size = UDim2.new(0, 108, 0, 10)
            knob.BorderColor3 = Color3.fromRGB(0, 0, 0)
            knob.Text = ""
            knob.Position = UDim2.new(-0.00523, 0, 0.03333, 0)
            knob.Parent = sliderFrame
            
            local knobCorner = Instance.new("UICorner")
            knobCorner.Parent = knob
            
            local valueBox = Instance.new("TextBox")
            valueBox.BorderSizePixel = 0
            valueBox.TextSize = 14
            valueBox.TextColor3 = Color3.fromRGB(0, 0, 0)
            valueBox.BackgroundColor3 = Color3.fromRGB(96, 96, 96)
            valueBox.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            valueBox.Size = UDim2.new(0, 37, 0, 22)
            valueBox.Position = UDim2.new(-0.42991, 0, -0.6, 0)
            valueBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
            valueBox.Text = tostring(default)
            valueBox.BackgroundTransparency = 0.5
            valueBox.Parent = sliderFrame
            
            local boxCorner = Instance.new("UICorner")
            boxCorner.Parent = valueBox
            
            -- Slider logic from your original LocalScript
            local isDragging = false
            local minPosition = 0
            local maxPosition = sliderFrame.AbsoluteSize.X
            
            local function updateSlider(inputPosition)
                local relativeX = inputPosition.X - sliderFrame.AbsolutePosition.X
                local clampedX = math.clamp(relativeX, minPosition, maxPosition)
                local value = clampedX / maxPosition
                
                local mappedValue = value * max
                mappedValue = math.round(mappedValue * 10) / 10
                local normalizedValue = mappedValue / max
                
                knob.Position = UDim2.new(0, clampedX - (knob.AbsoluteSize.X / 2), 0, 0)
                fillFrame.Size = UDim2.new(normalizedValue, 0, 1, 0)
                valueBox.Text = string.format("%.1f", mappedValue)
                
                if callback then
                    callback(mappedValue)
                end
            end
            
            knob.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    isDragging = true
                    maxPosition = sliderFrame.AbsoluteSize.X
                    updateSlider(input.Position)
                end
            end)
            
            knob.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    isDragging = false
                end
            end)
            
            UserInputService.InputChanged:Connect(function(input)
                if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    updateSlider(input.Position)
                end
            end)
            
            valueBox.FocusLost:Connect(function(enterPressed)
                if enterPressed then
                    local value = tonumber(valueBox.Text)
                    if value then
                        value = math.clamp(value, min, max)
                        value = math.round(value * 10) / 10
                        local normalizedValue = value / max
                        local clampedX = normalizedValue * maxPosition
                        updateSlider(Vector2.new(sliderFrame.AbsolutePosition.X + clampedX, sliderFrame.AbsolutePosition.Y))
                    else
                        valueBox.Text = string.format("%.1f", (fillFrame.Size.X / sliderFrame.AbsoluteSize.X) * max)
                    end
                end
            end)
            
            -- Initialize
            local initValue = default
            local initNormalized = initValue / max
            local initX = initNormalized * maxPosition
            knob.Position = UDim2.new(0, initX - (knob.AbsoluteSize.X / 2), 0, 0)
            fillFrame.Size = UDim2.new(initNormalized, 0, 1, 0)
            valueBox.Text = string.format("%.1f", initValue)
            
            return sliderFrame
        end,
        
        -- Create Dropdown (EXACT same as your DropDownTextButton)
        CreateDropdown = function(self, tab, text, options, callback)
            if not tab or not tab.Container then return end
            
            local button = Instance.new("TextButton")
            button.BorderSizePixel = 0
            button.TextSize = 18
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
            button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            button.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            button.BackgroundTransparency = 0.5
            button.Size = UDim2.new(0, 557, 0, 36)
            button.BorderColor3 = Color3.fromRGB(0, 0, 0)
            button.Text = "  " .. text .. "(Nothing)"
            button.Name = "DropDownTextButton"
            button.Position = UDim2.new(0.01208, 0, 0.11919, 0)
            button.Parent = tab.Container
            
            local corner = Instance.new("UICorner")
            corner.CornerRadius = UDim.new(0, 4)
            corner.Parent = button
            
            local dropdownFrame = Instance.new("Frame")
            dropdownFrame.Visible = false
            dropdownFrame.BorderSizePixel = 0
            dropdownFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            dropdownFrame.Size = UDim2.new(0, 557, 0, 102)
            dropdownFrame.Position = UDim2.new(0, 0, 1, 0)
            dropdownFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            dropdownFrame.Name = "DropDownFrame"
            dropdownFrame.BackgroundTransparency = 0.5
            dropdownFrame.Parent = button
            
            local optionScroll = Instance.new("ScrollingFrame")
            optionScroll.Active = true
            optionScroll.BorderSizePixel = 0
            optionScroll.BackgroundColor3 = Color3.fromRGB(87, 87, 87)
            optionScroll.AutomaticCanvasSize = Enum.AutomaticSize.XY
            optionScroll.Size = UDim2.new(0, 557, 0, 181)
            optionScroll.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
            optionScroll.Position = UDim2.new(0, 0, 0.05263, 0)
            optionScroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
            optionScroll.ScrollBarThickness = 0
            optionScroll.BackgroundTransparency = 1
            optionScroll.Parent = dropdownFrame
            
            local optionLayout = Instance.new("UIListLayout")
            optionLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            optionLayout.Padding = UDim.new(0, 2)
            optionLayout.SortOrder = Enum.SortOrder.LayoutOrder
            optionLayout.Parent = optionScroll
            
            addHoverSound(button)
            
            local isOpen = false
            local tweenTime = 0.25
            
            local function createOption(optionText)
                local option = Instance.new("TextButton")
                option.BorderSizePixel = 0
                option.TextSize = 18
                option.TextColor3 = Color3.fromRGB(255, 255, 255)
                option.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                option.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
                option.BackgroundTransparency = 0.5
                option.Size = UDim2.new(0, 552, 0, 36)
                option.BorderColor3 = Color3.fromRGB(0, 0, 0)
                option.Text = optionText
                option.Name = "OptionTemplate"
                option.Position = UDim2.new(0.02154, 0, 0, 0)
                option.Parent = optionScroll
                
                local optionCorner = Instance.new("UICorner")
                optionCorner.CornerRadius = UDim.new(0, 4)
                optionCorner.Parent = option
                
                addHoverSound(option)
                
                option.MouseButton1Click:Connect(function()
                    button.Text = "  " .. text .. "(" .. optionText .. ")"
                    isOpen = false
                    local tween = TweenService:Create(dropdownFrame, TweenInfo.new(tweenTime), {Size = UDim2.new(0, 557, 0, 0)})
                    tween:Play()
                    tween.Completed:Connect(function()
                        dropdownFrame.Visible = false
                    end)
                    
                    if callback then
                        callback(optionText)
                    end
                end)
            end
            
            for _, option in ipairs(options) do
                createOption(option)
            end
            
            button.MouseButton1Click:Connect(function()
                isOpen = not isOpen
                
                if isOpen then
                    dropdownFrame.Visible = true
                    local contentHeight = optionLayout.AbsoluteContentSize.Y
                    optionScroll.CanvasSize = UDim2.new(0, 0, 0, contentHeight)
                    
                    local targetHeight = math.min(contentHeight, 102)
                    local tween = TweenService:Create(dropdownFrame, TweenInfo.new(tweenTime), {Size = UDim2.new(0, 557, 0, targetHeight)})
                    tween:Play()
                else
                    local tween = TweenService:Create(dropdownFrame, TweenInfo.new(tweenTime), {Size = UDim2.new(0, 557, 0, 0)})
                    tween:Play()
                    tween.Completed:Connect(function()
                        dropdownFrame.Visible = false
                    end)
                end
            end)
            
            return dropdownFrame
        end
    }
    
    -- Add sounds to buttons
    addHoverSound(MinimizeBtn)
    addHoverSound(CloseBtn)
    
    return Library
end

return WealthyUI
