AddCSLuaFile()

SWEP.CustomSelectIcon = Material("vgui/hud/arc9_scp5k_lamg")
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
SWEP.PrintName = "KAC LAMG"
SWEP.TrueName = "Light Assault Machine Gun"
SWEP.EntitySelectIcon = false

SWEP.Category = "ARC9 - SCP: 5K"
SWEP.SubCategory = "Other"

SWEP.Slot = 2

SWEP.Class = "Light Machine Gun"
SWEP.Trivia = {
    Manufacturer = "Knight's Armament Company",
    Caliber = "5.56x45mm",
    Weight = "6 kg",
    Country = "USA",
    Year = "2010"
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "Affray Interactive", 
}
SWEP.Description = [[The LAMG is a lightweight and compact belt-fed machine gun designed for infantry and special operations forces. It offers a high rate of fire and enhanced maneuverability compared to heavier machine guns, making it suitable for a variety of combat scenarios.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9_scp5k/lamg/v_lamg.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-3, 4, -8), -- non tpik (while on ground, on npc etc)
     Ang = Angle(0, 0, 180),
     TPIKPos = Vector(-3, 2, -5), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -10, 180),
     Scale = 1
 }

---------------
---- Hold Types
SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "ar2"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "magic"
SWEP.HoldTypeBlindfire = "ar2"
SWEP.HoldTypeNPC = "ar2"

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
SWEP.DamageMax = 51 -- Damage done at point blank range
SWEP.DamageMin = 11 -- Damage done at maximum range
SWEP.DamageRand = nil -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Num = 1 -- Number of bullets to shoot
SWEP.DamageType = DMG_BULLET

--------
---- RPM & Firemodes
SWEP.RPM = 600

-- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
SWEP.Firemodes = {
    {
        Mode = -1,
    },
}


SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.15 -- Time until weapon fires.

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
SWEP.PostBashTime = 0.5
SWEP.BashDamageType = DMG_CLUB
SWEP.BashDecal = "ExplosiveGunshot"
SWEP.BashImpact = true -- Creates a Impact effect that leaves a bullet hole.

SWEP.BashSpeed = 1

SWEP.BashWhileSprint = false -- Unlike ShootWhileSprint, this will not require transitioning out of sprint state (and waiting the sprinttofire delay)
SWEP.BashCancelsReload = nil -- If bashing should immediately cancel the reload

SWEP.MeleeHitSound = "WeaponARC9_AUG_MeleeHit"
SWEP.MeleeHitWallSound = "WeaponARC9_AUG_MeleeHit"
SWEP.MeleeSwingSound = "WeaponARC9_AUG_MeleeMiss"

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
SWEP.RangeMin = 1300 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 9055 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.

SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = false

SWEP.PhysBulletMuzzleVelocity = 35420 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.
SWEP.PhysBulletDrag = 1 -- Drag multiplier
SWEP.PhysBulletGravity = 1 -- Gravity multiplier
SWEP.PhysBulletDontInheritPlayerVelocity = false -- Set to true to disable "Browning Effect"

-------------
---- Magazine
SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 150 -- Self-explanatory.
SWEP.SupplyLimit = 6

SWEP.AmmoPerShot = 1 -- Ammo to use per shot
SWEP.InfiniteAmmo = false -- Weapon does not take from reserve ammo
SWEP.BottomlessClip = false -- Weapon never has to reload

-----------
---- Spread
SWEP.Spread = 0.01

SWEP.SpreadAddMove = 0.02 -- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = 0.1 -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = nil -- Applied when not sighted.
SWEP.SpreadAddSighted = -0.01 -- Applied when sighted. Can be negative.
SWEP.SpreadAddBlindFire = nil -- Applied when blind firing.
SWEP.SpreadAddCrouch = -0.01 -- Applied when crouching.

SWEP.SpreadAddRecoil = 0.005 -- Applied per unit of recoil.

--------------------------
---- Weapon Recoil
SWEP.Recoil = 0.4 -- General recoil multiplier
SWEP.RecoilAddSighted = -0.2
SWEP.RecoilAutoControl = 0.0 -- Multiplier for automatic recoil control.

SWEP.RecoilUp = 5.5  -- Multiplier for vertical recoil
SWEP.RecoilSide = 0  -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 1.5
SWEP.RecoilRandomSide = 3

