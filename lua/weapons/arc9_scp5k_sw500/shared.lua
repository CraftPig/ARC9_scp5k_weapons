AddCSLuaFile()

SWEP.CustomSelectIcon = Material("vgui/hud/arc9_scp5k_sw500")
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
SWEP.PrintName = "SW 500"
SWEP.TrueName = "Smith & Wesson Model 500"
SWEP.EntitySelectIcon = false

SWEP.Category = "ARC9 - SCP: 5K"
SWEP.SubCategory = "Pistols"
SWEP.Class = "Pistol"

SWEP.Slot = 1

SWEP.Class = "Revolver"
SWEP.Trivia = {
    Manufacturer = "Smith & Wesson",
    Caliber = ".500 Magnum",
    Weight = "1.6 kg",
    Country = "USA",
    Year = "2003"
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "Affray Interactive", 
}
SWEP.Description = [[The Smith & Wesson Model 500 is a powerful revolver known for its high stopping power.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9_scp5k/sw500/v_sw500.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-12, 4, -7), -- non tpik (while on ground, on npc etc)
     Ang = Angle(0, 0, 180),
     TPIKPos = Vector(-12, 2, -4), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -10, 180),
     Scale = 1
 }

---------------
---- Hold Types
SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "revolver"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "passive"
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
SWEP.DamageMax = 500 -- Damage done at point blank range
SWEP.DamageMin = 65 -- Damage done at maximum range
SWEP.DamageRand = nil -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Num = 1 -- Number of bullets to shoot
SWEP.DamageType = DMG_BULLET

--------
---- RPM & Firemodes
SWEP.RPM = 110

SWEP.TriggerDelay = false -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.2 -- Time until weapon fires.

SWEP.ManualAction = true
SWEP.ShotgunReload = true

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
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1.0,
    [HITGROUP_STOMACH] = 0.8,
    [HITGROUP_LEFTARM] = 0.15,
    [HITGROUP_RIGHTARM] = 0.15,
    [HITGROUP_LEFTLEG] = 0.1,
    [HITGROUP_RIGHTLEG] = 0.1,
}

--------------------------
---- Range Based Modifiers
SWEP.RangeMin = 1200 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 3543.5 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.

SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = false

SWEP.PhysBulletMuzzleVelocity = 24900 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.
SWEP.PhysBulletDrag = 1 -- Drag multiplier
SWEP.PhysBulletGravity = 1 -- Gravity multiplier
SWEP.PhysBulletDontInheritPlayerVelocity = false -- Set to true to disable "Browning Effect"

-------------
---- Magazine
SWEP.Ammo = "357" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 5 -- Self-explanatory.
SWEP.SupplyLimit = 5

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
SWEP.Recoil = 0.3 -- General recoil multiplier
SWEP.RecoilAddSighted = -0.1
SWEP.RecoilRandomSideAddSighted = -3.5
SWEP.RecoilAutoControl = 0.0 -- Multiplier for automatic recoil control.

SWEP.RecoilUp = 25  -- Multiplier for vertical recoil
SWEP.RecoilSide = 0  -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 5
SWEP.RecoilRandomSide = 35

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

--------------------------
---- Weapon Handling Stuff
SWEP.BarrelLength = 20 -- Distance for nearwalling
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
SWEP.NoShellEjectManualAction = true -- Don't eject shell while cycling
SWEP.ManualActionEjectAnyway = false -- Overrides standard behaviour to eject a shell when a shot is fired and manual action is on.
SWEP.ShellModel = "models/shells/shell_9mm.mdl"

SWEP.ShellEffectCount = 1
SWEP.ShellSmoke = true
SWEP.ShellScale = 0.5
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

SWEP.MuzzleParticle = { "shellsmoke", "muzzleflash_OTS", "muzzleflash_pistol_deagle" }
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
SWEP.BobWalkMult = 1 -- same but for all non sprint actions

-----------------------
---- Viewmodel Position
SWEP.ViewModelFOVBase = 90

