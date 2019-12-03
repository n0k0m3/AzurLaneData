pg = pg or {}
pg.strategy_data_template = {
	{
		buff_id = 100,
		name = "單縱陣突入",
		type = 1,
		id = 1,
		icon = "1",
		desc = "下一場戰鬥，艦隊全員炮擊、雷擊提高15%，機動降低10%",
		arg = {}
	},
	{
		buff_id = 110,
		name = "複縱陣前進",
		type = 1,
		id = 2,
		icon = "2",
		desc = "下一場戰鬥，艦隊全員機動提高30%，炮擊、雷擊降低5%",
		arg = {}
	},
	{
		buff_id = 120,
		name = "輪型陣護衛",
		type = 1,
		id = 3,
		icon = "3",
		desc = "下一場戰鬥，艦隊全員防空提高20%",
		arg = {}
	},
	{
		buff_id = 0,
		name = "緊急維修",
		type = 2,
		id = 4,
		icon = "4",
		desc = "目前艦隊存活角色回復總血量的10%",
		arg = {
			healthy,
			10
		}
	},
	[9] = {
		buff_id = 0,
		name = "交換",
		type = 2,
		id = 9,
		icon = "9",
		desc = "與友方隊伍交換位置",
		arg = {
			exchange
		}
	},
	[10001] = {
		buff_id = 200,
		name = "彈藥充足",
		type = 1000,
		id = 10001,
		icon = "10001",
		desc = "彈藥充足，狀態良好，艦隊傷害提高10%",
		arg = {}
	},
	[10002] = {
		buff_id = 210,
		name = "彈藥匱乏",
		type = 1000,
		id = 10002,
		icon = "10002",
		desc = "彈盡糧絕，需要補給，艦隊傷害降低50%",
		arg = {}
	},
	[10011] = {
		buff_id = 220,
		name = "制空權確保",
		type = 1001,
		id = 10011,
		icon = "10011",
		desc = "艦隊全員航空攻擊傷害提高20%，受到的航空攻擊傷害降低10%，命中提高10%，受到伏擊的機率降低8% (航空攻擊傷害提高或降低不影響點燃進水傷害)",
		arg = {
			800
		}
	},
	[10012] = {
		buff_id = 230,
		name = "制空權優勢",
		type = 1001,
		id = 10012,
		icon = "10012",
		desc = "艦隊全員航空攻擊傷害提高12%，受到的航空攻擊傷害降低6%，命中提高5%，受到伏擊的機率降低5% (航空攻擊傷害提高或降低不影響點燃進水傷害)",
		arg = {
			500
		}
	},
	[10013] = {
		buff_id = 240,
		name = "勢均力敵",
		type = 1001,
		id = 10013,
		icon = "10013",
		desc = "艦隊全員航空攻擊傷害降低6%，受到的航空攻擊傷害降低3% (航空攻擊傷害提高或降低不影響點燃進水傷害)",
		arg = {
			0
		}
	},
	[10014] = {
		buff_id = 250,
		name = "制空權劣勢",
		type = 1001,
		id = 10014,
		icon = "10014",
		desc = "艦隊全員航空攻擊傷害降低12%，受到的航空攻擊傷害提高6%，命中、機動降低3% (航空攻擊傷害提高或降低不影響點燃進水傷害)",
		arg = {
			0
		}
	},
	[10015] = {
		buff_id = 260,
		name = "制空權喪失",
		type = 1001,
		id = 10015,
		icon = "10015",
		desc = "艦隊全員航空攻擊傷害降低20%，受到的航空攻擊傷害提高10%，命中、機動降低8% (航空攻擊傷害提高或降低不影響點燃進水傷害)",
		arg = {
			0
		}
	},
	all = {
		1,
		2,
		3,
		4,
		9,
		10001,
		10002,
		10011,
		10012,
		10013,
		10014,
		10015
	}
}

return
