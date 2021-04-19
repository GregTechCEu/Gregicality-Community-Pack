# if there is a problem with building, please ping htmlcsjs#0209 on discord
import os
import shutil
import requests
import json
import hashlib

modlist = []
basePath = os.path.realpath(__file__)[:-7] + ".."
copyDirs = ["/scripts", "/resources", "/config", "/mods"]

with open(basePath + "/manifest.json") as file:
    manifest = json.load(file)

try:
    os.makedirs(basePath + "/buildOut/overrides")
    os.makedirs(basePath + "/mods")
    print("make directories")
except Exception as e:
    print("Directory exists, skipping")

for mod in manifest["externalDeps"]:
    with open(basePath + "/mods/" + mod["url"].split("/")[-1], "w+b") as jar:
        r = requests.get(mod["url"])
        for i in range(1,100):
            if i == 99:
                raise Exception("Download failed")

            hash = hashlib.sha256(jar.read()).hexdigest()
            if str(hash) == mod["hash"]:
                jar.write(r.content)
                modlist.append(mod["name"])
                print("hash succsessful")
                break
            else:
                print("hash unsuccsessful")
                pass

for dir in copyDirs:
    try:
        shutil.copytree(basePath + dir, basePath + "/buildOut/overrides" + dir)
    except Exception as e:
        print("Directory exists, skipping")
print("directories copied to buildOut")

shutil.copy(basePath + "/manifest.json", basePath + "/buildOut/manifest.json")
shutil.make_archive("build/client", "zip", basePath + "/buildOut")
print("zip made")

for mod in manifest["files"]:
    url = "https://cursemeta.dries007.net/" + \
        str(mod["projectID"]) + "/" + str(mod["fileID"]) + ".json"
    r = requests.get(url)
    metadata = json.loads(r.text)
    modlist.append(metadata["FileName"])
print("modlist compiled")

with open(basePath + "/build/modlist.html", "w") as file:
    data = "<html><body><h1>Gregicality Community Pack modlist</h1><ul>"
    for mod in modlist:
        data += "<li>" + mod + "</li>"
    data += "</ul></body></html>"
    file.write(data)
print("modlist.html done")
print("done")
