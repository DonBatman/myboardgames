local dice = {
	{"my_game_pieces:1",
		{"my_game_pieces_1.png",
		"my_game_pieces_2.png",
		"my_game_pieces_3.png",
		"my_game_pieces_4.png",
		"my_game_pieces_5.png",
		"my_game_pieces_6.png"},"1",1},
	{"my_game_pieces:2",
		{"my_game_pieces_2.png",
		"my_game_pieces_3.png",
		"my_game_pieces_4.png",
		"my_game_pieces_5.png",
		"my_game_pieces_6.png",
		"my_game_pieces_1.png"},"2",1},
	{"my_game_pieces:3",
		{"my_game_pieces_3.png",
		"my_game_pieces_4.png",
		"my_game_pieces_5.png",
		"my_game_pieces_6.png",
		"my_game_pieces_1.png",
		"my_game_pieces_2.png"},"3",0},
	{"my_game_pieces:4",
		{"my_game_pieces_4.png",
		"my_game_pieces_5.png",
		"my_game_pieces_6.png",
		"my_game_pieces_1.png",
		"my_game_pieces_2.png",
		"my_game_pieces_3.png"},"4",1},
	{"my_game_pieces:5",
		{"my_game_pieces_5.png",
		"my_game_pieces_6.png",
		"my_game_pieces_1.png",
		"my_game_pieces_2.png",
		"my_game_pieces_3.png",
		"my_game_pieces_4.png"},"5",1},
	{"my_game_pieces:6",
		{"my_game_pieces_6.png",
		"my_game_pieces_1.png",
		"my_game_pieces_2.png",
		"my_game_pieces_3.png",
		"my_game_pieces_4.png",
		"my_game_pieces_5.png"},"6",1},
	}
for i in ipairs (dice) do
local d1 = dice [i][1]
local d2 = dice [i][2]
local d3 = dice [i][3]
local nici = dice [i][4]

minetest.register_node(d1,{
	description = d3,
	tiles = d2,
	drawtype = "normal",
	paramtype = "light",
	groups = {dig_immediate=3, not_in_creative_inventory=nici},
after_place_node = function(pos, placer, itemstack, pointed_thing)
	local timer = minetest.get_node_timer(pos)
	local ran = math.random(1,6)
	minetest.set_node(pos,{name="my_game_pieces:roll"})
	   timer:start(2)
end,

})
end
minetest.register_node("my_game_pieces:roll",{
	description = d3,
	tiles = {
		{name="my_game_pieces_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="my_game_pieces_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="my_game_pieces_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="my_game_pieces_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="my_game_pieces_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="my_game_pieces_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		},
	drawtype = "normal",
	paramtype = "light",
	groups = {dig_immediate=3, not_in_creative_inventory=1},

on_timer = function(pos, elapsed)
	local ran = math.random(1,6)
	minetest.set_node(pos,{name="my_game_pieces:"..ran})
end
})
local pieces = {
	{"Red","red","^[colorize:red:120"},
	{"Green","green","^[colorize:green:120"},
	{"Yellow","yellow","^[colorize:yellow:120"},
	{"Blue","blue","^[colorize:blue:120"},
	{"Pink","pink","^[colorize:pink:120"},
	{"White","white","^[colorize:white:120"},
	{"Black","black","^[colorize:black:120"},
	}
for i in ipairs (pieces) do
local desc = pieces[i][1]
local item = pieces[i][2]
local col  = pieces[i][3]

minetest.register_node("my_game_pieces:"..item,{
	description = desc.." Player",
	tiles = {"default_gravel.png"..col},
	drawtype = "nodebox",
	paramtype = "light",
	light_source = 11,
	groups = {dig_immediate=3, not_in_creative_inventory=0},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, -0.3125, 0.3125},
			{-0.125, -0.3125, -0.125, 0.125, 0.125, 0.125},
			{-0.1875, 0.125, -0.1875, 0.1875, 0.3125, 0.1875},
		}
	}
})
end

















