slot0 = class("MainUIMediator", import("..base.ContextMediator"))
slot0.OPEN_LEVEL = "MainUIMediator:OPEN_LEVEL"
slot0.OPEN_CHUANWUSTART = "MainUIMediator:OPEN_CHUANWUSTART"
slot0.OPEN_EQUIPDEV = "MainUIMediator:OPEN_EQUIPDEV"
slot0.OPEN_SETTINGS = "MainUIMediator:OPEN_SETTINGS"
slot0.OPEN_TASK = "MainUIMediator:OPEN_TASK"
slot0.OPEN_MAIL = "MainUIMediator:OPEN_MAIL"
slot0.GETBOAT = "MainUIMediator:GETBOAT"
slot0.OPEN_BIANDUI = "MainUIMediator:OPEN_BIANDUI"
slot0.OPEN_EQUIPSYNTHESIS = "MainUIMediator:OPEN_EQUIPSYNTHESIS"
slot0.OPEN_CHATVIEW = "MainUIMediator:OPEN_CHATVIEW"
slot0.OPEN_EQUIPSCENE = "MainUIMediator:OPEN_EQUIPSCENE"
slot0.OPEN_ARMORYSCENE = "MainUIMediator:OPEN_ARMORYSCENE"
slot0.TEST1 = "MainUIMediator:TEST1"
slot0.OPEN_SCHOOLSCENE = "MainUIMediator:OPEN_SCHOOLSCENE"
slot0.OPEN_BACKYARD = "MainUIMediator:OPEN_BACKYARD"
slot0.OPEN_PLAYER_INFO_LAYER = "MainUIMediator:OPEN_PLAYER_INFO_LAYER"
slot0.ON_SHIP_DETAIL = "MainUIMediator:ON_SHIP_DETAIL"
slot0.OPEN_COLLECT_SHIP = "MainUIMediator:OPEN_COLLECT_SHIP"
slot0.OPEN_ACTIVITY_PANEL = "MainUIMediator:OPEN_ACTIVITY_PANEL"
slot0.OPEN_EVENT = "MainUIMediator:OPEN_EVENT"
slot0.GO_SCENE = "MainUIMediator:GO_SCENE"
slot0.OPEN_FRIEND = "MainUIMediator.OPEN_FRIEND"
slot0.GO_MALL = "MainUIMediator:GO_MALL"
slot0.OPEN_COMMISSION_INFO = "MainUIMediator:OPEN_COMMISSION_INFO"
slot0.OPEN_RANK = "MainUIMediator:OPEN_RANK"
slot0.TMP_DEBUG = "MainUIMediator:TMP_DEBUG"
slot0.OPEN_GUILD = "MainUIMediator:OPEN_GUILD"
slot0.OPEN_MONTH_CARD_SET = "MainUIMediator:OPEN_MONTH_CARD_SET"
slot0.OPEN_SHOP_LAYER = "MainUIMediator:OPEN_SHOP_LAYER"
slot0.ON_ACTIVITY_MAP = "MainUIMediator:ON_ACTIVITY_MAP"
slot0.ON_ACTIVITY_PT = "MainUIMediator:ON_ACTIVITY_PT"
slot0.ON_VOTE = "MainUIMediator:ON_VOTE"
slot0.ON_TOUCHSHIP = "MainUIMediator:ON_TOUCHSHIP"
slot0.ON_LOTTERY = "MainUIMediator:ON_LOTTERY"
slot0.OPEN_SCROLL = "MainUIMediator:OPEN_SCROLL"
slot0.ON_TASK_OPEN = "MainUIMediator:ON_TASK_OPEN"
slot0.ON_ANNIVERSARY = "MainUIMediator:ON_ANNIVERSARY"
slot0.OPEN_SNAPSHOT = "MainUIMediator:OPEN_SNAPSHOT"
slot0.OPEN_TRANINGCAMP = "MainUIMediator:OPEN_TRANINGCAMP"
slot0.OPEN_COMMANDER = "MainUIMediator:OPEN_COMMANDER"
slot0.OPEN_BULLETINBOARD = "MainUIMediator:OPEN_BULLETINBOARD"
slot0.OPEN_ESCORT = "event open escort"
slot0.ON_VOTE_BOOK = "event on vote book"
slot0.MINIGAME_OPERATION = "MINIGAME_OPERATION"
slot0.OPEN_INS = "MainUIMediator:OPEN_INS"
slot0.OPEN_TECHNOLOGY = "MainUIMediator:OPEN_TECHNOLOGY"
slot0.ON_BOSS_BATTLE = "MainUIMediator:ON_BOSS_BATTLE"
slot0.ON_MONOPOLY = "MainUIMediator:ON_MONOPOLY"
slot0.ON_BLACKWHITE = "MainUIMediator:ON_BLACKWHITE"
slot0.ON_MEMORYBOOK = "MainUIMediator:ON_MEMORYBOOK"
slot0.GO_MINI_GAME = "MainUIMediator.GO_MINI_GAME"