SWEP.IronSights = {
    Pos = Vector(-3.2, -3.5, 2.75),
    Ang = Angle(0.1, 0.2, 0),
    Magnification = 1.1,
    CrosshairInSights = false,
    Blur = true, 
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-6, 0, -0),
    Ang = Angle(0, 0, -45),
}

SWEP.ActivePos = Vector(-1.7, -4, 2.25)
SWEP.ActiveAng = Angle(-0, -0, -2)

SWEP.MovingPos =  Vector(0, -0.5, 0)
SWEP.MovingAng =  Angle(0, 0, 2)

SWEP.MovingMidPoint = {
    Pos = Vector(0, -2, -0.5),
    Ang = Angle(0, 0, 0)
}

SWEP.CrouchPos = Vector(-1.0, -0.5, 0.0)
SWEP.CrouchAng = Angle(-0, -1, -10)

SWEP.RestPos = Vector(0.532, -6, 0)
SWEP.RestAng = Angle(-4.633, 36.881, 0)

SWEP.SprintPos = Vector(-0, -6, 5.5)
SWEP.SprintAng = Angle(20, -20, -10)
-- SWEP.SprintPos = Vector(-3.75, -8, 2.5)
-- SWEP.SprintAng = Angle(10, -10, -30)
SWEP.SprintVerticalOffset = false -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = true -- No sprintpos during reloads

SWEP.SprintMidPoint = {
    Pos = Vector(0, -3, -0),
    Ang = Angle(0, 5, -25)
}

SWEP.NearWallPos = Vector(-0, -7, 3.0)
SWEP.NearWallAng = Angle(20, -10, -10) 

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(19, 30, 7)
SWEP.CustomizeRotateAnchor = Vector(18, -3, -5)

--------
-- Bones
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
}

SWEP.CaseBones = {
}

SWEP.HideBones = {
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 5 -- Not multiplied, but actually just added/subtracted.

local path = "weapons/arc9_scp5k/"

SWEP.ShootSound               = { "WeaponARC9_SW500_Fire" }
SWEP.LayerSound               = { "WeaponARC9_SW500_TailOutdoor" }
SWEP.ShootSoundIndoor         = { "WeaponARC9_SW500_Fire" }
SWEP.LayerSoundIndoor         = { "WeaponARC9_SW500_TailIndoor" }
SWEP.ShootSoundSilenced       = { "WeaponARC9_GLOCK_FireSilenced" } 
SWEP.ShootSoundSilencedIndoor = { "WeaponARC9_GLOCK_FireSilenced" }
SWEP.LayerSoundSilenced       = { "WeaponARC9_SMG_TailOutdoor" }
SWEP.LayerSoundSilencedIndoor = { "WeaponARC9_SMG_TailIndoor" }

SWEP.ImpactSound = nil

SWEP.DryFireSound = "WeaponARC9_GLOCK_Dryfire"

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
    ["shortbarrel_sw500"] = { Bodygroups = {{0,1},},},
	["longbarrel_sw500"] = { Bodygroups = {{0,0},},},
  }

