return {
	{
		desc = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续5秒，优先对精英目标（人形单位）生效，同技能效果不叠加",
		addition = {
			"5(+1)"
		}
	},
	{
		desc = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续6秒，优先对精英目标（人形单位）生效，同技能效果不叠加",
		addition = {
			"6(+1)"
		}
	},
	{
		desc = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续7秒，优先对精英目标（人形单位）生效，同技能效果不叠加",
		addition = {
			"7(+1)"
		}
	},
	{
		desc = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续8秒，优先对精英目标（人形单位）生效，同技能效果不叠加",
		addition = {
			"8(+1)"
		}
	},
	{
		desc = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续9秒，优先对精英目标（人形单位）生效，同技能效果不叠加",
		addition = {
			"9(+1)"
		}
	},
	{
		desc = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续10秒，优先对精英目标（人形单位）生效，同技能效果不叠加",
		addition = {
			"10(+1)"
		}
	},
	{
		desc = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续11秒，优先对精英目标（人形单位）生效，同技能效果不叠加",
		addition = {
			"11(+1)"
		}
	},
	{
		desc = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续12秒，优先对精英目标（人形单位）生效，同技能效果不叠加",
		addition = {
			"12(+1)"
		}
	},
	{
		desc = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续13秒，优先对精英目标（人形单位）生效，同技能效果不叠加",
		addition = {
			"13(+2)"
		}
	},
	{
		desc = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续15秒，优先对精英目标（人形单位）生效，同技能效果不叠加",
		addition = {
			"15"
		}
	},
	desc_get = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续5秒(满级15秒)，优先对精英目标（人形单位）生效，同技能效果不叠加",
	name = "弱点侦测",
	init_effect = "",
	id = 5011,
	time = 0,
	picture = "",
	desc = "每隔20秒，有25%的機率发动，敌方单个单位受到的伤害上升20%，持续$1秒，优先对精英目标（人形单位）生效，同技能效果不叠加",
	stack = 1,
	color = "yellow",
	icon = 5010,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffAddBuff",
			trigger = {
				"onUpdate"
			},
			arg_list = {
				buff_id = 5012,
				target = "TargetSelf",
				time = 20
			}
		}
	}
}
