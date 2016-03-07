local dots = {
	{"Red","red","mypachisi_b3.png^mypachisi_r.png"},
	{"Blue","blue","mypachisi_b3.png^mypachisi_b.png"},
	{"Green","green","mypachisi_b3.png^mypachisi_g.png"},
	{"Orange","orange","mypachisi_b3.png^mypachisi_o.png"},
	{"Base","base","mypachisi_b1.png^mypachisi_p.png"},
	{"Base X","basex","mypachisi_b1.png^mypachisi_p.png^mypachisi_x.png"},
	{"Main","main","mypachisi_b2.png"},
	{"Main 2","main2","mypachisi_b4.png"},
	{"Main 3","main3","mypachisi_b3.png"},
	}
for i in ipairs(dots) do
local desc = dots[i][1]
local col = dots[i][2]
local img = dots[i][3]

minetest.register_node("mypachisi:dot_"..col,{
	description = desc.." Dot",
	tiles = {img},
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

minetest.register_node("mypachisi:"..item,{
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
minetest.register_node("mypachisi:placer",{
	description = "Pachisi",
	inventory_image = "mypachisi_inv.png",
	wield_image = "mypachisi_inv.png",
	tiles = {
			"mypachisi_b2.png^mytrouble_o.png",
			"mypachisi_b2.png",
			"mypachisi_b2.png",
			"mypachisi_b2.png",
			"mypachisi_b2.png",
			"mypachisi_b2.png",
			},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("mypachisi").."/schems/mypachisi.mts"
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
dofile(minetest.get_modpath("mypachisi").."/dice.lua")