function slot0.register(slot0)
	slot1 = getProxy(BayProxy)

	slot1:setSelectShipId(nil)
	slot0.viewComponent:setShips(slot1:getRawData())

	slot4 = getProxy(PlayerProxy):getData()

	slot0.viewComponent:setFlagShip(slot1:getShipById(slot4.character))
	slot0.viewComponent:updatePlayerInfo(slot4)

	if ENABLE_TEST_OSS then
		slot0:bind("TEST_OSS", function (slot0)
			uv0:addSubLayers(Context.New({
				viewComponent = TestUpload2ResServerLayer,
				mediator = TestUpload2ResServerMediator
			}))
		end)
	end

	slot0:updateCourseNotices(false)

	slot6 = getProxy(TaskProxy)
	slot10 = _.any(getProxy(ActivityProxy):getActivitiesByType(ActivityConst.ACTIVITY_TYPE_TASK_LIST), function (slot0)
		slot2 = slot0:getTaskShip() and uv0:getAcademyTask(slot1.groupId) or nil
		slot3 = uv0:getTaskById(slot2)

		return slot1 and (slot2 and not slot3 and not uv0:getFinishTaskById(slot2) or slot3 and slot3:isFinish())
	end)
	slot11 = false

	if getProxy(NavalAcademyProxy):getCourse():inClass() and AcademyCourse.MaxStudyTime <= pg.TimeMgr.GetInstance():GetServerTime() - slot12.timestamp then
		slot11 = true
	end

	if slot10 or slot11 or getProxy(CollectionProxy):unclaimTrophyCount() > 0 then
		slot0:updateCourseNotices()
	end

	slot14 = slot7:getBuffList()

	if slot7:getActivityByType(ActivityConst.ACTIVITY_TYPE_MINIGAME) and not slot15:isEnd() then
		for slot21, slot22 in pairs(getProxy(PlayerProxy):getData().buff_list) do
			if pg.TimeMgr:GetInstance():GetServerTime() < slot22.timestamp and table.contains(slot15:getConfig("config_client").bufflist, slot22.id) then
				table.insert(slot14, ActivityBuff.New(slot15.id, slot22.id, slot22.timestamp))
			end
		end
	end

	slot0.viewComponent:updateBuffList(slot14)
	slot0:updateTaskNotices()
	slot0:updateBackYardNotices()
	slot0:updateMailAttachmentNotices()
	slot0:updateBuildNotices()
	slot0:navalAcademyNotices()
	slot0:updateAttireTip()
	slot0:updateCollectNotices()
	slot0:updateChat()
	slot0:updateFriendNotification()
	slot0:updateBanner()
	slot0:updateEvent()
	slot0:updateCommissionNotices()
	slot0:updateSettingsNotice()
	slot0:updateExSkinNotice()
	slot0:updateCommanderNotices(getProxy(CommanderProxy):haveFinishedBox())
	slot0:bind(uv0.ON_MONOPOLY, function (slot0)
		uv0:addSubLayers(Context.New({
			mediator = MonopolyMediator,
			viewComponent = MonopolyLayer
		}))
	end)
	slot0:bind(uv0.OPEN_COMMANDER, function (slot0)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.COMMANDROOM)
	end)
	slot0.viewComponent:updateTraningCampBtn()
	slot0.viewComponent:updateRefluxBtn()
	slot0:bind(uv0.GO_MINI_GAME, function (slot0, slot1)
		pg.m02:sendNotification(GAME.GO_MINI_GAME, slot1)
	end)
	slot0:bind(uv0.OPEN_TRANINGCAMP, function ()
		uv0:sendNotification(GAME.GO_SCENE, SCENE.TRAININGCAMP)
	end)
	slot0:bind(uv0.ON_BOSS_BATTLE, function ()
		uv0:sendNotification(GAME.GO_SCENE, SCENE.ACT_BOSS_BATTLE, {
			showAni = true
		})
	end)
	slot0:bind(uv0.ON_TASK_OPEN, function (slot0, slot1)
		if not getProxy(TaskProxy):isFinishPrevTasks(slot1) then
			return
		end

		uv0:sendNotification(GAME.TRIGGER_TASK, slot1)
	end)
	slot0:bind(uv0.ON_SHIP_DETAIL, function (slot0, slot1)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.SHIPINFO, {
			shipId = slot1.id
		})
	end)
	slot0:bind(uv0.ON_VOTE_BOOK, function (slot0)
		uv0:addSubLayers(Context.New({
			mediator = VoteOrderBookMediator,
			viewComponent = VoteOrderBookLayer
		}))
	end)
	slot0:bind(uv0.OPEN_CHUANWUSTART, function (slot0, slot1)
		if slot1 == DockyardScene.MODE_OVERVIEW then
			uv0:sendNotification(GAME.GO_SCENE, SCENE.DOCKYARD, {
				showTagNoBlock = true,
				mode = slot1,
				flags = {
					inEvent = true,
					inFleet = true,
					inClass = true,
					inActivity = true,
					inBackyard = true
				}
			})
		elseif slot1 == DockyardScene.MODE_DESTROY then
			uv0:sendNotification(GAME.GO_SCENE, SCENE.DOCKYARD, {
				blockLock = true,
				mode = slot1,
				leftTopInfo = i18n("word_destroy"),
				onShip = Ship.canDestroyShip
			})
		end
	end)
	slot0:bind(uv0.OPEN_LEVEL, function (slot0)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.LEVEL, {
			chapterId = getProxy(ChapterProxy):getActiveChapter() and slot2.id,
			mapIdx = slot2 and slot2:getConfig("map")
		})
	end)
	slot0:bind(uv0.OPEN_BIANDUI, function (slot0, slot1)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.BIANDUI, {
			fleetId = slot1
		})
	end)
	slot0:bind(uv0.OPEN_INS, function (slot0)
		uv0:addSubLayers(Context.New({
			viewComponent = InstagramLayer,
			mediator = InstagramMediator
		}))
	end)
	slot0:bind(uv0.OPEN_BACKYARD, function (slot0)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.BACKYARD, {
			fromMain = true
		})
	end)
	slot0:bind(uv0.OPEN_GUILD, function (slot0)
		if getProxy(PlayerProxy) and slot1:getData() then
			slot3, slot4 = pg.SystemOpenMgr.GetInstance():isOpenSystem(slot2.level, "NewGuildMediator")

			if not slot3 then
				pg.TipsMgr.GetInstance():ShowTips(slot4)

				return
			end
		end

		if getProxy(GuildProxy):getData() then
			uv0:sendNotification(GAME.GO_SCENE, SCENE.GUILD)
		else
			uv0:sendNotification(GAME.GO_SCENE, SCENE.NEWGUILD)
		end
	end)
	slot0:bind(uv0.OPEN_COLLECT_SHIP, function (slot0)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.COLLECTSHIP)
	end)
	slot0:bind(uv0.OPEN_ARMORYSCENE, function (slot0)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.EQUIPSCENE)
	end)
	slot0:bind(uv0.GETBOAT, function (slot0)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.GETBOAT)
	end)
	slot0:bind(uv0.OPEN_MAIL, function (slot0)
		uv0:addSubLayers(Context.New({
			mediator = MailMediator,
			viewComponent = MailLayer,
			onRemoved = function ()
				uv0.viewComponent:enablePartialBlur()
			end
		}))
	end)
	slot0:bind(uv0.TMP_DEBUG, function (slot0)
		uv0:sendNotification(GAME.BEGIN_STAGE, {
			system = SYSTEM_DEBUG
		})
	end)
	slot0:bind(uv0.OPEN_TASK, function (slot0)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.TASK)
	end)
	slot0:bind(uv0.OPEN_CHATVIEW, function (slot0)
		uv0:addSubLayers(Context.New({
			mediator = NotificationMediator,
			viewComponent = NotificationLayer,
			onRemoved = function ()
				uv0:updateChat()
				uv0.viewComponent:enablePartialBlur()
			end
		}))
	end)
	slot0:bind(uv0.OPEN_SCHOOLSCENE, function (slot0)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.NAVALACADEMYSCENE)
	end)
	slot0:bind(uv0.OPEN_SETTINGS, function (slot0)
		uv0.CanUpdateCV = false

		uv1:sendNotification(GAME.GO_SCENE, SCENE.SETTINGS)
	end)
	slot0:bind(uv0.OPEN_RANK, function (slot0)
		if getProxy(PlayerProxy) and slot1:getData() then
			slot3, slot4 = pg.SystemOpenMgr.GetInstance():isOpenSystem(slot2.level, "BillboardMediator")

			if not slot3 then
				pg.TipsMgr.GetInstance():ShowTips(slot4)

				return
			end
		end

		uv0:sendNotification(GAME.GO_SCENE, SCENE.BILLBOARD, {
			index = PowerRank.TYPE_POWER
		})
	end)
	slot0:bind(uv0.OPEN_PLAYER_INFO_LAYER, function (slot0)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.PLAYER_INFO)
	end)
	slot0:bind(uv0.OPEN_ACTIVITY_PANEL, function (slot0, slot1)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.ACTIVITY, {
			id = slot1
		})
	end)
	slot0:bind(uv0.OPEN_FRIEND, function ()
		uv0:sendNotification(GAME.GO_SCENE, SCENE.FRIEND)
	end)
	slot0:bind(uv0.GO_MALL, function ()
		uv0:sendNotification(GAME.GO_SCENE, SCENE.CHARGE, {
			wrap = ChargeScene.TYPE_MENU
		})
	end)
	slot0:bind(uv0.OPEN_EVENT, function (slot0)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.EVENT)
	end)
	slot0:bind(uv0.GO_SCENE, function (slot0, slot1)
		uv0:sendNotification(GAME.GO_SCENE, slot1[1], slot1[2])
	end)
	slot0:bind(uv0.OPEN_COMMISSION_INFO, function (slot0)
		uv0:addSubLayers(Context.New({
			viewComponent = CommissionInfoLayer,
			mediator = CommissionInfoMediator,
			onRemoved = function ()
				uv0.viewComponent:enablePartialBlur()
			end
		}))
	end)
	slot0:bind(uv0.OPEN_SHOP_LAYER, function (slot0, slot1)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.SHOP, {
			warp = slot1 or NewShopsScene.TYPE_ACTIVITY
		})
	end)
	slot0:bind(uv0.OPEN_MONTH_CARD_SET, function (slot0)
		if getProxy(PlayerProxy):getRawData():getCardById(VipCard.MONTH) and not slot3:isExpire() then
			uv0:addSubLayers(Context.New({
				viewComponent = MonthCardSetLayer,
				mediator = MonthCardSetMediator
			}))
		end
	end)
	slot0:bind(uv0.OPEN_SNAPSHOT, function (slot0, slot1)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.SNAPSHOT, slot1)
	end)
	slot0:bind(uv0.OPEN_BULLETINBOARD, function (slot0, slot1)
		if #getProxy(ServerNoticeProxy):getServerNotices(false) > 0 then
			uv0:addSubLayers(Context.New({
				mediator = BulletinBoardMediator,
				viewComponent = BulletinBoardLayer,
				onRemoved = function ()
					uv0.viewComponent:enablePartialBlur()
				end
			}))
		else
			pg.TipsMgr.GetInstance():ShowTips(i18n("no_notice_tip"))
		end
	end)
	slot0:bind(uv0.ON_BLACKWHITE, function ()
		uv0.viewComponent:disableTraningCampAndRefluxTip()
		uv0:addSubLayers(Context.New({
			viewComponent = BlackWhiteGridLayer,
			mediator = BlackWhiteGridMediator
		}))
	end)
	slot0:bind(uv0.ON_MEMORYBOOK, function ()
		uv0:addSubLayers(Context.New({
			viewComponent = MemoryBookLayer,
			mediator = MemoryBookMediator
		}))
	end)
	slot0:bind(uv0.ON_ACTIVITY_MAP, function (slot0, slot1)
		slot2, slot3 = getProxy(ChapterProxy):getLastMapForActivity()

		if not slot2 or not getProxy(ActivityProxy):getActivityById(pg.expedition_data_by_map[slot2].on_activity) or slot4:isEnd() then
			pg.TipsMgr.GetInstance():ShowTips(i18n("common_activity_end"))

			return
		end

		uv0:sendNotification(GAME.GO_SCENE, SCENE.LEVEL, {
			chapterId = slot3,
			mapIdx = slot2
		})
	end)
	slot0:bind(uv0.ON_ACTIVITY_PT, function (slot0, slot1)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.ACTIVITY, {
			id = slot1
		})
	end)
	slot0:bind(uv0.ON_ANNIVERSARY, function ()
		uv0:sendNotification(GAME.GO_SCENE, SCENE.ANNIVERSARY)
	end)
	slot0:bind(uv0.ON_LOTTERY, function (slot0, slot1)
		uv0:addSubLayers(Context.New({
			viewComponent = LotteryLayer,
			mediator = LotteryMediator,
			data = {
				activityId = slot1
			}
		}))
	end)
	slot0:bind(uv0.OPEN_SCROLL, function (slot0, slot1)
		uv0:addSubLayers(Context.New({
			mediator = InvestigationMediator,
			viewComponent = InvestigationLayer,
			data = {
				activityId = slot1
			}
		}))
	end)
	slot0:bind(uv0.OPEN_TECHNOLOGY, function (slot0)
		uv0:sendNotification(GAME.GO_SCENE, SCENE.SELTECHNOLOGY)
	end)
	slot0:bind(uv0.ON_VOTE, function ()
		if getProxy(ActivityProxy):GetVoteBookActivty() then
			uv0:sendNotification(GAME.GO_SCENE, SCENE.ACTIVITY, {
				id = slot1.id
			})
		end
	end)
	pg.SystemOpenMgr.GetInstance():notification(slot4.level)

	if getProxy(GuildProxy):getData() then
		if (slot18:getDutyByMemberId(slot4.id) == GuildMember.DUTY_COMMANDER or slot19 == GuildMember.DUTY_DEPUTY_COMMANDER) and not slot17:getRequests() then
			slot0:sendNotification(GAME.GUILD_GET_REQUEST_LIST, slot18.id)
		end

		slot0:updateGuildNotices()
	end

	slot0:bind(uv0.MINIGAME_OPERATION, function (slot0, slot1, slot2, slot3)
		uv0:sendNotification(GAME.SEND_MINI_GAME_OP, {
			hubid = slot1,
			cmd = slot2,
			args1 = slot3
		})
	end)
	slot0:bind(uv0.ON_TOUCHSHIP, function (slot0, slot1)
		slot2 = getProxy(TaskProxy)

		for slot7, slot8 in ipairs(pg.task_data_trigger.all) do
			if pg.task_data_trigger[slot8].group_id == slot1 then
				slot11 = slot9.args[1][2]

				if getProxy(ActivityProxy):getActivityById(slot9.activity_id) and not slot12:isEnd() and not slot2:getTaskById(slot11) and not slot2:getFinishTaskById(slot11) then
					uv0.viewComponent.chatFlag = nil
					uv0.viewComponent._lastChatTween = nil

					uv0:sendNotification(GAME.ACTIVITY_OPERATION, {
						cmd = 1,
						activity_id = slot10
					})

					return
				end
			end
		end
	end)
	slot0:bind(uv0.OPEN_ESCORT, function ()
		slot2, slot3 = pg.SystemOpenMgr.GetInstance():isOpenSystem(getProxy(PlayerProxy):getRawData().level, "Escort")

		if not slot2 then
			pg.TipsMgr.GetInstance():ShowTips(slot3)

			return
		end

		uv0:escortHandler()
	end)

	if getProxy(MailProxy).total >= 1000 then
		pg.TipsMgr.GetInstance():ShowTips(i18n("warning_mail_max_2"))
	elseif slot19.total >= 950 then
		pg.TipsMgr.GetInstance():ShowTips(i18n("warning_mail_max_1", slot19.total))
	end

	slot0.viewComponent:updateVoteBtn(slot7:GetVoteActivity(), getProxy(VoteProxy):GetOrderBook())
	slot0.viewComponent:ResetActivityBtns()
