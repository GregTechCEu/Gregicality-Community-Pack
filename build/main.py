import os
import shutil
import requests

# if there is a problem with building, please ping htmlcsjs#0209 on discord

ae2url = "https://github.com/PrototypeTrousers/Applied-Energistics-2/releases/download/omni-fixes-v34b/appliedenergistics2-rv6-stable-7.omni-fixes-v34b.jar"
basePath = os.path.realpath(__file__)[:-7] + ".."
copyDirs = ["/scripts", "/resources", "/config", "/mods"]

try:
    os.makedirs(basePath + "/buildOut/overrides")
    os.makedirs(basePath + "/mods")
except Exception as e:
    print("Directory exists, skipping")

r = requests.get(ae2url)

with open(baseDir + "/mods/appliedenergistics2-rv6-stable-7.omni-fixes.jar", "w") as jar:
    jar.write(r.content)

for dir in copyDirs:
    try:
        shutil.copytree(basePath + dir, basePath + "/buildOut/overrides" + dir)
    except Exception as e:
        print("Directory exists, skipping")

shutil.copy(basePath + "/manifest.json", basePath + "/buildOut/manifest.json")
shutil.make_archive("build/client", "zip", basePath + "/buildOut")


