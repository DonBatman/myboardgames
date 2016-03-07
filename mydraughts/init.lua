
minetest.register_node("mydraughts:board", {
	description = "Draughts",
	inventory_image = "mydraughts_inv.png",
	wield_image = "mydraughts_inv.png",
	light_source = 5,
	tiles = {"mycheckers_border_cbl.png","mycheckers_border.png","mycheckers_border_side.png","mycheckers_border_side.png","mycheckers_border_side.png","mycheckers_border_side.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),

	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("mydraughts").."/schems/mydraughts.mts"
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

local board = {
	{"mydraughts:border"    ,{"mycheckers_border.png"}},

	{"mydraughts:borderb"   ,{
"mycheckers_border_bottom.png",
"mycheckers_border.png",
"mycheckers_border_side.png",
"mycheckers_border_side.png",
"mycheckers_border_side.png",
"mycheckers_border_side.png"}},

	{"mydraughts:bordercbl" ,{
"mycheckers_border_cornerbl.png",
"mycheckers_border.png",
"mycheckers_border_side.png",
"mycheckers_border_side.png",
"mycheckers_border_side.png",
"mycheckers_border_side.png"}},

	{"mydraughts:borderocbr",{
"mycheckers_border_cbr.png",
"mycheckers_border.png",
"mycheckers_border_side.png",
"mycheckers_border_side.png",
"mycheckers_border_side.png",
"mycheckers_border_side.png"}}
,

	{"mydraughts:white"     ,{"mycheckers_wboard.png"}},
	{"mydraughts:black"     ,{"mycheckers_bboard.png"}},

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
	groups = {cracky = 1,not_in_creative_inventory=1},
})
end

local regp = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.3125, 0.1875, -0.3125, 0.3125},
			{-0.3125, -0.5, -0.1875, 0.3125, -0.3125, 0.1875},
			{-0.1875, -0.3125, -0.1875, 0.1875, -0.25, 0.1875},
		}
	}
local crown = {
		type = "fixed",
		fixed = {
			{-0.1875, -0.5, -0.3125, 0.1875, -0.3125, 0.3125},
			{-0.3125, -0.5, -0.1875, 0.3125, -0.3125, 0.1875},
			{-0.3125, -0.25, -0.1875, 0.3125, -0.0625, 0.1875},
			{-0.1875, -0.25, -0.3125, 0.1875, -0.0625, 0.3125},
			{-0.1875, -0.3125, -0.1875, 0.1875, -0.25, 0.1875},
			{-0.1875, -0.0625, -0.1875, 0.1875, 0, 0.1875},
		}
	}

minetest.register_node("mydraughts:redp_c", {
	description = "Red Crown",
	light_source = 5,
	tiles = {"default_acacia_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	drop = "mydraughts:redp 2",
	sunlight_propagates = true,
	groups = {cracky = 1, dig_immediate=3,not_in_creative_inventory=1},
	node_box = crown,
})
minetest.register_node("mydraughts:blackp_c", {
	description = "Black Crown",
	light_source = 5,
	tiles = {"default_obsidian.png"},
	drawtype = "nodebox",
	paramtype = "light",
	drop = "mydraughts:blackp 2",
	sunlight_propagates = true,
	groups = {cracky = 1, dig_immediate=3,not_in_creative_inventory=1},
	node_box = crown,
})
minetest.register_node("mydraughts:blackp", {
	description = "Black Piece",
	light_source = 5,
	tiles = {"default_obsidian.png"},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {cracky = 1, dig_immediate=3,not_in_creative_inventory=1},
	node_box = regp,
after_place_node = function(pos, placer, itemstack, pointed_thing)
	local node = minetest.get_node(pos)
	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z})
	if nodeu.name == "mydraughts:blackp" and
	   node.name == "mydraughts:blackp" then
	   minetest.set_node({x=pos.x,y=pos.y-1,z=pos.z},{name = "mydraughts:blackp_c"})
	   minetest.set_node(pos,{name = "air"})
	elseif nodeu ~= "mydraughts:blackp" then
		minetest.set_node(pos,{name="mydraughts:blackp"})
	end
	
end
})
minetest.register_node("mydraughts:redp", {
	description = "Red Piece",
	light_source = 5,
	tiles = {"default_acacia_wood.png"},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {cracky = 1, dig_immediate=3,not_in_creative_inventory=1},
	node_box = regp,
after_place_node = function(pos, placer, itemstack, pointed_thing)
	local node = minetest.get_node(pos)
	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z})
	
	if 	nodeu.name == "mydraughts:redp" and
	   	node.name == "mydraughts:redp" then
	   	minetest.set_node({x=pos.x,y=pos.y-1,z=pos.z},{name = "mydraughts:redp_c"})
	   	minetest.set_node(pos,{name = "air"})
	elseif nodeu ~= "mydraughts:redp" then
		minetest.set_node(pos,{name="mydraughts:redp"})
	end
	
end
})
