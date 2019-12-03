pg = pg or {}
pg.commander_skill_template = {
	[10011] = {
		name = "31節的正義",
		exp = 1,
		next_id = 10012,
		id = 10011,
		icon = "1001",
		lv = 1,
		desc = {
			{
				1,
				"所在艦隊中有三艘驅逐時，地圖移動力+1"
			},
			{
				2,
				"當作為司令位指揮喵，接觸非旗艦敵方單位時，若隊伍中有驅逐，則有15%機率發射一次魚雷打擊(地圖)(Lv2生效)"
			},
			{
				3,
				"作為司令位指揮喵，當編隊中有驅逐且未進入交戰狀態時，可選擇相鄰位置與敵方交戰中的己方艦隊，與之互換所在位置代替其與敵方交戰。(Lv3生效)"
			}
		},
		effect_tactic = {
			100111
		}
	},
	[10012] = {
		name = "31節的正義",
		exp = 3,
		next_id = 10013,
		id = 10012,
		icon = "1001",
		lv = 2,
		desc = {
			{
				1,
				"所在艦隊中有三艘驅逐時，地圖移動力+1"
			},
			{
				2,
				"當作為司令位指揮喵，接觸非旗艦敵方單位時，若隊伍中有驅逐，則有15%機率發射一次魚雷打擊(地圖)"
			},
			{
				3,
				"作為司令位指揮喵，當編隊中有驅逐且未進入交戰狀態時，可選擇相鄰位置與敵方交戰中的己方艦隊，與之互換所在位置代替其與敵方交戰。(Lv3生效)"
			}
		},
		effect_tactic = {
			100111,
			100112
		}
	},
	[10013] = {
		name = "31節的正義",
		exp = 0,
		next_id = 0,
		id = 10013,
		icon = "1001",
		lv = 3,
		desc = {
			{
				1,
				"所在艦隊中有三艘驅逐時，地圖移動力+1"
			},
			{
				2,
				"當作為司令位指揮喵，接觸非旗艦敵方單位時，若隊伍中有驅逐，則有15%機率發射一次魚雷打擊(地圖)"
			},
			{
				3,
				"作為司令位指揮喵，編隊中有驅逐且未進入交戰狀態時，可選擇相鄰位置與敵方交戰中的己方艦隊，與之互換所在位置代替其與敵方交戰"
			}
		},
		effect_tactic = {
			100111,
			100112,
			100113
		}
	},
	[10021] = {
		name = "王牌射手",
		exp = 1,
		next_id = 10022,
		id = 10021,
		icon = "1002",
		lv = 1,
		desc = {
			{
				1,
				"与主力舰队或侦查舰队交战时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的命中属性(效果大)"
			},
			{
				2,
				"若所在舰队旗舰为战列、战巡或航战，依据指挥喵指挥属性，提高旗舰造成的伤害(Lv2生效)"
			},
			{
				3,
				"依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的机动、防空属性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			100211
		}
	},
	[10022] = {
		name = "王牌射手",
		exp = 3,
		next_id = 10023,
		id = 10022,
		icon = "1002",
		lv = 2,
		desc = {
			{
				1,
				"与主力舰队或侦查舰队交战时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的命中属性(效果大)"
			},
			{
				2,
				"若所在舰队旗舰为战列、战巡或航战，依据指挥喵指挥属性，提高旗舰造成的伤害"
			},
			{
				3,
				"依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的机动、防空属性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			100211,
			100212
		}
	},
	[10023] = {
		name = "王牌射手",
		exp = 0,
		next_id = 0,
		id = 10023,
		icon = "1002",
		lv = 3,
		desc = {
			{
				1,
				"与主力舰队或侦查舰队交战时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的命中属性(效果大)"
			},
			{
				2,
				"若所在舰队旗舰为战列、战巡或航战，依据指挥喵指挥属性，提高旗舰造成的伤害"
			},
			{
				3,
				"依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的机动、防空属性(效果中)"
			}
		},
		effect_tactic = {
			100211,
			100212,
			100213
		}
	},
	[11011] = {
		name = "5英寸的勇氣",
		exp = 1,
		next_id = 11012,
		id = 11011,
		icon = "1101",
		lv = 1,
		desc = {
			{
				1,
				"當作為司令位指揮喵，接觸非旗艦敵方單位時，若隊伍中有驅逐，則有15%機率發射一次魚雷打擊(地圖)"
			},
			{
				2,
				"先鋒領艦為驅逐時，靠近敵人可以發射一輪特殊彈幕I(Lv2生效)"
			},
			{
				3,
				"特殊彈幕I 強化為 特殊彈幕II(Lv3生效)"
			}
		},
		effect_tactic = {
			110111
		}
	},
	[11012] = {
		name = "5英寸的勇氣",
		exp = 3,
		next_id = 11013,
		id = 11012,
		icon = "1101",
		lv = 2,
		desc = {
			{
				1,
				"當作為司令位指揮喵，接觸非旗艦敵方單位時，若隊伍中有驅逐，則有15%機率發射一次魚雷打擊(地圖)"
			},
			{
				2,
				"先鋒領艦為驅逐時，戰鬥中靠近敵人時發射一輪特殊彈幕I，每場戰鬥一次"
			},
			{
				3,
				"特殊彈幕I 強化為 特殊彈幕II(Lv3生效)"
			}
		},
		effect_tactic = {
			110111,
			110112
		}
	},
	[11013] = {
		name = "5英寸的勇氣",
		exp = 0,
		next_id = 0,
		id = 11013,
		icon = "1101",
		lv = 3,
		desc = {
			{
				1,
				"當作為司令位指揮喵，接觸非旗艦敵方單位時，若隊伍中有驅逐，則有15%機率發射一次魚雷打擊(地圖)"
			},
			{
				2,
				"先鋒領艦為驅逐時，戰鬥中靠近敵人時發射一輪特殊彈幕I，每場戰鬥一次"
			},
			{
				3,
				"特殊彈幕I 強化為 特殊彈幕II"
			}
		},
		effect_tactic = {
			110111,
			110113
		}
	},
	[11021] = {
		name = "幸運之翼",
		exp = 1,
		next_id = 11022,
		id = 11021,
		icon = "1102",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕航、正航的裝填屬性(效果小)"
			},
			{
				2,
				"所在艦隊遭遇空襲時，依據指揮喵戰術屬性，有一定機率迴避此次空襲傷害(Lv2生效)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空屬性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			110211
		}
	},
	[11022] = {
		name = "幸運之翼",
		exp = 3,
		next_id = 11023,
		id = 11022,
		icon = "1102",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕航、正航的裝填屬性(效果小)"
			},
			{
				2,
				"所在艦隊遭遇空襲時，依據指揮喵戰術屬性，有一定機率迴避此次空襲傷害"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空屬性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			110211,
			110212
		}
	},
	[11023] = {
		name = "幸運之翼",
		exp = 0,
		next_id = 0,
		id = 11023,
		icon = "1102",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕航、正航的裝填屬性(效果小)"
			},
			{
				2,
				"所在艦隊遭遇空襲時，依據指揮喵戰術屬性，有一定機率迴避此次空襲傷害"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空屬性(效果中)"
			}
		},
		effect_tactic = {
			110211,
			110212,
			110213
		}
	},
	[12011] = {
		name = "空母後勤",
		exp = 1,
		next_id = 12012,
		id = 12011,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕航、正航的裝填屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空屬性(效果小)(Lv2生效)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕航、正航的命中屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			120111
		}
	},
	[12012] = {
		name = "空母後勤",
		exp = 3,
		next_id = 12013,
		id = 12012,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕航、正航的裝填屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕航、正航的命中屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			120111,
			120112
		}
	},
	[12013] = {
		name = "空母後勤",
		exp = 0,
		next_id = 0,
		id = 12013,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕航、正航的裝填屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕航、正航的命中屬性(效果小)"
			}
		},
		effect_tactic = {
			120111,
			120112,
			120113
		}
	},
	[12021] = {
		name = "雷達偵察",
		exp = 1,
		next_id = 12022,
		id = 12021,
		icon = "def",
		lv = 1,
		desc = {
			{
				1,
				"依據指揮喵後勤屬性，降低所在艦隊遭遇伏擊的機率"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的命中屬性(效果小)(Lv2生效)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			120121
		}
	},
	[12022] = {
		name = "雷達偵察",
		exp = 3,
		next_id = 12023,
		id = 12022,
		icon = "def",
		lv = 2,
		desc = {
			{
				1,
				"依據指揮喵後勤屬性，降低所在艦隊遭遇伏擊的機率"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的命中屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			120121,
			120122
		}
	},
	[12023] = {
		name = "雷達偵察",
		exp = 0,
		next_id = 0,
		id = 12023,
		icon = "def",
		lv = 3,
		desc = {
			{
				1,
				"依據指揮喵後勤屬性，降低所在艦隊遭遇伏擊的機率"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的命中屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)"
			}
		},
		effect_tactic = {
			120121,
			120122,
			120123
		}
	},
	[20011] = {
		name = "盡忠職守",
		exp = 1,
		next_id = 20012,
		id = 20011,
		icon = "2001",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中戰列、戰巡、航戰的炮擊、防空屬性(效果中)"
			},
			{
				2,
				"作為參謀位指揮喵，艦隊在沿岸區域(不可通行的島嶼陸地旁)交戰時，依據指揮喵戰術屬性，提高所在艦隊全員的炮擊屬性(效果中)(Lv2生效)"
			},
			{
				3,
				"依據指揮喵戰術屬性，提高所在艦隊成員對戰列、戰巡、航戰造成的傷害(Lv3生效)"
			}
		},
		effect_tactic = {
			200111
		}
	},
	[20012] = {
		name = "盡忠職守",
		exp = 3,
		next_id = 20013,
		id = 20012,
		icon = "2001",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中戰列、戰巡、航戰的炮擊、防空屬性(效果中)"
			},
			{
				2,
				"作為參謀位指揮喵，艦隊在沿岸區域(不可通行的島嶼陸地旁)交戰時，依據指揮喵戰術屬性，提高所在艦隊全員的炮擊屬性(效果中)"
			},
			{
				3,
				"依據指揮喵戰術屬性，提高所在艦隊成員對戰列、戰巡、航戰造成的傷害(Lv3生效)"
			}
		},
		effect_tactic = {
			200111,
			200112
		}
	},
	[20013] = {
		name = "盡忠職守",
		exp = 0,
		next_id = 0,
		id = 20013,
		icon = "2001",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中戰列、戰巡、航戰的炮擊、防空屬性(效果中)"
			},
			{
				2,
				"作為參謀位指揮喵，艦隊在沿岸區域(不可通行的島嶼陸地旁)交戰時，依據指揮喵戰術屬性，提高所在艦隊全員的炮擊屬性(效果中)"
			},
			{
				3,
				"依據指揮喵戰術屬性，提高所在艦隊成員對戰列、戰巡、航戰造成的傷害"
			}
		},
		effect_tactic = {
			200111,
			200112,
			200113
		}
	},
	[20021] = {
		name = "狡黠之灌",
		exp = 1,
		next_id = 20022,
		id = 20021,
		icon = "2002",
		lv = 1,
		desc = {
			{
				1,
				"作为司令位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、防空属性(效果中)"
			},
			{
				2,
				"作为司令位指挥喵时，若队伍中皇家阵营角色数量不少于4名，战斗开始后，依据后勤属性，降低队伍中先锋角色受到的伤害，持续30秒(Lv2生效)"
			},
			{
				3,
				"作为司令位指挥喵时，依据指挥喵后勤属性，提高所在舰队中皇家阵营角色的机动属性(效果大)(Lv3生效)"
			}
		},
		effect_tactic = {
			200211
		}
	},
	[20022] = {
		name = "狡黠之灌",
		exp = 3,
		next_id = 20023,
		id = 20022,
		icon = "2002",
		lv = 2,
		desc = {
			{
				1,
				"作为司令位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、防空属性(效果中)"
			},
			{
				2,
				"作为司令位指挥喵时，若队伍中皇家阵营角色数量不少于4名，战斗开始后，依据后勤属性，降低队伍中先锋角色受到的伤害，持续30秒"
			},
			{
				3,
				"作为司令位指挥喵时，依据指挥喵后勤属性，提高所在舰队中皇家阵营角色的机动属性(效果大)(Lv3生效)"
			}
		},
		effect_tactic = {
			200211,
			200212
		}
	},
	[20023] = {
		name = "狡黠之灌",
		exp = 0,
		next_id = 0,
		id = 20023,
		icon = "2002",
		lv = 3,
		desc = {
			{
				1,
				"作为司令位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、防空属性(效果中)"
			},
			{
				2,
				"作为司令位指挥喵时，若队伍中皇家阵营角色数量不少于4名，战斗开始后，依据后勤属性，降低队伍中先锋角色受到的伤害，持续30秒"
			},
			{
				3,
				"作为司令位指挥喵时，依据指挥喵后勤属性，提高所在舰队中皇家阵营角色的机动属性(效果大)"
			}
		},
		effect_tactic = {
			200211,
			200212,
			200213
		}
	},
	[21011] = {
		name = "物資攔截者",
		exp = 1,
		next_id = 21012,
		id = 21011,
		icon = "2101",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵，與運輸艦隊交戰時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果大)(Lv2生效)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的雷擊屬性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			210111
		}
	},
	[21012] = {
		name = "物資攔截者",
		exp = 3,
		next_id = 21013,
		id = 21012,
		icon = "2101",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵，與運輸艦隊交戰時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果大)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的雷擊屬性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			210111,
			210112
		}
	},
	[21013] = {
		name = "物資攔截者",
		exp = 0,
		next_id = 0,
		id = 21013,
		icon = "2101",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵，與運輸艦隊交戰時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果大)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的雷擊屬性(效果中)"
			}
		},
		effect_tactic = {
			210111,
			210112,
			210113
		}
	},
	[21021] = {
		name = "斥候獵手",
		exp = 1,
		next_id = 21022,
		id = 21021,
		icon = "2102",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵，與偵查艦隊交戰時，依據指揮喵戰術屬性，提高所在艦隊中驅逐的命中屬性(效果中)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中驅逐的機動屬性(效果小)(Lv2生效)"
			},
			{
				3,
				"距離自身3格範圍內有敵方偵察艦隊時，當前艦隊移動力+1(Lv3生效)"
			}
		},
		effect_tactic = {
			210211
		}
	},
	[21022] = {
		name = "斥候獵手",
		exp = 3,
		next_id = 21023,
		id = 21022,
		icon = "2102",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵，與偵查艦隊交戰時，依據指揮喵戰術屬性，提高所在艦隊中驅逐的命中屬性(效果中)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中驅逐的機動屬性(效果小)"
			},
			{
				3,
				"距離自身3格範圍內有敵方偵察艦隊時，當前艦隊移動力+1(Lv3生效)"
			}
		},
		effect_tactic = {
			210211,
			210212
		}
	},
	[21023] = {
		name = "斥候獵手",
		exp = 0,
		next_id = 0,
		id = 21023,
		icon = "2102",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵，與偵查艦隊交戰時，依據指揮喵戰術屬性，提高所在艦隊中驅逐的命中屬性(效果中)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中驅逐的機動屬性(效果小)"
			},
			{
				3,
				"距離自身3格範圍內有敵方偵察艦隊時，當前艦隊移動力+1"
			}
		},
		effect_tactic = {
			210211,
			210212,
			210213
		}
	},
	[21031] = {
		name = "守望者",
		exp = 1,
		next_id = 21032,
		id = 21031,
		icon = "2103",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)"
			},
			{
				2,
				"距离自身2格范围内存在敌方侦察舰队时，当前舰队移动力+1(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			210311
		}
	},
	[21032] = {
		name = "守望者",
		exp = 3,
		next_id = 21033,
		id = 21032,
		icon = "2103",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)"
			},
			{
				2,
				"距离自身2格范围内存在敌方侦察舰队时，当前舰队移动力+1"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			210311,
			210312
		}
	},
	[21033] = {
		name = "守望者",
		exp = 0,
		next_id = 0,
		id = 21033,
		icon = "2103",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)"
			},
			{
				2,
				"距离自身2格范围内存在敌方侦察舰队时，当前舰队移动力+1"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)"
			}
		},
		effect_tactic = {
			210311,
			210312,
			210313
		}
	},
	[21041] = {
		name = "无畏的骑士",
		exp = 1,
		next_id = 21042,
		id = 21041,
		icon = "2104",
		lv = 1,
		desc = {
			{
				1,
				"依据指挥喵后勤属性，降低受到伏击的機率"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的装填属性(效果小)(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中皇家阵营角色的炮击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			210411
		}
	},
	[21042] = {
		name = "无畏的骑士",
		exp = 3,
		next_id = 21043,
		id = 21042,
		icon = "2104",
		lv = 2,
		desc = {
			{
				1,
				"依据指挥喵后勤属性，降低受到伏击的機率"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的装填属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中皇家阵营角色的炮击属性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			210411,
			210412
		}
	},
	[21043] = {
		name = "无畏的骑士",
		exp = 0,
		next_id = 0,
		id = 21043,
		icon = "2104",
		lv = 3,
		desc = {
			{
				1,
				"依据指挥喵后勤属性，降低受到伏击的機率"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的装填属性(效果小)"
			},
			{
				3,
				"作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中皇家阵营角色的炮击属性(效果小)"
			}
		},
		effect_tactic = {
			210411,
			210412,
			210413
		}
	},
	[22011] = {
		name = "戰列後勤",
		exp = 1,
		next_id = 22012,
		id = 22011,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的裝填屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據据指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的命中屬性(效果小)(Lv2生效)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的炮擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			220111
		}
	},
	[22012] = {
		name = "戰列後勤",
		exp = 3,
		next_id = 22013,
		id = 22012,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的裝填屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據据指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的命中屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的炮擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			220111,
			220112
		}
	},
	[22013] = {
		name = "戰列後勤",
		exp = 0,
		next_id = 0,
		id = 22013,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的裝填屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據据指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的命中屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的炮擊屬性(效果小)"
			}
		},
		effect_tactic = {
			220111,
			220112,
			220113
		}
	},
	[22021] = {
		name = "巡洋戰術",
		exp = 1,
		next_id = 22022,
		id = 22021,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的命中屬性(效果小)(Lv2生效)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的機動屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			220211
		}
	},
	[22022] = {
		name = "巡洋戰術",
		exp = 3,
		next_id = 22023,
		id = 22022,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的命中屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的機動屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			220211,
			220212
		}
	},
	[22023] = {
		name = "巡洋戰術",
		exp = 0,
		next_id = 0,
		id = 22023,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的命中屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕巡、重巡的機動屬性(效果小)"
			}
		},
		effect_tactic = {
			220211,
			220212,
			220213
		}
	},
	[30011] = {
		name = "反擊的一拳",
		exp = 1,
		next_id = 30012,
		id = 30011,
		icon = "3001",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空、裝填屬性(效果小)"
			},
			{
				2,
				"依據指揮喵後勤屬性，降低受到伏擊的機率(Lv2生效)"
			},
			{
				3,
				"進入戰鬥時，若主力艦隊僅剩下一艘輕航或正航，且無其他主力艦，則首輪空襲裝填速度加快8%，同時首輪空襲時觸發額外的魚雷機編隊攻擊(Lv3生效)"
			}
		},
		effect_tactic = {
			300111
		}
	},
	[30012] = {
		name = "反擊的一拳",
		exp = 3,
		next_id = 30013,
		id = 30012,
		icon = "3001",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空、裝填屬性(效果小)"
			},
			{
				2,
				"依據指揮喵後勤屬性，降低受到伏擊的機率"
			},
			{
				3,
				"進入戰鬥時，若主力艦隊僅剩下一艘輕航或正航，且無其他主力艦，則首輪空襲裝填速度加快8%，同時首輪空襲時觸發額外的魚雷機編隊攻擊(Lv3生效)"
			}
		},
		effect_tactic = {
			300111,
			300112
		}
	},
	[30013] = {
		name = "反擊的一拳",
		exp = 0,
		next_id = 0,
		id = 30013,
		icon = "3001",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空、裝填屬性(效果小)"
			},
			{
				2,
				"依據指揮喵後勤屬性，降低受到伏擊的機率"
			},
			{
				3,
				"進入戰鬥時，若主力艦隊僅剩下一艘輕航或正航，且無其他主力艦，則首輪空襲裝填速度加快8%，同時首輪空襲時觸發額外的魚雷機編隊攻擊"
			}
		},
		effect_tactic = {
			300111,
			300112,
			300113
		}
	},
	[30021] = {
		name = "敢勇当先",
		exp = 1,
		next_id = 30022,
		id = 30021,
		icon = "3002",
		lv = 1,
		desc = {
			{
				1,
				"作为司令位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的炮击、雷击属性(效果中)"
			},
			{
				2,
				"作为司令位指挥喵时，若距离自身2格范围内存在敌方主力舰队，依据指挥属性，降低队伍中旗舰受到的伤害(Lv2生效)"
			},
			{
				3,
				"作为司令位指挥喵，与主力舰队交战时，战斗开始后，依据战术属性，提高所在舰队中轻巡、重巡、超巡的命中、机动属性(效果大)，持续30秒(Lv3生效)"
			}
		},
		effect_tactic = {
			300211
		}
	},
	[30022] = {
		name = "敢勇当先",
		exp = 3,
		next_id = 30023,
		id = 30022,
		icon = "3002",
		lv = 2,
		desc = {
			{
				1,
				"作为司令位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的炮击、雷击属性(效果中)"
			},
			{
				2,
				"作为司令位指挥喵时，若距离自身2格范围内存在敌方主力舰队，依据指挥属性，降低队伍中旗舰受到的伤害(Lv2生效)"
			},
			{
				3,
				"作为司令位指挥喵，与主力舰队交战时，战斗开始后，依据战术属性，提高所在舰队中轻巡、重巡、超巡的命中、机动属性(效果大)，持续30秒"
			}
		},
		effect_tactic = {
			300211,
			300212
		}
	},
	[30023] = {
		name = "敢勇当先",
		exp = 0,
		next_id = 0,
		id = 30023,
		icon = "3002",
		lv = 3,
		desc = {
			{
				1,
				"作为司令位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的炮击、雷击属性(效果中)"
			},
			{
				2,
				"作为司令位指挥喵时，若距离自身2格范围内存在敌方主力舰队，依据指挥属性，降低队伍中旗舰受到的伤害"
			},
			{
				3,
				"作为司令位指挥喵，与主力舰队交战时，战斗开始后，依据战术属性，提高所在舰队中轻巡、重巡、超巡的命中、机动属性(效果大)，持续30秒"
			}
		},
		effect_tactic = {
			300211,
			300212,
			300213
		}
	},
	[31011] = {
		name = "必殺·三段擊",
		exp = 1,
		next_id = 31012,
		id = 31011,
		icon = "3101",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕航、正航的命中屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空屬性(效果中)(Lv2生效)"
			},
			{
				3,
				"若所在艦隊中有輕航或正航，當接觸非旗艦敵方單位時，有15%的機率發射一次空襲打擊（地圖），傷害依據指揮喵戰術屬性、雙方等級、戰鬥力決定(Lv3生效)"
			}
		},
		effect_tactic = {
			310111
		}
	},
	[31012] = {
		name = "必殺·三段擊",
		exp = 3,
		next_id = 31013,
		id = 31012,
		icon = "3101",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕航、正航的命中屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空屬性(效果中)"
			},
			{
				3,
				"若所在艦隊中有輕航或正航，當接觸非旗艦敵方單位時，有15%的機率發射一次空襲打擊（地圖），傷害依據指揮喵戰術屬性、雙方等級、戰鬥力決定(Lv3生效)"
			}
		},
		effect_tactic = {
			310111,
			310112
		}
	},
	[31013] = {
		name = "必殺·三段擊",
		exp = 0,
		next_id = 0,
		id = 31013,
		icon = "3101",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中輕航、正航的命中屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕航、正航的航空屬性(效果中)"
			},
			{
				3,
				"若所在艦隊中有輕航或正航，當接觸非旗艦敵方單位時，有15%的機率發射一次空襲打擊（地圖），傷害依據指揮喵戰術屬性、雙方等級、戰鬥力決定"
			}
		},
		effect_tactic = {
			310111,
			310112,
			310113
		}
	},
	[31021] = {
		name = "野性的直覺",
		exp = 1,
		next_id = 31022,
		id = 31021,
		icon = "3102",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中驅逐的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中驅逐的雷擊屬性(效果中)(Lv2生效)"
			},
			{
				3,
				"作為參謀位指揮喵，先鋒艦隊只有一艘艦船且為驅逐時，依據指揮喵指揮屬性，提高所在艦隊中驅逐的雷擊屬性(效果大)(Lv3生效)"
			}
		},
		effect_tactic = {
			310211
		}
	},
	[31022] = {
		name = "野性的直覺",
		exp = 3,
		next_id = 31023,
		id = 31022,
		icon = "3102",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中驅逐的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中驅逐的雷擊屬性(效果中)"
			},
			{
				3,
				"作為參謀位指揮喵，先鋒艦隊只有一艘艦船且為驅逐時，依據指揮喵指揮屬性，提高所在艦隊中驅逐的雷擊屬性(效果大)(Lv3生效)"
			}
		},
		effect_tactic = {
			310211,
			310212
		}
	},
	[31023] = {
		name = "野性的直覺",
		exp = 0,
		next_id = 0,
		id = 31023,
		icon = "3102",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中驅逐的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中驅逐的雷擊屬性(效果中)"
			},
			{
				3,
				"作為參謀位指揮喵，先鋒艦隊只有一艘艦船且為驅逐時，依據指揮喵指揮屬性，提高所在艦隊中驅逐的雷擊屬性(效果大)"
			}
		},
		effect_tactic = {
			310211,
			310212,
			310213
		}
	},
	[32011] = {
		name = "巡洋指揮",
		exp = 1,
		next_id = 32012,
		id = 32011,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的雷擊屬性(效果小)(Lv2生效)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的雷擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			320111
		}
	},
	[32012] = {
		name = "巡洋指揮",
		exp = 3,
		next_id = 32013,
		id = 32012,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的雷擊屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的雷擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			320111,
			320112
		}
	},
	[32013] = {
		name = "巡洋指揮",
		exp = 0,
		next_id = 0,
		id = 32013,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的雷擊屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的雷擊屬性(效果小)"
			}
		},
		effect_tactic = {
			320111,
			320112,
			320113
		}
	},
	[32021] = {
		name = "戰列後勤",
		exp = 1,
		next_id = 32022,
		id = 32021,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的命中屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據据指揮喵指揮屬性，提高所在艦隊中戰列、戰巡、航戰的防空屬性(效果小)(Lv2生效)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中戰列、戰巡、航戰的炮擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			320211
		}
	},
	[32022] = {
		name = "戰列後勤",
		exp = 3,
		next_id = 32023,
		id = 32022,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的命中屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據据指揮喵指揮屬性，提高所在艦隊中戰列、戰巡、航戰的防空屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中戰列、戰巡、航戰的炮擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			320211,
			320212
		}
	},
	[32023] = {
		name = "戰列後勤",
		exp = 0,
		next_id = 0,
		id = 32023,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中戰列、戰巡、航戰的命中屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據据指揮喵指揮屬性，提高所在艦隊中戰列、戰巡、航戰的防空屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中戰列、戰巡、航戰的炮擊屬性(效果小)"
			}
		},
		effect_tactic = {
			320211,
			320212,
			320213
		}
	},
	[40011] = {
		name = "靜寂的狩獵者",
		exp = 1,
		next_id = 40012,
		id = 40011,
		icon = "4001",
		lv = 1,
		desc = {
			{
				1,
				"依據指揮喵指揮、後勤屬性，提高所在艦隊中潛艇的雷擊屬性(效果小)"
			},
			{
				2,
				"狩獵範圍等級+1(Lv2生效)"
			},
			{
				3,
				"依據指揮喵戰術屬性，提高魚雷打擊（地圖）的傷害(Lv3生效)"
			}
		},
		effect_tactic = {
			400111
		}
	},
	[40012] = {
		name = "靜寂的狩獵者",
		exp = 3,
		next_id = 40013,
		id = 40012,
		icon = "4001",
		lv = 2,
		desc = {
			{
				1,
				"依據指揮喵指揮、後勤屬性，提高所在艦隊中潛艇的雷擊屬性(效果小)"
			},
			{
				2,
				"狩獵範圍等級+1"
			},
			{
				3,
				"依據指揮喵戰術屬性，提高魚雷打擊（地圖）的傷害(Lv3生效)"
			}
		},
		effect_tactic = {
			400111,
			400112
		}
	},
	[40013] = {
		name = "靜寂的狩獵者",
		exp = 0,
		next_id = 0,
		id = 40013,
		icon = "4001",
		lv = 3,
		desc = {
			{
				1,
				"依據指揮喵指揮、後勤屬性，提高所在艦隊中潛艇的雷擊屬性(效果小)"
			},
			{
				2,
				"狩獵範圍等級+1"
			},
			{
				3,
				"依據指揮喵戰術屬性，提高魚雷打擊（地圖）的傷害"
			}
		},
		effect_tactic = {
			400111,
			400112,
			400113
		}
	},
	[40021] = {
		name = "不屈的意志",
		exp = 1,
		next_id = 40022,
		id = 40021,
		icon = "4002",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、命中属性(效果中)"
			},
			{
				2,
				"作为参谋位指挥喵，若所在舰队中有战列、战巡、航战，当接触非旗舰敌方单位时，有15%的機率发射一次主炮打击（地图），伤害依据指挥喵指挥属性、双方等级、战斗力决定(Lv2生效)"
			},
			{
				3,
				"作为参谋位指挥喵，与主力舰队交战时，依据指挥喵后勤属性，降低队伍中战列、战巡、航战受到的伤害(Lv3生效)"
			}
		},
		effect_tactic = {
			400211
		}
	},
	[40022] = {
		name = "不屈的意志",
		exp = 3,
		next_id = 40023,
		id = 40022,
		icon = "4002",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、命中属性(效果中)"
			},
			{
				2,
				"作为参谋位指挥喵，若所在舰队中有战列、战巡、航战，当接触非旗舰敌方单位时，有15%的機率发射一次主炮打击（地图），伤害依据指挥喵指挥属性、双方等级、战斗力决定"
			},
			{
				3,
				"作为参谋位指挥喵，与主力舰队交战时，依据指挥喵后勤属性，降低队伍中战列、战巡、航战受到的伤害(Lv3生效)"
			}
		},
		effect_tactic = {
			400211,
			400212
		}
	},
	[40023] = {
		name = "不屈的意志",
		exp = 0,
		next_id = 0,
		id = 40023,
		icon = "4002",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、命中属性(效果中)"
			},
			{
				2,
				"作为参谋位指挥喵，若所在舰队中有战列、战巡、航战，当接触非旗舰敌方单位时，有15%的機率发射一次主炮打击（地图），伤害依据指挥喵指挥属性、双方等级、战斗力决定"
			},
			{
				3,
				"作为参谋位指挥喵，与主力舰队交战时，依据指挥喵后勤属性，降低队伍中战列、战巡、航战受到的伤害"
			}
		},
		effect_tactic = {
			400211,
			400212,
			400213
		}
	},
	[41011] = {
		name = "海之鐵騎士",
		exp = 1,
		next_id = 41012,
		id = 41011,
		icon = "4101",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中戰列、戰巡、航戰的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中戰列、戰巡、航戰的命中屬性(效果中)(Lv2生效)"
			},
			{
				3,
				"與主力艦隊交戰時，依據指揮喵戰術屬性，降低旗艦受到的傷害(Lv3生效)"
			}
		},
		effect_tactic = {
			410111
		}
	},
	[41012] = {
		name = "海之鐵騎士",
		exp = 3,
		next_id = 41013,
		id = 41012,
		icon = "4101",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中戰列、戰巡、航戰的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中戰列、戰巡、航戰的命中屬性(效果中)"
			},
			{
				3,
				"與主力艦隊交戰時，依據指揮喵戰術屬性，降低旗艦受到的傷害(Lv3生效)"
			}
		},
		effect_tactic = {
			410111,
			410112
		}
	},
	[41013] = {
		name = "海之鐵騎士",
		exp = 0,
		next_id = 0,
		id = 41013,
		icon = "4101",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中戰列、戰巡、航戰的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中戰列、戰巡、航戰的命中屬性(效果中)"
			},
			{
				3,
				"與主力艦隊交戰時，依據指揮喵戰術屬性，降低旗艦受到的傷害"
			}
		},
		effect_tactic = {
			410111,
			410112,
			410113
		}
	},
	[41021] = {
		name = "海之勇者",
		exp = 1,
		next_id = 41022,
		id = 41021,
		icon = "4102",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中潛艇的雷擊屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中潛艇的命中屬性(效果中)(Lv2生效)"
			},
			{
				3,
				"狩獵範圍等級+1(Lv3生效)"
			}
		},
		effect_tactic = {
			410211
		}
	},
	[41022] = {
		name = "海之勇者",
		exp = 3,
		next_id = 41023,
		id = 41022,
		icon = "4102",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中潛艇的雷擊屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中潛艇的命中屬性(效果中)"
			},
			{
				3,
				"狩獵範圍等級+1(Lv3生效)"
			}
		},
		effect_tactic = {
			410211,
			410212
		}
	},
	[41023] = {
		name = "海之勇者",
		exp = 0,
		next_id = 0,
		id = 41023,
		icon = "4102",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中潛艇的雷擊屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中潛艇的命中屬性(效果中)"
			},
			{
				3,
				"狩獵範圍等級+1"
			}
		},
		effect_tactic = {
			410211,
			410212,
			410213
		}
	},
	[41031] = {
		name = "守护之心",
		exp = 1,
		next_id = 41032,
		id = 41031,
		icon = "4103",
		lv = 1,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的机动属性(效果中)(Lv2生效)"
			},
			{
				3,
				"作为潜艇舰队参谋位指挥喵时，若战斗中舰队旗舰为战列、战巡或航战，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的命中属性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			410311
		}
	},
	[41032] = {
		name = "守护之心",
		exp = 3,
		next_id = 41033,
		id = 41032,
		icon = "4103",
		lv = 2,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的机动属性(效果中)"
			},
			{
				3,
				"作为潜艇舰队参谋位指挥喵时，若战斗中舰队旗舰为战列、战巡或航战，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的命中属性(效果中)(Lv3生效)"
			}
		},
		effect_tactic = {
			410311,
			410312
		}
	},
	[41033] = {
		name = "守护之心",
		exp = 0,
		next_id = 0,
		id = 41033,
		icon = "4103",
		lv = 3,
		desc = {
			{
				1,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)"
			},
			{
				2,
				"作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的机动属性(效果中)"
			},
			{
				3,
				"作为潜艇舰队参谋位指挥喵时，若战斗中舰队旗舰为战列、战巡或航战，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的命中属性(效果中)"
			}
		},
		effect_tactic = {
			410311,
			410312,
			410313
		}
	},
	[42011] = {
		name = "巡洋後勤",
		exp = 1,
		next_id = 42012,
		id = 42011,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)(Lv2生效)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			420111
		}
	},
	[42012] = {
		name = "巡洋後勤",
		exp = 3,
		next_id = 42013,
		id = 42012,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			420111,
			420112
		}
	},
	[42013] = {
		name = "巡洋後勤",
		exp = 0,
		next_id = 0,
		id = 42013,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中輕巡、重巡的炮擊屬性(效果小)"
			}
		},
		effect_tactic = {
			420111,
			420112,
			420113
		}
	},
	[42021] = {
		name = "驅逐指揮",
		exp = 1,
		next_id = 42022,
		id = 42021,
		icon = "buff",
		lv = 1,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中驅逐的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中驅逐的命中屬性(效果小)(Lv2生效)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中驅逐的雷擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			420211
		}
	},
	[42022] = {
		name = "驅逐指揮",
		exp = 3,
		next_id = 42023,
		id = 42022,
		icon = "buff",
		lv = 2,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中驅逐的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中驅逐的命中屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中驅逐的雷擊屬性(效果小)(Lv3生效)"
			}
		},
		effect_tactic = {
			420211,
			420212
		}
	},
	[42023] = {
		name = "驅逐指揮",
		exp = 0,
		next_id = 0,
		id = 42023,
		icon = "buff",
		lv = 3,
		desc = {
			{
				1,
				"作為參謀位指揮喵時，依據指揮喵指揮屬性，提高所在艦隊中驅逐的機動屬性(效果小)"
			},
			{
				2,
				"作為參謀位指揮喵時，依據指揮喵戰術屬性，提高所在艦隊中驅逐的命中屬性(效果小)"
			},
			{
				3,
				"作為參謀位指揮喵時，依據指揮喵後勤屬性，提高所在艦隊中驅逐的雷擊屬性(效果小)"
			}
		},
		effect_tactic = {
			420211,
			420212,
			420213
		}
	},
	all = {
		10011,
		10012,
		10013,
		10021,
		10022,
		10023,
		11011,
		11012,
		11013,
		11021,
		11022,
		11023,
		12011,
		12012,
		12013,
		12021,
		12022,
		12023,
		20011,
		20012,
		20013,
		20021,
		20022,
		20023,
		21011,
		21012,
		21013,
		21021,
		21022,
		21023,
		21031,
		21032,
		21033,
		21041,
		21042,
		21043,
		22011,
		22012,
		22013,
		22021,
		22022,
		22023,
		30011,
		30012,
		30013,
		30021,
		30022,
		30023,
		31011,
		31012,
		31013,
		31021,
		31022,
		31023,
		32011,
		32012,
		32013,
		32021,
		32022,
		32023,
		40011,
		40012,
		40013,
		40021,
		40022,
		40023,
		41011,
		41012,
		41013,
		41021,
		41022,
		41023,
		41031,
		41032,
		41033,
		42011,
		42012,
		42013,
		42021,
		42022,
		42023
	}
}

return