end

function slot0.onBluePrintNotify(slot0)
	slot3, slot4 = pg.SystemOpenMgr.GetInstance():isOpenSystem(getProxy(PlayerProxy):getData().level, "TechnologyMediator")

	slot0.viewComponent:notifyTechnology(OPEN_TEC_TREE_SYSTEM and getProxy(TechnologyNationProxy):getShowRedPointTag() or (SelectTechnologyMediator.onBlueprintNotify() or SelectTechnologyMediator.onTechnologyNotify()) and slot3)

	if getProxy(TechnologyProxy):getBuildingBluePrint() then
		slot9 = false

		for slot13, slot14 in ipairs(slot7:getTaskIds()) do
			if slot7:getTaskOpenTimeStamp(slot14) <= pg.TimeMgr.GetInstance():GetServerTime() then
				if not (getProxy(TaskProxy):getTaskById(slot14) or getProxy(TaskProxy):getFinishTaskById(slot14)) and getProxy(TaskProxy):isFinishPrevTasks(slot14) then
					slot9 = true

					slot0.viewComponent:emit(uv0.ON_TASK_OPEN, slot14)
				end
			end
		end

		if slot9 and not uv0.DontNotifyBluePrintTaskAgain then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				content = i18n("blueprint_task_update_tip", slot7:getShipVO():getConfig("name")),
				weight = LayerWeightConst.SECOND_LAYER,
				onYes = function ()
					uv0:sendNotification(GAME.GO_SCENE, SCENE.SHIPBLUEPRINT)
				end,
				onNo = function ()
					uv0.DontNotifyBluePrintTaskAgain = true
				end
			})
		end
	end
