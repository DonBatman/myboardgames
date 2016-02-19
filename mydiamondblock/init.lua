minetest.register_node("mydiamondblock:block",{
	description = "My Diamond Block",
	inventory_image = "mydiamondblock_inv.png",
	wield_image = "mydiamondblock_inv.png",
	tiles = {"mydiamondblock.png"},
	drawtype = "normal",
	paramtype = "light",
	light_source = 8,
	groups = {cracky = 1},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("mydiamondblock").."/schems/mydiamondblock.mts"
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
for blues = 1,6 do
local blue = blues
minetest.register_node("mydiamondblock:blue"..blue,{
	description = "Blue "..blue,
	inventory_image = "mydiamondblock_blue"..blue..".png",
	tiles = {"mydiamondblock_blue"..blue..".png"},
	drawtype = "normal",
	paramtype = "light",
	light_source = 8,
	groups = {cracky = 1,not_in_creative_inventory=1},
})
end
for browns = 1,4 do
local brown = browns
minetest.register_node("mydiamondblock:brown"..brown,{
	description = "Brown "..brown,
	inventory_image = "mydiamondblock_brown"..brown..".png",
	tiles = {"mydiamondblock_brown"..brown..".png"},
	drawtype = "normal",
	paramtype = "light",
	light_source = 8,
	groups = {cracky = 1,not_in_creative_inventory=1},
})
end
