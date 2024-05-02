AddCSLuaFile()

SWEP.CustomSelectIcon = Material("vgui/hud/arc9_scp5k_m9a3")
-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9"
SWEP.SubCategory = nil
SWEP.AdminOnly = false
SWEP.NotAWeapon = false
SWEP.NotForNPCs = false -- Won't be given to NPCs.

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.PrintName = "M9A3"
SWEP.TrueName = "Beretta M9A3"
SWEP.EntitySelectIcon = false

SWEP.Category = "ARC9 - SCP: 5K"
SWEP.SubCategory = "Pistols"
SWEP.Class = "Pistol"

SWEP.Slot = 1

SWEP.Class = "Pistol"
SWEP.Trivia = {
    Manufacturer = "Fabbrica d'Armi Pietro Beretta",
    Caliber = "9x19mm",
    Weight = "970 g",
    Country = "Italy",
    Year = "2015"
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "Affray Interactive", 
}
SWEP.Description = [[The M9A3 is a modernized variant of the M9 pistol, featuring improved ergonomics, enhanced durability, and modular capabilities.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9_scp5k/m9a3/v_m9a3.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-10, 4, -6), -- non tpik (while on ground, on npc etc)
     Ang = Angle(0, 0, 180),
     TPIKPos = Vector(-9, 0, -5), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -10, 180),
     Scale = 1
 }

---------------
---- Hold Types
SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "revolver"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "magic"
SWEP.HoldTypeBlindfire = "revolver"
SWEP.HoldTypeNPC = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw = false
SWEP.AnimMelee = ACT_FLINCH_PHYSICS
SWEP.NonTPIKAnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

-------------------------------------------------------------------------------------------------------
-- TPIK -----------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.NoTPIK = false
SWEP.TPIKnolefthand = false
SWEP.NoTPIKVMPos = false

-------------------------------------------------------------------------------------------------------
-- Weapon Stats ---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
---- Damage
SWEP.DamageMax = 46 -- Damage done at point blank range
SWEP.DamageMin = 10 -- Damage done at maximum range
SWEP.DamageRand = nil -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Num = 1 -- Number of bullets to shoot
SWEP.DamageType = DMG_BULLET

--------
---- RPM & Firemodes
SWEP.RPM = 600

SWEP.TriggerDelay = false -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.2 -- Time until weapon fires.

-----------------------
---- Other Damage Stuff 
SWEP.ImpactForce = 8 -- Force that bullets apply on hit
SWEP.ArmorPiercing = 0
SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.
SWEP.PenetrationDelta = 0.1 -- The damage multiplier after all penetration distance is spent.

---- MELEE
SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 10
SWEP.BashLungeRange = 0
SWEP.BashRange = 78
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.35
SWEP.BashDamageType = DMG_CLUB
SWEP.BashDecal = "ExplosiveGunshot"
SWEP.BashImpact = true -- Creates a Impact effect that leaves a bullet hole.

SWEP.BashSpeed = 1

SWEP.BashWhileSprint = false -- Unlike ShootWhileSprint, this will not require transitioning out of sprint state (and waiting the sprinttofire delay)
SWEP.BashCancelsReload = nil -- If bashing should immediately cancel the reload


------------------------------- 
---- Bodygroup Damage Modifiers
SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
}

--------------------------
---- Range Based Modifiers
SWEP.RangeMin = 780 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 3149.5 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.

SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = false

SWEP.PhysBulletMuzzleVelocity = 13790 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.
SWEP.PhysBulletDrag = 1 -- Drag multiplier
SWEP.PhysBulletGravity = 1 -- Gravity multiplier
SWEP.PhysBulletDontInheritPlayerVelocity = false -- Set to true to disable "Browning Effect"

-------------
---- Magazine
SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 17 -- Self-explanatory.
SWEP.SupplyLimit = 5

SWEP.AmmoPerShot = 1 -- Ammo to use per shot
SWEP.InfiniteAmmo = false -- Weapon does not take from reserve ammo
SWEP.BottomlessClip = false -- Weapon never has to reload

-----------
---- Spread
SWEP.Spread = 0.01

SWEP.SpreadAddMove = nil -- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = nil -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = nil -- Applied when not sighted.
SWEP.SpreadAddSighted = nil -- Applied when sighted. Can be negative.
SWEP.SpreadAddBlindFire = nil -- Applied when blind firing.
SWEP.SpreadAddCrouch = nil -- Applied when crouching.

SWEP.SpreadAddRecoil = nil -- Applied per unit of recoil.

