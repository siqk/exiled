local GroupService = game:GetService("GroupService")

local GROUP_ID = 53964863

local success, result = pcall(function()
    return GroupService:PromptJoinAsync(GROUP_ID)
end)

if success then
    if result == Enum.GroupMembershipStatus.Joined then
        print("Player joined the group!")
    elseif result == Enum.GroupMembershipStatus.JoinRequestPending then
        print("Join request sent")
    elseif result == Enum.GroupMembershipStatus.AlreadyMember then
        print("Already a member")
    else
        print("Did not join or not eligible")
    end
else
    warn("Prompt failed: ", result)
end
