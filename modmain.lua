TUNING.ABIGAIL_HEALTH_LEVEL1 = 150*GetModConfigData("health")
TUNING.ABIGAIL_HEALTH_LEVEL2 = 300*GetModConfigData("health")
TUNING.ABIGAIL_HEALTH_LEVEL3 = 600*GetModConfigData("health")

damage_d = GetModConfigData("damage_d")
print("GetModConfigData('damage_d'): ", damage_d)

TUNING.ABIGAIL_DAMAGE =
{
    day = 15*damage_d,
    dusk = 25*damage_d,
    night = 40*damage_d,
}

Light_d = GetModConfigData("Light_d")
print("GetModConfigData('Light_d'): ", Light_d)
-- TUNING.ABIGAIL_LIGHTING =
-- {
--     {l = 0.0, r = 0.0},
--     {l = 0.1, r = 0.3*Light_d, i = 0.7, f = 0.5},
--     {l = 0.5, r = 0.7*Light_d, i = 0.6, f = 0.6},
-- }

TUNING.ABIGAIL_SPEED = 5*GetModConfigData("speed_d")

TUNING.GHOSTLYELIXIR_SLOWREGEN_HEALING = 2*GetModConfigData("regen_d")
TUNING.GHOSTLYELIXIR_FASTREGEN_HEALING = 20*GetModConfigData("regen_d")
TUNING.GHOSTLYELIXIR_RETALIATION_DAMAGE = 20*GetModConfigData("damage_d")
TUNING.GHOSTLYELIXIR_SPEED_LOCO_MULT = 1.75*GetModConfigData("speed_d")

AddPrefabPostInit("abigail", function(inst)
    if not GLOBAL.TheWorld.ismastersim then
        return
    end
    if GetModConfigData("protect") then
        inst:AddTag("crazy")
    end
    inst.components.health:StartRegen(GetModConfigData("regen_d"), 1)
end)