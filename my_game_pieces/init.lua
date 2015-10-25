local dice = {
	{"1","1","2","3","4","5","6",1},
	{"2","2","3","4","5","6","1",1},
	{"3","3","4","5","6","1","2",0},
	{"4","4","5","6","1","2","3",1},
	{"5","5","6","1","2","3","4",1},
	{"6","6","1","2","3","4","5",1},
	}
for i in ipairs (dice) do
local d1 = dice [i][1]
local i1 = dice [i][2]
local i2 = dice [i][3]
local i3 = dice [i][4]
local i4 = dice [i][5]
local i5 = dice [i][6]
local i6 = dice [i][7]
local nici = dice [i][8]

minetest.register_node("my_game_pieces:dice_"..d1,{
	description = "Dice",
	tiles = {"my_game_pieces_"..i1..".png",
		"my_game_pieces_"..i2..".png",
		"my_game_pieces_"..i3..".png",
		"my_game_pieces_"..i4..".png",
		"my_game_pieces_"..i5..".png",
		"my_game_pieces_"..i6..".png"},
	drawtype = "normal",
	paramtype = "light",
	drop = "my_game_pieces:dice_3",
	groups = {dig_immediate=3, not_in_creative_inventory=nici},
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		minetest.set_node(pos,{name="my_game_pieces:roll"})
	end,

})
end
minetest.register_node("my_game_pieces:roll",{
	description = "Rolling",
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
	drop = "my_game_pieces:dice_3",
	groups = {dig_immediate=3, not_in_creative_inventory=1},
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		minetest.after(2, function()
			local ran = math.random(1,6)
			minetest.set_node(pos,{name="my_game_pieces:dice_"..ran})
		end)
	end,
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

















