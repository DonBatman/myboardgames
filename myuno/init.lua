local nici = 1
local lastcard = nil
local rplayers = {}

local function inform_near_players(pos, msg)
	for _,player in pairs(minetest.get_objects_inside_radius(pos, 10)) do
		if player:is_player() then
			minetest.chat_send_player(player:get_player_name(), msg)
		end
	end
end

function apn(pos, placer, itemstack)
	local grop = minetest.get_item_group(minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name, "myuno")
	if grop > 3 then
		return
	end
	
	local name = placer:get_player_name()
	if grop == 0 then
		minetest.chat_send_player(name, "You can not place a card there!")
		minetest.remove_node(pos)
		return itemstack
	end

	local node = minetest.get_node(pos)
	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z})
	local descr = minetest.registered_items[node.name].description
	if grop == 1 then
		inform_near_players(pos, name.." placed a "..descr)
		return
	end
	lastcard = nodeu.name
	minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z}, node)
	minetest.remove_node(pos)
	if grop == 3 then
		return itemstack
	end
	print(node.name)
		

	inform_near_players(pos, name.." placed a "..descr)

end

function od(pos, node, player, pointed_thing)
	local node = minetest.get_node(pos)
	local nn = node.name
	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z})
	local inv = player:get_inventory()
	local lc = lastcard
	print(nn)
	print(lc)
	
	if lastcard ~= nil then
		inv:add_item("main",nn)
		minetest.set_node(pos, {name = lc})
		lastcard = nil
	else
	return
	end
end

local sbox1 = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.49, 0.5}}
		}
local sbox2 = {
		type = "fixed",
		fixed = {
			{-0.3, -0.5, -0.45, 0.3, -0.3, 0.45}}
		}

for nu = 1,13 do
	local num = nu

local deck = {
	{"Red "..num,"1_"..num,"^[colorize:red:220","a"..num},
	{"Red "..num,"2_"..num,"^[colorize:red:220","b"..num},
	{"Yellow "..num,"3_"..num,"^[colorize:yellow:220","a"..num},
	{"Yellow "..num,"4_"..num,"^[colorize:yellow:220","b"..num},
	{"Green "..num,"5_"..num,"^[colorize:green:220","a"..num},
	{"Green "..num,"6_"..num,"^[colorize:green:220","b"..num},
	{"Blue "..num,"7_"..num,"^[colorize:blue:220","a"..num},
	{"Blue "..num,"8_"..num,"^[colorize:blue:220","b"..num},
}


for i in ipairs(deck) do
	local desc = deck[i][1]
	local itm = deck[i][2]
	local col = deck[i][3]
	local nimg = deck[i][4]

	for imgnum = 1,13 do
		local inum = imgnum
	if nimg == "b"..inum then
		nimg = "a"..inum
	else nimg = nimg

local desc2 = "Card"
if nimg == "a10" or 
   nimg == "b10" then
	desc2 = string.gsub(desc, 10, "Change Direction")
elseif nimg == "a11" or 
   nimg == "b11" then
	desc2 = string.gsub(desc, 11, "Miss A Turn")
elseif nimg == "a12" or 
   nimg == "b12" then
	desc2 = string.gsub(desc, 12, "Pick Up 2")
elseif nimg == "a13" then
	desc2 = string.gsub(desc, 13, 0)
elseif nimg == "b13" then
	desc2 = "Pick Up 4"
else
	desc2 = desc
end	

minetest.register_node("myuno:"..itm,{
	description = desc2,
	inventory_image = "myuno_color.png"..col.."^myuno_white.png^myuno_"..nimg..".png",
	tiles = {"myuno_color.png"..col.."^myuno_white.png^myuno_"..nimg..".png"},
	drawtype = "mesh",
	mesh = "myuno_card.obj",
	paramtype = "light",
--	paramtype2 = "facedir",
	stack_max = 1,
	groups = {oddly_breakable_by_hand = 3,not_in_creative_inventory = nici,myuno=2},
	selection_box = sbox1,
	collision_box = sbox1,
	after_place_node = apn,
	on_punch   = od,
})

	end
