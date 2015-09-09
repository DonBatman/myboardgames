local king = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, -0.375, 0.375},
			{-0.3125, -0.5, -0.3125, 0.3125, -0.3125, 0.3125},
			{-0.25, -0.5, -0.25, 0.25, -0.25, 0.25},
			{-0.1875, -0.5, -0.1875, 0.1875, 0.5, 0.1875},
		}
	}
local kings = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, -0.375, 0.375},
			{-0.3125, -0.5, -0.3125, 0.3125, -0.3125, 0.3125},
			{-0.25, -0.5, -0.25, 0.25, -0.25, 0.25},
			{-0.1875, -0.5, -0.1875, 0.1875, 0.5, 0.1875},

			{-0.3125, -1.5, -0.3125, 0.3125, -1.4375, 0.3125},
			{-0.375, -1.4375, -0.375, 0.375, -1.3125, 0.375},
			{-0.3125, -1.3125, -0.3125, 0.3125, -1.25, 0.3125},
			{-0.0625, -1.5, -0.0625, 0.0625, 1.5, 0.0625},
			{-0.25, 1.1875, -0.0625, 0.25, 1.3125, 0.0625},
			{-0.1875, -1.5, -0.1875, 0.1875, 1, 0.1875},
			{-0.0625, 1.1875, -0.25, 0.0625, 1.3125, 0.25},
		}
	}
local kingt = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, -0.4375, 0.3125},
			{-0.375, -0.4375, -0.375, 0.375, -0.3125, 0.375},
			{-0.3125, -0.3125, -0.3125, 0.3125, -0.25, 0.3125},
			{-0.1875, -0.5, -0.1875, 0.1875, 0, 0.1875},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
			{-0.0625, 0.1875, -0.25, 0.0625, 0.3125, 0.25},
			{-0.25, 0.1875, -0.0625, 0.25, 0.3125, 0.0625},
		}
	}
local kingts = {
		type = "fixed",
		fixed = {
			{0, 0, 0, 0, 0, 0},
		}
	}
local queen = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, -0.375, 0.375},
			{-0.3125, -0.5, -0.3125, 0.3125, -0.3125, 0.3125},
			{-0.25, -0.5, -0.25, 0.25, -0.25, 0.25},
			{-0.1875, -0.5, -0.1875, 0.1875, 0.5, 0.1875},
		}
	}
local queens = {
		type = "fixed",
		fixed = {
			{-0.375, -0.5, -0.375, 0.375, -0.375, 0.375},
			{-0.3125, -0.5, -0.3125, 0.3125, -0.3125, 0.3125},
			{-0.25, -0.5, -0.25, 0.25, -0.25, 0.25},
			{-0.1875, -0.5, -0.1875, 0.1875, 0.5, 0.1875},

			{-0.3125, -1.5, -0.3125, 0.3125, -1.4375, 0.3125},
			{-0.375, -1.4375, -0.375, 0.375, -1.3125, 0.375},
			{-0.3125, -1.3125, -0.3125, 0.3125, -1.25, 0.3125},
			{-0.1875, -1.5, -0.1875, 0.1875, 1.0625, 0.1875},
			{-0.0625, 1.0625, -0.0625, 0.0625, 1.25, 0.0625},
		}
	}
local queent = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.3125, 0.3125, -0.4375, 0.3125},
			{-0.375, -0.4375, -0.375, 0.375, -0.3125, 0.375},
			{-0.3125, -0.3125, -0.3125, 0.3125, -0.25, 0.3125},
			{-0.1875, -0.5, -0.1875, 0.1875, 0.0625, 0.1875},
			{-0.0625, 0.0625, -0.0625, 0.0625, 0.25, 0.0625},
		}
	}
local queents = {
		type = "fixed",
		fixed = {
			{0, 0, 0, 0, 0, 0},
		}
	}
