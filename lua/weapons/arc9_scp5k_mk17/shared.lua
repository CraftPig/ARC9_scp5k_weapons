AddCSLuaFile()

SWEP.CustomSelectIcon = Material("vgui/hud/arc9_scp5k_mk17")
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
SWEP.PrintName = "MK 17"
SWEP.TrueName = "FN SCAR-H"
SWEP.EntitySelectIcon = false

SWEP.Category = "ARC9 - SCP: 5K"
SWEP.SubCategory = "Assault Rifles"

SWEP.Slot = 2

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    Manufacturer = "Fabrique Nationale Herstal",
    Caliber = "7.62x51mm NATO",
    Weight = "3.58 kg",
    Country = "Belgium",
    Year = "2009"
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "Affray Interactive", 
}
SWEP.Description = [[The FN SCAR-H is a modular and reliable battle rifle, designed by FN Herstal. Chambered in 7.62x51mm NATO, it is known for its versatility, ambidextrous controls, and military adoption by special forces worldwide..]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9_scp5k/mk17/v_mk17.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-3, 4, -8), -- non tpik (while on ground, on npc etc)
     Ang = Angle(0, 0, 180),
     TPIKPos = Vector(-5, 3, -6), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -10, 170),
     Scale = 1
 }


---------------
---- Hold Types
SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "ar2"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "passive"
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
SWEP.DamageMax = 60 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range
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
	{
	    Mode = 1,
    }
}


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
SWEP.RangeMax = 8874 -- In Hammer units, how far bullets can travel before dealing DamageMin.
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

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.
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
SWEP.Recoil = 0.5 -- General recoil multiplier
SWEP.RecoilAddSighted = -0.2
SWEP.RecoilAutoControl = 0.0 -- Multiplier for automatic recoil control.

SWEP.RecoilUp = 6.5  -- Multiplier for vertical recoil
SWEP.RecoilSide = 0  -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 1.5
SWEP.RecoilRandomSide = 4

SWEP.RecoilAddCrouch = -0.05

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.55 -- How long the gun must go before the recoil pattern starts to reset.
SWEP.RecoilFullResetTime = 12 -- How long recoil must stay after last shoot
SWEP.RecoilPerShot = 1

---- Weapon Visual Recoil
SWEP.UseVisualRecoil = true
SWEP.PhysicalVisualRecoil = false -- Visual recoil actually affects your aim point.
SWEP.VisualRecoil = 0.01

SWEP.VisualRecoilCenter = Vector(0, -5, 20) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilUp = 100.0 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilUpAddSighted = -100.0
SWEP.VisualRecoilSide = 2 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 300.0 -- Roll tilt for visual recoil.

SWEP.VisualRecoilPunch = 150 -- How far back visual recoil moves the gun.
SWEP.VisualRecoilPunchMultSights = 2.55

SWEP.VisualRecoilDampingConst = 80 -- How spring will be visual recoil, 120 is default
SWEP.VisualRecoilSpringMagnitude = 5
SWEP.VisualRecoilSpringPunchDamping = 5 -- ehh another val for "eft" recoil, 6 is default

SWEP.RecoilKick = 1 -- Camera recoil
SWEP.RecoilKickDamping = 70.151 -- Camera recoil damping
SWEP.RecoilKickAffectPitch = nil -- thing for eft, set to true if you want camera go up (only visually) as recoil increases, SWEP.Recoil * SWEP.RecoilKick = effect of this

--------------------------
---- Weapon Handling Stuff
SWEP.BarrelLength = 35 -- Distance for nearwalling
SWEP.PushBackForce = 0 -- Push the player back when shooting.
SWEP.FreeAimRadius = 10 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0.25 -- How much the gun sways.
SWEP.SwayAddMidAir = 8.0 -- How much the gun sways.
SWEP.HoldBreathTime = 5 -- time that you can hold breath for, set to 0 to disable holding breath
SWEP.RestoreBreathTime = 10
SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
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
SWEP.ShellModel = "models/shells/shell_762nato.mdl"

SWEP.ShellEffectCount = 1
SWEP.ShellSmoke = true
SWEP.ShellScale = 0.9
SWEP.ShellCorrectAng = Angle(0, -90, 0)
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