--------------------------
---- Weapon Recoil
SWEP.Recoil = 0.3 -- General recoil multiplier
SWEP.RecoilAddSighted = -0.1
SWEP.RecoilAutoControl = 0.0 -- Multiplier for automatic recoil control.

SWEP.RecoilUp = 7  -- Multiplier for vertical recoil
SWEP.RecoilSide = 0  -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 1
SWEP.RecoilRandomSide = 5
SWEP.RecoilRandomSideAddSighted = -3.5

SWEP.RecoilAddCrouch = -0.05

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.55 -- How long the gun must go before the recoil pattern starts to reset.
SWEP.RecoilFullResetTime = 12 -- How long recoil must stay after last shoot
SWEP.RecoilPerShot = 1

---- Weapon Visual Recoil
SWEP.UseVisualRecoil = true

SWEP.VisualRecoil = 0.25
SWEP.VisualRecoilMultSights = 0.1
SWEP.VisualRecoilPositionBump = 1.5
SWEP.VisualRecoilPositionBumpUp = 0.08 -- its a mult

SWEP.VisualRecoilUp = 0 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 0 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 0 -- Roll tilt for visual recoil.

--------------------------
---- Weapon Handling Stuff
SWEP.BarrelLength = 0 -- Distance for nearwalling
SWEP.PushBackForce = 0 -- Push the player back when shooting.
SWEP.FreeAimRadius = 10 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0.25 -- How much the gun sways.
SWEP.SwayAddMidAir = 8.0 -- How much the gun sways.
SWEP.HoldBreathTime = 5 -- time that you can hold breath for, set to 0 to disable holding breath
SWEP.RestoreBreathTime = 10
SWEP.AimDownSightsTime = 0.2 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.1 -- How long it takes to go from sprinting to being able to fire.

SWEP.HasSights = true
SWEP.CanFireUnderwater = false -- This weapon can shoot while underwater
SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.CanLean = true

SWEP.ShotgunReload = false -- Weapon reloads like shotgun. Uses insert_1, insert_2, etc animations instead.
SWEP.CanReloadWhileUnCycled = false

SWEP.Speed = 1
SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.95
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 0.9
SWEP.SpeedMultBlindFire = 1

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
---- Drop Magazine
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = true


SWEP.DropMagazineModel = nil -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {} -- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineSkin = 0 -- Model skin of mag.
SWEP.DropMagazineTime = 0.25
SWEP.DropMagazineQCA = nil -- QC Attachment drop mag from, would drop from shell port if not defined
SWEP.DropMagazinePos = Vector(0, 0, 0) -- offsets
SWEP.DropMagazineAng = Angle(0, 0, 0)
SWEP.DropMagazineVelocity = Vector(0, 0, 0) -- Put something here if your anim throws the mag with force

---------------
-- Shell Effect
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.

SWEP.NoShellEject = false
SWEP.NoShellEjectManualAction = false -- Don't eject shell while cycling
SWEP.ManualActionEjectAnyway = false -- Overrides standard behaviour to eject a shell when a shot is fired and manual action is on.
SWEP.ShellModel = "models/shells/shell_9mm.mdl"

SWEP.ShellEffectCount = 1
SWEP.ShellSmoke = true
SWEP.ShellScale = 0.6
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShellPitch = 100 -- for shell sounds
SWEP.ShellSounds = ARC9.ShellSoundsTable
SWEP.RicochetSounds = ARC9.RicochetSounds

----------------
---- Muzzle Flash
SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA = 1 -- QC Attachment that controls after shot particle.

SWEP.NoMuzzleEffect = false -- Disable muzzle effect entirely
SWEP.NoFlash = false -- Disable light flash

SWEP.MuzzleParticle = "muzzleflash_pistol"
SWEP.AfterShotParticle = "weapon_muzzle_smoke"

SWEP.ImpactEffect = nil
SWEP.ImpactDecal = nil

---------
-- CamQCA
SWEP.CamQCA = 3 -- QC Attachment for camera movement.

SWEP.CamQCA_Mult = nil -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS = nil -- Intensity for QC camera movement in ADS.
SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.
SWEP.CamOffsetAng = Angle(0, 0, 0)

-----------------------
---- Viewmodel Position
SWEP.ViewModelFOVBase = 75

SWEP.IronSights = {
    Pos = Vector(-2.3, -2.5, 1.72),
    Ang = Angle(-0.4, 0.3, 0),
    Magnification = 1,
    CrosshairInSights = false,
    Blur = true, 
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-6, 0, -0),
    Ang = Angle(0, 0, -45),
}

