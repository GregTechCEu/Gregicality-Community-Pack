# if there is a problem with building, please ping htmlcsjs#0209 on discord
import os
import shutil
import requests
import json
import hashlib

basePath = os.path.realpath(__file__)[:-7] + ".."
copyDirs = ["/scripts", "/resources", "/config", "/mods"]

with open(basePath + "/manifest.json") as file:
    manifest = json.load(file)

try:
    os.makedirs(basePath + "/buildOut/overrides")
    os.makedirs(basePath + "/mods")
except Exception as e:
    print("Directory exists, skipping")

for mod in manifest["externalDeps"]:
    r = requests.get(mod["url"])
    with open(basePath + "/mods/" + mod["url"].split("/")[-1], "w+b") as jar:
        for i in range(1,100):
            if i == 99:
                raise Exception("Download failed")

            hash = hashlib.sha256(jar.read()).hexdigest()
            if str(hash) == mod["hash"]:
                jar.write(r.content)
                break
            else:
                pass

for dir in copyDirs:
    try:
        shutil.copytree(basePath + dir, basePath + "/buildOut/overrides" + dir)
    except Exception as e:
        print("Directory exists, skipping")

shutil.copy(basePath + "/manifest.json", basePath + "/buildOut/manifest.json")
shutil.make_archive("build/client", "zip", basePath + "/buildOut")