SWEP.RecoilAddCrouch = -0.05

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.55 -- How long the gun must go before the recoil pattern starts to reset.
SWEP.RecoilFullResetTime = 12 -- How long recoil must stay after last shoot
SWEP.RecoilPerShot = 1

---- Weapon Visual Recoil
SWEP.UseVisualRecoil = true

SWEP.VisualRecoil = 0.25
SWEP.VisualRecoilMultSights = 0.1
SWEP.VisualRecoilPositionBump = 2.5
SWEP.VisualRecoilPositionBumpUp = 0.08 -- its a mult

SWEP.VisualRecoilPunch = 1.5 -- How far back visual recoil moves the gun.
SWEP.VisualRecoilPunchMultSights = 30

SWEP.VisualRecoilUp = 0 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 0 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 0 -- Roll tilt for visual recoil.

SWEP.RecoilKick = 1 -- Camera recoil
SWEP.RecoilKickDamping = 70.151 -- Camera recoil damping
SWEP.RecoilKickAffectPitch = nil -- thing for eft, set to true if you want camera go up (only visually) as recoil increases, SWEP.Recoil * SWEP.RecoilKick = effect of this

--------------------------
---- Weapon Handling Stuff
SWEP.BarrelLength = 0 -- Distance for nearwalling
SWEP.PushBackForce = 0 -- Push the player back when shooting.
SWEP.FreeAimRadius = 10 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0.25 -- How much the gun sways.
SWEP.SwayAddMidAir = 8.0 -- How much the gun sways.
SWEP.HoldBreathTime = 5 -- time that you can hold breath for, set to 0 to disable holding breath
SWEP.RestoreBreathTime = 10
SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
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
SWEP.SpeedMultShooting = 0.6
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
SWEP.ShellModel = "models/shells/shell_762nato.mdl"

SWEP.ShellEffectCount = 1
SWEP.ShellSmoke = true
SWEP.ShellScale = 0.9
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

SWEP.MuzzleParticle = { "port_smoke_heavy", "muzzleflash_OTS", "muzzleflash_6" }
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
SWEP.ViewModelFOVBase = 65

SWEP.IronSights = {
    Pos = Vector(-2.47, -1, 0.87),
    Ang = Angle(-0.0, 0, 0),
    Magnification = 1.1,
    CrosshairInSights = false,
    Blur = true, 
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-6, 0, -0),
    Ang = Angle(0, 0, -45),
}

SWEP.ActivePos = Vector(-0.50, -0.5, 0.2)
SWEP.ActiveAng = Angle(-0.0, 1, -0)
-- SWEP.ActivePos = Vector(-0.0, 12.0, 62.0)
-- SWEP.ActiveAng = Angle(-0.0, 0, -0)

SWEP.MovingPos =  Vector(0, -0.5, 0)
SWEP.MovingAng =  Angle(0, 0, 2)

SWEP.MovingMidPoint = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0)
}

SWEP.CrouchPos = Vector(-1.0, -0.5, 0.0)
SWEP.CrouchAng = Angle(-1, -1, -10)

SWEP.SprintPos = Vector(3, 0, 1)
SWEP.SprintAng = Angle(40, -15, -0)
SWEP.SprintVerticalOffset = false -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = true -- No sprintpos during reloads

SWEP.SprintMidPoint = {
    Pos = Vector(0, -3, -0),
    Ang = Angle(0, 5, -25)
}

SWEP.NearWallPos = Vector(-0, -2, 0.0)
SWEP.NearWallAng = Angle(-1, -5, -12)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(11.2, 36, 8.75)
SWEP.CustomizeRotateAnchor = Vector(11.5, -2, -5)

