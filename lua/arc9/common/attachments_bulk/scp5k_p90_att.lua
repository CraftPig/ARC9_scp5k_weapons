local ATT = {}

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[P90 Muzzle]]
ATT.Description = [[]]
ATT.Icon = Material("entities/att/att_temp.png", "mips smooth")

ATT.SortOrder = 0
ATT.Free = true

--ATT.Folder = "Stickers" -- Change this to point what folder you want the skin to be on.

ATT.Category = {"scp5k_p90_muzzle"} -- Change this to point what weapon it is for.
ATT.ActivateElements = {"muzzle_p90"}
ATT.RecoilUp = 1.5

ARC9.LoadAttachment(ATT, "scp5k_att_p90_muzzle") -- Change this to give the skin attach a name so the weapon loads it.

------------------------------------------------------------------

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[P90 50 Mag]]
ATT.Description = [[]]
ATT.Icon = Material("entities/att/att_temp.png", "mips smooth")

ATT.SortOrder = 0
ATT.Free = true

--ATT.Folder = "Stickers" -- Change this to point what folder you want the skin to be on.

ATT.Category = {"scp5k_p90_50mag"} -- Change this to point what weapon it is for.
ATT.ActivateElements = {"mag50"}

ARC9.LoadAttachment(ATT, "scp5k_att_p90_50mag") -- Change this to give the skin attach a name so the weapon loads it.

------------------------------------------------------------------

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[P90 30 Mag]]
ATT.Description = [[]]
ATT.Icon = Material("entities/att/att_temp.png", "mips smooth")

ATT.SortOrder = 0
ATT.Free = true

--ATT.Folder = "Stickers" -- Change this to point what folder you want the skin to be on.

ATT.Category = {"scp5k_p90_30mag"} -- Change this to point what weapon it is for.
ATT.ActivateElements = {"mag30"}
ATT.ClipSizeOverride = 30
ATT.ReloadTimeMult = 0.85
ATT.AimDownSightsTimeMult = 0.90
ATT.SprintToFireTimeMult = 0.85

ARC9.LoadAttachment(ATT, "scp5k_att_p90_30mag") -- Change this to give the skin attach a name so the weapon loads it.

------------------------------------------------------------------
