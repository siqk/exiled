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
    frame.BorderColor3 = Color3.fromRGB(255, 0, 5)
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
    greenFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green when on
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
end