SWEP.ActivePos = Vector(-2.5, -4, 0.25)
SWEP.ActiveAng = Angle(-1, -0, -8)

SWEP.MovingPos =  Vector(0, -0.5, 0)
SWEP.MovingAng =  Angle(0, 0, 2)

SWEP.MovingMidPoint = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0)
}

SWEP.CrouchPos = Vector(-1.0, -0.5, 0.0)
SWEP.CrouchAng = Angle(-0, -1, -10)

SWEP.RestPos = Vector(0.532, -6, 0)
SWEP.RestAng = Angle(-4.633, 36.881, 0)

SWEP.SprintPos = Vector(-0, -6, 3.5)
SWEP.SprintAng = Angle(20, -20, -10)
SWEP.SprintVerticalOffset = false -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = true -- No sprintpos during reloads

SWEP.SprintMidPoint = {
    Pos = Vector(0, -3, -0),
    Ang = Angle(0, 5, -25)
}

SWEP.NearWallPos = Vector(-2.8, -7, 0.5)
SWEP.NearWallAng = Angle(-1, -5, -12)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(16.5, 30, 5)
SWEP.CustomizeRotateAnchor = Vector(14, -2, -5)

--------
-- Bones
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
     [0] = "Bullet_00",
     [1] = "Bullet_01",
     [2] = "Bullet_02"
}

