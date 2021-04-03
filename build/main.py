import os
import shutil

# if there is a problem with building, please ping htmlcsjs#0209 on discord

basePath = os.path.realpath(__file__)[:-7] + ".."
copyDirs = ["/scripts", "/resources", "/config", "/mods"]

try:
    os.makedirs(basePath + "/buildOut/overrides")
except Exception as e:
    print("Directory exists, skipping")

for dir in copyDirs:
    try:
        shutil.copytree(basePath + dir, basePath + "/buildOut/overrides" + dir)
    except Exception as e:
        print("Directory exists, skipping")

shutil.copy(basePath + "/manifest.json", basePath + "/buildOut/manifest.json")
shutil.make_archive("build/client", "zip", basePath + "/buildOut")


