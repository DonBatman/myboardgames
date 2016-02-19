local dice = {
	{"mylittle_bg:1",{"mylittle_bg_1.png","mylittle_bg_2.png","mylittle_bg_3.png","mylittle_bg_4.png","mylittle_bg_5.png","mylittle_bg_6.png"},"1"},
	{"mylittle_bg:2",{"mylittle_bg_2.png","mylittle_bg_3.png","mylittle_bg_4.png","mylittle_bg_5.png","mylittle_bg_6.png","mylittle_bg_1.png"},"2"},
	{"mylittle_bg:3",{"mylittle_bg_3.png","mylittle_bg_4.png","mylittle_bg_5.png","mylittle_bg_6.png","mylittle_bg_1.png","mylittle_bg_2.png"},"3"},
	{"mylittle_bg:4",{"mylittle_bg_4.png","mylittle_bg_5.png","mylittle_bg_6.png","mylittle_bg_1.png","mylittle_bg_2.png","mylittle_bg_3.png"},"4"},
	{"mylittle_bg:5",{"mylittle_bg_5.png","mylittle_bg_6.png","mylittle_bg_1.png","mylittle_bg_2.png","mylittle_bg_3.png","mylittle_bg_4.png"},"5"},
	{"mylittle_bg:6",{"mylittle_bg_6.png","mylittle_bg_1.png","mylittle_bg_2.png","mylittle_bg_3.png","mylittle_bg_4.png","mylittle_bg_5.png"},"6"},
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
	groups = {cracky = 3, not_in_creative_inventory=1},

on_punch = function(pos, node, puncher, pointed_thing)
	local timer = minetest.get_node_timer(pos)
	local ran = math.random(1,6)
	minetest.set_node(pos,{name="mylittle_bg:roll"})
	   timer:start(2)
end,

})
end
minetest.register_node("mylittle_bg:roll",{
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
	minetest.set_node(pos,{name="mylittle_bg:"..ran})
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

minetest.register_node("mylittle_bg:"..item,{
	description = desc.." Player",
	tiles = {"default_gravel.png"..col},
	drawtype = "nodebox",
	paramtype = "light",
	light_source = 11,
	groups = {cracky = 1, dig_immediate=3, not_in_creative_inventory=1},
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
minetest.register_node("mylittle_bg:board",{
	description = "Little Board Game",
	inventory_image = "mylittle_bg_inv.png",
	wield_image = "mylittle_bg_inv.png",
	tiles = {"mylittle_bg_inv.png"},
	drawtype = "normal",
	paramtype = "light",
	light_source = 8,
	groups = {cracky = 1},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("mylittle_bg").."/schems/my_little_bg.mts"
		minetest.place_schematic({x=pos.x,y=pos.y-2,z=pos.z},schem,0, "air", true)
	end,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		if placer and minetest.check_player_privs(placer:get_player_name(), {myboardgames = true}) then
		else
			minetest.remove_node(pos)
			return true
		end
	end,
})
local signs = {
	{"1","red","^[colorize:red:120"},
	{"2","green","^[colorize:green:120"},
	{"3","yellow","^[colorize:yellow:120"},
	{"4","blue","^[colorize:blue:120"},
	}
for i in ipairs (signs) do
local desc = signs[i][1]
local item = signs[i][2]
local col  = signs[i][3]

minetest.register_node("mylittle_bg:sign"..desc,{
	description = "sign"..desc,
	tiles = {"mylittle_bg_sign"..desc..".png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	light_source = 11,
	groups = {cracky = 1, not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.375, 0.4375, 0.4375, 0.3125, 0.5},
		}
	}
})
end
















