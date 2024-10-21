import tkinter as tk
from PIL import Image, ImageTk
from PIL import Image, ImageSequence
import os


def unpack_gif(src):
    "If disposal == 2 (unclomplete) it copies it on the previous"
    image = Image.open(src)
    frames = []
    disposal = []
    for gifFrame in ImageSequence.Iterator(image):
        disposal.append(gifFrame.disposal_method)
        frames.append(gifFrame.convert('P'))
    output = []
    lastFrame = None
    thisFrame = None
    for i, loadedFrame in enumerate(frames):
        thisFrame = loadedFrame
        if disposal[i] == 2:
            if i != 0:
                lastFrame.paste(thisFrame, mask=thisFrame.convert('RGBA'))
                output.append(lastFrame)
            else:
                output.append(thisFrame)
        elif disposal[i] == 1 or disposal[i] == 0:
            output.append(thisFrame)
        else:
            raise ValueError('Disposal Methods other than 2:Restore to Background,\
             1:Do Not Dispose, and 0:No Disposal are supported at this time')
        lastFrame = loadedFrame
    return output


def save_all_frames(file):
    "Saves all the frames of the gif as numbered png files"
    name = os.path.splitext(file)[0]
    im = unpack_gif(file)
    for n, i in enumerate(im):
        if n<10:
            zero = "0"
        else:
            zero = ""
        i.save(f"{name}{zero}{n}.png")
    print(im)

save_all_frames("sub_zerro.gif")