end

function slot0.updateAttireTip(slot0)
	slot0.viewComponent:updateAttireBtn(_.any(getProxy(AttireProxy):needTip(), function (slot0)
		return slot0 == true
	end))
end

function slot0.navalAcademyNotices(slot0)
	getProxy(NavalAcademyProxy):notification()
end

function slot0.updateTaskNotices(slot0)
	slot1 = getProxy(TaskProxy)

	slot0.viewComponent:updateTaskNotices(slot1:getCanReceiveCount(), slot1:getNotFinishCount())
end

function slot0.updateCourseNotices(slot0, slot1)
	slot0.viewComponent:updateLessonNotices(slot1)
end

function slot0.updateCommanderNotices(slot0, slot1)
	slot0.viewComponent:updateCommanderNotices(slot1)
end

function slot0.updateGuildNotices(slot0)
	slot1 = getProxy(GuildProxy)

	slot0.viewComponent:updateGuildNotices(slot1.eventTip or slot1:isNoticesApply())
end

function slot0.updateCommissionNotices(slot0)
	slot3 = getProxy(NavalAcademyProxy)
	slot5 = getProxy(PlayerProxy):getData()

	slot0.viewComponent:updateCommissionNotices(getProxy(EventProxy):hasFinishState() or slot3:GetOilVO():isCommissionNotify(slot5.oilField) or slot3:GetGoldVO():isCommissionNotify(slot5.goldField))
end

function slot0.updateBackYardNotices(slot0)
	slot1 = getProxy(DormProxy)

	slot0.viewComponent:updateBackYardNotices(slot1:isLackOfFood() or slot1:havePopEvent())
end

function slot0.updateMailAttachmentNotices(slot0, slot1)
	slot0.viewComponent:updateMailAttachmentCount(getProxy(MailProxy):GetAttachmentCount())
end

function slot0.updateFriendNotification(slot0)
	slot0.viewComponent:friendNotification(getProxy(NotificationProxy):getRequestCount() > 0 or getProxy(FriendProxy):getNewMsgCount() > 0)
end

function slot0.updateBuildNotices(slot0)
	slot0.viewComponent:updateBuildNotices(getProxy(BuildShipProxy):getFinishCount())
end

function slot0.updateCollectNotices(slot0)
	slot0.viewComponent:updateCollectNotices(getProxy(CollectionProxy):hasFinish())
end

