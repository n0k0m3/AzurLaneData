slot2.style = {
	text = "前往<color=#ff7d36>編隊</color>，將角色編入隊伍",
	mode = 2,
	dir = -1,
	posY = -275,
	posX = 348
}
slot3.triggerType = {
	1
}
slot3.fingerPos = {
	posY = -34.7,
	posX = 68.5
}
slot2.ui = {
	pathIndex = -1,
	path = "OverlayCamera/Overlay/UIMain/toTop/frame/rightPanel/eventPanel/formationButton"
}
slot1[1] = {
	alpha = 0.328
}
slot2.style = {
	text = "但需要注意，<color=#ffde38>驅逐、輕巡、重巡</color>只能編隊到先鋒編隊中",
	mode = 1,
	dir = 1,
	posY = -100,
	posX = 300
}
slot1[2] = {
	alpha = 0.574,
	waitScene = "FormationUI"
}
slot2.style = {
	text = "<color=#ffde38>航母、戰列艦</color>只能編隊到主力編隊中",
	mode = 1,
	dir = -1,
	posY = 200,
	posX = 0
}
slot1[3] = {
	alpha = 0.321
}
slot2.style = {
	text = "點擊<color=#ff7d36>添加</color>來編入新角色",
	mode = 2,
	dir = -1,
	posY = 122.82,
	posX = 243.5
}
slot3.triggerType = {
	1
}
slot3.fingerPos = {
	posY = -34.7,
	posX = 68.5
}
slot2.ui = {
	pathIndex = -1,
	path = "/UICamera/Canvas/UIMain/FormationUI(Clone)/GridFrame/vanguard_2/tip"
}
slot1[4] = {
	alpha = 0.371
}
slot2.style = {
	text = "選擇需要上場的角色",
	mode = 2,
	dir = -1,
	posY = 0,
	posX = 0
}
slot3.image = {
	source = "content/ship_icon",
	isChild = true,
	target = "content/ship_icon",
	isRelative = true
}
slot3.triggerType = {
	1
}
slot3.fingerPos = {
	posY = -107.3,
	posX = 67.77
}
slot2.ui = {
	pathIndex = 1,
	path = "UICamera/Canvas/UIMain/DockyardUI(Clone)/main/ship_container/ships"
}
slot1[5] = {
	alpha = 0.482,
	waitScene = "DockyardScene"
}
slot2.style = {
	text = "點擊<color=#ff7d36>確定</color>按鈕",
	mode = 2,
	dir = 1,
	posY = 0,
	posX = 0
}
slot3.triggerType = {
	1
}
slot3.fingerPos = {
	posY = -24.4,
	posX = 65.8
}
slot2.ui = {
	pathIndex = -1,
	path = "UICamera/Canvas/UIMain/DockyardUI(Clone)/select_panel/confirm_button"
}
slot1[6] = {
	alpha = 0.363
}
slot2.style = {
	text = "看！新角色成功入隊！艦隊實力大幅度提升！",
	mode = 1,
	dir = -1,
	posY = 0,
	posX = 0
}
slot1[7] = {
	alpha = 0.196,
	code = -1,
	waitScene = "FormationUI"
}
slot2.style = {
	text = "讓我們返回到主介面吧！",
	mode = 2,
	dir = -1,
	posY = 215.7,
	posX = -95.62
}
slot3.triggerType = {
	1
}
slot3.fingerPos = {
	posY = -40,
	posX = 20
}
slot2.ui = {
	pathIndex = -1,
	path = "/UICamera/Canvas/UIMain/FormationUI(Clone)/blur_panel/top/back_btn"
}
slot1[8] = {
	alpha = 0.45
}
slot0.events = {}

return {
	id = "S004"
}