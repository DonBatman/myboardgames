local nici = 1
local cardsplayed = {}
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

function apn(pos, placer, itemstack, pointed_thing)
	local name = placer:get_player_name();
	local node = minetest.get_node(pos).name
	local par = minetest.get_node(pos).param2
	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z}).name
	local grop = minetest.get_item_group(nodeu,"myuno")
	local descr = minetest.registered_items[node]["description"]
	local timer = minetest.get_node_timer({x=pos.x,y=pos.y-1,z=pos.z})

	if grop == 0 then
		minetest.set_node(pos,{name = "air"})
		minetest.chat_send_player( name,"You can not place a card there!")
		return itemstack
	elseif grop == 1 then
		minetest.chat_send_all( name.." placed a "..descr)
	elseif grop == 2 then
			minetest.set_node(pos,{name = "air"})
			minetest.set_node({x=pos.x,y=pos.y-1,z=pos.z},{name = node,param2=par})
			minetest.chat_send_all(name.." placed a "..descr)
	elseif grop ==3 then
		minetest.set_node(pos,{name = "air"})
		minetest.set_node({x=pos.x,y=pos.y-1,z=pos.z},{name = node,param2=par})		
	return itemstack
	end

end

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
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec",  
			"size[4,4;]"..
			"image_button_exit[0,0;2,2;myuno_form_red.png;red; ]"..
			"image_button_exit[2,0;2,2;myuno_form_yellow.png;yellow; ]"..
			"image_button_exit[0,2;2,2;myuno_form_blue.png;blue; ]"..
			"image_button_exit[2,2;2,2;myuno_form_green.png;green; ]")
	end,

	on_receive_fields = function(pos, formname, fields, sender)
	local meta = minetest.get_meta(pos)
			if fields["red"] then
				minetest.set_node(pos,{name="myuno:red"})
			elseif fields["blue"] then
				minetest.set_node(pos,{name="myuno:blue"})
			elseif fields["yellow"] then
				minetest.set_node(pos,{name="myuno:yellow"})
			elseif fields["green"] then
				minetest.set_node(pos,{name="myuno:green"})
			end
	end,
	after_place_node = apn,
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
	tiles = {"default_clay.png^bubble.png"},
	drawtype = "normal",
	paramtype = "light",
	groups = {oddly_breakable_by_hand = 1},
on_rightclick = function(pos, node, player, itemstack, pointed_thing)
local schem = minetest.get_modpath("myuno").."/schems/myuno.mts"
	minetest.place_schematic({x=pos.x,y=pos.y,z=pos.z},schem,0, "air", true)
end,
})
 minetest.register_node("myuno:placer",{
	description = "Placer",
	tiles = {"default_clay.png"},
	drawtype = "normal",
	paramtype = "light",
	drop = "",
	groups = {cracky=3,not_in_creative_inventory = nici,myuno=1},
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
})
end

