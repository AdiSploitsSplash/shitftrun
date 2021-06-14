function WalkSpeed(Speed)if Game:GetService"Players".LocalPlayer.Character then if Game:GetService"Players".LocalPlayer.Character:FindFirstChild"Humanoid"then if Game:GetService"Players".LocalPlayer.Character:FindFirstChild"Humanoid".WalkSpeed~=Speed then Game:GetService"Players".LocalPlayer.Character:FindFirstChild"Humanoid".WalkSpeed=Speed end end end end
function SetFieldOfView(FieldOfView)if Workspace.CurrentCamera then if Workspace.CurrentCamera.FieldOfView~=FieldOfView then Workspace.CurrentCamera.FieldOfView=FieldOfView end end end
function GetFieldOfView()if Workspace.CurrentCamera then return Workspace.CurrentCamera.FieldOfView else return nil end end
SetFieldOfView(70)
Game:GetService"Players".LocalPlayer:GetMouse().KeyDown:connect(function(Key)
if Key=="0"and not Enabled then
Enabled=true
WalkSpeed(32)
if Workspace.CurrentCamera then
repeat
SetFieldOfView(GetFieldOfView()+1)
Wait()
until Workspace.CurrentCamera.FieldOfView>79.9 or not Enabled
if Enabled then SetFieldOfView(80)end
end
elseif Key=="p"then if Game:GetService"Players".LocalPlayer.CameraMode.Value~=1 then Game:GetService"Players".LocalPlayer.CameraMode=1 elseif Game:GetService"Players".LocalPlayer.CameraMode.Value~=0 then Game:GetService"Players".LocalPlayer.CameraMode=0 end
end
end)
Game:GetService"Players".LocalPlayer:GetMouse().KeyUp:connect(function(Key)
if Key=="0"and Enabled then
Enabled=false
WalkSpeed(16)
if Workspace.CurrentCamera then
repeat
SetFieldOfView(GetFieldOfView()-1)
Wait()
until Workspace.CurrentCamera.FieldOfView<70.1 or Enabled
if not Enabled then SetFieldOfView(70)end
end
end
end)
