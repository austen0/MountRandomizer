MountDB = {}

local typeEnum = {"Ground", "Flying", "Water"}
local factionEnum = {"Horde", "Alliance"}
local professionEnum = {"Engineering", "Tailoring"}
local classEnum = {
    "Warrior", "Paladin", "Hunter", "Rogue", "Priest", "DeathKnight", "Shaman", "Mage", "Warlock",
    "", "Druid"
}

local mountDB = {
    {
        name = "Brown Wolf",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 4272,
        isLarge = false,
  }, {
        name = "Black Wolf",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 356,
        isLarge = false,
  }, {
        name = "Dire Wolf",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 4271,
        isLarge = false,
  }, {
        name = "Timber Wolf",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 358,
        isLarge = false,
  }, {
        name = "Swift Brown Wolf",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14540,
        isLarge = false,
  }, {
        name = "Swift Gray Wolf",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14541,
        isLarge = false,
  }, {
        name = "Swift Timber Wolf",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14539,
        isLarge = false,
  }, {
        name = "Red Skeletal Horse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 11153,
        isLarge = false,
  }, {
        name = "Blue Skeletal Horse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 11154,
        isLarge = false,
  }, {
        name = "Brown Skeletal Horse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 11155,
        isLarge = false,
  }, {
        name = "Black Skeletal Horse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 34238,
        isLarge = false,
  }, {
        name = "Green Skeletal Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 11156,
        isLarge = false,
  }, {
        name = "Purple Skeletal Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14558,
        isLarge = false,
  }, {
        name = "Ochre Skeletal Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 35169,
        isLarge = false,
  }, {
        name = "Gray Kodo",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 12149,
        isLarge = false,
  }, {
        name = "Brown Kodo",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 11689,
        isLarge = false,
  }, {
        name = "White Kodo",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 34155,
        isLarge = false,
  }, {
        name = "Great White Kodo",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14542,
        isLarge = false,
  }, {
        name = "Great Brown Kodo",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14549,
        isLarge = false,
  }, {
        name = "Great Gray Kodo",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14550,
        isLarge = false,
  }, {
        name = "Emerald Raptor",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 6075,
        isLarge = false,
  }, {
        name = "Turquoise Raptor",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 7707,
        isLarge = false,
  }, {
        name = "Violet Raptor",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 7708,
        isLarge = false,
  }, {
        name = "Swift Blue Raptor",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14545,
        isLarge = false,
  }, {
        name = "Swift Olive Raptor",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14543,
        isLarge = false,
  }, {
        name = "Swift Orange Raptor",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14544,
        isLarge = false,
  }, {
        name = "Red Hawkstrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 19280,
        isLarge = false,
  }, {
        name = "Blue Hawkstrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 20220,
        isLarge = false,
  }, {
        name = "Purple Hawkstrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 20217,
        isLarge = false,
  }, {
        name = "Black Hawkstrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 20222,
        isLarge = false,
  }, {
        name = "Swift Pink Hawkstrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 19281,
        isLarge = false,
  }, {
        name = "Swift Green Hawkstrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 20224,
        isLarge = false,
  }, {
        name = "Swift Purple Hawkstrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 20223,
        isLarge = false,
  }, {
        name = "Wooly Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 31852,
        isLarge = true,
  }, {
        name = "Traveler's Tundra Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 32640,
        isLarge = true,
  }, {
        name = "Armored Brown Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 32207,
        isLarge = false,
  }, {
        name = "Pinto",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 307,
        isLarge = false,
  }, {
        name = "Chestnut Mare",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 4269,
        isLarge = false,
  }, {
        name = "Brown Horse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 284,
        isLarge = false,
  }, {
        name = "Black Stallion",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 308,
        isLarge = false,
  }, {
        name = "Swift Palomino",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14559,
        isLarge = false,
  }, {
        name = "Swift Brown Steed",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14561,
        isLarge = false,
  }, {
        name = "Swift White Steed",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14560,
        isLarge = false,
  }, {
        name = "Striped Nightsaber",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 7690,
        isLarge = false,
  }, {
        name = "Striped Frostsaber",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 6074,
        isLarge = false,
  }, {
        name = "Spotted Frostsaber",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 7687,
        isLarge = false,
  }, {
        name = "Striped Dawnsaber",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 35168,
        isLarge = false,
  }, {
        name = "Swift Frostsaber",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14556,
        isLarge = false,
  }, {
        name = "Swift Mistsaber",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14555,
        isLarge = false,
  }, {
        name = "Swift Stormsaber",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14602,
        isLarge = false,
  }, {
        name = "Red Mechanostrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 7739,
        isLarge = false,
  }, {
        name = "Blue Mechanostrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 7749,
        isLarge = false,
  }, {
        name = "Green Mechanostrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 11147,
        isLarge = false,
  }, {
        name = "Unpainted Mechanostrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 10180,
        isLarge = false,
  }, {
        name = "Swift Green Mechanostrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14553,
        isLarge = false,
  }, {
        name = "Swift White Mechanostrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14552,
        isLarge = false,
  }, {
        name = "Swift Yellow Mechanostrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14551,
        isLarge = false,
  }, {
        name = "Gray Ram",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 4710,
        isLarge = false,
  }, {
        name = "Brown Ram",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 4779,
        isLarge = false,
  }, {
        name = "White Ram",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 4777,
        isLarge = false,
  }, {
        name = "Swift Gray Ram",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14548,
        isLarge = false,
  }, {
        name = "Swift Brown Ram",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14546,
        isLarge = false,
  }, {
        name = "Swift White Ram",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14547,
        isLarge = false,
  }, {
        name = "Brown Elekk",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 19658,
        isLarge = false,
  }, {
        name = "Purple Elekk",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 20847,
        isLarge = false,
  }, {
        name = "Gray Elekk",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 20846,
        isLarge = false,
  }, {
        name = "Great Blue Elekk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 20848,
        isLarge = false,
  }, {
        name = "Great Green Elekk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 20849,
        isLarge = false,
  }, {
        name = "Great Purple Elekk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 20850,
        isLarge = false,
  }, {
        name = "Wooly Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 31851,
        isLarge = true,
  }, {
        name = "Traveler's Tundra Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 32633,
        isLarge = true,
  }, {
        name = "Armored Brown Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 32206,
        isLarge = false,
  }, {
        name = "Tawny Wind Rider",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 1,
        npcID = 18363,
        isLarge = false,
  }, {
        name = "Blue Wind Rider",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 1,
        npcID = 18364,
        isLarge = false,
  }, {
        name = "Green Wind Rider",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 1,
        npcID = 18365,
        isLarge = false,
  }, {
        name = "Swift Red Wind Rider",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 18377,
        isLarge = false,
  }, {
        name = "Swift Green Wind Rider",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 18378,
        isLarge = false,
  }, {
        name = "Swift Yellow Wind Rider",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 18380,
        isLarge = false,
  }, {
        name = "Swift Purple Wind Rider",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 18379,
        isLarge = false,
  }, {
        name = "Armored Blue Wind Rider",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 32336,
        isLarge = false,
  }, {
        name = "Golden Gryphon",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 2,
        npcID = 18360,
        isLarge = false,
  }, {
        name = "Ebon Gryphon",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 2,
        npcID = 18357,
        isLarge = false,
  }, {
        name = "Snowy Gryphon",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 2,
        npcID = 18359,
        isLarge = false,
  }, {
        name = "Swift Blue Gryphon",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 18406,
        isLarge = false,
  }, {
        name = "Swift Red Gryphon",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 18376,
        isLarge = false,
  }, {
        name = "Swift Green Gryphon",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 18375,
        isLarge = false,
  }, {
        name = "Swift Purple Gryphon",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 18362,
        isLarge = false,
  }, {
        name = "Armored Snowy Gryphon",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 32335,
        isLarge = false,
  }, {
        name = "Black War Kodo",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14333,
        isLarge = false,
  }, {
        name = "Black War Wolf",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14329,
        isLarge = false,
  }, {
        name = "Red Skeletal Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14331,
        isLarge = false,
  }, {
        name = "Black War Raptor",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14330,
        isLarge = false,
  }, {
        name = "Frostwolf Howler",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14744,
        isLarge = false,
  }, {
        name = "Swift Warstrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 20225,
        isLarge = false,
  }, {
        name = "Black War Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 31850,
        isLarge = true,
  }, {
        name = "Black Battlestrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14334,
        isLarge = false,
  }, {
        name = "Black War Ram",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14335,
        isLarge = false,
  }, {
        name = "Black War Steed",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14332,
        isLarge = false,
  }, {
        name = "Black War Tiger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14336,
        isLarge = false,
  }, {
        name = "Black War Elekk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 26439,
        isLarge = false,
  }, {
        name = "Stormpike Battle Charger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14745,
        isLarge = false,
  }, {
        name = "Black War Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 31862,
        isLarge = true,
  }, {
        name = "Dark Riding Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 22511,
        isLarge = false,
  }, {
        name = "Dark War Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 20149,
        isLarge = false,
  }, {
        name = "Swift Nether Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 21510,
        isLarge = false,
  }, {
        name = "Merciless Nether Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 24743,
        isLarge = false,
  }, {
        name = "Vengeful Nether Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 27637,
        isLarge = false,
  }, {
        name = "Brutal Nether Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 31124,
        isLarge = false,
  }, {
        name = "Deadly Gladiator's Frost Wyrm",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 34225,
        isLarge = false,
  }, {
        name = "Furious Gladiator's Frost Wyrm",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 34425,
        isLarge = false,
  }, {
        name = "Relentless Gladiator's Frost Wyrm",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 35362,
        isLarge = false,
  }, {
        name = "Wrathful Gladiator's Frost Wyrm",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 38361,
        isLarge = false,
  }, {
        name = "Warhorse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        classReq = 2,
        npcID = 9158,
        isLarge = false,
  }, {
        name = "Charger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        classReq = 2,
        npcID = 14565,
        isLarge = false,
  }, {
        name = "Thalassian Warhorse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        classReq = 2,
        npcID = 20029,
        isLarge = false,
  }, {
        name = "Thalassian Charger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        classReq = 2,
        npcID = 20030,
        isLarge = false,
  }, {
        name = "Argent Charger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        classReq = 2,
        npcID = 35179,
        isLarge = false,
  }, {
        name = "Acherus Deathcharger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        classReq = 6,
        npcID = 28302,
        isLarge = false,
  }, {
        name = "Winged Steed of the Ebon Blade",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 225,
        classReq = 6,
        npcID = 29582,
        isLarge = false,
  }, {
        name = "Felsteed",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        classReq = 9,
        npcID = 304,
        isLarge = false,
  }, {
        name = "Dreadsteed",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        classReq = 9,
        npcID = 14505,
        isLarge = false,
  }, {
        name = "Mechano-Hog",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 29929,
        isLarge = false,
  }, {
        name = "Flying Machine",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        professionReq = 1,
        npcID = 24653,
        isLarge = false,
  }, {
        name = "Turbo-Charged Flying Machine",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        professionReq = 1,
        npcID = 24654,
        isLarge = false,
  }, {
        name = "Sea Turtle",
        type = 3,
        speed = 1.6,
        ridingLevelReq = 75,
        npcID = 34187,
        isLarge = false,
  }, {
        name = "Flying Carpet",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        professionReq = 2,
        npcID = 33029,
        isLarge = false,
  }, {
        name = "Frosty Flying Carpet",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        professionReq = 2,
        npcID = 40533,
        isLarge = false,
  }, {
        name = "Magnificent Flying Carpet",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        professionReq = 2,
        npcID = 33030,
        isLarge = false,
  }, {
        name = "Rivendare's Deathcharger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 30542,
        isLarge = false,
  }, {
        name = "Bronze Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31717,
        isLarge = false,
  }, {
        name = "Blue Proto-Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 32151,
        isLarge = false,
  }, {
        name = "Blue Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31695,
        isLarge = false,
  }, {
        name = "Raven Lord",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 23408,
        isLarge = false,
  }, {
        name = "Swift White Hawkstrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 26131,
        isLarge = false,
  }, {
        name = "Swift Razzashi Raptor",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 15090,
        isLarge = false,
  }, {
        name = "Swift Zulian Tiger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 15104,
        isLarge = false,
  }, {
    -- TODO: uncomment after implementing handling for zone requirement.
    --     name = "Blue Qiraji Battle Tank",
    --     type = 1,
    --     speed = 2,
    --     ridingLevelReq = 75,
    --     zoneReq = "Ahn'Qiraj",
    --     npcID = 15666,
    -- }, {
    --     name = "Red Qiraji Battle Tank",
    --     type = 1,
    --     speed = 2,
    --     ridingLevelReq = 75,
    --     zoneReq = "Ahn'Qiraj",
    --     npcID = 15716,
    -- }, {
    --     name = "Green Qiraji Battle Tank",
    --     type = 1,
    --     speed = 2,
    --     ridingLevelReq = 75,
    --     zoneReq = "Ahn'Qiraj",
    --     npcID = 15715,
    -- }, {
    --     name = "Yellow Qiraji Battle Tank",
    --     type = 1,
    --     speed = 2,
    --     ridingLevelReq = 75,
    --     zoneReq = "Ahn'Qiraj",
    --     npcID = 15714,
    -- }, {
        name = "Ashes of Al'Ar",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 18545,
        isLarge = false,
  }, {
        name = "Amani War Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 24379,
        isLarge = false,
  }, {
        name = "Fiery Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 21354,
        isLarge = false,
  }, {
        name = "Azure Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31694,
        isLarge = false,
  }, {
        name = "Twilight Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31698,
        isLarge = false,
  }, {
        name = "Black Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31778,
        isLarge = false,
  }, {
        name = "Onyxian Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 36837,
        isLarge = false,
  }, {
        name = "Grand Black War Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 31861,
        isLarge = true,
  }, {
        name = "Grand Black War Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 31862,
        isLarge = true,
  }, {
        name = "Mimiron's Head",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 33848,
        isLarge = false,
  }, {
        name = "Invincible",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 38545,
        isLarge = false,
  }, {
        name = "Swift Horde Wolf",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 35809,
        isLarge = false,
  }, {
        name = "Swift Alliance Steed",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 35808,
        isLarge = false,
  }, {
        name = "Brewfest Ram",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        npcID = 23588,
        isLarge = false,
  }, {
        name = "Swift Brewfest Ram",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 24368,
        isLarge = false,
  }, {
        name = "Great Brewfest Kodo",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 27707,
        isLarge = false,
  }, {
        name = "Headless Horseman's Mount",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        npcID = 27153,
        isLarge = false,
  }, {
        name = "X-45 Heartbreaker",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 38204,
        isLarge = false,
  }, {
        name = "Celestial Steed",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 40625,
        isLarge = false,
  }, {
        name = "Big Blizzard Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 31319,
        isLarge = false,
  }, {
        name = "Swift Zhevra",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 27684,
        isLarge = false,
  }, {
        name = "X-53 Touring Rocket",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 225,
        npcID = 40725,
        isLarge = false,
  }, {
        name = "Reawakened Phase-Hunter",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 176708,
        isLarge = false,
  }, {
        name = "Kalu'ak Whalebone Glider",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 75,
        npcID = 189739,
        isLarge = false,
  }, {
        name = "White Polar Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 29596,
        isLarge = false,
  }, {
        name = "Crimson Deathcharger",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 39046,
        isLarge = false,
  }, {
        name = "Black Qiraji Battle Tank",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 15711,
        isLarge = false,
  }, {
        name = "Venomhide Ravasaur",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 34156,
        isLarge = false,
  }, {
        name = "Time-Lost Proto-Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 32153,
        isLarge = false,
  }, {
        name = "Plagued Proto-Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 32156,
        isLarge = false,
  }, {
        name = "Black Proto-Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 31912,
        isLarge = false,
  }, {
        name = "Violet Proto-Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 32157,
        isLarge = false,
  }, {
        name = "Red Proto-Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31902,
        isLarge = false,
  }, {
        name = "Ironbound Proto-Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 33892,
        isLarge = false,
  }, {
        name = "Rusted Proto-Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 33904,
        isLarge = false,
  }, {
        name = "Albino Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 32158,
        isLarge = false,
  }, {
        name = "Bloodbathed Frostbrood Vanquisher",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 38778,
        isLarge = false,
  }, {
        name = "Icebound Frostbrood Vanquisher",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 38695,
        isLarge = false,
  }, {
        name = "Black War Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 32205,
        isLarge = false,
  }, {
        name = "Red Dragonhawk",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 32944,
        isLarge = false,
  }, {
        name = "Crusader's Black Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 35878,
        isLarge = false,
  }, {
        name = "Black War Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 32203,
        isLarge = false,
  }, {
        name = "Blue Dragonhawk",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 31239,
        isLarge = false,
  }, {
        name = "Crusader's White Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 35876,
        isLarge = false,
  }, {
        name = "Cenarion War Hippogryph",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 24488,
        isLarge = false,
  }, {
        name = "Cobalt War Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 20072,
        isLarge = false,
  }, {
        name = "White War Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 20151,
        isLarge = false,
  }, {
        name = "Silver War Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 20152,
        isLarge = false,
  }, {
        name = "Tan War Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 20150,
        isLarge = false,
  }, {
        name = "Cobalt Riding Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 22510,
        isLarge = false,
  }, {
        name = "Silver Riding Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 22512,
        isLarge = false,
  }, {
        name = "Tan Riding Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 22513,
        isLarge = false,
  }, {
        name = "White Riding Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 22514,
        isLarge = false,
  }, {
        name = "Azure Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23456,
        isLarge = false,
  }, {
        name = "Cobalt Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23460,
        isLarge = false,
  }, {
        name = "Onyx Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23455,
        isLarge = false,
  }, {
        name = "Purple Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23458,
        isLarge = false,
  }, {
        name = "Veridian Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23457,
        isLarge = false,
  }, {
        name = "Violet Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23459,
        isLarge = false,
  }, {
        name = "Blue Riding Nether Ray",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 22978,
        isLarge = false,
  }, {
        name = "Green Riding Nether Ray",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 22958,
        isLarge = false,
  }, {
        name = "Purple Riding Nether Ray",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 22975,
        isLarge = false,
  }, {
        name = "Red Riding Nether Ray",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 22976,
        isLarge = false,
  }, {
        name = "Silver Riding Nether Ray",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 22977,
        isLarge = false,
  }, {
        name = "Ice Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 31854,
        isLarge = true,
  }, {
        name = "Ice Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 31855,
        isLarge = true,
  }, {
        name = "Grand Ice Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 31857,
        isLarge = true,
  }, {
        name = "Grand Ice Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 31858,
        isLarge = true,
  }, {
        name = "Red Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31697,
        isLarge = false,
  }, {
        name = "Green Proto-Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 32562,
        isLarge = false,
  },
}

