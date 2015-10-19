local dice = {
	{"mys_n_l:1",{"mylittle_bg_1.png","mylittle_bg_2.png","mylittle_bg_3.png","mylittle_bg_4.png","mylittle_bg_5.png","mylittle_bg_6.png"},"1"},
	{"mys_n_l:2",{"mylittle_bg_2.png","mylittle_bg_3.png","mylittle_bg_4.png","mylittle_bg_5.png","mylittle_bg_6.png","mylittle_bg_1.png"},"2"},
	{"mys_n_l:3",{"mylittle_bg_3.png","mylittle_bg_4.png","mylittle_bg_5.png","mylittle_bg_6.png","mylittle_bg_1.png","mylittle_bg_2.png"},"3"},
	{"mys_n_l:4",{"mylittle_bg_4.png","mylittle_bg_5.png","mylittle_bg_6.png","mylittle_bg_1.png","mylittle_bg_2.png","mylittle_bg_3.png"},"4"},
	{"mys_n_l:5",{"mylittle_bg_5.png","mylittle_bg_6.png","mylittle_bg_1.png","mylittle_bg_2.png","mylittle_bg_3.png","mylittle_bg_4.png"},"5"},
	{"mys_n_l:6",{"mylittle_bg_6.png","mylittle_bg_1.png","mylittle_bg_2.png","mylittle_bg_3.png","mylittle_bg_4.png","mylittle_bg_5.png"},"6"},
	}
for i in ipairs (dice) do
local d1 = dice [i][1]
local d2 = dice [i][2]
local d3 = dice [i][3]

minetest.register_node(d1,{
	description = d3,
	tiles = d2,
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1, not_in_creative_inventory=1},

on_punch = function(pos, node, puncher, pointed_thing)
	local timer = minetest.get_node_timer(pos)
	local ran = math.random(1,6)
	minetest.set_node(pos,{name="mys_n_l:roll"})
	   timer:start(2)
end,

})
end
minetest.register_node("mys_n_l:roll",{
	description = "roll",
	tiles = {
		{name="mylittle_bg_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="mylittle_bg_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="mylittle_bg_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="mylittle_bg_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="mylittle_bg_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="mylittle_bg_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 3, not_in_creative_inventory=1},

on_timer = function(pos, elapsed)
	local ran = math.random(1,6)
	minetest.set_node(pos,{name="mys_n_l:"..ran})
end
})
