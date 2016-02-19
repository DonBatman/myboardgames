local board = {
{"cross","Cross"},
{"crossdot","Cross Dot"},
{"bordert","Border T"},
{"borderc","Border C"},
{"blank","Blank"},
}
for i in ipairs(board) do
local itm = board[i][1]
local des = board[i][2]

minetest.register_node("mygomoku:"..itm,{
	description = des,
	tiles = {
			"mygomoku_"..itm..".png",
			"mygomoku_blank.png",
			"mygomoku_blank.png",
			"mygomoku_blank.png",
			"mygomoku_blank.png",
			"mygomoku_blank.png",
			},
	paramtype2 = "facedir",
	drop = "",
	light_source = 5,
	groups = {cracky=3, not_in_creative_inventory = 1},
})
end
minetest.register_node("mygomoku:placer",{
	description = "Gomoku",
	inventory_image = "mygomoku_inv.png",
	wield_image = "mygomoku_inv.png",
	tiles = {
			"mygomoku_restart.png",
			"mygomoku_blank.png",
			"mygomoku_blank.png",
			"mygomoku_blank.png",
			"mygomoku_blank.png",
			"mygomoku_blank.png",
			},
	paramtype2 = "facedir",
	groups = {cracky=3},
	light_source = 5,
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		local schem = minetest.get_modpath("mygomoku").."/schems/mygomoku.mts"
		minetest.place_schematic(pos,schem,0, "air", true)
	end,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		if placer and minetest.check_player_privs(placer:get_player_name(), {myboardgames = true}) then
		else
			minetest.remove_node(pos)
			return true
		end
	end,
})

minetest.register_alias("mygomoku:stone_brown","mygomoku:stone_black")
minetest.register_node("mygomoku:stone_black", {
	description = "Black Go Stone",
	tiles = {
		"default_obsidian.png^[colorize:#000:100",
	},
	drawtype = "nodebox",
	paramtype = "light",
	drop = "",
	groups = {dig_immediate = 3,not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.45, -0.425, -0.225, 0.45, -0.35, 0.225}, 
			{-0.225, -0.425, -0.45, 0.225,-0.35, 0.45},
			{-0.3375, -0.425, -0.3375, 0.3375, -0.35, 0.3375}, 
			{-0.225, -0.5, -0.225, 0.225, -0.275, 0.225}, 
			{-0.1125,-0.5, -0.3375, 0.1125, -0.275, 0.3375}, 
			{-0.3375,-0.5, -0.1125, 0.3375, -0.275, 0.1125},
		}
	},
	buildable_to  = true,
	light_source = 8,
})
minetest.register_node("mygomoku:stone_white", {
	description = "White Go Stone",
	tiles = {
		"default_obsidian.png^[colorize:#fff:175",
	},
	drawtype = "nodebox",
	paramtype = "light",
	drop = "",
	groups = {dig_immediate = 3,not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.45, -0.425, -0.225, 0.45, -0.35, 0.225}, 
			{-0.225, -0.425, -0.45, 0.225,-0.35, 0.45},
			{-0.3375, -0.425, -0.3375, 0.3375, -0.35, 0.3375}, 
			{-0.225, -0.5, -0.225, 0.225, -0.275, 0.225}, 
			{-0.1125,-0.5, -0.3375, 0.1125, -0.275, 0.3375}, 
			{-0.3375,-0.5, -0.1125, 0.3375, -0.275, 0.1125},
		}
	},
	buildable_to  = true,
	light_source = 8,
})
minetest.register_alias("mygomoku:stone_brown_rf","mygomoku:stone_black_rf")
minetest.register_node("mygomoku:stone_black_rf", {
	description = "Black Go Stone rf",
	tiles = {
		"default_obsidian.png^[colorize:#000:100",
	},
	drawtype = "nodebox",
	paramtype = "light",
	drop = "mygomoku:stone_brown",
	groups = {dig_immediate = 3,not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.45, -0.5, -0.225, 0.45, 0, 0.225}, 
			{-0.225, -0.5, -0.45, 0.225,0, 0.45},
			{-0.3375, -0.5, -0.3375, 0.3375, 0, 0.3375}, 
			{-0.225, -0.5, -0.225, 0.225, 0.1375, 0.225}, 
			{-0.1125,-0.5, -0.3375, 0.1125, 0.1375, 0.3375}, 
			{-0.3375,-0.5, -0.1125, 0.3375, 0.1375, 0.1125},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.45, -0.5, -0.45, 0.45, 0.1375, 0.45}, 
	},
	light_source = 5,
	after_destruct = function(pos, oldnode)
	minetest.set_node(pos,{name="mygomoku:stone_brown_rf",param2=oldnode.param2})
	end,
})
minetest.register_node("mygomoku:stone_white_rf", {
	description = "White Go Stone rf",
	tiles = {
		"default_obsidian.png^[colorize:#fff:175",
	},
	drawtype = "nodebox",
	paramtype = "light",
	drop = "mygomoku:stone_white",
	groups = {dig_immediate = 3,not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.45, -0.5, -0.225, 0.45, 0, 0.225}, 
			{-0.225, -0.5, -0.45, 0.225,0, 0.45},
			{-0.3375, -0.5, -0.3375, 0.3375, 0, 0.3375}, 
			{-0.225, -0.5, -0.225, 0.225, 0.1375, 0.225}, 
			{-0.1125,-0.5, -0.3375, 0.1125, 0.1375, 0.3375}, 
			{-0.3375,-0.5, -0.1125, 0.3375, 0.1375, 0.1125},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.45, -0.5, -0.45, 0.45, 0.1375, 0.45}, 
	},
	light_source = 5,
	after_destruct = function(pos, oldnode)
	minetest.set_node(pos,{name="mygomoku:stone_white_rf",param2=oldnode.param2})
	end,
})
