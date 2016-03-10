#! /usr/bin/env python

import sys
import re
import yaml

FILE = sys.argv[1]
YAML = sys.argv[2]
TYPE = sys.argv[3]

header = open(YAML, "r")
text = open(FILE, "r")
copy = open(FILE+"_NEW", "wt")

docs = yaml.load_all(header)

for doc in docs:
    if not doc == None:
        if 'figure' in doc.keys():
            for line in text:
                mfig = False
                for f in doc['figure']:
                    my_regex = r"^!\{" + re.escape(f['id']) + r"\}$"
                    if re.search(my_regex, line, re.IGNORECASE):
                        mfig = True
                        if TYPE == 'preprint':
                            ftype = "figure"
                            fwidth = "\\columnwidth"
                            if "wide" in f.keys():
                                ftype = "figure*"
                                fwidth = "\\textwidth"
                            copy.write("\n\\begin{" + ftype + "}[bt]\n")
                            copy.write("\t\\centering\n")
                            # TODO Check if it's a tex file and do something else
                            if f['file'][-4:] == ".tex":
                                print(fwidth)
                                copy.write("\t\\begin{adjustbox}{max width = " + fwidth + "}\n")
                                copy.write("\t\t\\input{figures/" + f['file'] + "}\n")
                                copy.write("\t\\end{adjustbox}\n")
                            else:
                                copy.write("\t\\includegraphics[width=" + fwidth + "]{figures/" + f['file'] + "}\n")
                            copy.write("\t\\caption{" + f['caption'] + "}\n")
                            copy.write("\t\\label{" + f['id'] + "}\n")
                            copy.write("\\end{" + ftype + "}\n\n")
                if not mfig:
                    copy.write(line)
        else:
            for line in text:
                copy.write(line)

header.close()
text.close()
copy.close()
