slot1.offset = {
	0,
	-2,
	0
}
slot0.aniEffect = {
	effect = "jineng"
}
slot2.arg_list = {
	buff_id = 1000
}
slot1[1] = {
	targetAniEffect = "",
	casterAniEffect = "",
	type = "BattleSkillAddBuff",
	target_choise = "TargetPlayerMainFleet"
}
slot0.effect_list = {}

return {
	uiEffect = "",
	name = "炮术指挥·主力",
	cd = 0,
	picture = "0",
	desc = "提高舰队中所有主力的炮击属性",
	painting = 1,
	id = 1005,
	castCV = "skill"
}