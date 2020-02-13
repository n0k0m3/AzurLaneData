slot0 = class("SummerFeastNavigationAgent", require("view.main.NavalAcademyStudent"))

function slot0.Ctor(slot0, slot1)
	slot0.onTransEdge = nil

	uv0.super.Ctor(slot0, slot1)
end

function slot0.init(slot0)
end

slot0.normalSpeed = 150

function slot0.SetOnTransEdge(slot0, slot1)
	slot0.onTransEdge = slot1
end

function slot0.updateStudent(slot0, slot1)
	if slot1 == nil or slot1 == "" then
		setActive(slot0._go, false)

		return
	end

	setActive(slot0._go, true)

	if slot0.prefabName ~= slot1 then
		if not IsNil(slot0.model) then
			PoolMgr.GetInstance():ReturnSpineChar(slot0.prefab, slot0.model)
		end

		slot0.prefab = slot1
		slot0.currentPoint = slot0.pathFinder:getRandomPoint()
		slot2 = slot0.currentPoint.nexts
		slot0.targetPoint = slot0.pathFinder:getPoint(slot2[math.random(1, #slot2)])
		slot0._tf.anchoredPosition = Vector2.New(slot0.currentPoint.x, slot0.currentPoint.y)

		if slot0.onTransEdge and slot3 then
			slot0:onTransEdge(table.indexof(slot0.pathFinder.points, slot0.currentPoint), slot3)
		end

		PoolMgr.GetInstance():GetSpineChar(slot0.prefab, true, function (slot0)
			if uv0 ~= uv1.prefab then
				PoolMgr.GetInstance():ReturnSpineChar(uv0, slot0)

				return
			end

			uv1.model = slot0
			uv1.model.transform.localScale = Vector3(0.5, 0.5, 1)
			uv1.model.transform.localPosition = Vector3.zero

			uv1.model.transform:SetParent(uv1._tf, false)
			uv1.model.transform:SetSiblingIndex(1)

			uv1.anim = uv1.model:GetComponent(typeof(SpineAnimUI))

			uv1:updateState(uv2.ShipState.Idle)
		end)
	end

	slot0.prefabName = slot1
end

function slot0.updateLogic(slot0)
	slot0:clearLogic()

	if slot0.state == uv0.ShipState.Walk then
		LeanTween.value(slot0._go, 0, 1, Vector3.Distance(Vector3(slot0._tf.anchoredPosition.x, slot0._tf.anchoredPosition.y, 0), Vector3(slot0.targetPoint.x, slot0.targetPoint.y, 0)) / 15):setOnUpdate(System.Action_float(function (slot0)
			uv0._tf.anchoredPosition3D = Vector3.Lerp(uv1, uv2, slot0)
			slot1 = uv0._tf.localScale
			slot1.x = uv0.currentPoint.x < uv0.targetPoint.x and 1 or -1
			uv0._tf.localScale = slot1
		end)):setOnComplete(System.Action(function ()
			uv0.currentPoint = uv0.targetPoint
			slot0 = uv0.currentPoint.nexts
			uv0.targetPoint = uv0.pathFinder:getPoint(slot0[math.random(1, #slot0)])

			if uv0.onTransEdge then
				uv0:onTransEdge(table.indexof(uv0.pathFinder.points, uv0.currentPoint), slot1)
			end

			uv0:updateState(uv1.ShipState.Idle)
		end))

		return
	end

	if slot0.state == uv0.ShipState.Idle then
		if not slot0.currentPoint.isBan then
			slot0.idleTimer = Timer.New(function ()
				uv0:updateState(uv1.ShipState.Walk)
			end, math.random(10, 20), 1)

			slot0.idleTimer:Start()
		else
			slot0.idleTimer = Timer.New(function ()
				uv0:updateState(uv1.ShipState.Walk)
			end, 0.001, 1)

			slot0.idleTimer:Start()
		end
	elseif slot0.state == uv0.ShipState.Touch then
		slot0:onClickShip()
	end
end

return slot0