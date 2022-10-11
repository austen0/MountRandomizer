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
    }, {
        name = "Black Wolf",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 356,
    }, {
        name = "Dire Wolf",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 4271,
    }, {
        name = "Timber Wolf",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 358,
    }, {
        name = "Swift Brown Wolf",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14540,
    }, {
        name = "Swift Gray Wolf",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14541,
    }, {
        name = "Swift Timber Wolf",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14539,
    }, {
        name = "Red Skeletal Horse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 11153,
    }, {
        name = "Blue Skeletal Horse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 11154,
    }, {
        name = "Brown Skeletal Horse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 11155,
    }, {
        name = "Black Skeletal Horse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 34238,
    }, {
        name = "Green Skeletal Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 11156,
    }, {
        name = "Purple Skeletal Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14558,
    }, {
        name = "Ochre Skeletal Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 35169,
    }, {
        name = "Gray Kodo",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 12149,
    }, {
        name = "Brown Kodo",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 11689,
    }, {
        name = "White Kodo",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 34155,
    }, {
        name = "Great White Kodo",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14542,
    }, {
        name = "Great Brown Kodo",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14549,
    }, {
        name = "Great Gray Kodo",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14550,
    }, {
        name = "Emerald Raptor",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 6075,
    }, {
        name = "Turquoise Raptor",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 7707,
    }, {
        name = "Violet Raptor",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 7708,
    }, {
        name = "Swift Blue Raptor",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14545,
    }, {
        name = "Swift Olive Raptor",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14543,
    }, {
        name = "Swift Orange Raptor",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14544,
    }, {
        name = "Red Hawkstrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 19280,
    }, {
        name = "Blue Hawkstrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 20220,
    }, {
        name = "Purple Hawkstrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 20217,
    }, {
        name = "Black Hawkstrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        npcID = 20222,
    }, {
        name = "Swift Pink Hawkstrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 19281,
    }, {
        name = "Swift Green Hawkstrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 20224,
    }, {
        name = "Swift Purple Hawkstrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 20223,
    }, {
        name = "Wooly Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 31852,
    }, {
        name = "Traveler's Tundra Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 32640,
    }, {
        name = "Armored Brown Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 32207,
    }, {
        name = "Pinto",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 307,
    }, {
        name = "Chestnut Mare",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 4269,
    }, {
        name = "Brown Horse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 284,
    }, {
        name = "Black Stallion",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 308,
    }, {
        name = "Swift Palomino",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14559,
    }, {
        name = "Swift Brown Steed",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14561,
    }, {
        name = "Swift White Steed",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14560,
    }, {
        name = "Striped Nightsaber",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 7690,
    }, {
        name = "Striped Frostsaber",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 6074,
    }, {
        name = "Spotted Frostsaber",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 7687,
    }, {
        name = "Striped Dawnsaber",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 35168,
    }, {
        name = "Swift Frostsaber",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14556,
    }, {
        name = "Swift Mistsaber",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14555,
    }, {
        name = "Swift Stormsaber",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14602,
    }, {
        name = "Red Mechanostrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 7739,
    }, {
        name = "Blue Mechanostrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 7749,
    }, {
        name = "Green Mechanostrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 11147,
    }, {
        name = "Unpainted Mechanostrider",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 10180,
    }, {
        name = "Swift Green Mechanostrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14553,
    }, {
        name = "Swift White Mechanostrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14552,
    }, {
        name = "Swift Yellow Mechanostrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14551,
    }, {
        name = "Gray Ram",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 4710,
    }, {
        name = "Brown Ram",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 4779,
    }, {
        name = "White Ram",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 4777,
    }, {
        name = "Swift Gray Ram",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14548,
    }, {
        name = "Swift Brown Ram",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14546,
    }, {
        name = "Swift White Ram",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14547,
    }, {
        name = "Brown Elekk",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 19658,
    }, {
        name = "Purple Elekk",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 20847,
    }, {
        name = "Gray Elekk",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        npcID = 20846,
    }, {
        name = "Great Blue Elekk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 20848,
    }, {
        name = "Great Green Elekk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 20849,
    }, {
        name = "Great Purple Elekk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 20850,
    }, {
        name = "Wooly Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 31851,
    }, {
        name = "Traveler's Tundra Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 32633,
    }, {
        name = "Armored Brown Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 32206,
    }, {
        name = "Tawny Wind Rider",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 1,
        npcID = 18363,
    }, {
        name = "Blue Wind Rider",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 1,
        npcID = 18364,
    }, {
        name = "Green Wind Rider",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 1,
        npcID = 18365,
    }, {
        name = "Swift Red Wind Rider",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 18377,
    }, {
        name = "Swift Green Wind Rider",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 18378,
    }, {
        name = "Swift Yellow Wind Rider",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 18380,
    }, {
        name = "Swift Purple Wind Rider",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 18379,
    }, {
        name = "Armored Blue Wind Rider",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 32336,
    }, {
        name = "Golden Gryphon",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 2,
        npcID = 18360,
    }, {
        name = "Ebon Gryphon",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 2,
        npcID = 18357,
    }, {
        name = "Snowy Gryphon",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        factionReq = 2,
        npcID = 18359,
    }, {
        name = "Swift Blue Gryphon",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 18406,
    }, {
        name = "Swift Red Gryphon",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 18376,
    }, {
        name = "Swift Green Gryphon",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 18375,
    }, {
        name = "Swift Purple Gryphon",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 18362,
    }, {
        name = "Armored Snowy Gryphon",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 32335,
    }, {
        name = "Black War Kodo",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14333,
    }, {
        name = "Black War Wolf",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14329,
    }, {
        name = "Red Skeletal Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14331,
    }, {
        name = "Black War Raptor",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14330,
    }, {
        name = "Frostwolf Howler",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 14744,
    }, {
        name = "Swift Warstrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 20225,
    }, {
        name = "Black War Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 31861,
    }, {
        name = "Black Battlestrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14334,
    }, {
        name = "Black War Ram",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14335,
    }, {
        name = "Black War Steed",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14332,
    }, {
        name = "Black War Tiger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14336,
    }, {
        name = "Black War Elekk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 26439,
    }, {
        name = "Stormpike Battle Charger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 14745,
    }, {
        name = "Black War Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 31862,
    }, {
        name = "Dark Riding Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 22511,
    }, {
        name = "Dark War Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 20149,
    }, {
        name = "Swift Nether Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 21510,
    }, {
        name = "Merciless Nether Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 24743,
    }, {
        name = "Vengeful Nether Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 27637,
    }, {
        name = "Brutal Nether Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 31124,
    }, {
        name = "Deadly Gladiator's Frost Wyrm",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 34225,
    }, {
        name = "Furious Gladiator's Frost Wyrm",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 34425,
    }, {
        name = "Relentless Gladiator's Frost Wyrm",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 35362,
    }, {
        name = "Wrathful Gladiator's Frost Wyrm",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 38361,
    }, {
        name = "Warhorse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 2,
        classReq = 2,
        npcID = 9158,
    }, {
        name = "Charger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        classReq = 2,
        npcID = 14565,
    }, {
        name = "Thalassian Warhorse",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        factionReq = 1,
        classReq = 2,
        npcID = 20029,
    }, {
        name = "Thalassian Charger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        classReq = 2,
        npcID = 20030,
    }, {
        name = "Argent Charger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        classReq = 2,
        npcID = 35179,
    }, {
        name = "Acherus Deathcharger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        classReq = 6,
        npcID = 28302,
    }, {
        name = "Winged Steed of the Ebon Blade",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 225,
        classReq = 6,
        npcID = 29582,
    }, {
        name = "Felsteed",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        classReq = 9,
        npcID = 304,
    }, {
        name = "Dreadsteed",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        classReq = 9,
        npcID = 14505,
    }, {
        name = "Mechano-Hog",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 29929,
    }, {
        name = "Flying Machine",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        professionReq = 1,
        npcID = 24653,
    }, {
        name = "Turbo-Charged Flying Machine",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        professionReq = 1,
        npcID = 24654,
    }, {
        name = "Sea Turtle",
        type = 3,
        speed = 1.6,
        ridingLevelReq = 75,
        npcID = 34187,
    }, {
        name = "Flying Carpet",
        type = 2,
        speed = 2.5,
        ridingLevelReq = 225,
        professionReq = 2,
        npcID = 33029,
    }, {
        name = "Frosty Flying Carpet",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        professionReq = 2,
        npcID = 40533,
    }, {
        name = "Magnificent Flying Carpet",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        professionReq = 2,
        npcID = 33030,
    }, {
        name = "Rivendare's Deathcharger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 30542,
    }, {
        name = "Bronze Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31717,
    }, {
        name = "Blue Proto-Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 32151,
    }, {
        name = "Blue Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31695,
    }, {
        name = "Raven Lord",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 23408,
    }, {
        name = "Swift White Hawkstrider",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 26131,
    }, {
        name = "Swift Razzashi Raptor",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 15090,
    }, {
        name = "Swift Zulian Tiger",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 15104,
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
    }, {
        name = "Amani War Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 24379,
    }, {
        name = "Fiery Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 21354,
    }, {
        name = "Azure Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31694,
    }, {
        name = "Twilight Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31698,
    }, {
        name = "Black Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31778,
    }, {
        name = "Onyxian Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 36837,
    }, {
        name = "Grand Black War Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 31861,
    }, {
        name = "Grand Black War Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 31862,
    }, {
        name = "Mimiron's Head",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 33848,
    }, {
        name = "Invincible",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 38545,
    }, {
        name = "Swift Horde Wolf",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 35809,
    }, {
        name = "Swift Alliance Steed",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 35808,
    }, {
        name = "Brewfest Ram",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        npcID = 23588,
    }, {
        name = "Swift Brewfest Ram",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 24368,
    }, {
        name = "Great Brewfest Kodo",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 27707,
    }, {
        name = "Headless Horseman's Mount",
        type = 1,
        speed = 1.6,
        ridingLevelReq = 75,
        npcID = 27153,
    }, {
        name = "X-45 Heartbreaker",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 38204,
    }, {
        name = "Celestial Steed",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 40625,
    }, {
        name = "Big Blizzard Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 31319,
    }, {
        name = "Swift Zhevra",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 27684,
    }, {
        name = "X-53 Touring Rocket",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 225,
        npcID = 40725,
    }, {
        name = "Reawakened Phase-Hunter",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 176708,
    }, {
        name = "Kalu'ak Whalebone Glider",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 75,
        npcID = 189739,
    }, {
        name = "White Polar Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 29596,
    }, {
        name = "Crimson Deathcharger",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 39046,
    }, {
        name = "Black Qiraji Battle Tank",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 15711,
    }, {
        name = "Venomhide Ravasaur",
        type = 1,
        speed = 2,
        ridingLevelReq = 75,
        npcID = 34156,
    }, {
        name = "Time-Lost Proto-Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 32153,
    }, {
        name = "Plagued Proto-Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 32156,
    }, {
        name = "Black Proto-Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 31912,
    }, {
        name = "Violet Proto-Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 32157,
    }, {
        name = "Red Proto-Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31902,
    }, {
        name = "Ironbound Proto-Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 33892,
    }, {
        name = "Rusted Proto-Drake",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 33904,
    }, {
        name = "Albino Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 32158,
    }, {
        name = "Bloodbathed Frostbrood Vanquisher",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 38778,
    }, {
        name = "Icebound Frostbrood Vanquisher",
        type = 2,
        speed = 4.1,
        ridingLevelReq = 300,
        npcID = 38695,
    }, {
        name = "Black War Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 32205,
    }, {
        name = "Red Dragonhawk",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 1,
        npcID = 32944,
    }, {
        name = "Crusader's Black Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 35878,
    }, {
        name = "Black War Bear",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 32203,
    }, {
        name = "Blue Dragonhawk",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        factionReq = 2,
        npcID = 31239,
    }, {
        name = "Crusader's White Warhorse",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 35876,
    }, {
        name = "Cenarion War Hippogryph",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 24488,
    }, {
        name = "Cobalt War Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 20072,
    }, {
        name = "White War Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 20151,
    }, {
        name = "Silver War Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 20152,
    }, {
        name = "Tan War Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 20150,
    }, {
        name = "Cobalt Riding Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 22510,
    }, {
        name = "Silver Riding Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 22512,
    }, {
        name = "Tan Riding Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 22513,
    }, {
        name = "White Riding Talbuk",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        npcID = 22514,
    }, {
        name = "Azure Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23456,
    }, {
        name = "Cobalt Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23460,
    }, {
        name = "Onyx Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23455,
    }, {
        name = "Purple Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23458,
    }, {
        name = "Veridian Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23457,
    }, {
        name = "Violet Netherwing Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 23459,
    }, {
        name = "Blue Riding Nether Ray",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 22978,
    }, {
        name = "Green Riding Nether Ray",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 22958,
    }, {
        name = "Purple Riding Nether Ray",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 22975,
    }, {
        name = "Red Riding Nether Ray",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 22976,
    }, {
        name = "Silver Riding Nether Ray",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 22977,
    }, {
        name = "Ice Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 31854,
    }, {
        name = "Ice Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 31855,
    }, {
        name = "Grand Ice Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 1,
        npcID = 31857,
    }, {
        name = "Grand Ice Mammoth",
        type = 1,
        speed = 2,
        ridingLevelReq = 150,
        factionReq = 2,
        npcID = 31858,
    }, {
        name = "Red Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 31697,
    }, {
        name = "Green Proto-Drake",
        type = 2,
        speed = 3.8,
        ridingLevelReq = 300,
        npcID = 32562,
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

    -- Omit mammoth's when in The Underbelly.
    if GetMinimapZoneText() == "The Underbelly" then
        for _, mount in pairs(results_tmp) do
            if string.find(string.lower(mount.name), "mammoth") then 
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