local knight = {
		type = "fixed",
		fixed = {
		{-0.3125, -0.5, -0.3125, 0.3125, -0.4375, 0.3125},
		{-0.25, -0.4375, -0.25, 0.25, -0.375, 0.25},
		{-0.1875, -0.375, -0.1875, 0.1875, -0.3125, 0.1875},
		{-0.25, -0.3125, -0.1875, 0.25, -0.25, 0.25},
		{-0.1875, -0.25, -0.125, 0.1875, -0.1875, 0.1875},
		{-0.1875, -0.1875, -0.0625, 0.1875, -0.125, 0.25},
		{-0.1875, -0.125, 0, 0.1875, -0.0625, 0.3125},
		{-0.1875, -0.0625, 0.0625, 0.1875, 0.0625, 0.4375},
		{-0.1875, 0.0625, 0.125, 0.1875, 0.5, 0.5},
		{-0.125, 0.125, -0.125, 0.125, 0.4375, 0.125},
		{-0.125, 0.125, -0.25, 0.125, 0.375, -0.125},
		{-0.125, 0.0625, -0.1875, 0.125, 0.125, 0},
		}
	}
local pon = {
		type = "fixed",
		fixed = {
		{-0.3125, -0.5, -0.3125, 0.3125, -0.4375, 0.3125},
		{-0.25, -0.4375, -0.25, 0.25, -0.375, 0.25},
		{-0.1875, -0.375, -0.1875, 0.1875, -0.3125, 0.1875},
		{-0.125, -0.3125, -0.125, 0.125, 0.0625, 0.125},
		{-0.1875, 0.0625, -0.1875, 0.1875, 0.375, 0.1875},
		}
	}
local bishop = {
		type = "fixed",
		fixed = {
		{-0.3125, -0.5, -0.3125, 0.3125, -0.375, 0.3125},
		{-0.25, -0.375, -0.25, 0.25, -0.25, 0.25},
		{-0.1875, -0.25, -0.1875, 0.1875, -0.125, 0.1875},
		{-0.125, -0.125, -0.125, 0.125, 0.1875, 0.125},
		{-0.1875, 0.1875, -0.1875, 0.1875, 0.375, 0.1875},
		{-0.125, 0.5625, -0.125, 0.125, 0.625, 0.125},
		{-0.1875, 0.375, -0.0625, 0.1875, 0.4375, 0.1875},
		{-0.1875, 0.4375, -0.1875, 0.1875, 0.5625, 0.1875},
		}
	}
local rook = {
		type = "fixed",
		fixed = {
		{-0.3125, -0.5, -0.3125, 0.3125, -0.375, 0.3125},
		{-0.25, -0.375, -0.25, 0.25, -0.25, 0.25},
		{-0.1875, -0.25, -0.1875, 0.1875, -0.125, 0.1875},
		{-0.125, -0.125, -0.125, 0.125, 0.125, 0.125},
		{-0.1875, 0.125, -0.1875, 0.1875, 0.3125, 0.1875},
		{-0.1875, 0.3125, -0.1875, -0.125, 0.4375, -0.125},
		{0.125, 0.3125, -0.1875, 0.1875, 0.4375, -0.125},
		{0.125, 0.3125, 0.125, 0.1875, 0.4375, 0.1875},
		{-0.1875, 0.3125, 0.125, -0.125, 0.4375, 0.1875},
		}
	}


local peices = { --item,desc,inv,img,nodebox
	{"chess:king_white","White King","king_w_inven.png","chess_white.png",king,kings},
	{"chess:king_top_white","","","chess_white.png",kingt,kingts},
	{"chess:king_black","Black King","king_b_inven.png","chess_black.png",king,kings},
	{"chess:king_top_black","","","chess_black.png",kingt,kingts},

	{"chess:queen_white","White Queen","queen_w_inven.png","chess_white.png",queen,queens},
	{"chess:queen_top_white","","","chess_white.png",queent,queents},
	{"chess:queen_black","Black Queen","queen_b_inven.png","chess_black.png",queen,queens},
	{"chess:queen_top_black","","","chess_black.png",queent,queents},
	}
