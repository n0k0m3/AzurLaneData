pg = pg or {}
slot1[1] = {
	name = "低落的心情",
	upper_bound = 0,
	id = 1,
	lower_bound = 0,
	icon = "express_1",
	desc = "energy_desc_1"
}
slot1[2] = {
	name = "一般的心情",
	upper_bound = 30,
	id = 2,
	lower_bound = 1,
	icon = "express_2",
	desc = "energy_desc_2"
}
slot1[3] = {
	name = "好心情",
	upper_bound = 120,
	id = 3,
	lower_bound = 31,
	icon = "express_3",
	desc = "energy_desc_3"
}
slot1[4] = {
	name = "很好心情",
	upper_bound = 150,
	id = 4,
	lower_bound = 121,
	icon = "express_4",
	desc = "energy_desc_4"
}
slot1.all = {
	1,
	2,
	3,
	4
}
pg.energy_template = {}