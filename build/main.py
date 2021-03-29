import os
import shutil


basePath = os.path.realpath(__file__)[:-7] + ".."

print(basePath)
try:
    os.makedirs(basePath + "/buildOut/overrides")
except Exception as e:
    print("Directory exists, skipping")

shutil.copytree(basePath + "/scripts", basePath + "/buildOut/overrides/scripts")
shutil.copytree(basePath + "/config", basePath + "/buildOut/overrides/config")
shutil.copy(basePath + "/manifest.json", basePath + "/buildOut/manifest.json")
shutil.make_archive("build/client", "zip", basePath + "/buildOut")


