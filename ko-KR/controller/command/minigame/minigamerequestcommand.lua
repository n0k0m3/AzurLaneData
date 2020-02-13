slot0 = class("MiniGameRequestCommand", pm.SimpleCommand)
slot0.REQUEST_HUB_DATA = 1

function slot0.execute(slot0, slot1)
	slot7.type = slot1:getBody().type

	pg.ConnectionMgr.GetInstance():Send(26101, {}, 26102, function (slot0)
		for slot5, slot6 in ipairs(slot0.hubs) do
			getProxy(MiniGameProxy):UpdataHubData(slot6)
		end

		for slot6, slot7 in ipairs(pg.mini_game.all) do
			getProxy(MiniGameProxy):RequestInitData(slot7, true)
		end
	end)
end

return slot0