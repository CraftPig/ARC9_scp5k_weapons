local ATT = {}

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[Alt View]]
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/holdstyle.png", "mips smooth")

ATT.SortOrder = 0
ATT.Free = true

ATT.ActivePos = Vector(-0.5, -5, 0.5)
ATT.ActiveAng = Angle(-2, -0, -0)

ATT.Category = {"scp5k_view_01"} -- Change this to point what weapon it is for.

ARC9.LoadAttachment(ATT, "scp5k_att_altview01") -- Change this to give the skin attach a name so the weapon loads it.
------------------------------------------------------------------

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[Alt View]]
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/holdstyle.png", "mips smooth")

ATT.SortOrder = 0
ATT.Free = true

ATT.ActivePos = Vector(-0.5, -4.5, 1)
ATT.ActiveAng = Angle(-4, -0, -0)
ATT.ViewModelFOVBase = 85

ATT.Category = {"scp5k_view_02"} -- Change this to point what weapon it is for.

ARC9.LoadAttachment(ATT, "scp5k_att_altview02") -- Change this to give the skin attach a name so the weapon loads it.
------------------------------------------------------------------

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[Grip]]
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/holdstyle.png", "mips smooth")

ATT.SortOrder = 0
ATT.Free = true

ATT.Category = {"scp5k_sa58grip"} -- Change this to point what weapon it is for.

ARC9.LoadAttachment(ATT, "scp5k_att_gripsa58") -- Change this to give the skin attach a name so the weapon loads it.
------------------------------------------------------------------

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[40 Round 5.56x45mm Tavor X-95 Mag]]
ATT.CompactName = [[40-Round]]
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/holdstyle.png", "mips smooth")

ATT.Category = {"scp5k_tavorx95mag"}
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2
ATT.Free = false

ATT.ClipSizeOverride = 40
ATT.ReloadTimeMult = 1.15

ATT.ActivateElements = {"mag_tavorx95_40"}

ARC9.LoadAttachment(ATT, "scp5k_att_mag40tavorx95")
------------------------------------------------------------------

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[20 Round 5.56x45mm Tavor X-95 Mag]]
ATT.CompactName = [[20-Round]]
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/holdstyle.png", "mips smooth")

ATT.Category = {"scp5k_tavorx95mag"}
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2
ATT.Free = false

ATT.ClipSizeOverride = 20
ATT.ReloadTimeMult = 0.9

ATT.ActivateElements = {"mag_tavorx95_20"}

ARC9.LoadAttachment(ATT, "scp5k_att_mag20tavorx95")
------------------------------------------------------------------

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[Extended Tavor X-95 Barrel]]
ATT.CompactName = [[Ext. Barrel]]
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/holdstyle.png", "mips smooth")

ATT.Category = {"scp5k_tavorxbarrel"}
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2
ATT.Free = false

ATT.ClipSizeOverride = 20
ATT.ReloadTimeMult = 0.9

ATT.ActivateElements = {"body_tavorx95_extended"}

ARC9.LoadAttachment(ATT, "scp5k_att_barrelexttavorx95")
------------------------------------------------------------------

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[Folded MP7 Stock]]
ATT.CompactName = [[Folded]]
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/holdstyle.png", "mips smooth")

ATT.Category = {"scp5k_mp7stock"}
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2
ATT.Free = false

ATT.ReloadTimeMult = 0.95
ATT.AimDownSightsTime = 0.15
ATT.RecoilMult = 1.25

ATT.ActivateElements = {"stock_folded_mp7"}

ARC9.LoadAttachment(ATT, "scp5k_att_stockmp7")
------------------------------------------------------------------

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[40 Round 5.56x45mm Galil ACE 22N Mag]]
ATT.CompactName = [[40-Round]]
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/holdstyle.png", "mips smooth")

ATT.Category = {"scp5k_galilacemag"}
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2
ATT.Free = false

ATT.ClipSizeOverride = 40
ATT.ReloadTimeMult = 1.15

ATT.ActivateElements = {"mag_40_ace"}

ARC9.LoadAttachment(ATT, "scp5k_att_mag40galilace")
------------------------------------------------------------------

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[25 Round 5.56x45mm Galil ACE 22N Mag]]
ATT.CompactName = [[25-Round]]
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/holdstyle.png", "mips smooth")

ATT.Category = {"scp5k_galilacemag"}
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2
ATT.Free = false

ATT.ClipSizeOverride = 25
ATT.ReloadTimeMult = 0.9

ATT.ActivateElements = {"mag_20_ace"}

ARC9.LoadAttachment(ATT, "scp5k_att_mag20galilace")
------------------------------------------------------------------

ATT = {}

ATT.MenuCategory = "ARC9 - SCP: 5K Attachments"
ATT.PrintName = [[200 Round 5.56x45mm LAMG Mag]]
ATT.CompactName = [[200-Round]]
ATT.Description = [[]]
ATT.Icon = Material("entities/attachs/holdstyle.png", "mips smooth")

ATT.Category = {"scp5k_lamgmag"}
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 2
ATT.Free = false

ATT.ClipSizeOverride = 200
ATT.ReloadTimeMult = 1.3

ATT.ActivateElements = {"mag_ext_lamg"}

ARC9.LoadAttachment(ATT, "scp5k_att_magextlamg")
-------------------------------------------------------