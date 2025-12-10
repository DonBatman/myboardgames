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

		{-0.25, -0.5, -0.25, 0.25, -0.4375, 0.25},
		{-0.1875, -0.5, -0.1875, 0.1875, -0.375, 0.1875},
		{-0.125, -0.5, -0.125, 0.125, -0.3125, 0.125},
		{-0.0625, -0.5, -0.0625, 0.0625, 0.0625, 0.0625},
		{-0.0625, -0.0625, -0.125, 0.0625, 0.0625, 0.125},
		{-0.125, -0.0625, -0.0625, 0.125, 0.0625, 0.0625},
--[[
		{-0.3125, -0.5, -0.3125, 0.3125, -0.4375, 0.3125},
		{-0.25, -0.4375, -0.25, 0.25, -0.375, 0.25},
		{-0.1875, -0.375, -0.1875, 0.1875, -0.3125, 0.1875},
		{-0.125, -0.3125, -0.125, 0.125, 0.0625, 0.125},
		{-0.1875, 0.0625, -0.1875, 0.1875, 0.375, 0.1875},
--]]
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
	{"mychess:king_white","White King","mychess_king_w_inven.png","default_pine_wood.png",king,kings,"king"},
	{"mychess:king_black","Black King","mychess_king_b_inven.png","default_junglewood.png",king,kings,"king"},

	{"mychess:queen_white","White Queen","mychess_queen_w_inven.png","default_pine_wood.png",queen,queens,"queen"},
	{"mychess:queen_black","Black Queen","mychess_queen_b_inven.png","default_junglewood.png",queen,queens,"queen"},
	}
for i in ipairs (peices) do
local item = peices[i][1]
local desc = peices[i][2]
local inv = peices[i][3]
local img = peices[i][4]
local nbox = peices[i][5]
local sbox = peices[i][6]
local mesh = peices[i][7]

core.register_node(item, {
	description = desc,
	inventory_image = inv,
	light_source = 7,
	tiles = {img.."^[transformR90"},
	drawtype = "mesh",
	mesh = "mychess_"..mesh..".obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {dig_immediate = 3, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = sbox,

})
end
local peices = { --item,desc,inv,img,nodebox
	{"mychess:knight_white","White Knight","myknight_w_inven.png","default_pine_wood.png^[transformR90",knight,"knight"},
	{"mychess:knight_black","Black Knight","myknight_b_inven.png","default_junglewood.png^[transformR90",knight,"knight"},

	{"mychess:pon_white","White Pon","mypon_w_inven.png","default_pine_wood.png^[transformR90",pon,"pawn"},
	{"mychess:pon_black","Black Pon","mypon_b_inven.png","default_junglewood.png^[transformR90",pon,"pawn"},

	{"mychess:bishop_white","White Bishop","mybishop_w_inven.png","default_pine_wood.png^[transformR90",bishop,"bishop"},
	{"mychess:bishop_black","Black Bishop","mybishop_b_inven.png","default_junglewood.png^[transformR90",bishop,"bishop"},

	{"mychess:rook_white","White Rook","myrook_w_inven.png","default_pine_wood.png^[transformR90",rook,"rook"},
	{"mychess:rook_black","Black Rook","myrook_b_inven.png","default_junglewood.png^[transformR90",rook,"rook"},
	}
for i in ipairs (peices) do
local item = peices[i][1]
local desc = peices[i][2]
local inv = peices[i][3]
local img = peices[i][4]
local nbox = peices[i][5]
local mesh = peices[i][6]

core.register_node(item, {
	description = desc,
--	inventory_image = inv,
	light_source = 7,
	tiles = {img},
	drawtype = "mesh",
	mesh = "mychess_"..mesh..".obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {dig_immediate = 3, not_in_creative_inventory=1},
	sounds = default.node_sound_stone_defaults(),
	selection_box = nbox,
})
end