for i in ipairs (peices) do
local item = peices[i][1]
local desc = peices[i][2]
local inv = peices[i][3]
local img = peices[i][4]
local nbox = peices[i][5]
local sbox = peices[i][6]

minetest.register_node(item, {
	description = desc,
	inventory_image = inv,
	light_source = 7,
	tiles = {img.."^[transformR90"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {dig_immediate = 3, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
	node_box = nbox,
	selection_box = sbox,

	after_place_node = function(pos)
		local node = minetest.get_node(pos)
		if node.name == "chess:king_white" then
		minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z},{name = "chess:king_top_white"})
		elseif node.name == "chess:king_black" then
		minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z},{name = "chess:king_top_black"})
		elseif node.name == "chess:queen_white" then
		minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z},{name = "chess:queen_top_white"})
		elseif node.name == "chess:queen_black" then
		minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z},{name = "chess:queen_top_black"})
		end

	end,
	on_destruct = function(pos)
		local pos2 = {x=pos.x,y=pos.y+1,z=pos.z}
		local node = minetest.get_node(pos)
		local node2 = minetest.get_node(pos2)
		if node.name == "chess:king_white" then
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name="air"})
		elseif node.name == "chess:king_black" then
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name="air"})
		elseif node.name == "chess:queen_white" then
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name="air"})
		elseif node.name == "chess:queen_black" then
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name="air"})
		elseif node.name == "chess:king_top_white" then
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name="air"})
		elseif node.name == "chess:king_top_black" then
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name="air"})
		elseif node.name == "chess:queen_top_white" then
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name="air"})
		elseif node.name == "chess:queen_top_black" then
			minetest.set_node({x=pos.x,y=pos.y+1,z=pos.z},{name="air"})
		end
	end,

    on_place = function(itemstack, placer, pointed_thing)
        local pos = pointed_thing.above
        if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name ~= "air" then
            minetest.chat_send_player( placer:get_player_name(), "Not enough vertical space to place it here!" )
            return
        end

        return minetest.item_place(itemstack, placer, pointed_thing)
    end
})
end
local peices = { --item,desc,inv,img,nodebox
	{"chess:knight_white","White Knight","knight_w_inven.png","chess_white.png",knight},
	{"chess:knight_black","Black Knight","knight_b_inven.png","chess_black.png",knight},

	{"chess:pon_white","White Pon","pon_w_inven.png","chess_white.png",pon},
	{"chess:pon_black","Black Pon","pon_b_inven.png","chess_black.png",pon},

	{"chess:bishop_white","White Bishop","bishop_w_inven.png","chess_white.png",bishop},
	{"chess:bishop_black","Black Bishop","bishop_b_inven.png","chess_black.png",bishop},

	{"chess:rook_white","White Rook","rook_w_inven.png","chess_white.png",rook},
	{"chess:rook_black","Black Rook","rook_b_inven.png","chess_black.png",rook},
	}
for i in ipairs (peices) do
local item = peices[i][1]
local desc = peices[i][2]
local inv = peices[i][3]
local img = peices[i][4]
local nbox = peices[i][5]

minetest.register_node(item, {
	description = desc,
--	inventory_image = inv,
	light_source = 7,
	tiles = {img.."^[transformR90"},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {dig_immediate = 3, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
	node_box = nbox,
	selection_box = nbox,

    on_place = function(itemstack, placer, pointed_thing)
        local pos = pointed_thing.above
        if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name ~= "air" then
            minetest.chat_send_player( placer:get_player_name(), "Not enough vertical space to place it here!" )
            return
        end
		local node = minetest.get_node(pos)
		local par1 = node.param2
		par2 = par1 + 2
			if par2 == 4 then
			par2 = 0
			elseif par2 == 5 then
			par2 = 1
			end
		if node.name == "chess:knight_black" then
		minetest.set_node({pos},{name = "chess:knight_black", param2 = par2})
		end

        return minetest.item_place(itemstack, placer, pointed_thing)
    end
})
end


