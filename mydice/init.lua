local dice = {
	{"mydice:1",{"mydice_1.png","mydice_2.png","mydice_3.png","mydice_4.png","mydice_5.png","mydice_6.png"},"1"},
	{"mydice:2",{"mydice_2.png","mydice_3.png","mydice_4.png","mydice_5.png","mydice_6.png","mydice_1.png"},"2"},
	{"mydice:3",{"mydice_3.png","mydice_4.png","mydice_5.png","mydice_6.png","mydice_1.png","mydice_2.png"},"3"},
	{"mydice:4",{"mydice_4.png","mydice_5.png","mydice_6.png","mydice_1.png","mydice_2.png","mydice_3.png"},"4"},
	{"mydice:5",{"mydice_5.png","mydice_6.png","mydice_1.png","mydice_2.png","mydice_3.png","mydice_4.png"},"5"},
	{"mydice:6",{"mydice_6.png","mydice_1.png","mydice_2.png","mydice_3.png","mydice_4.png","mydice_5.png"},"6"},
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
	groups = {cracky = 3},

on_punch = function(pos, node, puncher, pointed_thing)
	local timer = minetest.get_node_timer(pos)
	local ran = math.random(1,6)
	minetest.set_node(pos,{name="mydice:roll"})
	   timer:start(2)
end,

})
end
minetest.register_node("mydice:roll",{
	description = d3,
	tiles = {
		{name="mydice_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="mydice_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="mydice_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="mydice_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="mydice_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		{name="mydice_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.3}},
		},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 3},

on_timer = function(pos, elapsed)
	local ran = math.random(1,6)
	minetest.set_node(pos,{name="mydice:"..ran})
end
})
local pieces = {
	{"Red","red","^[colorize:red:120"},
	{"Green","green","^[colorize:green:120"},
	{"Yellow","yellow","^[colorize:yellow:120"},
	{"Blue","blue","^[colorize:blue:120"},
	}
for i in ipairs (pieces) do
local desc = pieces[i][1]
local item = pieces[i][2]
local col  = pieces[i][3]

minetest.register_node("mydice:"..item,{
	description = desc.." Player",
	tiles = {"default_gravel.png"..col},
	drawtype = "nodebox",
	paramtype = "light",
	light_source = 11,
	groups = {cracky = 1, dig_immediate=3},
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
minetest.register_node("mydice:reset",{
	description = "reset",
	tiles = {"default_coal_block.png^default_snowball.png"},
	drawtype = "normal",
	paramtype = "light",
	light_source = 8,
	groups = {cracky = 1},
on_rightclick = function(pos, node, player, itemstack, pointed_thing)
local schem = minetest.get_modpath("mydice").."/schems/board1.mts"
	minetest.place_schematic({x=pos.x,y=pos.y-2,z=pos.z},schem,0, "air", true)
end,
})


















