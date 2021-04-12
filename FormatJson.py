import os
import sys

directory = 'C:\Jsonfiles\\'

for filename in os.listdir(directory):
    inF = open(directory+filename, "r")
    # reads input file into a string
    ip = inF.read();
    #removes newlines
    t = ip.replace("\n","")
    outF = open(directory + filename, "w")
    print(t, file=outF)