

minetest.register_node("myconnect4:front",{
	description = "front",
	tiles = {"default_sand.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, 0.5, -0.375, 0.5},
			{-0.5, 0.375, 0.375, 0.5, 0.5, 0.5},
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, 0.375, -0.375, 0.5, 0.5},
			{-0.5, 0.25, 0.375, -0.25, 0.5, 0.5},
			{-0.5, -0.5, 0.375, -0.25, -0.25, 0.5},
			{0.25, 0.25, 0.375, 0.5, 0.5, 0.5},
			{0.25, -0.5, 0.375, 0.5, -0.25, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{0.5, 0.5, 0.5, 0.5, 0.5, 0.5},
		}
	},
})
minetest.register_node("myconnect4:red",{
	description = "Red",
	tiles = {"myconnect4_red.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3,dig_immediate=3,falling_node=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.3125, 0.375, 0.5, -0.5},
			{-0.5, -0.375, -0.3125, 0.5, 0.375, -0.5},
		}
	}
})
minetest.register_node("myconnect4:black",{
	description = "Black",
	tiles = {"myconnect4_black.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3,dig_immediate=3,falling_node=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.3125, 0.375, 0.5, -0.5},
			{-0.5, -0.375, -0.3125, 0.5, 0.375, -0.5},
		}
	}
})
minetest.register_node("myconnect4:redrf",{
	description = "redrf",
	tiles = {"myconnect4_red.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "myconnect4:red",
	groups = {cracky=3,dig_immediate=3,falling_node=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.3125, 0.375, 0.5, -0.5},
			{-0.5, -0.375, -0.3125, 0.5, 0.375, -0.5},
		}
	},
after_destruct = function(pos, oldnode)
	minetest.set_node(pos,{name="myconnect4:redrf",param2=oldnode.param2})
end
})
minetest.register_node("myconnect4:blackrf",{
	description = "blackrf",
	tiles = {"myconnect4_black.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "myconnect4:black",
	groups = {cracky=3,dig_immediate=3,falling_node=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.3125, 0.375, 0.5, -0.5},
			{-0.5, -0.375, -0.3125, 0.5, 0.375, -0.5},
		}
	},
after_destruct = function(pos, oldnode)
	minetest.set_node(pos,{name="myconnect4:blackrf",param2=oldnode.param2})
end
})
minetest.register_node("myconnect4:back",{
	description = "back",
	tiles = {"wool_grey.png"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1,falling_node=1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-1.125, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		}
	},
})
minetest.register_node("myconnect4:reset",{
	description = "Connect 4",
	inventory_image = "myconnect4_inv.png",
	wield_image = "myconnect4_inv.png",
	tiles = {"default_sandstone.png^myconnect4_reset.png"},
	drawtype = "normal",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=1},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("myconnect4").."/schems/myconnect4.mts"
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
