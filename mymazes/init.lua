minetest.register_node("mymazes:block1",{
	description = "Maze 1",
	inventory_image = "mymazes_1.png",
	wield_image = "mymazes_1.png",
	tiles = {"mymazes_1.png"},
	drawtype = "normal",
	paramtype = "light",
	light_source = 8,
	groups = {cracky = 1},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("mymazes").."/schems/mymaze1.mts"
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
minetest.register_node("mymazes:block2",{
	description = "Maze 2",
	inventory_image = "mymazes_2.png",
	wield_image = "mymazes_2.png",
	tiles = {"mymazes_2.png"},
	drawtype = "normal",
	paramtype = "light",
	light_source = 8,
	groups = {cracky = 1},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("mymazes").."/schems/mymaze2.mts"	
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
