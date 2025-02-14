
var rotations = {}
var types = {}
var players = {}
var stored_state = {}

func build_rotations(templates, builder):
	self.rotations[builder.CLASS_GROUND] = self.build_from_array([
		templates.GROUND_GRASS,
		templates.GROUND_CONCRETE,
		templates.GROUND_MUD,
		templates.GROUND_RIVER1,
		templates.GROUND_RIVER2,
		templates.GROUND_SWAMP,
		templates.GROUND_SWAMP2,
		templates.GROUND_SWAMP3,
		templates.GROUND_ROAD1,
		templates.GROUND_ROAD2,
		templates.GROUND_ROAD3,
		templates.GROUND_ROAD4,
		templates.GROUND_ROAD_TRANSITION,
		templates.GROUND_ROAD_TRANSITION2,
		templates.GROUND_ROAD_TRANSITION3,
		templates.GROUND_ROAD_TRANSITION4,
		templates.GROUND_DIRT_ROAD1,
		templates.GROUND_DIRT_ROAD2,
		templates.GROUND_DIRT_ROAD3,
		templates.GROUND_DIRT_ROAD4,
		templates.GROUND_SNOW,
		templates.GROUND_SNOW_RIVER1,
		templates.GROUND_SNOW_RIVER2,
		templates.GROUND_SNOW_ROAD1,
		templates.GROUND_SNOW_ROAD2,
		templates.GROUND_SNOW_ROAD3,
		templates.GROUND_SNOW_ROAD4,
		templates.GROUND_SNOW_ROAD_TRANSITION,
		templates.GROUND_SNOW_ROAD_TRANSITION2,
		templates.GROUND_SNOW_ROAD_TRANSITION3,
		templates.GROUND_SNOW_ROAD_TRANSITION4,
		templates.GROUND_SNOW_DIRT_ROAD1,
		templates.GROUND_SNOW_DIRT_ROAD2,
		templates.GROUND_SNOW_DIRT_ROAD3,
		templates.GROUND_SNOW_DIRT_ROAD4,
		templates.GROUND_SAND,
		templates.GROUND_SAND_RIVER1,
		templates.GROUND_SAND_RIVER2,
		templates.GROUND_SAND_ROAD1,
		templates.GROUND_SAND_ROAD2,
		templates.GROUND_SAND_ROAD3,
		templates.GROUND_SAND_ROAD4,
		templates.GROUND_SAND_ROAD_TRANSITION,
		templates.GROUND_SAND_ROAD_TRANSITION2,
		templates.GROUND_SAND_ROAD_TRANSITION3,
		templates.GROUND_SAND_ROAD_TRANSITION4,
		templates.GROUND_SAND_DIRT_ROAD1,
		templates.GROUND_SAND_DIRT_ROAD2,
		templates.GROUND_SAND_DIRT_ROAD3,
		templates.GROUND_SAND_DIRT_ROAD4,
		templates.BRIDGE_PLATE,
		templates.BRIDGE_LEGS,
		templates.BRIDGE_STONE,
		templates.GROUND_FLYABLE,
	])

	self.rotations[builder.CLASS_FRAME] = self.build_from_array([
		templates.FRAME_GRASS1,
		templates.FRAME_GRASS2,
		templates.FRAME_GRASS3,
		templates.FRAME_GRASS4,
		templates.FRAME_GRASS5,
		templates.FRAME_GRASS6,
		templates.FRAME_WHEAT,
		templates.FRAME_RIVER1,
		templates.FRAME_RIVER2,
		templates.FRAME_RIVER3,
		templates.FRAME_RIVER4,
		templates.FRAME_RIVER5,
		templates.FRAME_RIVER6,
		templates.FRAME_ROAD1,
		templates.FRAME_ROAD2,
		templates.FRAME_ROAD3,
		templates.FRAME_ROAD4,
		templates.FRAME_SNOW2,
		templates.FRAME_SNOW3,
		templates.FRAME_SNOW4,
		templates.FRAME_SNOW_RIVER1,
		templates.FRAME_SNOW_RIVER2,
		templates.FRAME_SNOW_RIVER3,
		templates.FRAME_SNOW_RIVER4,
		templates.FRAME_SAND_BEACH1,
		templates.FRAME_SAND_BEACH2,
		templates.FRAME_SAND_BEACH3,
		templates.FRAME_MUD1,
		templates.FRAME_FENCE,
		templates.FRAME_LASER,
		templates.FRAME_WALL,
	])

	self.rotations[builder.CLASS_DECORATION] = self.build_from_array([
		templates.DECO_FLOWERS1,
		templates.DECO_FLOWERS2,
		templates.DECO_FLOWERS3,
		templates.DECO_FLOWERS4,
		templates.DECO_FLOWERS5,
		templates.DECO_FLOWERS6,
		templates.DECO_FLOWERS7,
		templates.DECO_FLOWERS8,
		templates.DECO_FLOWERS9,
		templates.DECO_FLOWERS10,
		templates.DECO_FLOWERS11,
		templates.DECO_FLOWERS12,
		templates.DECO_LOG,
		templates.DECO_ROCKS1,
		templates.DECO_ROCKS2,
		templates.DECO_STUMPS1,
		templates.DECO_STUMPS2,
		templates.DECO_STUMPS3,
		templates.DECO_STUMPS4,
		templates.DECO_BEACH1,
		templates.DECO_BEACH2,
		templates.DECO_BEACH3,
		templates.SPECIAL_KEY,
		templates.DECO_RAIL_STOP,
	])

	self.rotations[builder.CLASS_DAMAGE] = self.build_from_array([
		templates.DECO_GROUND_DMG_1,
		templates.DECO_GROUND_DMG_2,
		#templates.DECO_GROUND_DMG_3,
		#templates.DECO_GROUND_DMG_4,
		templates.DECO_GROUND_DMG_5,
		templates.DECO_GROUND_DMG_6,
	])

	self.rotations[builder.SUB_CLASS_CONSTRUCTION] = self.build_from_array([
		templates.CITY_BUILDING_BIG1,
		templates.CITY_BUILDING_BIG2,
		templates.CITY_BUILDING_BIG3,
		templates.CITY_BUILDING_BIG4,
		templates.CITY_BUILDING_BIG5,
		templates.CITY_BUILDING_SMALL5,
		templates.CITY_BUILDING_SMALL6,
		templates.CITY_BUILDING_MEDIUM1,
		templates.CITY_BUILDING_SMALL1,
		templates.CITY_BUILDING_SMALL2,
		templates.CITY_BUILDING_SMALL3,
		templates.CITY_BUILDING_SMALL4,
		templates.CITY_BUILDING_SMALL10,
		templates.CITY_BUILDING_SMALL11,
		templates.CITY_FARM1,
		templates.CITY_FARM2,
		templates.CITY_SHOP1,
		templates.CITY_SHOP2,
		templates.CITY_SHOP3,
		templates.DECO_FOUNTAIN,
		templates.DECO_STATUE,
		templates.DECO_STATUE_RAT,
		templates.DECO_STATUE_CAPSULE,
		templates.CITY_BRIDGE,
		templates.CITY_BRIDGE_WOOD,
		templates.CITY_ROADBLOCK,
		templates.CITY_SANDBAGS,
		templates.CASTLE_WALL_STRAIGHT,
		templates.CASTLE_WALL_STRAIGHT2,
		templates.CASTLE_WALL_CORNER,
		templates.CASTLE_WALL_CROSS,
		templates.CASTLE_WALL_T,
		templates.CASTLE_WALL_T2,
		templates.CASTLE_WALL_GATE,
		templates.CASTLE_WALL_GATE_CLOSED,
		templates.BRICK_WALL_STRAIGHT,
		templates.BRICK_WALL_STRAIGHT2,
		templates.BRICK_WALL_CORNER,
		templates.BRICK_WALL_CROSS,
		templates.BRICK_WALL_T,
		templates.BRICK_WALL_T2,
		templates.BRICK_WALL_GATE,
		templates.BRICK_WALL_GATE_CLOSED,
		templates.FENCE_WALL_STRAIGHT,
		templates.FENCE_WALL_STRAIGHT2,
		templates.FENCE_WALL_CORNER,
		templates.FENCE_WALL_CROSS,
		templates.FENCE_WALL_T,
		templates.FENCE_WALL_T2,
		templates.FENCE_WALL_GATE,
		templates.FENCE_WALL_GATE_CLOSED,
		templates.FUTURISTIC_WALL_STRAIGHT,
		templates.FUTURISTIC_WALL_STRAIGHT2,
		templates.FUTURISTIC_WALL_CORNER,
		templates.FUTURISTIC_WALL_CROSS,
		templates.FUTURISTIC_WALL_T,
		templates.FUTURISTIC_WALL_T2,
		templates.FUTURISTIC_WALL_GATE,
		templates.FUTURISTIC_WALL_GATE_CLOSED,
		templates.BRIDGE_SUSPENSION,
		templates.BRIDGE_SUSPENSION_TILED,
		templates.BRIDGE_STONE_BARRIER,
		templates.BRIDGE_STONE_BARRIER_TILED,
		templates.DECO_RAIL_STRAIGHT,
		templates.DECO_RAIL_TURN,
		templates.DECO_RAIL_T,
		templates.DECO_RAIL_CROSS,
		templates.DECO_RAIL_END,
	])

	self.rotations[builder.CLASS_TERRAIN] = self.build_from_array([
		templates.NATURE_BIG_ROCKS1,
		templates.NATURE_BIG_ROCKS2,
		templates.NATURE_BIG_ROCKS3,
		templates.NATURE_BIG_ROCKS4,
		templates.NATURE_TREES1,
		templates.NATURE_TREES2,
		templates.NATURE_TREES3,
		templates.NATURE_TREES10,
		templates.NATURE_TREES11,
		templates.NATURE_TREES4,
		templates.NATURE_TREES5,
		templates.NATURE_TREES6,
		templates.NATURE_TREES12,
		templates.NATURE_TREES13,
		templates.NATURE_TREES7,
		templates.NATURE_TREES8,
		templates.NATURE_TREES9,
		templates.NATURE_TREES14,
		templates.NATURE_TREES15,
		templates.NATURE_TREES16,
		templates.NATURE_TREES17,
		templates.NATURE_TREES18,
		templates.NATURE_SAND_CACTI1,
		templates.NATURE_SAND_CACTI2,
		templates.NATURE_SAND_CACTI3,
		templates.NATURE_SAND_DUNES1,
		templates.NATURE_SAND_DUNES2,
		templates.NATURE_SAND_DUNES3,
		templates.NATURE_SAND_DUNES4,
		templates.NATURE_SAND_PALMS1,
		templates.NATURE_SAND_PALMS2,
		templates.NATURE_SAND_PALMS3,
		templates.NATURE_SAND_PALMS4,
	])

	self.rotations[builder.CLASS_BUILDING] = self.build_from_array([
		templates.MODERN_HQ,
		templates.MODERN_BARRACKS,
		templates.MODERN_FACTORY,
		templates.MODERN_AIRFIELD,
		templates.MODERN_TOWER,

		templates.STEAMPUNK_HQ,
		templates.STEAMPUNK_BARRACKS,
		templates.STEAMPUNK_FACTORY,
		templates.STEAMPUNK_AIRFIELD,
		templates.STEAMPUNK_TOWER,

		templates.FUTURISTIC_HQ,
		templates.FUTURISTIC_BARRACKS,
		templates.FUTURISTIC_FACTORY,
		templates.FUTURISTIC_AIRFIELD,
		templates.FUTURISTIC_TOWER,

		templates.FEUDAL_HQ,
		templates.FEUDAL_BARRACKS,
		templates.FEUDAL_FACTORY,
		templates.FEUDAL_AIRFIELD,
		templates.FEUDAL_TOWER,

		templates.NEUTRAL_LIGHTHOUSE,
	])

	self.rotations[builder.CLASS_UNIT] = self.build_from_array([
		templates.UNIT_BLUE_INFANTRY,
		templates.UNIT_BLUE_TANK,
		templates.UNIT_BLUE_HELI,
		templates.UNIT_BLUE_MINF,
		templates.UNIT_BLUE_ROCKET,
		templates.UNIT_BLUE_SCOUT,
		templates.UNIT_BLUE_TRUCK,

		templates.UNIT_RED_INFANTRY,
		templates.UNIT_RED_TANK,
		templates.UNIT_RED_HELI,
		templates.UNIT_RED_MINF,
		templates.UNIT_RED_ROCKET,
		templates.UNIT_RED_SCOUT,
		templates.UNIT_RED_TRUCK,

		templates.UNIT_GREEN_INFANTRY,
		templates.UNIT_GREEN_TANK,
		templates.UNIT_GREEN_HELI,
		templates.UNIT_GREEN_MINF,
		templates.UNIT_GREEN_ROCKET,
		templates.UNIT_GREEN_SCOUT,
		templates.UNIT_GREEN_TRUCK,

		templates.UNIT_YELLOW_INFANTRY,
		templates.UNIT_YELLOW_TANK,
		templates.UNIT_YELLOW_HELI,
		templates.UNIT_YELLOW_MINF,
		templates.UNIT_YELLOW_ROCKET,
		templates.UNIT_YELLOW_SCOUT,
		templates.UNIT_YELLOW_TRUCK,
	])

	self.rotations[builder.CLASS_HERO] = self.build_from_array([
		templates.NPC_PRESIDENT,
		templates.HERO_GENERAL,
		templates.HERO_COMMANDO,
		templates.NPC_LORD,
		templates.HERO_GENTLEMAN,
		templates.HERO_NOBLE,
		templates.NPC_CHANCELLOR,
		templates.HERO_ADMIRAL,
		templates.HERO_CAPTAIN,
		templates.NPC_KING,
		templates.HERO_PRINCE,
		templates.HERO_WARLORD,
	])

	self.types = self.build_from_array([
		builder.CLASS_GROUND,
		builder.CLASS_FRAME,
		builder.CLASS_DECORATION,
		builder.CLASS_DAMAGE,
		builder.CLASS_TERRAIN,
		builder.SUB_CLASS_CONSTRUCTION,
		builder.CLASS_BUILDING,
		builder.CLASS_UNIT,
		builder.CLASS_HERO,
	])

	self.players = self.build_from_array([
		templates.PLAYER_NEUTRAL,
		templates.PLAYER_BLUE,
		templates.PLAYER_RED,
		templates.PLAYER_GREEN,
		templates.PLAYER_YELLOW,
		templates.PLAYER_BLACK,
	])


func get_map(name, type):
	return self.rotations[type][name]

func get_type_map(type):
	return self.types[type]

func get_player_map(player):
	return self.players[player]

func get_first_tile(type):
	if self.stored_state.has(type):
		return self.stored_state[type]

	return self.rotations[type].keys()[0]

func build_from_array(names):
	var rotation_map = {}

	for i in range(names.size()):
		if i == 0:
			rotation_map[names[i]] = {
				"prev" : names[names.size()-1],
				"next" : names[i+1],
			}
		elif i + 1 == names.size():
			rotation_map[names[i]] = {
				"prev" : names[i-1],
				"next" : names[0],
			}
		else:
			rotation_map[names[i]] = {
				"prev" : names[i-1],
				"next" : names[i+1],
			}

	return rotation_map

func store_state(type, tile):
	self.stored_state[type] = tile