function slot0.updateChat(slot0)
	slot1 = {}

	if not getProxy(ChatProxy) then
		return
	end

	_.each(slot2:getRawData(), function (slot0)
		table.insert(uv0, slot0)
	end)

	if getProxy(GuildProxy):getRawData() then
		_.each(slot3:getChatMsgs(), function (slot0)
			table.insert(uv0, slot0)
		end)
	end

	_.each(getProxy(FriendProxy):getCacheMsgList(), function (slot0)
		table.insert(uv0, slot0)
	end)

	slot5 = 4
	slot6 = NotificationLayer.ChannelBits.recv
	slot7 = bit.lshift(1, ChatConst.ChannelAll)
	slot1 = _.filter(_(slot1):chain():filter(function (slot0)
		return not uv0:isInBlackList(slot0.playerId)
	end):sort(function (slot0, slot1)
		return slot0.timestamp < slot1.timestamp
	end):value(), function (slot0)
		return uv0 == uv1 or bit.band(uv0, bit.lshift(1, slot0.type)) > 0
	end)

	slot0.viewComponent:updateChat(_.slice(slot1, #slot1 - slot5 + 1, slot5))
end

function slot0.updateBanner(slot0)
	slot0.viewComponent:updateBanner(getProxy(ActivityProxy):getBannerDisplays())
end

function slot0.updateEvent(slot0)
	slot0.viewComponent:updateEvent(getProxy(EventProxy))
end

function slot0.updateSeverNotices(slot0)
	slot1 = getProxy(ServerNoticeProxy)

	slot0.viewComponent:updateSeverNotices(#slot1:getServerNotices(false) > 0 and not slot1:isStopMainTip())
end

function slot0.updateSettingsNotice(slot0)
	slot0.viewComponent:updateSettingsNotice(uv0.CanUpdateCV, "CVupdate")
	slot0.viewComponent:updateSettingsNotice(PlayerPrefs.GetFloat("firstIntoOtherPanel") == 0, "SecondaryPassword")
end

function slot0.updateExSkinNotice(slot0)
	slot0.viewComponent:updateExSkinBtn(_.select(_.values(getProxy(ShipSkinProxy):getRawData()), function (slot0)
		return slot0:isExpireType() and not slot0:isExpired()
	end))
end

function slot0.updateExSkinOverDue(slot0)
	if #getProxy(ShipSkinProxy):getOverDueSkins() > 0 then
		slot0.viewComponent:showOverDueExSkins(slot2)
	end
end

function slot0.listNotificationInterests(slot0)
	return {
		PlayerProxy.UPDATED,
		BayProxy.SHIP_REMOVED,
		FleetProxy.FLEET_RENAMED,
		NotificationProxy.FRIEND_REQUEST_ADDED,
		NotificationProxy.FRIEND_REQUEST_REMOVED,
		FriendProxy.FRIEND_NEW_MSG,
		FriendProxy.FRIEND_UPDATED,
		TaskProxy.TASK_UPDATED,
		MailProxy.UPDATE_ATTACHMENT_COUNT,
		BuildShipProxy.TIMEUP,
		NavalAcademyProxy.BUILDING_FINISH,
		CollectionProxy.TROPHY_UPDATE,
		GAME.CHANGE_PLAYER_ICON_DONE,
		ChatProxy.NEW_MSG,
		GAME.LOAD_SCENE_DONE,
		GAME.BEGIN_STAGE_DONE,
		GAME.GUIDE_FINISH,
		ChapterProxy.CHAPTER_TIMESUP,
		GAME.EVENT_LIST_UPDATE,
		GAME.GUILD_GET_REQUEST_LIST_DONE,
		GuildProxy.REQUEST_DELETED,
		GuildProxy.REQUEST_COUNT_UPDATED,
		ServerNoticeProxy.SERVER_NOTICES_UPDATE,
		DormProxy.INIMACY_AND_MONEY_ADD,
		GAME.REMOVE_LAYERS,
		LotteryMediator.OPEN,
		GAME.BOSS_EVENT_START_DONE,
		GuildProxy.NEW_MSG_ADDED,
		ActivityProxy.ACTIVITY_OPERATION_DONE,
		TaskProxy.TASK_ADDED,
		GAME.CHAPTER_OP_DONE,
		CommanderProxy.COMMANDER_BOX_FINISHED,
		GAME.FETCH_NPC_SHIP_DONE,
		GAME.MAINUI_ACT_BTN_DONE,
		NewShipMediator.OPEN,
		GAME.OPEN_MSGBOX_DONE,
		GAME.CLOSE_MSGBOX_DONE,
		TechnologyConst.UPDATE_REDPOINT_ON_TOP,
		GAME.HANDLE_OVERDUE_ATTIRE_DONE,
		GAME.ESCORT_FETCH_DONE,
		PERMISSION_GRANTED,
		PERMISSION_REJECT,
		PERMISSION_NEVER_REMIND,
		MiniGameProxy.ON_HUB_DATA_UPDATE,
		VoteProxy.VOTE_ORDER_BOOK_DELETE,
		VoteProxy.VOTE_ORDER_BOOK_UPDATE,
		GAME.SEND_MINI_GAME_OP_DONE,
		GAME.ON_OPEN_INS_LAYER,
		PileGameConst.OPEN_PILEGAME
	}
end

function slot0.handleNotification(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == PlayerProxy.UPDATED then
		slot0.viewComponent:updatePlayerInfo(slot3)
		slot3:display()
		slot0:updateCommissionNotices()
	elseif slot2 == PileGameConst.OPEN_PILEGAME then
		slot0:addSubLayers(Context.New({
			viewComponent = PileLayer,
			mediator = PileMediator
		}))
	elseif slot2 == GAME.ON_OPEN_INS_LAYER then
		slot0.viewComponent:emit(uv0.OPEN_INS)
	elseif slot2 == BayProxy.SHIP_REMOVED then
		slot3:display()
	elseif slot2 == FleetProxy.FLEET_RENAMED then
		slot3:display()
	elseif slot2 == NotificationProxy.FRIEND_REQUEST_ADDED or slot2 == NotificationProxy.FRIEND_REQUEST_REMOVED or slot2 == FriendProxy.FRIEND_NEW_MSG or slot2 == FriendProxy.FRIEND_UPDATED then
		slot0:updateFriendNotification()
		slot0:updateChat()
	elseif slot2 == TaskProxy.TASK_UPDATED then
		slot0:updateTaskNotices()
	elseif slot2 == DormProxy.INIMACY_AND_MONEY_ADD then
		slot0:updateBackYardNotices()
	elseif slot2 == MailProxy.UPDATE_ATTACHMENT_COUNT then
		slot0:updateMailAttachmentNotices()
	elseif slot2 == BuildShipProxy.TIMEUP then
		slot0:updateBuildNotices()
	elseif slot2 == NavalAcademyProxy.BUILDING_FINISH then
		slot0:updateCourseNotices()
	elseif slot2 == CollectionProxy.TROPHY_UPDATE then
		if getProxy(CollectionProxy):unclaimTrophyCount() > 0 then
			slot0:updateCourseNotices()
		end
	elseif slot2 == GAME.CHANGE_PLAYER_ICON_DONE then
		slot0.viewComponent:setFlagShip(slot3.ship)
	elseif slot2 == ChatProxy.NEW_MSG or slot2 == GuildProxy.NEW_MSG_ADDED then
		slot0:updateChat()
	elseif slot2 == GAME.LOAD_SCENE_DONE or slot2 == GAME.GUIDE_FINISH then
		if not LOCK_TECHNOLOGY and pg.SystemOpenMgr.GetInstance():isOpenSystem(getProxy(PlayerProxy):getData().level, "TechnologyMediator") then
			if Application.isEditor and not ENABLE_GUIDE then
				slot0:handleEnterMainUI()

				return
			end

			if not pg.StoryMgr.GetInstance():IsPlayed("FANGAN1") then
				slot0:sendNotification(GAME.GO_SCENE, SCENE.SELTECHNOLOGY)
				pg.StoryMgr.GetInstance():Play("FANGAN1", function ()
				end, true)
			else
				slot0:handleEnterMainUI()
			end
		else
			slot0:handleEnterMainUI()
		end
	elseif slot2 == GAME.BEGIN_STAGE_DONE then
		slot0:sendNotification(GAME.GO_SCENE, SCENE.COMBATLOAD, slot3)
	elseif slot2 == ChapterProxy.CHAPTER_TIMESUP then
		slot0:onChapterTimeUp()
	elseif slot2 == GAME.EVENT_LIST_UPDATE then
		slot0:updateEvent()
		slot0:updateCommissionNotices()
	elseif slot2 == GAME.GUILD_GET_REQUEST_LIST_DONE or slot2 == GuildProxy.REQUEST_DELETED or slot2 == GuildProxy.REQUEST_COUNT_UPDATED then
		slot0:updateGuildNotices()
	elseif slot2 == ServerNoticeProxy.SERVER_NOTICES_UPDATE then
		slot0:updateSeverNotices()
	elseif slot2 == LotteryMediator.OPEN then
		slot0.viewComponent:activeEffect(false)
	elseif slot2 == GAME.REMOVE_LAYERS then
		if slot3.context.mediator == LotteryMediator then
			slot0.viewComponent:activeEffect(true)

			if slot3.context.mediator == LotteryMediator then
				slot0.viewComponent:UpdateActivityBtn("activity_actpool")
			end
		elseif slot3.context.mediator == LevelDifficultySelMediator then
			setActive(slot0.viewComponent.effectTF, slot0.viewComponent.flagShip and slot0.viewComponent.flagShip.propose)
		elseif slot3.context.mediator == BulletinBoardMediator then
			slot0:tryPlayGuide()
		elseif slot3.context.mediator == CommissionInfoMediator then
			slot0.viewComponent:resetCommissionBtn()
		elseif slot3.context.mediator == InstagramMediator then
			slot0.viewComponent:UpdateActivityBtn("activity_ins")
		end

		slot0.viewComponent:updateTraningCampBtn()
		slot0.viewComponent:updateRefluxBtn()
	elseif GAME.BOSS_EVENT_START_DONE == slot2 then
		slot0:updateGuildNotices()
	elseif ActivityProxy.ACTIVITY_OPERATION_DONE == slot2 then
		-- Nothing
	elseif TaskProxy.TASK_ADDED == slot2 then
		slot0.viewComponent:stopCurVoice()
	elseif slot2 == GAME.CHAPTER_OP_DONE then
		if slot3.items and #slot3.items > 0 then
			slot0.viewComponent:emit(BaseUI.ON_AWARD, {
				items = slot3.items
			}, slot0.retreateMapType == Map.ESCORT and AwardInfoLayer.TITLE.ESCORT or nil)
		end
	elseif slot2 == CommanderProxy.COMMANDER_BOX_FINISHED then
		slot0:updateCommanderNotices(true)
	elseif slot2 == GAME.FETCH_NPC_SHIP_DONE then
		slot0.viewComponent:emit(BaseUI.ON_ACHIEVE, slot3.items, slot3.callback)
	elseif slot2 == GAME.MAINUI_ACT_BTN_DONE then
		slot0.viewComponent:notifyActivitySummary(slot3.cnt, slot3.priority)
	elseif slot2 == NewShipMediator.OPEN then
		slot0.viewComponent:stopCurVoice()
	elseif slot2 == GAME.OPEN_MSGBOX_DONE then
		-- Nothing
	elseif slot2 == GAME.CLOSE_MSGBOX_DONE then
		-- Nothing
	elseif slot2 == TechnologyConst.UPDATE_REDPOINT_ON_TOP then
		slot0:onBluePrintNotify()
	elseif slot2 == GAME.HANDLE_OVERDUE_ATTIRE_DONE then
		slot0.viewComponent:showOverDueAttire(slot3)
	elseif slot2 == GAME.ESCORT_FETCH_DONE then
		slot0:escortHandler()
	elseif PERMISSION_GRANTED == slot2 then
		if slot3 == ANDROID_CAMERA_PERMISSION then
			slot0.viewComponent:openSnapShot()
		end
	elseif PERMISSION_REJECT == slot2 then
		if slot3 == ANDROID_CAMERA_PERMISSION then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				content = i18n("apply_permission_camera_tip3"),
				onYes = function ()
					ApplyPermission({
						ANDROID_CAMERA_PERMISSION
					})
				end
			})
		end
	elseif PERMISSION_NEVER_REMIND == slot2 then
		if slot3 == ANDROID_CAMERA_PERMISSION then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				content = i18n("apply_permission_camera_tip2"),
				onYes = function ()
					OpenDetailSetting()
				end
			})
		end
	elseif slot2 == MiniGameProxy.ON_HUB_DATA_UPDATE then
		slot0.viewComponent:UpdateActivityBtn("activity_newyear")
	elseif slot2 == VoteProxy.VOTE_ORDER_BOOK_DELETE or VoteProxy.VOTE_ORDER_BOOK_UPDATE == slot2 then
		slot0.viewComponent:updateVoteBookBtn(slot3)
	elseif slot2 == GAME.SEND_MINI_GAME_OP_DONE then
		slot4 = slot3.argList

		if slot4[1] == 3 and slot4[2] == 1 then
			slot0.viewComponent:UpdateActivityBtn("activity_newyear")
		end
	end
