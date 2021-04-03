import os
import shutil

# if there is a problem with building, please ping htmlcsjs#0209 on discord

basePath = os.path.realpath(__file__)[:-7] + ".."

try:
    os.makedirs(basePath + "/buildOut/overrides")
except Exception as e:
    print("Directory exists, skipping")

shutil.copytree(basePath + "/scripts", basePath + "/buildOut/overrides/scripts")
shutil.copytree(basePath + "/resources", basePath + "/buildOut/overrides/resources")
shutil.copytree(basePath + "/config", basePath + "/buildOut/overrides/config")
shutil.copy(basePath + "/manifest.json", basePath + "/buildOut/manifest.json")
shutil.make_archive("build/client", "zip", basePath + "/buildOut")


