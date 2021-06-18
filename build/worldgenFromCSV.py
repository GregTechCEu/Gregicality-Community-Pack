import csv
import enum
import os
import json

## INSTRUCTIONS:
## export https://docs.google.com/spreadsheets/d/1DW3775gVhuu3Ykqf6XYTzyc1TFKSU1DC7L549F1EYP8 as csv and copy it into build/worldgen.csv
## Then run script and commit
## Any changes to ore gen, please add to the spreadsheet

basePath = os.path.realpath(__file__)[:-18] + ".."

dimNames = ["OVERWORLD", "NETHER", "END", "MOON", "MARS", "CERES", "ASTEROIDS", "MERCURY", "VENUS", "IO", "EUROPA", "GANYMEDE", "ENCELADUS", "TITAN", "TRITON", "PLUTO", "HAUMEA", "PROXIMA_B", "BARNARDA_C"]
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


for dim in Dims:
    try:
        os.makedirs(basePath + "/config/gregtech/worldgen/" + dim.name.lower())
    except FileExistsError as e:
        print("Directory Exists")

data.pop(0)
print(type(data[0][4]))
for row in data:
    firstDim = ""

    vein = {}
    vein["weight"] = int(row[6])
    vein["max_height"] = int(row[7].split("-")[1])
    vein["min_height"] = int(row[7].split("-")[0])
    vein["generator"] = {"type": "ellipsoid","radius": [0,0]}
    vein["generator"]["radius"][0] = int(row[8].split("-")[0])
    vein["generator"]["radius"][1] = int(row[8].split("-")[0])
    vein["density"] = float(row[9])
    vein["vein_populator"] = {"type": "surface_rock"}
    vein["vein_populator"]["material"] = "_".join(row[5].lower().split())
    vein["dimension_filter"] = []
    vein["filler"] = {"type": "simple", "value": {"type": "weight_random", "values": []}}
    
    for i in range(0, 18):
        if row[i + 12].lower() == "x":
            if firstDim == "":
                firstDim = Dims[dimNames[i]].name.lower()
            vein["dimension_filter"].append("dimension_id:" + str(Dims[dimNames[i]].value))

    for i in range(1,5):
        try:
            if row[i][0] != "(":
                1+1
            else:
                ore = {}
                ore["weight"] = (row[i].split(")")[0][1:])
                ore["value"] = "ore:" + row[i].split(")")[1].lower().strip().replace(" ", "_")
                ore["value"].replace("poor_", "poor:")
                ore["value"].replace("rich_", "rich:")
                ore["value"].replace("pure_", "pure:")
                vein["filler"]["value"]["values"].append(ore)
        except IndexError as e:
            print(row[i])
        
    print(vein)

    with open(basePath + "/config/gregtech/worldgen/" + firstDim + "/" + row[0].lower().replace(" ", "-") + ".json", "w") as jsonFile:
        json.dump(vein, jsonFile, indent=4)