end

function slot0.onChapterTimeUp(slot0)
	if getProxy(ChapterProxy):getActiveChapter() and not slot2:inWartime() then
		slot0.retreateMapType = slot2:getMapType()

		slot0:sendNotification(GAME.CHAPTER_OP, {
			type = ChapterConst.OpRetreat
		})
		pg.TipsMgr.GetInstance():ShowTips(i18n("levelScene_chapter_timeout"))
	end
end

function slot0.tryShowItemIconChnageNotice(slot0, slot1)
	if PlayerPrefs.GetInt("ItemIconChange_" .. getProxy(PlayerProxy):getRawData().id, 0) == 0 then
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			modal = true,
			hideNo = true,
			hideClose = true,
			type = MSGBOX_TYPE_JUST_FOR_SHOW,
			title = pg.MsgboxMgr.TITLE_INFORMATION,
			weight = LayerWeightConst.TOP_LAYER,
			onClose = function ()
				uv0()
				PlayerPrefs.SetInt("ItemIconChange_" .. uv1, 1)
			end,
			onYes = function ()
				PlayerPrefs.SetInt("ItemIconChange_" .. uv0, 1)
				uv1()
			end
		})
	else
		slot1()
	end
end

function slot0.GetMilitaryExerciseInfo(slot0, slot1)
	if not getProxy(MilitaryExerciseProxy):getData() then
		slot0:sendNotification(GAME.GET_SEASON_INFO, {
			callback = function ()
				if uv0 then
					onNextTick(uv0)
				end
			end
		})
	elseif slot1 then
		onNextTick(slot1)
	end
