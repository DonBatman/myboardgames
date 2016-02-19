local board_parts = {
	{"1","[colorize:red:200","mys_n_l_1.png",""},
	{"2","[colorize:blue:200","mys_n_l_2.png",""},
	{"3","[colorize:yellow:200","mys_n_l_3.png","mys_n_l_ladbot.png"},
	{"4","[colorize:green:200","mys_n_l_4.png",""},
	{"5","[colorize:red:200","mys_n_l_5.png",""},
	{"6","[colorize:blue:200","mys_n_l_6.png",""},
	{"7","[colorize:yellow:200","mys_n_l_7.png",""},
	{"8","[colorize:green:200","mys_n_l_8.png",""},
	{"9","[colorize:red:200","mys_n_l_9.png",""},
	{"10","[colorize:blue:200","mys_n_l_1.png^mys_n_l_10.png",""},
	{"11","[colorize:yellow:200","mys_n_l_1.png^mys_n_l_11.png",""},
	{"12","[colorize:green:200","mys_n_l_1.png^mys_n_l_12.png",""},
	{"13","[colorize:red:200","mys_n_l_1.png^mys_n_l_13.png","mys_n_l_stail.png"},
	{"14","[colorize:blue:200","mys_n_l_1.png^mys_n_l_14.png",""},
	{"15","[colorize:yellow:200","mys_n_l_1.png^mys_n_l_15.png",""},
	{"16","[colorize:green:200","mys_n_l_1.png^mys_n_l_16.png",""},
	{"17","[colorize:red:200","mys_n_l_1.png^mys_n_l_17.png",""},
	{"18","[colorize:blue:200","mys_n_l_1.png^mys_n_l_18.png","mys_n_l_ladtop.png"},
	{"19","[colorize:yellow:200","mys_n_l_1.png^mys_n_l_19.png",""},
	{"20","[colorize:green:200","mys_n_l_2.png^mys_n_l_10.png",""},
	{"21","[colorize:red:200","mys_n_l_2.png^mys_n_l_11.png",""},
	{"22","[colorize:blue:200","mys_n_l_2.png^mys_n_l_12.png","mys_n_l_stail.png"},
	{"23","[colorize:yellow:200","mys_n_l_2.png^mys_n_l_13.png",""},
	{"24","[colorize:green:200","mys_n_l_2.png^mys_n_l_14.png",""},
	{"25","[colorize:red:200","mys_n_l_2.png^mys_n_l_15.png",""},
	{"26","[colorize:blue:200","mys_n_l_2.png^mys_n_l_16.png","mys_n_l_ladbot.png"},
	{"27","[colorize:yellow:200","mys_n_l_2.png^mys_n_l_17.png",""},
	{"28","[colorize:green:200","mys_n_l_2.png^mys_n_l_18.png","mys_n_l_sturn.png^[transformR180"},
	{"29","[colorize:red:200","mys_n_l_2.png^mys_n_l_19.png","mys_n_l_sturn.png"},
	{"30","[colorize:blue:200","mys_n_l_3.png^mys_n_l_10.png",""},
	{"31","[colorize:red:200","mys_n_l_3.png^mys_n_l_11.png",""},
	{"32","[colorize:blue:200","mys_n_l_3.png^mys_n_l_12.png","mys_n_l_smid.png"},
	{"33","[colorize:yellow:200","mys_n_l_3.png^mys_n_l_13.png",""},
	{"34","[colorize:green:200","mys_n_l_3.png^mys_n_l_14.png",""},
	{"35","[colorize:red:200","mys_n_l_3.png^mys_n_l_15.png","mys_n_l_ladmid.png"},
	{"36","[colorize:blue:200","mys_n_l_3.png^mys_n_l_16.png",""},
	{"37","[colorize:yellow:200","mys_n_l_3.png^mys_n_l_17.png",""},
	{"38","[colorize:green:200","mys_n_l_3.png^mys_n_l_18.png","mys_n_l_sturn.png"},
	{"39","[colorize:red:200","mys_n_l_3.png^mys_n_l_19.png","mys_n_l_sturn.png^[transformR180"},
	{"40","[colorize:blue:200","mys_n_l_4.png^mys_n_l_10.png",""},
	{"41","[colorize:red:200","mys_n_l_4.png^mys_n_l_11.png","mys_n_l_ladbot.png"},
	{"42","[colorize:blue:200","mys_n_l_4.png^mys_n_l_12.png",""},
	{"43","[colorize:yellow:200","mys_n_l_4.png^mys_n_l_13.png","mys_n_l_sturn.png^[transformR180"},
	{"44","[colorize:green:200","mys_n_l_4.png^mys_n_l_14.png","mys_n_l_sturn.png"},
	{"45","[colorize:red:200","mys_n_l_4.png^mys_n_l_15.png",""},
	{"46","[colorize:blue:200","mys_n_l_4.png^mys_n_l_16.png","mys_n_l_ladtop.png"},
	{"47","[colorize:yellow:200","mys_n_l_4.png^mys_n_l_17.png",""},
	{"48","[colorize:green:200","mys_n_l_4.png^mys_n_l_18.png",""},
	{"49","[colorize:red:200","mys_n_l_4.png^mys_n_l_19.png","mys_n_l_shead.png"},
	{"50","[colorize:blue:200","mys_n_l_5.png^mys_n_l_10.png",""},
	{"51","[colorize:red:200","mys_n_l_5.png^mys_n_l_11.png",""},
	{"52","[colorize:blue:200","mys_n_l_5.png^mys_n_l_12.png",""},
	{"53","[colorize:yellow:200","mys_n_l_5.png^mys_n_l_13.png",""},
	{"54","[colorize:green:200","mys_n_l_5.png^mys_n_l_14.png","mys_n_l_ladbot.png"},
	{"55","[colorize:red:200","mys_n_l_5.png^mys_n_l_15.png",""},
	{"56","[colorize:blue:200","mys_n_l_5.png^mys_n_l_16.png",""},
	{"57","[colorize:yellow:200","mys_n_l_5.png^mys_n_l_17.png","mys_n_l_smid.png"},
	{"58","[colorize:green:200","mys_n_l_5.png^mys_n_l_18.png",""},
	{"59","[colorize:red:200","mys_n_l_5.png^mys_n_l_19.png",""},
	{"60","[colorize:blue:200","mys_n_l_6.png^mys_n_l_10.png","mys_n_l_ladmid.png"},
	{"61","[colorize:red:200","mys_n_l_6.png^mys_n_l_11.png","mys_n_l_ladtop.png"},
	{"62","[colorize:blue:200","mys_n_l_6.png^mys_n_l_12.png",""},
	{"63","[colorize:yellow:200","mys_n_l_6.png^mys_n_l_13.png",""},
	{"64","[colorize:green:200","mys_n_l_6.png^mys_n_l_14.png","mys_n_l_shead.png"},
	{"65","[colorize:red:200","mys_n_l_6.png^mys_n_l_15.png",""},
	{"66","[colorize:blue:200","mys_n_l_6.png^mys_n_l_16.png",""},
	{"67","[colorize:yellow:200","mys_n_l_6.png^mys_n_l_17.png","mys_n_l_ladmid.png"},
	{"68","[colorize:green:200","mys_n_l_6.png^mys_n_l_18.png",""},
	{"69","[colorize:red:200","mys_n_l_6.png^mys_n_l_19.png","mys_n_l_stail.png"},
	{"70","[colorize:blue:200","mys_n_l_7.png^mys_n_l_10.png",""},
	{"71","[colorize:red:200","mys_n_l_7.png^mys_n_l_11.png","mys_n_l_sturn.png"},
	{"72","[colorize:blue:200","mys_n_l_7.png^mys_n_l_12.png","mys_n_l_sturn.png^[transformR180"},
	{"73","[colorize:yellow:200","mys_n_l_7.png^mys_n_l_13.png",""},
	{"74","[colorize:green:200","mys_n_l_7.png^mys_n_l_14.png","mys_n_l_ladmid.png"},
	{"75","[colorize:red:200","mys_n_l_7.png^mys_n_l_15.png",""},
	{"76","[colorize:blue:200","mys_n_l_7.png^mys_n_l_16.png",""},
	{"77","[colorize:yellow:200","mys_n_l_7.png^mys_n_l_17.png",""},
	{"78","[colorize:green:200","mys_n_l_7.png^mys_n_l_18.png",""},
	{"79","[colorize:red:200","mys_n_l_7.png^mys_n_l_19.png",""},
	{"80","[colorize:blue:200","mys_n_l_8.png^mys_n_l_10.png",""},
	{"81","[colorize:red:200","mys_n_l_8.png^mys_n_l_11.png",""},
	{"82","[colorize:blue:200","mys_n_l_8.png^mys_n_l_12.png",""},
	{"83","[colorize:yellow:200","mys_n_l_8.png^mys_n_l_13.png","mys_n_l_ladbot.png"},
	{"84","[colorize:green:200","mys_n_l_8.png^mys_n_l_14.png",""},
	{"85","[colorize:red:200","mys_n_l_8.png^mys_n_l_15.png","mys_n_l_stail.png^[transformR270"},
	{"86","[colorize:blue:200","mys_n_l_8.png^mys_n_l_16.png","mys_n_l_sturn.png"},
	{"87","[colorize:yellow:200","mys_n_l_8.png^mys_n_l_17.png","mys_n_l_ladtop.png"},
	{"88","[colorize:green:200","mys_n_l_8.png^mys_n_l_18.png",""},
	{"89","[colorize:red:200","mys_n_l_8.png^mys_n_l_19.png",""},
	{"90","[colorize:blue:200","mys_n_l_9.png^mys_n_l_10.png","mys_n_l_shead.png"},
	{"91","[colorize:red:200","mys_n_l_9.png^mys_n_l_11.png",""},
	{"92","[colorize:blue:200","mys_n_l_9.png^mys_n_l_12.png",""},
	{"93","[colorize:yellow:200","mys_n_l_9.png^mys_n_l_13.png",""},
	{"94","[colorize:green:200","mys_n_l_9.png^mys_n_l_14.png",""},
	{"95","[colorize:red:200","mys_n_l_9.png^mys_n_l_15.png","mys_n_l_shead.png"},
	{"96","[colorize:blue:200","mys_n_l_9.png^mys_n_l_16.png",""},
	{"97","[colorize:yellow:200","mys_n_l_9.png^mys_n_l_17.png",""},
	{"98","[colorize:green:200","mys_n_l_9.png^mys_n_l_18.png","mys_n_l_ladtop.png"},
	{"99","[colorize:red:200","mys_n_l_9.png^mys_n_l_19.png",""},
	{"100","[colorize:blue:200","mys_n_l_1.png^mys_n_l_10.png^mys_n_l_100.png",""},
	}
for i in ipairs(board_parts) do
	local num = board_parts[i][1]
	local col = board_parts[i][2]
	local number = board_parts[i][3]
	local sorl = board_parts[i][4]
	
	
minetest.register_node("mys_n_l:board_block"..num,{
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
minetest.register_node("mys_n_l:placer",{
	description = "Snakes and Ladders",
	inventory_image = "mys_n_l_inv.png",
	wield_image = "mys_n_l_inv.png",
	tiles = {
			"mys_n_l_base.png^mys_n_l_edge.png^mys_n_l_ladmid.png"
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("mys_n_l").."/schems/mys_n_l.mts"
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

minetest.register_node("mys_n_l:"..item,{
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
dofile(minetest.get_modpath("mys_n_l").."/dice.lua")
