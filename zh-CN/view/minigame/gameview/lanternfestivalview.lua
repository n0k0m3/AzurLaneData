slot0 = class("LanternFestivalView", import("..BaseMiniGameView"))

function slot0.getUIName(slot0)
	return "LanternFestivalUI"
end

function slot0.didEnter(slot0)
	slot0.controller = LanternRiddlesController.New()

	slot0.controller.view:SetUI(slot0._tf)
	slot0.controller:SetCallBack(function ()
		uv0:emit(uv1.ON_BACK)
	end, function ()
		uv0:emit(uv1.ON_HOME)
	end, function ()
		if uv0:GetMGHubData().count > 0 then
			uv0:SendSuccess(0)
		end
	end, function ()
		uv0:StoreDataToServer(uv0.controller:GetSaveData())
	end)
	slot0.controller:SetUp(slot0:PackData())
end

function slot0.PackData(slot0)
	slot1 = 15
	slot3 = slot0:GetMGData()
	slot4, slot5 = nil

	if slot3:GetRuntimeData("elements") and #slot3 > 0 then
		slot4 = _.slice(slot3, 1, slot1)
		slot5 = _.slice(slot3, slot1 + 1, slot0:GetMGHubData().usedtime)
	else
		for slot9 = 1, slot1, 1 do
			table.insert({}, 0)
		end

		slot5 = {}
	end

	slot6.finishCount = slot2.usedtime
	slot6.unlockCount = slot2.count
	slot6.nextTimes = slot4
	slot6.finishList = slot5

	return {}
end

function slot0.OnGetAwardDone(slot0, slot1)
	if slot1.cmd == MiniGameOPCommand.CMD_COMPLETE then
		slot2 = slot0:GetMGHubData()

		if slot2.ultimate == 0 and slot2:getConfig("reward_need") <= slot2.usedtime then
			slot9.hubid = slot2.id
			slot9.cmd = MiniGameOPCommand.CMD_ULTIMATE
			slot9.args1 = {}

			pg.m02:sendNotification(GAME.SEND_MINI_GAME_OP, {})
		end
	end
end

function slot0.willExit(slot0)
	slot0.controller:Dispose()
end

return slot0