
minetest.register_node("mychess:board", {
	description = "Chesss",
	inventory_image = "mychess_inv.png",
	wield_image = "mychess_inv.png",
	light_source = 5,
	tiles = {"mychess_border_cbl.png","mychess_border.png","mychess_border_side.png","mychess_border_side.png","mychess_border_side.png","mychess_border_side.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),

	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("mychess").."/schems/mychessboard.mts"
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


--Board Border

local board = {
	{"mychess:border"    ,{"mychess_border.png"}},

	{"mychess:borderb"   ,{
"mychess_border_bottom.png",
"mychess_border.png",
"mychess_border_side.png",
"mychess_border_side.png",
"mychess_border_side.png",
"mychess_border_side.png"}},

	{"mychess:bordercbl" ,{
"mychess_border_cornerbl.png",
"mychess_border.png",
"mychess_border_side.png",
"mychess_border_side.png",
"mychess_border_side.png",
"mychess_border_side.png"}},

	{"mychess:borderocbr",{
"mychess_border_cbr.png",
"mychess_border.png",
"mychess_border_side.png",
"mychess_border_side.png",
"mychess_border_side.png",
"mychess_border_side.png"}}
,

	{"mychess:white"     ,{"mychess_wboard.png"}},
	{"mychess:black"     ,{"mychess_bboard.png"}},

	{"mychess:whitet",{
"mychess_white_t.png",
"mychess_wboard.png",
"mychess_wboard.png",
"mychess_wboard.png",
"mychess_wboard.png",
"mychess_wboard.png"}},

	{"mychess:whitebl"   ,{
"mychess_white_bl.png",
"mychess_wboard.png",
"mychess_wboard.png",
"mychess_wboard.png",
"mychess_wboard.png",
"mychess_wboard.png"},},

}

for i in ipairs (board) do
local item = board[i][1]
local img = board[i][2]

minetest.register_node(item, {
	description = item,
	light_source = 5,
	tiles = img,
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky = 3,not_in_creative_inventory=1},
})
end


-- Punch on Turn------------------------------------------

local function update_node(pos, node) 
	minetest.set_node(pos, node)
end

local function punch(pos)
	local meta = minetest.get_meta(pos)
	local state = meta:get_int("state")
	local me = minetest.get_node(pos)
	local tmp_node
	local tmp_node2
	oben = {x=pos.x, y=pos.y, z=pos.z}
		if state == 1 then
			state = 0
			minetest.sound_play("mychess_ding", {pos = pos, gain = 0.3, max_hear_distance = 10})
			tmp_node = {name="mychess:turnwhite", param1=me.param1, param2=me.param2}
		else
			state = 1
			minetest.sound_play("mychess_ding", {pos = pos, gain = 0.3, max_hear_distance = 10})
			tmp_node = {name="mychess:turnblack", param1=me.param1, param2=me.param2}
		end
		update_node(pos, tmp_node)
		meta:set_int("state", state)
end

minetest.register_node("mychess:turnblack", {
	light_source = 5,
	tiles = {"mychess_bbutton.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1, not_in_creative_inventory=1},
	on_punch = function(pos, node, clicker)
		punch(pos)
	end,


})

minetest.register_node("mychess:turnwhite", {
	light_source = 5,
	tiles = {"mychess_wbutton.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1, not_in_creative_inventory=1},
	on_punch = function(pos, node, clicker)
		punch(pos)
	end,


})

minetest.register_node("mychess:stand", {
	tiles = {
		"mychess_beige.png",
		"mychess_beige.png",
		"mychess_beige.png",
		"mychess_beige.png",
		"mychess_beige.png",
		"mychess_beige.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {cracky = 1, not_in_creative_inventory=0},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, -0.375, 0.3125},
			{-0.25, -0.5, -0.25, 0.25, -0.3125, 0.25},
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375},
			{-0.1875, 0.3125, -0.1875, 0.1875, 0.5, 0.1875},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, -0.375, 0.3125},
			{-0.25, -0.5, -0.25, 0.25, -0.3125, 0.25},
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
			{-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
			{-0.4375, 0.375, -0.4375, 0.4375, 0.5, 0.4375},
			{-0.1875, 0.3125, -0.1875, 0.1875, 0.5, 0.1875},
		}
	}
})





