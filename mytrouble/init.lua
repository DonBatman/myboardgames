local dots = {
	{"Red","red","r"},
	{"Blue","blue","b"},
	{"Green","green","g"},
	{"Orange","orange","o"},
	{"Base","base","a"},
	}
for i in ipairs(dots) do
local desc = dots[i][1]
local col = dots[i][2]
local let = dots[i][3]

minetest.register_node("mytrouble:dot_"..col,{
	description = desc.." Dot",
	tiles = {"default_clay.png^mytrouble_"..let..".png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1,not_in_creative_inventory=1}
})
minetest.register_node("mytrouble:squ_"..col,{
	description = desc.." Dot",
	tiles = {
			"default_clay.png^mytrouble_"..let.."s.png",
			"default_clay.png",
			"default_clay.png",
			"default_clay.png",
			"default_clay.png",
			"default_clay.png",
			},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1,not_in_creative_inventory=1}
})
end
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

minetest.register_node("mytrouble:"..item,{
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
minetest.register_node("mytrouble:placer",{
	description = "Trouble",
	inventory_image = "mytrouble_inv.png",
	wield_image = "mytrouble_inv.png",
	tiles = {
			"default_clay.png^mytrouble_o.png"
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("mytrouble").."/schems/mytrouble.mts"
		minetest.place_schematic({x=pos.x-1,y=pos.y,z=pos.z-1},schem,0, "air", true)
	end,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		if placer and minetest.check_player_privs(placer:get_player_name(), {myboardgames = true}) then
		else
			minetest.remove_node(pos)
			return true
		end
	end,
})
dofile(minetest.get_modpath("mytrouble").."/dice.lua")
