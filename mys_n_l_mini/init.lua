local board_parts = {
	{"1","[colorize:red:200","mys_n_l_1.png",""},
	{"2","[colorize:blue:200","mys_n_l_2.png",""},
	{"3","[colorize:yellow:200","mys_n_l_3.png","mys_n_l_stail.png"},
	{"4","[colorize:green:200","mys_n_l_4.png",""},
	{"5","[colorize:red:200","mys_n_l_5.png",""},
	{"6","[colorize:blue:200","mys_n_l_6.png",""},
	{"7","[colorize:yellow:200","mys_n_l_7.png","mys_n_l_ladbot.png"},
	{"8","[colorize:green:200","mys_n_l_8.png",""},
	{"9","[colorize:red:200","mys_n_l_9.png",""},
	{"10","[colorize:blue:200","mys_n_l_1.png^mys_n_l_10.png","mys_n_l_smid.png"},
	{"11","[colorize:yellow:200","mys_n_l_1.png^mys_n_l_11.png","mys_n_l_ladbot.png"},
	{"12","[colorize:green:200","mys_n_l_1.png^mys_n_l_12.png",""},
	{"13","[colorize:red:200","mys_n_l_1.png^mys_n_l_13.png",""},
	{"14","[colorize:blue:200","mys_n_l_1.png^mys_n_l_14.png","mys_n_l_ladmid.png"},
	{"15","[colorize:yellow:200","mys_n_l_1.png^mys_n_l_15.png","mys_n_l_shead.png"},
	{"16","[colorize:green:200","mys_n_l_1.png^mys_n_l_16.png",""},
	{"17","[colorize:red:200","mys_n_l_1.png^mys_n_l_17.png","mys_n_l_stail.png"},
	{"18","[colorize:blue:200","mys_n_l_1.png^mys_n_l_18.png","mys_n_l_ladtop.png"},
	{"19","[colorize:yellow:200","mys_n_l_1.png^mys_n_l_19.png",""},
	{"20","[colorize:green:200","mys_n_l_2.png^mys_n_l_10.png","mys_n_l_smid.png"},
	{"21","[colorize:red:200","mys_n_l_2.png^mys_n_l_11.png",""},
	{"22","[colorize:blue:200","mys_n_l_2.png^mys_n_l_12.png",""},
	{"23","[colorize:yellow:200","mys_n_l_2.png^mys_n_l_13.png","mys_n_l_ladtop.png"},
	{"24","[colorize:green:200","mys_n_l_2.png^mys_n_l_14.png",""},
	{"25","[colorize:red:200","mys_n_l_2.png^mys_n_l_15.png",""},
	{"26","[colorize:blue:200","mys_n_l_2.png^mys_n_l_16.png","mys_n_l_ladbot.png"},
	{"27","[colorize:yellow:200","mys_n_l_2.png^mys_n_l_17.png","mys_n_l_stail.png"},
	{"28","[colorize:green:200","mys_n_l_2.png^mys_n_l_18.png",""},
	{"29","[colorize:red:200","mys_n_l_2.png^mys_n_l_19.png","mys_n_l_shead.png"},
	{"30","[colorize:blue:200","mys_n_l_3.png^mys_n_l_10.png",""},
	{"31","[colorize:red:200","mys_n_l_3.png^mys_n_l_11.png",""},
	{"32","[colorize:blue:200","mys_n_l_3.png^mys_n_l_12.png",""},
	{"33","[colorize:yellow:200","mys_n_l_3.png^mys_n_l_13.png",""},
	{"34","[colorize:green:200","mys_n_l_3.png^mys_n_l_14.png","mys_n_l_shead.png"},
	{"35","[colorize:red:200","mys_n_l_3.png^mys_n_l_15.png","mys_n_l_ladtop.png"},
	{"36","[colorize:blue:200","mys_n_l_3.png^mys_n_l_16.png",""},
	}
for i in ipairs(board_parts) do
	local num = board_parts[i][1]
	local col = board_parts[i][2]
	local number = board_parts[i][3]
	local sorl = board_parts[i][4]
	
	
minetest.register_node("mys_n_l_mini:board_block"..num,{
	description = "Block "..num,
	tiles = {
			"mys_n_l_base.png^"..col.."^mys_n_l_edge.png^"..sorl.."^"..number,
			"mys_n_l_base.png^"..col.."mys_n_l_edge.png",
			"mys_n_l_base.png^"..col.."mys_n_l_edge.png",
			"mys_n_l_base.png^"..col.."mys_n_l_edge.png",
			"mys_n_l_base.png^"..col.."mys_n_l_edge.png",
			"mys_n_l_base.png^"..col.."mys_n_l_edge.png"
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1,not_in_creative_inventory = 1},
})
end
minetest.register_node("mys_n_l_mini:placer",{
	description = "Snakes and Ladders Mini",
	inventory_image = "mys_n_l_mini_inv.png",
	wield_image = "mys_n_l_mini_inv.png",
	tiles = {
			"mys_n_l_base.png^mys_n_l_ladmid.png^mys_n_l_edgem.png"
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("mys_n_l_mini").."/schems/mys_n_l_mini.mts"
		minetest.place_schematic({x=pos.x,y=pos.y,z=pos.z},schem,0, "air", true)
	end,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		if placer and minetest.check_player_privs(placer:get_player_name(), {myboardgames = true}) then
		else
			minetest.remove_node(pos)
			return true
		end
	end,
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

minetest.register_node("mys_n_l_mini:"..item,{
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
dofile(minetest.get_modpath("mys_n_l_mini").."/dice.lua")
