
minetest.register_node("chess:board", {
	description = "Chess Board",
	inventory_image = "board_inven.png",
	wield_image = "board_inven.png",
	light_source = 5,
	tiles = {"border_cbl.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 3},
	sounds = default.node_sound_stone_defaults(),

on_rightclick = function(pos, node, player, itemstack, pointed_thing)
local schem = minetest.get_modpath("chess").."/schems/chess_board.mts"
	minetest.place_schematic({x=pos.x,y=pos.y,z=pos.z},schem,0, "air", true)
end,

})


--Board Border

local board = {
	{"chess:border"    ,{"border.png"}},
	{"chess:borderl"   ,{"border_left.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:borderr"   ,{"border_right.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:bordert"   ,{"border_top.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:borderb"   ,{"border_bottom.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:bordercbr" ,{"border_cornerbr.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:bordercbl" ,{"border_cornerbl.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:borderctr" ,{"border_cornertr.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:borderctl" ,{"border_cornertl.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:borderoctl",{"border_ctl.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:borderoctr",{"border_ctr.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:borderocbl",{"border_cbl.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:borderocbr",{"border_cbr.png","border.png","border_side.png","border_side.png","border_side.png","border_side.png"}},
	{"chess:white"     ,{"chess_wboard.png"}},
	{"chess:black"     ,{"chess_bboard.png"}},
	{"chess:whitet"    ,{"white_t.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png"}},
	{"chess:whiteb"    ,{"white_b.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png"}},
	{"chess:whitebl"   ,{"white_bl.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png"},},
	{"chess:whitebr"   ,{"white_br.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png"}},
	{"chess:whitetl"   ,{"white_tl.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png"}},
	{"chess:whitetr"   ,{"white_tr.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png","chess_wboard.png"}},

}

for i in ipairs (board) do
local item = board[i][1]
local img = board[i][2]

minetest.register_node(item, {
	light_source = 5,
	tiles = img,
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1, not_in_creative_inventory=1},
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
			minetest.sound_play("chess_ding", {pos = pos, gain = 0.3, max_hear_distance = 10})
			tmp_node = {name="chess:turnwhite", param1=me.param1, param2=me.param2}
		else
			state = 1
			minetest.sound_play("chess_ding", {pos = pos, gain = 0.3, max_hear_distance = 10})
			tmp_node = {name="chess:turnblack", param1=me.param1, param2=me.param2}
		end
		update_node(pos, tmp_node)
		meta:set_int("state", state)
end

minetest.register_node("chess:turnblack", {
	light_source = 5,
	tiles = {"chess_bbutton.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1, not_in_creative_inventory=1},
	on_punch = function(pos, node, clicker)
		punch(pos)
	end,


})

minetest.register_node("chess:turnwhite", {
	light_source = 5,
	tiles = {"chess_wbutton.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1, not_in_creative_inventory=1},
	on_punch = function(pos, node, clicker)
		punch(pos)
	end,


})


minetest.register_node("chess:beige", {
	light_source = 5,
	tiles = {"chess_beige.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1, not_in_creative_inventory=1},



})
minetest.register_node("chess:stand", {
	tiles = {
		"chess_beige.png",
		"chess_beige.png",
		"chess_beige.png",
		"chess_beige.png",
		"chess_beige.png",
		"chess_beige.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	groups = {cracky = 1, not_in_creative_inventory=1},
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





