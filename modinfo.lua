-- 名称
name = "Abigail Pro Max T PlusCup"
-- 描述
description =  
[[
更强的阿比盖尔！
可修改阿比盖尔攻击力、生命值、移动速度以及常规生命回复速度。
并且灵体草药效果增强。

----------------

V1.1更新
	- 现在阿比盖尔可以帮忙打影怪了！

V1.2更新
	- 配置选项增加1倍（原版）可配置项

V1.3更新
	- 可自定义修改阿比盖尔的移动速度、发光范围、常规生命回复速度了
	- 灵体草药效果调整：
		亡者补药和灵魂万能药效果为默认值 x 设置的生命回复速度
		蒸馏复仇反伤为默认值 x 设置的阿比盖尔攻击力倍数
		强健精油移速为默认值 x 设置的阿比盖尔移速
V1.4更新
	- 移除了发光范围的加强（因为bug）
	- 默认攻击力改为5倍（仍然可调整）
]]
-- 作者
author = "xivna"
-- 版本
version = "1.31"
-- klei官方论坛地址，为空则默认是工坊的地址
forumthread = ""
-- mod icon
icon_atlas = "modicon.xml"
icon = "modicon.tex"
-- dst兼容
dst_compatible = true
-- 是否是客户端mod
client_only_mod = false
-- 是否是所有客户端都需要安装
all_clients_require_mod = true
-- 饥荒api版本，固定填10
api_version = 10

-- mod的配置项
configuration_options = 
{
    {
		name = "health",
		hover = "阿比盖尔生命值是默认的几倍。\nHow many times is Abigail's HP by default.原版为：1级：150；2级：300；3级：600；",
		label = "阿比盖尔生命倍数",
		options =
		{
			{description = "1倍", data = 1},
			{description = "2倍", data = 2},
			{description = "3倍", data = 3},
			{description = "5倍", data = 5},
			{description = "10倍(Default)", data = 10},
			{description = "15倍", data = 15},
			{description = "20倍", data = 20},
		},
		default = 10,
	},
    {
		name = "damage_d",
		hover = "阿比盖尔攻击力是默认的几倍。\nHow many times the default attack power of Abigail.原版为：白天：15；黄昏：25；夜晚：40；",
		label = "阿比盖尔攻击力倍数",
		options =
		{
			{description = "1倍", data = 1},
			{description = "2倍", data = 2},
			{description = "3倍", data = 3},
			{description = "5倍(Default)", data = 5},
			{description = "10倍", data = 10},
			{description = "15倍", data = 15},
			{description = "20倍", data = 20},
		},
		default = 5,
	},
	{
        name = "protect",
        hover = "需要阿比盖尔帮忙攻击影怪吗？\nNeed Abigail's help attacking the shadow monsters?",
        label = "攻击影怪",
        options = {
            {description = "启用(Default)", data = true},
            {description = "不启用", data = false}
        },
        default = true
    },
    {
        name = "speed_d",
        hover = "阿比盖尔的移动速度\nAbigail's movement speed",
        label = "阿比盖尔移速",
        options = {
            {description = "默认(Default)", data = 1},
            {description = "2倍", data = 2},
            {description = "3倍", data = 3},
            {description = "4倍", data = 4},
            {description = "5倍", data = 5}
        },
        default = 1
    },
    {
        name = "regen_d",
        hover = "阿比盖尔常规健康恢复速度\nAbigail's normal health regeneration rate",
        label = "阿比盖尔生命值恢复",
        options = {
            {description = "默认(Default)", data = 1},
            {description = "2倍", data = 2},
            {description = "5倍", data = 5},
            {description = "10倍", data = 10},
            {description = "15倍", data = 15},
            {description = "25倍", data = 25},
            {description = "50倍", data = 50},
            {description = "100倍", data = 100}
        },
        default = 1
    }
}