end
end
end
 minetest.register_node("myuno:col",{
	description = "Any Color ",
	inventory_image = "myuno_col.png",
	tiles = {"myuno_card.png^myuno_col.png"},
	drawtype = "mesh",
	mesh = "myuno_card.obj",
	paramtype = "light",
--	paramtype2 = "facedir",
	stack_max = 1,
	groups = {oddly_breakable_by_hand = 3,not_in_creative_inventory = nici,myuno=3},
	selection_box = sbox1,
	collision_box = sbox1,
	on_place = 	function(itemstack, placer, pointed_thing)
	local pos = pointed_thing.above
	local node = minetest.get_node(pos)
	local meta = minetest.get_meta(pos)
		minetest.show_formspec(placer:get_player_name(),"cform",
				"size[4,4;]"..
				"image_button_exit[0,0;2,2;myuno_form_red.png;red; ]"..
				"image_button_exit[2,0;2,2;myuno_form_yellow.png;yellow; ]"..
				"image_button_exit[0,2;2,2;myuno_form_blue.png;blue; ]"..
				"image_button_exit[2,2;2,2;myuno_form_green.png;green; ]")
		minetest.register_on_player_receive_fields(function(player, formname, fields)
		if formname == "cform" then
			if fields["red"] then
				minetest.set_node(pos,{name="air"})
				minetest.set_node({x=pos.x,y=pos.y-1,z=pos.z},{name="myuno:red"})
			return itemstack
			elseif fields["blue"] then
				minetest.set_node(pos,{name="air"})
				minetest.set_node({x=pos.x,y=pos.y-1,z=pos.z},{name="myuno:blue"})
			elseif fields["yellow"] then
				minetest.set_node(pos,{name="air"})
				minetest.set_node({x=pos.x,y=pos.y-1,z=pos.z},{name="myuno:yellow"})
			elseif fields["green"] then
				minetest.set_node(pos,{name="air"})
				minetest.set_node({x=pos.x,y=pos.y-1,z=pos.z},{name="myuno:green"})
			end
		end
		end)
			itemstack:take_item()
			return itemstack
	end,
	after_place_node = apn,
	on_punch  = od,
})

 minetest.register_node("myuno:deck",{
	description = "Uno Card Deck",
	tiles = {"myuno_deck.png"},
	drawtype = "mesh",
	mesh = "myuno_deck.obj",
	paramtype = "light",
--	paramtype2 = "facedir",
	stack_max = 1,
	groups = {oddly_breakable_by_hand = 1,not_in_creative_inventory = nici},
	selection_box = sbox2,
	collision_box = sbox2,
on_punch = function(pos, node, puncher, pointed_thing)
	local inv = puncher:get_inventory()
	local rand = math.random(1,108)
	local rcol = math.random(1,8)
	local scol = tostring(rcol)
	local rnum = math.random(1,13)
	local snum = tostring(rnum)
	local card = "myuno:"..scol.."_"..snum.." 1"
	if rand <= 4 then
		if inv
		and inv:room_for_item("main", "myuno:col 1") then
			inv:add_item("main", "myuno:col 1")
		else
			minetest.add_item(pos, item)
		end
	else
		if inv
		and inv:room_for_item("main", card) then
			inv:add_item("main", card)
		else
			minetest.add_item(pos, item)
		end
	end
end,
	
})
 minetest.register_node("myuno:board",{
	description = "My Uno",
	inventory_image = "myuno_inv.png",
	wield_image = "myuno_inv.png",
	tiles = {"default_clay.png^bubble.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {oddly_breakable_by_hand = 1},
	on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	local schem = minetest.get_modpath("myuno").."/schems/myuno.mts"
		minetest.place_schematic({x=pos.x,y=pos.y,z=pos.z},schem,0, "air", true)
		count = 0
	end,
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		if placer and minetest.check_player_privs(placer:get_player_name(), {myboardgames = true}) then
		else
			minetest.remove_node(pos)
			return true
		end
	end,
})

 minetest.register_node("myuno:placer",{
	description = "Placer",
	tiles = {"default_clay.png"},
	drawtype = "normal",
	paramtype = "light",
	drop = "",
	groups = {cracky=1,not_in_creative_inventory = nici,myuno=1},
})

local colcards = {
	{"Red Card","red"},
	{"Blue Card","blue"},
	{"Yellow Card","yellow"},
	{"Green Card","green"},
	}
for i in ipairs(colcards) do
	local desc = colcards[i][1]
	local itm = colcards[i][2]

 minetest.register_node("myuno:"..itm,{
	description = desc,
	tiles = {"myuno_"..itm..".png"},
	drawtype = "mesh",
	mesh = "myuno_card.obj",
	paramtype = "light",
--	paramtype2 = "facedir",
	drop = "",
	groups = {oddly_breakable_by_hand = 3,not_in_creative_inventory = nici,myuno=2},
	selection_box = sbox1,
	collision_box = sbox1,
	after_place_node = apn,
	on_punch   = od,
})
end