--------
-- Bones
SWEP.BulletBones = {
    [1] = "Bullet_00",
	[2] = "Bullet_01",
	[3] = "Bullet_02",
	[4] = "Bullet_03",
	[5] = "Bullet_04",
	[6] = "Bullet_05",
	[7] = "Bullet_06",
	[8] = "Bullet_07",
	[9] = "Bullet_08",
	[10] = "Bullet_09",
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

SWEP.ShootSound               = { "WeaponARC9_LAMG_Fire" }
SWEP.LayerSound               = { "WeaponARC9_LMG_TailOutdoor" }
SWEP.ShootSoundIndoor         = { "WeaponARC9_LAMG_Fire" }
SWEP.LayerSoundIndoor         = { "WeaponARC9_MK18_Indoor" }
SWEP.ShootSoundSilenced       = { "WeaponARC9_LAMG_FireSilenced" } 
SWEP.ShootSoundSilencedIndoor = { "WeaponARC9_LAMG_FireSilenced" }
SWEP.LayerSoundSilenced       = { "WeaponARC9_LMG_SilencedTail" }
SWEP.LayerSoundSilencedIndoor = { "WeaponARC9_LMG_SilencedTail" }

SWEP.ImpactSound = nil

SWEP.DryFireSound = "WeaponARC9_GLOCK_Dryfire"

SWEP.FiremodeSound = "Generic_ClothEquip"
SWEP.ToggleAttSound = {
    "arc9/toggles/flashlight_laser_toggle_on_01.ogg",
    "arc9/toggles/flashlight_laser_toggle_on_02.ogg",
    "arc9/toggles/flashlight_laser_toggle_on_03.ogg",
}

SWEP.EnterSightsSound = "Generic_ADSinMetal"
SWEP.ExitSightsSound = "Generic_ADSoutMetal"

SWEP.TriggerDownSound = "WeaponARC9_LAMG_PreFire"
SWEP.TriggerUpSound = ""

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.DefaultBodygroups = "00000000000000"
SWEP.AttachmentElements = {
    ["muzzle_lamg"] = {
        Bodygroups = {
            {1,0},
        },
    },
	["muzzle_none_lamg"] = {
        Bodygroups = {
            {1,1},
        },
    },
	["sights_lamg"] = {
        Bodygroups = {
            {2,0},
        },
    },
	["sights_none_lamg"] = {
        Bodygroups = {
            {2,1},
        },
    },
	["mag_lamg"] = {
        Bodygroups = {
            {3,0},
        },
    },
	["mag_ext_lamg"] = {
        Bodygroups = {
            {3,1},
        },
    },
	["stock_lamg"] = {
        Bodygroups = {
            {4,0},
        },
    },
	["stock_none_lamg"] = {
        Bodygroups = {
            {4,1},
        },
    },
  }

SWEP.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"muzzle","muzzle_m4"},
		InstalledElements = {"muzzle_none_lamg"},
		InstallSound = "Generic_Barrel_LargeAttach",
		UninstallSound = "Generic_Barrel_LargeDetach",
        Bone = "weapon",
        Pos = Vector(-0.0, -16.25, 0),
        Ang = Angle(0, 90, -0),
        Scale = 1,
    },
	{
        PrintName = "Grip",
        DefaultAttName = "Default",
        Category = {"grip","grip_mk18","grip_m4","fas_ubgl"},
		InstallSound = "Generic_Grip_LargeAttach",
		UninstallSound = "Generic_Grip_LargeDetach",
        Bone = "weapon",
		Icon_Offset = Vector(0, 0, 1),
        Pos = Vector(0, -10, -2.2),
        Ang = Angle(0, 90, 180),
    },
    {
        PrintName = "Sights",
        Bone = "weapon",
        Pos = Vector(-0, 4.8, 1),
        Ang = Angle(0, 90, -0),
        Category = {"csgo_optic"},
		InstalledElements = {"sights_none_lamg"},
		InstallSound = "Generic_Sight_LargeAttach",
		UninstallSound = "Generic_Sight_LargeDetach",
        CorrectiveAng = Angle(-0.1, 0.55, 0),
		Scale = 1,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = {"csgo_tac"},
		InstallSound = "Generic_Light_LargeDetach",
		UninstallSound = "Generic_Light_SmallAttach",
        Bone = "weapon",
		Icon_Offset = Vector(0, 0, 0),
        Pos = Vector(0.7, -9.8, -0.5),
        Ang = Angle(0, 90, -90),
		Scale = 1.2,
    },
	{
        PrintName = "Magazine",
        Category = {"scp5k_lamgmag"},
        Bone = "magazine",
		InstallSound = "Generic_Grip_LargeAttach",
		UninstallSound = "Generic_Grip_LargeDetach",
        Pos = Vector(-0, 0, -3.0),
        Ang = Angle(0, 90, -0),
        Icon_Offset = Vector(-0, 0, 0),
		Scale = 1.0,
    },
	{
        PrintName = "Stock",
        Category = {"csgo_stock"},
        Bone = "weapon",
        InstalledElements = {"stock_none_lamg"},
		InstallSound = "Generic_Grip_LargeAttach",
		UninstallSound = "Generic_Grip_LargeDetach",
        Pos = Vector(-0, 8, -0.05),
        Ang = Angle(0, 90, -0),
        Icon_Offset = Vector(-4, 0, 0),
		Scale = 1.0,
    },
    {
        PrintName = "Ammo",
        Bone = "magazine",
        Category = "go_ammo",
        Pos = Vector(0, -0, 0),
        Ang = Angle(0, 0, 0),
    },
    -- {
        -- PrintName = "Skins",
        -- Bone = "v_weapon.Clip",
        -- Category = "scp5k_glock_skin",
		-- CosmeticOnly = true,
    -- },
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
        Source = {"fire_ads"},
    },
	["fire_iron_empty"] = {
        Source = {"fire_empty_ads"},
    },
    ["dryfire"] = {
        Source = {"Fire_Empty"},
		MinProgress = 0.05,
        FireASAP = true,
    },
	--------------------------------------------------- Firemodes
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
            {s = "WeaponARC9_MK17_Equip", t = 0 / 30},
            {s = "Generic_ClothEquip", t = 0 / 30},
        },
    },
	["draw_empty"] = {
        Source = {"equip_empty"},
        MinProgress = 0.5,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_MK17_Equip", t = 0 / 30},
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
        MinProgress = 0.85,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_LAMG_CoverUp", t = 0 / 30},
			{s = "WeaponARC9_LAMG_BeltOut", t = 20 / 30},
			{s = "WeaponARC9_LAMG_MagOut", t = 60 / 30},
			{s = "WeaponARC9_LAMG_MagPouch", t = 80 / 30},
            {s = "WeaponARC9_LAMG_MagIn", t = 115 / 30},
			{s = "WeaponARC9_LAMG_BeltIn", t = 150 / 30},
			{s = "WeaponARC9_LAMG_CoverDown", t = 190 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.06,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.87,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.92,
                lhik = 1,
                rhik = 1
            },
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.85,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_LAMG_EmptyBoltBackForward", t = 0 / 30},
			{s = "WeaponARC9_LAMG_CoverUp", t = 20 / 30},
			{s = "WeaponARC9_LAMG_EmptyMagOut", t = 60 / 30},
			{s = "WeaponARC9_LAMG_EmptyMagPouch", t = 80 / 30},
			{s = "WeaponARC9_LAMG_EmptyMagIn", t = 114 / 30},
			{s = "WeaponARC9_LAMG_EmptyBeltIn", t = 147 / 30},
			{s = "WeaponARC9_LAMG_CoverDown", t = 196 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.87,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.92,
                lhik = 1,
                rhik = 1
            },
        },
    },
    --------------------------------------------------- Tacticool
    ["inspect"] = {
        Source = {"inspect"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_LAMG_Rotate", t = 0 / 30},
			{s = "WeaponARC9_LAMG_CoverOpen", t = 80 / 30},
		    {s = "WeaponARC9_LAMG_InspectBeltOut", t = 100 / 30},
            {s = "WeaponARC9_LAMG_BoltCooking", t = 165 / 30},
			{s = "WeaponARC9_LAMG_BoltBack", t = 185 / 30},
			{s = "WeaponARC9_LAMG_BeltIn", t = 230 / 30},
			{s = "WeaponARC9_LAMG_CoverClose", t = 270 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.89,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.92,
                lhik = 1,
                rhik = 1
            },
        },
    },
	["inspect_empty"] = {
        Source = {"magcheck_empty"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_LAMG_CoverOpen", t = 5 / 30},
			{s = "WeaponARC9_LAMG_CoverClose", t = 40 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.62,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["idle_sprint"] = {
        Source = {"sprint"},
		Time = 0.35,
		EventTable = {
            {s = "Generic_GearLightSprint", t = 0 / 30},
        },
    },
    ["idle_sprint_empty"] = {
        Source = {"sprint_empty"},
		Time = 0.35,
		EventTable = {
            {s = "Generic_GearLightSprint", t = 0 / 30},
        },
    },
	["idle_walk"] = {
        Source = {"walk"},
		Time = 0.6,
		EventTable = {
            {s = "Generic_GearLightWalk", t = 0 / 30},
        },
    },
	["idle_walk_empty"] = {
        Source = {"walk_empty"},
		Time = 0.4,
		EventTable = {
            {s = "Generic_GearLightWalk", t = 0 / 30},
        },
    },
}