-- Iterate through a list of mounts and return bool indicating whether it contains a given type.
local function HasType(mounts, type)
    for _, mount in pairs(mounts) do
        if typeEnum[mount.type] == type then
            return true
        end
    end
    return false
end

-- Return input table with the matching mount removed.
local function RemoveByID(mounts, removeID)
    local ret = {}
    for _, mount in pairs(mounts) do
        if mount.npcID ~= removeID then
            table.insert(ret, mount)
        end
    end
    return ret
end

-- Filter faction and class restricted mounts from db on addon load, as these will not change during
-- play.
function MountDB:BuildDB()
    local db = {}
    local _, playerFaction = UnitFactionGroup("player")
    if playerFaction == "Horde" then playerFaction = 1 else playerFaction = 2 end
    local _, _, playerClass = UnitClass("player")

    for _, mount in pairs(mountDB) do
        if mount.factionReq == nil or mount.factionReq == playerFaction then
            table.insert(db, mount)
        elseif mount.classReq == nil or mount.classReq == playerClass then
            table.insert(db, mount)
        end
    end
    return db
end

-- Query the mount database and return matching mounts.
function MountDB:Query(query)
    local results = {}
    local results_tmp = {}

    -- Filter to owned mounts.
    for _, mount in pairs(self.db) do
        for _, npcID in pairs(query.ownedMounts) do
            if mount.npcID == npcID then
                table.insert(results, mount)
            end
        end
    end
    results_tmp = CopyTable(results)

    -- Omit mounts in user blacklist.
    if MountRandomizer.GetTableLength(MountRandomizerDB.mountBlacklist) > 0 then
        for _, mount in pairs(results_tmp) do
            if MountRandomizer.InTable(MountRandomizerDB.mountBlacklist, mount.npcID) then
                results = RemoveByID(results, mount.npcID)
            end
        end
    end
    results_tmp = CopyTable(results)

    -- Omit large mounts when in large cities.
    if
        (
            MountRandomizer.InTable(
            {
                "Darnassus", "The Exodar", "Ironforge", "Stormwind City",
                "Orgrimmar", "Silvermoon City", "Thunder Bluff", "Undercity",
                "Dalaran", "Shattrath City",
            },
            GetRealZoneText())
            and MountRandomizerDB.noLargeInCities)
        or (IsInInstance() and MountRandomizerDB.noLargeInInstances)
    then
        for _, mount in pairs(results_tmp) do
            if mount.isLarge then 
                results = RemoveByID(results, mount.npcID)
            end
        end
    end
    results_tmp = CopyTable(results)

    -- Omit profession mounts if the associated profession isn't currently trained.
    for _, mount in pairs(results_tmp) do
        if mount.professionReq ~= nil then
            if
                MountRandomizer.GetTableLength(query.trainedProfessions) == 0
                or not MountRandomizer.InTable(
                    query.trainedProfessions, professionEnum[mount.professionReq])
            then
                results = RemoveByID(results, mount.npcID)
            end
        end
    end
    results_tmp = CopyTable(results)

    -- Filter mount pool based on preferred mount type (context based).
    if HasType(results, "Water") and query.preferredType == "Water" then
        for _, mount in pairs(results_tmp) do
            if typeEnum[mount.type] ~= "Water" then
                results = RemoveByID(results, mount.npcID)
            end
        end
    elseif HasType(results, "Flying") and query.preferredType == "Flying" then
        for _, mount in pairs(results_tmp) do
            if typeEnum[mount.type] ~= "Flying" then
                results = RemoveByID(results, mount.npcID)
            end
        end
    elseif HasType(results, "Ground") then
        for _, mount in pairs(results_tmp) do
            if typeEnum[mount.type] ~= "Ground" then
                results = RemoveByID(results, mount.npcID)
            end
        end
    else
        print("[MountDB:Query] ERROR in type selection, returning nil value.")
        return
    end
    results_tmp = CopyTable(results)

    -- Remove mounts below thresholds set by user config.
    for _, mount in pairs(results_tmp) do
        if typeEnum[mount.type] == "Ground" and mount.speed < MountRandomizerDB.minGroundSpeed then
            results = RemoveByID(results, mount.npcID)
        elseif typeEnum[mount.type] == "Flying" and mount.speed < MountRandomizerDB.minFlyingSpeed
        then
            results = RemoveByID(results, mount.npcID)
        end
    end

    return results
end


MountDB.dbFull = mountDB
MountDB.db = MountDB:BuildDB()
MountRandomizer.mountDB = MountDB