-------------
--- Bob stuff
SWEP.BobSprintMult = 0.35 -- 
SWEP.BobWalkMult = 0.5 -- same but for all non sprint actions

-----------------------
---- Viewmodel Position
SWEP.ViewModelFOVBase = 85

SWEP.IronSights = {
    Pos = Vector(-3.22, -0.7, 1.06),
    Ang = Angle(-0.1, 0.5, 0),
    Magnification = 1.1,
    CrosshairInSights = false,
    Blur = true, 
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-6, 0, -0),
    Ang = Angle(0, 0, -45),
}

SWEP.ActivePos = Vector(-0.4, 1.0, 0.65)
SWEP.ActiveAng = Angle(-0.0, 4, -0)

SWEP.MovingPos =  Vector(0, -0.5, 0)
SWEP.MovingAng =  Angle(0, 0, 2)

SWEP.MovingMidPoint = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0)
}

SWEP.CrouchPos = Vector(-1.0, -0.5, 0.0)
SWEP.CrouchAng = Angle(-1, -1, -10)

SWEP.SprintPos = Vector(-1.5, 1, -0.25)
SWEP.SprintAng = Angle(25, -15, -10)
SWEP.SprintVerticalOffset = false -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = true -- No sprintpos during reloads

SWEP.SprintMidPoint = {
    Pos = Vector(0, -3, -0),
    Ang = Angle(0, 5, -25)
}

SWEP.NearWallPos = Vector(-0, -0, 0.0)
SWEP.NearWallAng = Angle(20, -10, -10)

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

SWEP.ShootSound               = { "WeaponARC9_MK17_Fire" }
SWEP.LayerSound               = { "WeaponARC9_MK17_Outdoor" }
SWEP.ShootSoundIndoor         = { "WeaponARC9_MK17_Fire" }
SWEP.LayerSoundIndoor         = { "WeaponARC9_MK17_Indoor" }
SWEP.ShootSoundSilenced       = { "WeaponARC9_MK17_FireSilenced" } 
SWEP.ShootSoundSilencedIndoor = { "WeaponARC9_MK17_FireSilenced" }
SWEP.LayerSoundSilenced       = { "WeaponARC9_SMG_TailOutdoor" }
SWEP.LayerSoundSilencedIndoor = { "WeaponARC9_SMG_TailIndoor" }

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

SWEP.TriggerDownSound = ""
SWEP.TriggerUpSound = ""

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.AttachmentElements = {
    ["iron_mk17"] = {
        Bodygroups = {
            {1,0},
        },
    },
	["iron_none_mk17"] = {
        Bodygroups = {
            {1,1},
        },
    },
	["muzzle_none_mk17"] = {
        Bodygroups = {
            {2,1},
        },
    },
	["muzzle_mk17"] = {
        Bodygroups = {
            {2,0},
        },
    },
  }