SWEP.HideBones = {
    "Magazine_01",
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 5 -- Not multiplied, but actually just added/subtracted.

local path = "weapons/arc9_scp5k/"

SWEP.ShootSound               = { "WeaponARC9_M9A3_Fire" }
SWEP.LayerSound               = { "WeaponARC9_GLOCK_TailOutdoor" }
SWEP.ShootSoundIndoor         = { "WeaponARC9_M9A3_Fire" }
SWEP.LayerSoundIndoor         = { "WeaponARC9_GLOCK_TailIndoor" }
SWEP.ShootSoundSilenced       = { "WeaponARC9_M9A3_FireSilenced" } 
SWEP.ShootSoundSilencedIndoor = { "WeaponARC9_M9A3_FireSilenced" }
SWEP.LayerSoundSilenced       = { "WeaponARC9_SMG_TailOutdoor" }
SWEP.LayerSoundSilencedIndoor = { "WeaponARC9_SMG_TailIndoor" }

SWEP.ImpactSound = nil

SWEP.DryFireSound = "WeaponARC9_M9A3_Dryfire"

SWEP.FiremodeSound = "arc9/firemode.wav"
SWEP.ToggleAttSound = {
    "arc9/toggles/flashlight_laser_toggle_on_01.ogg",
    "arc9/toggles/flashlight_laser_toggle_on_02.ogg",
    "arc9/toggles/flashlight_laser_toggle_on_03.ogg",
}

SWEP.EnterSightsSound = "Generic_ADSinPistol"
SWEP.ExitSightsSound = "Generic_ADSoutPistol"

SWEP.TriggerDownSound = ""
SWEP.TriggerUpSound = ""

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.AttachmentElements = {
    --  ["undefined"] = { Bodygroups = {{1,1},},},
  }

SWEP.Attachments = {
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = {"muzzle","muzzle_pistols"},
        Bone = "slide",
        Pos = Vector(-0.0, -5.8, 0),
        Ang = Angle(0, 90, -0),
        Scale = 0.8,
    },
    {
        PrintName = "Top",
        Bone = "weapon",
        Pos = Vector(0, -2.0, -0.1),
        Ang = Angle(0, 90, -0),
        Category = {"csgo_rail_optic_pistols",},
		Scale = 1.1,
		CorrectiveAng = Angle(-0.56, 0.67, 0),
    },
    {
        PrintName = "Sights",
        Bone = "Slide",
        Pos = Vector(0, -0.4, 0.3),
        Ang = Angle(0, 90, -0),
        Category = {"csgo_optics_pistols_alt","eft_optic_small"},
        CorrectiveAng = Angle(-0.65, 0.67, 0),
		Scale = 0.8,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = {"csgo_tac_pistols"},
        Bone = "weapon",
        Pos = Vector(0, -3.6, 0.5),
        Ang = Angle(0, 90, 0),
		Scale = 1.1,
    },
    {
        PrintName = "Ammo",
        Bone = "weapon",
        Category = "go_ammo",
        Pos = Vector(0, 1, 0),
        Ang = Angle(0, 0, 0),
    },
    -- {
        -- PrintName = "Skins",
        -- Bone = "v_weapon.Clip",
        -- Category = "scp5k_glock_skin",
		-- CosmeticOnly = true,
    -- },
	{
        PrintName = "View",
        Category = {"scp5k_view_02"},
        CosmeticOnly = true,
    },
    {
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = true -- Instantly go to idle_sprint instead of playing enter_sprint.

SWEP.Animations = {
    ["idle"] = {
        Source = {"idle"},
    },
    ["idle_empty"] = {
        Source = {"idle_empty"},
    },
    ------------------------------------------------ Sights
    ["enter_sights"] = {
        Source = {"ads_in"},
        Time = 5,
    },
	["idle_sights"] = {
        Source = {"ads_idle"},
    },
	["exit_sights"] = {
        Source = {"ads_out"},
        Time = 5,
    },
	["enter_sights_empty"] = {
        Source = {"ads_in_empty"},
        Time = 5,
    },
	["idle_sights_empty"] = {
        Source = {"ads_idle_empty"},
    },
	["exit_sights_empty"] = {
        Source = {"ads_out_empty"},
        Time = 5,
    },
    --------------------------------------------------- Fire
    ["fire"] = {
        Source = {"fire"},
    },
	["fire_empty"] = {
        Source = {"fire_empty"},
    },
	["fire_iron"] = {
        Source = {"fire"},
    },
    ["dryfire"] = {
        Source = {"Fire_Empty"},
		MinProgress = 0.1,
        FireASAP = true,
    },
    --------------------------------------------------- Draw & Holster
    --[[ ["ready"] = {
        Source = {"nil"},
		EventTable = {
        },
    }, ]]
    ["draw"] = {
        Source = {"equip"},
        MinProgress = 0.5,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_M9A3_Equip", t = 0 / 30},
            {s = "Generic_ClothEquip", t = 0 / 30},
        },
    },
	["draw_empty"] = {
        Source = {"equip_empty"},
        MinProgress = 0.5,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_M9A3_Equip", t = 0 / 30},
            {s = "Generic_ClothEquip", t = 0 / 30},
        },
    },
	["holster"] = {
        Source = {"dequip"},
        MinProgress = 0.5,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_MK17_Unequip", t = 0 / 30},
            {s = "Generic_ClothUnequip", t = 0 / 30},
        },
    },
	["holster_empty"] = {
        Source = {"dequip_empty"},
        MinProgress = 0.5,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_MK17_Unequip", t = 0 / 30},
            {s = "Generic_ClothUnequip", t = 0 / 30},
        },
    },
    
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_M9A3_EmptyMagPouch", t = 0 / 30},
			{s = "WeaponARC9_M9A3_MagOut", t = 5 / 30},
			{s = "WeaponARC9_M9A3_MagHit", t = 20 / 30},
			{s = "WeaponARC9_M9A3_MagIn", t = 35 / 30},
			{s = "WeaponARC9_M9A3_MagPouchDown", t = 40 / 30},
            {s = "WeaponARC9_GLOCK_Start", t = 45 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.85,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_GLOCK_Start", t = 0 / 30},
			{s = "WeaponARC9_M9A3_EmptyMagOut", t = 0 / 30},
			{s = "WeaponARC9_M9A3_EmptyMagPouch", t = 10 / 30},
			{s = "WeaponARC9_M9A3_EmptyMagIn", t = 28 / 30},
			{s = "WeaponARC9_M9A3_EmptyBolt", t = 47 / 30},
        },
    },
    --------------------------------------------------- Tacticool
    ["inspect"] = {
        Source = {"inspect"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_M9A3_InspectRotate", t = 0 / 30},
			{s = "WeaponARC9_M9A3_BoltBack", t = 78 / 30},
			{s = "WeaponARC9_M9A3_BoltForward", t = 105 / 30},
        },
    },
	["inspect_empty"] = {
        Source = {"magcheck_empty"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_M9A3_MagCheckOut", t = 0 / 30},
			{s = "WeaponARC9_M9A3_MagCheckIn", t = 83 / 30},
        },
    },
    ["idle_sprint"] = {
        Source = {"sprint"},
    },
    ["idle_sprint_empty"] = {
        Source = {"sprint_empty"},
    },
	["walk_sprint"] = {
        Source = {"walk"},
    },
    ["walk_sprint_empty"] = {
        Source = {"walk_empty"},
    },
}

