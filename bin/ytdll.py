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

def get_filename(url):
    cmd = f"yt-dlp --get-filename {url}"
    proc = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
    output = proc.communicate()[0]
    return output.decode("utf-8")[:-1]

def convert(filename, ext1, ext2):
    subprocess.run(["ffmpeg", "-i", f"'{filename}.{ext1}'", f"'{filename}.{ext2}'"])

#name = "The Weeknd - Take My Breath (Remix) ft. Agents of Time [43QiQfhFToY].webm"
#print(del_from_end_to_symbol(name, "[", -1) + del_from_start_to_symbol(name, "."))


#ydl_opts = {'format': 'bestaudio'}
#with YoutubeDL(ydl_opts) as ydl:
    #ydl.download(urls)


for url in urls:
    filename = get_filename(url)
    ext = del_from_start_to_symbol(filename, ".", 1)
    filename = del_from_end_to_symbol(filename, "[", -1)
    convert(filename, ext, ".mp3")

