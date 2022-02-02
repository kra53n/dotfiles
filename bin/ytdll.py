from yt_dlp import YoutubeDL
import subprocess


urls = ['https://www.youtube.com/watch?v=43QiQfhFToY']


def del_from_end_to_symbol(text, symbol, offset=0):
    for i in range(len(text)-1, 0, -1):
        if text[i] == symbol:
            return text[:i+offset]
    return text

def del_from_start_to_symbol(text, symbol, offset=0):
    for i in range(len(text)-1, 0, -1):
        if text[i] == symbol:
            return text[i+offset:]
    return text

#name = "The Weeknd - Take My Breath (Remix) ft. Agents of Time [43QiQfhFToY].webm"
#print(del_from_end_to_symbol(name, "[", -1) + del_from_start_to_symbol(name, "."))


ydl_opts = {'format': 'bestaudio'}
with YoutubeDL(ydl_opts) as ydl:
    ydl.download(urls)


for url in urls:
    # to complete:
    # https://stackoverflow.com/questions/2449250/any-way-to-assign-terminal-output-to-variable-with-python
    filename = sub
    subprocess.run(["mv"], )

