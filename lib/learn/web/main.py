import os
import re


folder_path = "lib\learn\\flutter\\flutter_widget\widgetsTutorialLive"
files = os.listdir(folder_path)
print(files)
# for file_name in files:
#     print(file_name)

cleaned = []


for name in files:
    # name = re.sub(r"^[A-Za-z0-9]+_", "", name)  # remove number prefix
    name = name.replace(".dart", "")  # remove extension
    name = name.replace("_", " ")  # replace underscores
    # name = name.title()  # capitalize each word
    cleaned.append(name)

print(cleaned)
