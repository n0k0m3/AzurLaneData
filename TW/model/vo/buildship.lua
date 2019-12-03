slot0 = class("BuildShip", import(".BaseVO"))
slot0.INACTIVE = 1
slot0.ACTIVE = 2
slot0.FINISH = 3

slot0.Ctor = function (slot0, slot1)
	slot0.type = slot1.build_id
	slot0.time = slot1.time
	slot0.finishTime = slot1.finish_time
	slot0.state = slot0.INACTIVE
end

slot0.setId = function (slot0, slot1)
	slot0.id = slot1
end

slot0.setState = function (slot0, slot1)
	slot0.state = slot1
end

slot0.isFinish = function (slot0)
	return slot0.finishTime <= pg.TimeMgr.GetInstance():GetServerTime()
end

slot0.finish = function (slot0)
	slot0.time = 0
	slot0.finishTime = pg.TimeMgr.GetInstance():GetServerTime()
	slot0.state = slot0.FINISH
end

slot0.active = function (slot0)
	slot0.finishTime = pg.TimeMgr.GetInstance():GetServerTime() + slot0.time
	slot0.state = slot0.ACTIVE
end

slot0.setIsStart = function (slot0, slot1)
	slot0.isStart = slot1
end

slot0.getLeftTime = function (slot0)
	return slot0.finishTime - pg.TimeMgr.GetInstance():GetServerTime()
end

slot0.getBuildConsume = function (slot0, slot1, slot2)
	slot4 = nil

	return (slot1 ~= 1 or pg.draw_data_template[slot0].use_gem_1[math.min(slot2 + 1, #pg.draw_data_template[slot0].use_gem_1)]) and pg.draw_data_template[slot0].use_gem_10[math.min(slot2 + 1, #pg.draw_data_template[slot0].use_gem_10)]
end

slot0.canBuildShipByBuildId = function (slot0, slot1)
	slot1 = slot1 or 1

	if not pg.ship_data_create_material[slot0] then
		return false, i18n("ship_buildShip_error_noTemplate", slot0)
	end

	if MAX_BUILD_WORK_COUNT < table.getCount(slot4) + slot1 then
		return false, i18n("ship_buildShip_not_position")
	end

	slot5 = {}

	if getProxy(PlayerProxy).getData(slot6).gold < slot2.use_gold * slot1 then
		table.insert(slot5, {
			59001,
			slot2.use_gold * slot1 - slot7.gold,
			slot2.use_gold * slot1
		})
	end

	if not getProxy(BagProxy).getData(slot8)[slot2.use_item] or slot9[slot2.use_item].count < slot2.number_1 * slot1 then
		slot10 = slot2.number_1 * slot1
		slot11 = slot2.use_item

		if slot9[slot2.use_item] then
			slot10 = slot2.number_1 * slot1 - slot9[slot11].count
		end

		table.insert(slot5, {
			slot11,
			slot10,
			slot2.number_1 * slot1
		})
	end

	if #slot5 > 0 then
		return false, i18n("ship_buildShip_error_notEnoughItem"), slot5
	end

	return true
end

slot0.canQuickBuildShip = function (slot0)
	if not getProxy(BuildShipProxy):getBuildShip(slot0) then
		return false, i18n("ship_buildShipImmediately_error_noSHip")
	end

	if slot2:isFinish() then
		return false, i18n("ship_buildShipImmediately_error_finished")
	end

	if getProxy(BagProxy):getItemById(ITEM_ID_EQUIP_QUICK_FINISH) or {
		count = 0
	}.count <= 0 then
		return false, i18n("ship_buildShip_error_notEnoughItem"), {
			{
				ITEM_ID_EQUIP_QUICK_FINISH,
				1 - slot4.count,
				1
			}
		}
	end

	return true
end

slot0.getPageFromPoolType = function (slot0)
	for slot5, slot6 in pairs(slot1) do
		if table.contains(slot6, slot0) then
			return slot5
		end
	end
end

return slot0