SWEP.Attachments = {
	{
        PrintName = "Barrel",
        Category = {"scp5k_sw500"},
        Bone = "weapon",
		UnInstalledElements = {"longbarrel_sw500"},
        Pos = Vector(-0.0, -1.7, -5.5),
        Ang = Angle(0, 90, -0),
    },
    {
        PrintName = "Sights",
        Bone = "weapon",
		ExcludeElements = {"shortbarrel_sw500"},
        Pos = Vector(0, -2.5, -6.4),
        Ang = Angle(-90, 90, -0),
        Category = {"csgo_optics_pistols_alt", "scp5k_optic_pistol", "cod2019_optic"},
        CorrectiveAng = Angle(0.3, 0.4, 0),
		Scale = 1,
    },
    {
        PrintName = "Reload",
        Category = {"scp5k_sw500_speedloader"},
        Bone = "cylinder",
        Pos = Vector(0, -0.35, 0),
        Ang = Angle(0, 90, 0),
		Scale = 0.7,
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
	{ 
        PrintName = "Charm",
        CosmeticOnly = true,
        Category = "charm",
        Bone = "weapon",
        Pos = Vector(-0.7, 3.1, 2),
		Ang = Angle(-90, 90, -0),
		Icon_Offset = Vector(-2.5, 0, 1.5),
		Scale = 1,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "weapon",
        Pos = Vector(-0.4, 0,-3),
		Ang = Angle(-90, 90, 0),
		Icon_Offset = Vector(-4.85, 0.05, 2.3),
		CosmeticOnly = true,
		Scale = 0.7,
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
    --------------------------------------------------- Fire
    ["cycle"] = {
        Source = {"action"},
        MinProgress = 0.75,
		Time = 1,
        FireASAP = true,
		EventTable = {
		    {s = "WeaponARC9_SW500_Hammer", t = 0 / 30},
        },
    },
   ["fire"] = {
        Source = {"fire"},
    },
	["fire_iron"] = {
        Source = {"fire"},
    },
    ["dryfire"] = {
        Source = {"dryfire"},
		MinProgress = 0.25,
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
            {s = "WeaponARC9_StealthHunter_Equip", t = 0 / 30},
            {s = "Generic_ClothEquip", t = 0 / 30},
        },
    },
	["holster"] = {
        Source = {"dequip"},
        MinProgress = 0.5,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_StealthHunter_Unequip", t = 0 / 30},
            {s = "Generic_ClothUnequip", t = 0 / 30},
        },
    },  
    --------------------------------------------------- Reload
   ["reload_start"] = {
        Source = "reload_start",
		MinProgress = 1,
		FireASAP = false,
		DumpAmmo = true,
        EventTable = {
		    { s = "WeaponARC9_SW500_Open", t = 0 / 10 },
        },
    },
    ["reload_insert"] = {
        Source = "reload_single",
		MinProgress = 0.9,
		Time = 1,
		RestoreAmmo = 0,
		FireASAP = false,
        EventTable = {
		    { s = "WeaponARC9_SW500_Cloth", t = 0 / 10 },
			{ s = "WeaponARC9_SW500_BulletIn", t = 0 / 10 },
        },
    },
	["reload_insert_speedloader"] = {
        Source = "reload_speed",
		MinProgress = 0.6,
		Time = 1,
		RestoreAmmo = 4,
		FireASAP = false,
        EventTable = {
		    { s = "WeaponARC9_SW500_Cloth", t = 0 / 10 },
			{ s = "WeaponARC9_SW500_SpeedLoad", t = 0 / 10 },
        },
    },
	["reload_finish"] = {
        Source = "reload_end",
		MinProgress = 0.8,
		FireASAP = true,
        EventTable = {
		    { s = "WeaponARC9_SW500_Close", t = 0 / 10 },
        },
    },
    --------------------------------------------------- Tacticool
    ["inspect_look"] = {
        Source = {"inspect"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_SW500_Rotate1", t = 0 / 30},
			{s = "WeaponARC9_SW500_Rotate2", t = 70 / 30},
			{s = "WeaponARC9_SW500_Rotate3", t = 95 / 30},
			{s = "WeaponARC9_SW500_RotateEnd", t = 110 / 30},
        },
    },
	["inspect"] = {
        Source = {"magcheck"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_SW500_MagCheckOpen", t = 0 / 30},
			{s = "WeaponARC9_SW500_MagCheckClose", t = 45 / 30},
        },
    },
	["inspect_empty"] = {
        Source = {"magcheck"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
            {s = "WeaponARC9_SW500_MagCheckOpen", t = 0 / 30},
			{s = "WeaponARC9_SW500_MagCheckClose", t = 45 / 30},
        },
    },
    ["idle_sprint"] = {
        Source = {"sprint"},
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
}


SWEP.Hook_ModifyBodygroups = function(self, data)
    local mdl = data.model

    --local clip1 = self:GetLoadedRounds()
    --clip1 = math.min(clip1, 6)

    --mdl:SetBodygroup(3, clip1)

    local rounds1 = self:GetLastLoadedRounds()
    rounds1 = math.min(rounds1, 5)

    mdl:SetBodygroup(2, rounds1)

    local bone = "Cylinder"
    local boneid = mdl:LookupBone(bone)


end