SWEP.Attachments = {
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Category = {"muzzle","muzzle_m4","muzzle_snipers", "scp5k_muzzle","cod2019_muzzle"},
		InstalledElements = {"muzzle_none_mk17"},
		UnInstalledElements = {"muzzle_mk17"},
		InstallSound = "Generic_Barrel_LargeAttach",
		UninstallSound = "Generic_Barrel_LargeDetach",
        Bone = "weapon",
        Pos = Vector(-0.0, -19.25, 1.075),
        Ang = Angle(0, 90, -0),
        Scale = 0.9,
    },
	{
        PrintName = "Grip",
        DefaultAttName = "Default",
        Category = {"grip","grip_mk18","grip_m4","fas_ubgl", "scp5k_foregrip","cod2019_grip"},
		InstallSound = "Generic_Grip_LargeAttach",
		UninstallSound = "Generic_Grip_LargeDetach",
        Bone = "weapon",
        Pos = Vector(0, -9.5, 0),
        Ang = Angle(0, 90, 180),
    },
    {
        PrintName = "Sights",
        Bone = "weapon",
        Pos = Vector(-0, -1, 2.95),
        Ang = Angle(0, 90, -0),
        Category = {"csgo_optic", "scp5k_optic", "cod2019_optic"},
		InstalledElements = {"iron_none_mk17"},
		UnInstalledElements = {"iron_mk17"},
		InstallSound = "Generic_Sight_LargeAttach",
		UninstallSound = "Generic_Sight_LargeDetach",
        CorrectiveAng = Angle(0.05, 0.92, 0),
		Scale = 1,
    },
    {
        PrintName = "Tactical",
        DefaultAttName = "Default",
         Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
		InstalledElements = {"rail_none_mk18"},
		UnInstalledElements = {"rail_mk18"},
		InstallSound = "Generic_Light_LargeDetach",
		UninstallSound = "Generic_Light_SmallAttach",
        Bone = "weapon",
		Icon_Offset = Vector(0, 1, 0),
        Pos = Vector(1, -10.5, 1.1),
        Ang = Angle(0, 90, -90),
		LaserCorrectionAngle = Angle(0, 0, 0),
		Scale = 1.1,
    },
    {
        PrintName = "Ammo",
        Bone = "weapon",
        Category = "go_ammo",
        Pos = Vector(0, -3.25, 0),
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
        Category = {"universal_camo", "scp5k_mk17_skin"},
        CosmeticOnly = true,
    },
	{ 
        PrintName = "Charm",
        CosmeticOnly = true,
        Category = "charm",
        Bone = "weapon",
        Pos = Vector(-0.7, 0, 1),
		Ang = Angle(-0, 90, -0),
		Icon_Offset = Vector(-2.5, 0, 1.5),
		Scale = 1,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "weapon",
        Pos = Vector(-0.4, 2,2.2),
		Ang = Angle(-0, 90, -0),
		Icon_Offset = Vector(-4.85, 0.05, 2.3),
		CosmeticOnly = true,
    },
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = true -- Instantly go to idle_sprint instead of playing enter_sprint.
SWEP.Hook_TranslateAnimation = function(swep, anim)
    if !IsFirstTimePredicted() then return end

    -- theres some mod for arc9eft that makes mag checks on bind and it manipulates EFTInspectnum value so well keep eft in name to keep functionality
    if anim == "inspect" or anim == "inspect_empty" then
        swep.EFTInspectnum = (swep.EFTInspectnum or 0) + 1
        local rand = swep.EFTInspectnum
        if rand == 1 then return anim .. "_look" end
        if rand == 2 then swep.EFTInspectnum = 0 rand = 0 end
    end
end

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
	["firemode_1"] = {
        Source = "firemode_down",
		EventTable = {
            {s = "Generic_SwitchFire_Rifle_Full", t = 5 / 30},
        },
    },
	["firemode_2"] = {
        Source = "firemode_up",
		EventTable = {
            {s = "Generic_SwitchFire_Rifle_Semi", t = 5 / 30},
        },
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
            {s = "WeaponARC9_MK17_MagPouchUp", t = 0 / 30},
			{s = "WeaponARC9_MK17_MagOut", t = 23 / 30},
			{s = "WeaponARC9_MK17_MagIn", t = 38 / 30},
            {s = "WeaponARC9_MK17_MagPouchDown", t = 45 / 30},
			{s = "WeaponARC9_MK17_HandlingBarrel", t = 70 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.77,
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
            {s = "Generic_ClothEquip", t = 0 / 30},
			{s = "WeaponARC9_MK17_EmptyMagOut", t = 0 / 30},
			{s = "WeaponARC9_MK17_EmptyMagPouch", t = 12 / 30},
			{s = "WeaponARC9_MK17_EmptyMagIn", t = 42 / 30},
			{s = "WeaponARC9_MK17_EmptyBolt", t = 71 / 30},
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
                t = 0.68,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.86,
                lhik = 1,
                rhik = 1
            },
        },
    },
    --------------------------------------------------- Tacticool
    ["inspect"] = {
        Source = {"magcheck"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_MK17_MagCheckOut", t = 0 / 30},
			{s = "WeaponARC9_MK17_MagCheckIn", t = 55 / 30},
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
                t = 0.61,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
	["inspect_look"] = {
        Source = {"inspect"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_MK17_Rotate", t = 0 / 30},
			{s = "WeaponARC9_MK17_BoltBack", t = 52 / 30},
			{s = "WeaponARC9_MK17_BoltForward", t = 85 / 30},
            {s = "Generic_ClothEquip", t = 96 / 30},
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
                t = 0.61,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
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
            {s = "WeaponARC9_MK17_MagCheckOut", t = 0 / 30},
			{s = "WeaponARC9_MK17_MagCheckIn", t = 55 / 30},
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