end

function slot0.handleEnterMainUI(slot0)
	slot0:updateSeverNotices()

	if pg.SeriesGuideMgr.GetInstance():isEnd() then
		slot1 = nil

		function slot2()
			if coroutine.status(uv0) == "suspended" then
				slot0, slot1 = coroutine.resume(uv0)
			end
		end

		coroutine.resume(coroutine.create(function ()
			uv0.viewComponent:PlayBGM()
			uv0:GetMilitaryExerciseInfo(uv1)
			coroutine.yield()
			uv0:playStroys(function ()
				onNextTick(uv0)
			end)
			coroutine.yield()
			uv0:handleReturnAwardAct()
			uv0:accepetActivityTask()
			uv0:tryRequestColoring()

			if getProxy(ActivityProxy):findNextAutoActivity() then
				uv0:sendNotification(GAME.GO_SCENE, SCENE.ACTIVITY)

				return
			end

			if slot0:findRefluxAutoActivity() then
				uv0:sendNotification(GAME.GO_SCENE, SCENE.REFLUX)

				return
			end

			if #getProxy(ServerNoticeProxy):getServerNotices(false) > 0 and not slot3:getStopRemind() and not slot3.__autoPopped then
				slot3.__autoPopped = true

				uv0:addSubLayers(Context.New({
					mediator = BulletinBoardMediator,
					viewComponent = BulletinBoardLayer
				}))
			elseif uv0.contextData.subContext then
				uv0:addSubLayers(uv0.contextData.subContext)

				uv0.contextData.subContext = nil
			else
				uv0:tryPlayGuide()
			end

			uv0:onChapterTimeUp()

			if not LOCK_SUBMARINE then
				uv0:tryRequestMainSub()
			end

			uv0:tryRequestVersion()
			uv0:checkCV()
			uv0:storyStorageFix()
			uv0:onBluePrintNotify()
			getProxy(TaskProxy):pushAutoSubmitTask()
			uv0:handlingSpecialActs()
			uv0:handlingActivityBtn()
			uv0:handleOverdueAttire()
			uv0:updateExSkinOverDue()
		end))

		return
	end

	slot0:GetMilitaryExerciseInfo()
end

function slot0.playStroys(slot0, slot1)
	slot4 = pg.StoryMgr.GetInstance()

	for slot8, slot9 in pairs(getProxy(TaskProxy):getData()) do
		if slot9:getConfig("story_id") and slot10 ~= "" and not slot4:IsPlayed(slot10) then
			table.insert({}, function (slot0)
				uv0:Play(uv1, slot0, true, true)
			end)
		end
	end

	if Application.isEditor and not ENABLE_GUIDE and getProxy(PlayerProxy):getData().level >= 400 and not slot4:IsPlayed("ZHIHUIMIAO1") then
		table.insert(slot3, function (slot0)
			uv0:Play("ZHIHUIMIAO1", slot0, true, true)
		end)
	end

	if getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_BOSS_BATTLE) and not slot5:isEnd() then
		slot6 = pg.expedition_data_template

		if table.contains(slot5.data1_list, table.remove(_.map(slot5:getConfig("config_data")[4], function (slot0)
			return {
				config = uv0[slot0[1]],
				count = slot0[2]
			}
		end), 1).config.id) then
			slot11 = slot5:getConfig("config_client").story
			slot13 = pg.extraenemy_template[slot5.data1]

			if slot5.data4 - slot5.data2 <= 0 then
				slot14 = 0
			end

			for slot19, slot20 in pairs(slot11) do
				if slot20[1] < math.floor(slot14 / slot5.data4 * 10000) then
					break
				end

				if slot20[2] and slot21 ~= "" and not slot4:IsPlayed(slot21) then
					table.insert(slot3, function (slot0)
						uv0:Play(uv1, slot0, true, true)
					end)
				end
			end
		end
	end

	if getProxy(ActivityProxy):getActivityById(ActivityConst.ACT_NPC_SHIP_ID) and not slot6:isEnd() then
		slot7 = slot6:getConfig("config_client")
		slot8 = slot7.npc[1]
		slot9 = slot7.npc[2]
		slot10 = {
			function (slot0)
				if uv0 == "" or pg.StoryMgr.GetInstance():IsPlayed(uv0) then
					slot0()
				else
					pg.StoryMgr.GetInstance():Play(uv0, slot0, true, true)
				end
			end,
			function (slot0)
				if (getProxy(TaskProxy):getTaskById(uv0) or slot1:getFinishTaskById(uv0)) and slot2:isFinish() and not slot2:isReceive() then
					uv1:sendNotification(GAME.FETCH_NPC_SHIP, {
						taskId = slot2.id,
						callback = slot0
					})
				else
					slot0()
				end
			end
		}

		table.insert(slot3, function (slot0)
			seriesAsync(uv0, slot0)
		end)
	end

	if getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_PUZZLA) and not slot7:isEnd() then
		if type(slot7:getConfig("config_client")) == "table" and slot8[2] and type(slot8[2]) == "string" and not pg.StoryMgr.GetInstance():IsPlayed(slot8[2]) then
			table.insert(slot3, function (slot0)
				uv0:Play(uv1[2], slot0, true, true)
			end)
		end
	end

	if getProxy(ActivityProxy):getActivityById(ActivityConst.MUSIC_CHUIXUE7DAY_ID) and not slot8:isEnd() then
		if slot8:getConfig("config_client").story[1][1] and not pg.StoryMgr.GetInstance():IsPlayed(slot10) then
			table.insert(slot3, function (slot0)
				uv0:Play(uv1, slot0, true, true)
			end)
		end
	end

	seriesAsync(slot3, slot1)
