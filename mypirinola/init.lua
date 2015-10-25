local cbox = {
	type = "fixed",
	fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}, 
			}
		}

local piri = {
{"Side 1","1","1"},
{"Side 2","2","1"},
{"Side 3","3","1"},
{"Side 4","4","1"},
{"Side 5","5","1"},
{"Side 6","6","1"},
}
for i in ipairs(piri) do
local des = piri[i][1]
local num = piri[i][2]
local nic = piri[i][3]

minetest.register_node("mypirinola:piri_"..num, {
	description = "Pirinola "..des,
	drawtype = "mesh",
	mesh = "mypirinola_oct.obj",
	tiles = {"mypirinola_img_"..num..".png"},
	paramtype = "light",
	paramtype2 = "facedir",
	drop = "mypirinola:piri_spin",
	groups = {choppy=2, dig_immediate=3, not_in_creative_inventory=nic},
	--sounds = default.node_sound_wood_defaults(),
	--on_place = minetest.rotate_node,
	collision_box = cbox,
	selection_box = cbox,
})
end
minetest.register_node("mypirinola:piri_spin", {
	description = "Pirinola",
	inventory_image = "mypirinola_inv.png",
	wield_image = "mypirinola_inv.png",
	drawtype = "mesh",
	mesh = "mypirinola_oct.obj",
	tiles = {
		{name="mypirinola_img_ani.png", animation={type="vertical_frames",aspect_w=16, aspect_h=16, length=0.2}}
			},
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {choppy=2, oddly_breakable_by_hand=2, not_in_creative_inventory=0},
	--sounds = default.node_sound_wood_defaults(),
	collision_box = cbox,
	selection_box = cbox,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		local ran = math.random(1,6)
		local parn = {5,7,9,11,12,14,16,18}
		local par2 = parn[ math.random( #parn ) ]
		minetest.after(3, function()
		minetest.set_node(pos,{name="mypirinola:piri_"..ran, param2=par2})
		end)
	end,
})


