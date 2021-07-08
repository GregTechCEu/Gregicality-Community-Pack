import csv
import enum
import os
import json

## INSTRUCTIONS:
## export https://docs.google.com/spreadsheets/d/1DW3775gVhuu3Ykqf6XYTzyc1TFKSU1DC7L549F1EYP8 as csv and copy it into build/worldgen.csv
## Then run script and commit
## Any changes to ore gen, please add to the spreadsheet

basePath = os.path.realpath(__file__)[:-18] + ".."

dimNames = ["OVERWORLD", "NETHER", "END", "MOON", "MARS", "CERES", "ASTEROIDS", "MERCURY", "VENUS", "IO",
            "EUROPA", "GANYMEDE", "ENCELADUS", "TITAN", "TRITON", "PLUTO", "HAUMEA", "PROXIMA_B", "BARNARDA_C"]
dimNamesSmall = ["OW", "NTH", "END", "MOON", "MARS", "CER", "AST", "MER",
                 "VEN", "IO", "EURO", "GAN", "ENC", "TIT", "TRI", "PLU", "HAU", "PB", "BC"]
dimBaseBlock = {"OW": ["minecraft:stone", 0],
                "NTH": ["minecraft:stone", 0],
                "END": ["minecraft:stone", 0],
                "MOON": ["minecraft:stone", 0],
                "MARS": ["minecraft:stone", 0],
                "CER": {
    "name": "galaxyspace:ceresblocks",
   	"properties": {
            "type": "ceres_subgrunt"
        }
},
    "AST": ["minecraft:stone", 0],
    "MER": ["minecraft:stone", 0],
    "VEN": ["minecraft:stone", 0],
    "IO": {
    "name": "galaxyspace:ioblocks",
	"properties": {
            "type": "io_stone"
	}
},
    "EURO": ["minecraft:stone", 0],
    "GAN": ["minecraft:stone", 0],
    "ENC": ["minecraft:stone", 0],
    "TIT": {
    "name": "galaxyspace:titanblocks",
	"properties": {
            "type": "titan_stone"
        }
},
    "TRI": ["minecraft:stone", 0],
    "PLU": ["minecraft:stone", 0],
    "HAU": ["minecraft:stone", 0],
    "PB": ["minecraft:stone", 0],
    "BC": ["minecraft:stone", 0]}


class Dims(enum.Enum):
    OVERWORLD = 0
    NETHER = -1
    END = 1
    MOON = -28
    MARS = -29
    CERES = -1007
    ASTEROIDS = -20
    MERCURY = -1005
    VENUS = -31
    IO = -1014
    EUROPA = -1015
    GANYMEDE = -1016
    ENCELADUS = -1017
    TITAN = -1018
    TRITON = -1021
    PLUTO = -1008
    HAUMEA = -1023
    PROXIMA_B = -1025
    BARNARDA_C = -1030


with open(basePath + '/build/worldgen.csv') as csvfile:
    data = list(csv.reader(csvfile))

cofh_json = {
    "moon": {"populate": {}},
    "mars": {"populate": {}},
    "ceres": {"populate": {}},
    "asteroids": {"populate": {}},
    "mercury": {"populate": {}},
    "venus": {"populate": {}},
    "io": {"populate": {}},
    "europa": {"populate": {}},
    "ganymede": {"populate": {}},
    "enceladus": {"populate": {}},
    "titan": {"populate": {}},
    "triton": {"populate": {}},
    "pluto": {"populate": {}},
    "haumea": {"populate": {}},
    "proxima_b": {"populate": {}},
    "barnarda_c": {"populate": {}}}

for dim in dimNames[:3]:
    try:
        os.makedirs(basePath + "/config/gregtech/worldgen/" + dim.lower())
    except FileExistsError as e:
        print("Directory Exists")


def gt_to_cofh(vein):
    dim_index = dimNames.index(vein["dimension_filter"])
    blocks = []
    for ore in vein["filler"]["value"]["values"]:
        value = ore["value"]
        value = value[4:]
        value.replace(":", "_")
        value = "gregtech:ore_" + value + "_0"
        blocks.append({"name": value, "weight": ore["weight"]})

    new_vein = {
        "distribution": "uniform",
        "generator": {
            "block": blocks,
            "material": dimBaseBlock[dimNamesSmall[dim_index]],
            "cluster-size": 16
        },
        "cluster-count": 1,
        "min-height": vein["min_height"],
        "max-height": vein["max_height"],
        "retrogen": "true",
        "biome": "all",
        "dimension": {
            "restriction": "whitelist",
            "value": [Dims[vein["dimension_filter"]].value]
        }
    }

    cofh_json[vein["dimension_filter"].lower(
    )]["populate"][vein["name"]] = new_vein


data.pop(0)
for row in data:
    dimList = []
    dimNameList = []
    dimNameSmallList = []

    vein = {}
    vein["name"] = row[0].lower().replace(" ", "-")
    vein["weight"] = int(row[6])
    vein["max_height"] = int(row[7].split("-")[1])
    vein["min_height"] = int(row[7].split("-")[0])
    vein["generator"] = {"type": "ellipsoid", "radius": [0, 0]}
    vein["generator"]["radius"][0] = int(row[8].split("-")[0])
    vein["generator"]["radius"][1] = int(row[8].split("-")[0])
    vein["density"] = float(row[9])
    vein["vein_populator"] = {"type": "surface_rock"}
    vein["vein_populator"]["material"] = "_".join(row[5].lower().split())
    vein["dimension_filter"] = []
    vein["filler"] = {"type": "ga_simple", "value": {
        "type": "weight_random", "values": []}}

    for i in range(0, 19):
        if row[i + 12].lower() == "x":
            dimList.append(Dims[dimNames[i]].value)
            dimNameList.append(Dims[dimNames[i]].name.lower())
            dimNameSmallList.append(dimNamesSmall[i].lower())

    for i in range(1, 5):
        try:
            if row[i][0] != "(":
                1+1
            else:
                ore = {}
                ore["weight"] = (row[i].split(")")[0][1:])
                ore["value"] = "ore:" + \
                    row[i].split(")")[1].lower().strip().replace(" ", "_")
                ore["value"] = ore["value"].replace("poor_", "poor:")
                ore["value"] = ore["value"].replace("rich_", "rich:")
                ore["value"] = ore["value"].replace("pure_", "pure:")
                vein["filler"]["value"]["values"].append(ore)
        except IndexError as e:
            print(row[i])

    for i in range(len(dimList)):
        if not(dimList[i] == 0 or dimList[i] == -1 or dimList[i] == 1):
            vein["dimension_filter"] = dimNameList[i].upper()
            gt_to_cofh(vein)
        else:
            with open(basePath + "/config/gregtech/worldgen/" + dimNameList[i] + "/" + row[0].lower().replace(" ", "-") + "." + dimNameSmallList[i] + ".json", "w") as jsonFile:
                vein["dimension_filter"] = ["dimension_id:" +
                                            str(Dims[dimNameList[i].upper()].value)]
                json.dump(vein, jsonFile, indent=4)

dims = {"dims": []}
for i in dimNames:
    dims["dims"].append(
        {"dimID": Dims[i].value, "dimName": i.replace("_", " ").title()})

with open(basePath + "/config/gregtech/dimensions.json", "w") as jsonFile:
    json.dump(dims, jsonFile, indent=4)


for i in cofh_json:
    with open(basePath + "/config/cofh/world/" + i + ".json", "w") as jsonFile:
        json.dump(cofh_json[i], jsonFile, indent=4)
