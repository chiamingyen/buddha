import os
total_words = 0
for (path, dirs, files) in os.walk("buddha"):
    files_sorted = sorted(files)
    for num in range(len(files_sorted)):
        with open(path+"/"+files_sorted[num], encoding="utf-8") as content_file:
            content = content_file.read()
            for i in ["》","《","。","「","」","？","、","　", "\n","，"]:
                content = content.replace(i, "")
            total_words += len(content)
print(total_words)