end

function slot0.tryPlayGuide(slot0)
	pg.SystemGuideMgr.GetInstance():Play(slot0)
end

function slot0.tryRequestMainSub(slot0)
	if getProxy(ChapterProxy).subNextReqTime < pg.TimeMgr.GetInstance():GetServerTime() then
		slot0:sendNotification(GAME.SUB_CHAPTER_FETCH)
	end
end

function slot0.tryRequestVersion(slot0)
	if PLATFORM_CODE == PLATFORM_US and VersionMgr.Inst:OnProxyUsing() then
		return
	end

	if UpdateMgr.Inst.currentVersion.Major > 0 and (not uv0.lastRequestVersionTime or Time.realtimeSinceStartup - uv0.lastRequestVersionTime > 1800) then
		uv0.lastRequestVersionTime = Time.realtimeSinceStartup

		pg.UIMgr.GetInstance():LoadingOn()

		slot1 = true

		VersionMgr.Inst:FetchVersion(function (slot0)
			pg.UIMgr.GetInstance():LoadingOff()

			uv0 = false

			if UpdateMgr.Inst.currentVersion.Build < slot0.Build then
				pg.MsgboxMgr.GetInstance():ShowMsgBox({
					modal = true,
					hideNo = true,
					content = i18n("new_version_tip"),
					weight = LayerWeightConst.TOP_LAYER,
					onYes = function ()
						Application.Quit()
					end,
					onNo = function ()
						Application.Quit()
					end
				})
			end
		end)
		LeanTween.delayedCall(3, System.Action(function ()
			if uv0 then
				pg.UIMgr.GetInstance():LoadingOff()
			end
		end))
	end
end

function slot0.checkCV(slot0)
	if uv0.CVChecked then
		return
	end

	uv0.CVChecked = true

	CVUpdateMgr.Inst:CheckD()

	slot2 = nil

	Timer.New(function ()
		if uv0.state == DownloadState.CheckToUpdate then
			uv1.CanUpdateCV = true

			if uv2.viewComponent and not uv2.viewComponent.exited then
				uv2:updateSettingsNotice(nil, "CVupdate")
			end
		end

		if uv0.state ~= DownloadState.None then
			uv3:Stop()
		end
	end, 0.5, -1):Start()
end

function slot0.storyStorageFix(slot0)
	if uv0.StoryFixedOnce then
		return
	end

	uv0.StoryFixedOnce = true
	slot2 = slot0:getFixStoryList(5001, 5020, {})

	if getProxy(ActivityProxy):getActivityById(ActivityConst.JYHZ_ACTIVITY_ID) and not slot3:isEnd() then
		for slot12 = #_.flatten(slot3:getConfig("config_data")), 1, -1 do
			if pg.task_data_template[slot7[slot12]].story_id and #slot15 > 0 then
				if nil then
					if not getProxy(PlayerProxy):getRawData():IsPlayed(slot15) then
						table.insert(slot2, slot15)
					end
				elseif slot16 then
					slot8 = slot12
				end
			end
		end
	end

	if #slot2 > 0 then
		_.each(slot2, function (slot0)
			uv0:sendNotification(GAME.STORY_UPDATE, {
				storyId = slot0
			})
		end)
	end
end

function slot0.getFixStoryByStoryId(slot0, slot1, slot2, slot3)
	slot7 = false

	for slot11, slot12 in ipairs(slot1) do
		if slot3 then
			if not getProxy(PlayerProxy):getRawData():IsPlayed(slot12) then
				slot7 = true

				table.insert({}, slot12)
			end
		elseif not slot5:IsPlayed(slot12) and not slot7 then
			table.insert(slot6, slot12)
		elseif #slot6 > 0 then
			slot7 = true
		end
	end

	if slot7 then
		for slot11, slot12 in ipairs(slot6) do
			table.insert(slot2, slot12)
		end
	end

	return slot2
end

function slot0.getFixStoryList(slot0, slot1, slot2, slot3)
	slot4 = getProxy(TaskProxy)
	slot6 = getProxy(PlayerProxy):getRawData()
	slot3 = slot3 or {}
	slot7 = 0

	for slot11 = slot2, slot1, -1 do
		if slot4:getFinishTaskById(slot11) or slot4:getTaskById(slot11) then
			slot7 = slot11

			break
		end
	end

	for slot11 = slot7, slot1, -1 do
		if pg.task_data_template[slot11] and slot12.story_id and #slot13 > 0 and not slot6:IsPlayed(slot13) then
			table.insert(slot3, slot13)
		end
	end

	return slot3
end

function slot0.accepetActivityTask(slot0)
	slot0:sendNotification(GAME.ACCEPT_ACTIVITY_TASK)
end

function slot0.tryRequestColoring(slot0)
	if getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_COLORING_ALPHA) and not slot1:isEnd() then
		slot0:sendNotification(GAME.COLORING_FETCH, {
			activityId = slot1.id
		})
	end
end

function slot0.handlingSpecialActs(slot0)
	slot0:sendNotification(GAME.SPECIAL_ACT)
end

function slot0.handlingActivityBtn(slot0)
	slot0:sendNotification(GAME.MAINUI_ACT_BTN)
end

function slot0.remove(slot0)
	slot0.viewComponent:disablePartialBlur()
end

function slot0.handleReturnAwardAct(slot0)
	if getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_RETURN_AWARD) and not slot1:isEnd() and (slot1.data1 == 0 or slot1.data1 == 1 and slot1.data2 == 0) then
		slot0:sendNotification(GAME.RETURN_AWARD_OP, {
			activity_id = slot1.id,
			cmd = ActivityConst.RETURN_AWARD_OP_ACTIVTION
		})
	end
end

function slot0.handleOverdueAttire(slot0)
	slot0:sendNotification(GAME.HANDLE_OVERDUE_ATTIRE)
end

function slot0.escortHandler(slot0)
	if #getProxy(ChapterProxy).escortMaps == 0 or _.any(slot2, function (slot0)
		return slot0:shouldFetch()
	end) then
		slot0:sendNotification(GAME.ESCORT_FETCH)
	else
		pg.m02:sendNotification(GAME.GO_SCENE, SCENE.LEVEL, {
			chapterId = slot1:getActiveChapter() and slot3.id,
			mapIdx = slot2[1].id
		})
	end
end

return slot0
