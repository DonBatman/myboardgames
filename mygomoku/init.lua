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
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("mygomoku").."/schems/mygomoku.mts"
	minetest.place_schematic(pos,schem,0, "air", true)
end,
})

minetest.register_node("mygomoku:stone_brown", {
	description = "Stone Brown",
	tiles = {
		"mygomoku_blank.png^[colorize:brown:200",
	},
	drawtype = "nodebox",
	paramtype = "light",
	drop = "",
	groups = {dig_immediate = 3,not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.125, 0.25, -0.4375, 0.125},
			{-0.125, -0.5, -0.25, 0.125, -0.4375, 0.25},
			{-0.1875, -0.5, -0.1875, 0.1875, -0.4375, 0.1875},
			{-0.125, -0.5, -0.125, 0.125, -0.375, 0.125},
			{-0.0625, -0.5, -0.1875, 0.0625, -0.375, 0.1875},
			{-0.1875, -0.5, -0.0625, 0.1875, -0.375, 0.0625},
		}
	}
})
minetest.register_node("mygomoku:stone_white", {
	description = "Stone White",
	tiles = {
		"mygomoku_blank.png^[colorize:brown:100",
	},
	drawtype = "nodebox",
	paramtype = "light",
	drop = "",
	groups = {dig_immediate = 3,not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.125, 0.25, -0.4375, 0.125},
			{-0.125, -0.5, -0.25, 0.125, -0.4375, 0.25},
			{-0.1875, -0.5, -0.1875, 0.1875, -0.4375, 0.1875},
			{-0.125, -0.5, -0.125, 0.125, -0.375, 0.125},
			{-0.0625, -0.5, -0.1875, 0.0625, -0.375, 0.1875},
			{-0.1875, -0.5, -0.0625, 0.1875, -0.375, 0.0625},
		}
	}
})
minetest.register_node("mygomoku:stone_brown_rf", {
	description = "Stone Brown rf",
	tiles = {
		"mygomoku_blank.png^[colorize:brown:200",
	},
	drawtype = "nodebox",
	paramtype = "light",
	drop = "mygomoku:stone_brown",
	groups = {dig_immediate = 3,not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.125, 0.25, -0.4375, 0.125},
			{-0.125, -0.5, -0.25, 0.125, -0.4375, 0.25},
			{-0.1875, -0.5, -0.1875, 0.1875, -0.4375, 0.1875},
			{-0.125, -0.5, -0.125, 0.125, -0.375, 0.125},
			{-0.0625, -0.5, -0.1875, 0.0625, -0.375, 0.1875},
			{-0.1875, -0.5, -0.0625, 0.1875, -0.375, 0.0625},
		}
	},
	after_destruct = function(pos, oldnode)
	minetest.set_node(pos,{name="mygomoku:stone_brown_rf",param2=oldnode.param2})
	end,
})
minetest.register_node("mygomoku:stone_white_rf", {
	description = "Stone White rf",
	tiles = {
		"mygomoku_blank.png^[colorize:brown:100",
	},
	drawtype = "nodebox",
	paramtype = "light",
	drop = "mygomoku:stone_white",
	groups = {dig_immediate = 3,not_in_creative_inventory = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, -0.125, 0.25, -0.4375, 0.125},
			{-0.125, -0.5, -0.25, 0.125, -0.4375, 0.25},
			{-0.1875, -0.5, -0.1875, 0.1875, -0.4375, 0.1875},
			{-0.125, -0.5, -0.125, 0.125, -0.375, 0.125},
			{-0.0625, -0.5, -0.1875, 0.0625, -0.375, 0.1875},
			{-0.1875, -0.5, -0.0625, 0.1875, -0.375, 0.0625},
		}
	},
	after_destruct = function(pos, oldnode)
	minetest.set_node(pos,{name="mygomoku:stone_white_rf",param2=oldnode.param2})
	end,
})
